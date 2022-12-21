package com.encore.tfa.controller.course.response;

import lombok.Getter;
import lombok.ToString;

import java.util.List;

@Getter
@ToString
public class CourseDetailsListResponse {

    private List<CourseDetailResponse> courseDetailResponseList;

    public CourseDetailsListResponse(List<CourseDetailResponse> courseDetailResponseList) {
        this.courseDetailResponseList = courseDetailResponseList;
    }
}
