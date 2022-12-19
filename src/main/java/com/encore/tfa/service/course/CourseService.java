package com.encore.tfa.service.course;

import com.encore.tfa.controller.course.response.CourseDetailResponse;
import com.encore.tfa.controller.course.response.CourseDetailsListResponse;
import com.encore.tfa.controller.place.responses.PlaceDetailsResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.Course;
import com.encore.tfa.model.Place;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.CourseRepository;
import com.encore.tfa.repository.PlaceRepository;
import com.encore.tfa.repository.UserRepository;
import com.encore.tfa.util.mapper.CourseMapper;
import com.encore.tfa.util.mapper.PlaceMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CourseService {
    private final CourseRepository courseRepository;

    private final UserRepository userRepository;

    private final PlaceRepository placeRepository;

    public CourseService(CourseRepository courseRepository, UserRepository userRepository, PlaceRepository placeRepository) {
        this.courseRepository = courseRepository;
        this.userRepository = userRepository;
        this.placeRepository = placeRepository;
    }

    public CourseDetailsListResponse findCourseDetail(Long userId) {
        User user = userRepository.findById(userId).orElseThrow(() -> new NonExistResourceException("User does not exist"));

        List<Course> courseList = courseRepository.findByUserId(user.getId());

        if(courseList.isEmpty()) throw new NonExistResourceException("Cores does not exist");

        List<CourseDetailResponse> courseDetailResponseList = new ArrayList<>();

        for(int i = 0; i < courseList.size(); i++) {
            List<Place> placeList = placeRepository.findByCourseId(courseList.get(i).getId());

            List<PlaceDetailsResponse> placeDetailsResponseList = new ArrayList<>();

            for(int j = 0; j < placeList.size(); j++){
                placeDetailsResponseList.add(PlaceMapper.entityToPlaceDetailResponse(placeList.get(j)));
            }

            courseDetailResponseList.add(CourseMapper.entityToCourseDetailResponse(courseList.get(i).getId(),placeDetailsResponseList));
        }

        CourseDetailsListResponse courseDetailsListResponse = new CourseDetailsListResponse(courseDetailResponseList);
        System.out.println(courseDetailsListResponse.toString());
        return courseDetailsListResponse;

//        Place place = courseRepository.findById(placeId)
//                .orElseThrow(() -> new NonExistResourceException("course does not exist"));
//        System.out.println(place.toString());
//        return CourseMapper.entityToCourseDetailResponse(place);
    }
}
