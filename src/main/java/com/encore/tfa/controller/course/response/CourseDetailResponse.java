package com.encore.tfa.controller.course.response;

import com.encore.tfa.controller.place.response.PlaceDetailsResponse;
import lombok.Getter;
import lombok.ToString;

import java.util.List;

@Getter
@ToString
public class CourseDetailResponse {

    private Long courseId;

    private List<PlaceDetailsResponse> placeDetailsResponseList;

    public CourseDetailResponse(Long courseId, List<PlaceDetailsResponse> placeDetailsResponseList) {
        this.courseId = courseId;
        this.placeDetailsResponseList = placeDetailsResponseList;
    }
}
