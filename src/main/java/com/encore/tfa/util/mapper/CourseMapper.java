package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.course.response.CourseDetailResponse;
import com.encore.tfa.controller.place.response.PlaceDetailsResponse;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class CourseMapper {
    public static CourseDetailResponse entityToCourseDetailResponse(Long courseId, List<PlaceDetailsResponse> placeDetailsResponseList) {
        return new CourseDetailResponse(courseId, placeDetailsResponseList);
    }

}
