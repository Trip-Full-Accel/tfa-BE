package com.encore.tfa.service.cost;


import com.encore.tfa.controller.cost.request.RegisterCostRequest;
import com.encore.tfa.controller.cost.request.UpdateCostRequest;
import com.encore.tfa.controller.cost.response.CostDetailResponse;
import com.encore.tfa.controller.cost.response.RegisterCostResponse;
import com.encore.tfa.controller.cost.response.UpdateCostResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.cost.Cost;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.CostRepository;
import com.encore.tfa.repository.CourseRepository;
import com.encore.tfa.repository.UserRepository;
import com.encore.tfa.util.mapper.CostMapper;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.Optional;

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

       return CostMapper.convertCostToRegisterResponse(registeredCost);
    }

    @Transactional
    public CostDetailResponse findCostById(Long costId) {
        Cost cost = costRepository.findById(costId)
                .orElseThrow(()-> new NonExistResourceException("Cost could not be found"));

        return CostMapper.convertCostToDetailResponse(cost);

    }

    private Cost createCostInstance(RegisterCostRequest request){
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        Course course = courseRepository.findById(request.getCourseId())
                .orElseThrow(()-> new NonExistResourceException("Course could not be found"));

        return CostMapper.convertRegisterRequestToCost(request, user, course);
    }

    @Transactional
    public UpdateCostResponse updateCost(Long costId, UpdateCostRequest request) {
        Cost cost = costRepository.findById(costId)
                .orElseThrow(()-> new NonExistResourceException("Cost could not be found"));

        cost.updateCost(CostMapper.convertUpdateRequestToDTO(request));

        return CostMapper.convertCostToUpdateResponse(cost);
    }
}