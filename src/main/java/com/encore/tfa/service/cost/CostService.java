package com.encore.tfa.service.cost;


import com.encore.tfa.controller.cost.request.RegisterCostRequest;
import com.encore.tfa.controller.cost.request.UpdateCostRequest;
import com.encore.tfa.controller.cost.response.CostDetailResponse;
import com.encore.tfa.controller.cost.response.MyPageCostResponse;
import com.encore.tfa.controller.cost.response.RegisterCostResponse;
import com.encore.tfa.controller.cost.response.UpdateCostResponse;
import com.encore.tfa.controller.course.response.CourseDetailResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.cost.Cost;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.cost.CostRepository;
import com.encore.tfa.repository.course.CourseRepository;
import com.encore.tfa.repository.user.UserRepository;
import com.encore.tfa.util.mapper.CostMapper;
import com.encore.tfa.util.mapper.CourseMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class CostService {
    private final CostRepository costRepository;
    private final CourseRepository courseRepository;
    private final UserRepository userRepository;

    public CostService(CostRepository costRepository, CourseRepository courseRepository, UserRepository userRepository) {
        this.costRepository = costRepository;
        this.courseRepository = courseRepository;
        this.userRepository = userRepository;
    }

    @Transactional
    public RegisterCostResponse registerCost(RegisterCostRequest request) {
       Cost registeredCost = costRepository.save(
               createCostInstance(request));

       return CostMapper.of().convertCostToRegisterResponse(registeredCost);
    }

    @Transactional
    public CostDetailResponse findCostById(Long costId) {
        Cost cost = costRepository.findById(costId)
                .orElseThrow(()-> new NonExistResourceException("Cost could not be found"));

        return CostMapper.of().convertCostToDetailResponse(cost);

    }

    private Cost createCostInstance(RegisterCostRequest request){
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        Course course = courseRepository.findById(request.getCourseId())
                .orElseThrow(()-> new NonExistResourceException("Course could not be found"));

        return CostMapper.of().convertRegisterRequestToCost(request, user, course);
    }

    @Transactional
    public UpdateCostResponse updateCost(Long costId, UpdateCostRequest request) {
        Cost cost = costRepository.findById(costId)
                .orElseThrow(()-> new NonExistResourceException("Cost could not be found"));

        cost.updateCost(CostMapper.of().convertUpdateRequestToDTO(request));

        return CostMapper.convertCostToUpdateResponse(cost);
    }

    @Transactional(readOnly = true)
    public MyPageCostResponse findCostByUserId(Long userId){
        User user = userRepository.findById(userId)
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        List<Course> courseList = courseRepository.findByUserId(user.getId());

        if (courseList.isEmpty()) throw new NonExistResourceException("Course does not exist");

        List<CourseDetailResponse> courseDetailResponseList = new ArrayList<>();
        List<CostDetailResponse> costDetailResponseList = new ArrayList<>();

        for (Course course : courseList) {
            courseDetailResponseList.add(CourseMapper.of().convertCourseToDetailResponse(course));

            List<Cost> costList = costRepository.findByCourseId(course.getId());

            if (costList.isEmpty()) throw new NonExistResourceException("Cost does not exist");

            for (Cost cost : costList){
                costDetailResponseList.add(CostMapper.of().convertCostToDetailResponse(cost));
            }
        }
        return new MyPageCostResponse(courseDetailResponseList, costDetailResponseList);
    }
}