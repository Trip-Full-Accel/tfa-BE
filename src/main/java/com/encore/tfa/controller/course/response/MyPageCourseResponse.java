package com.encore.tfa.controller.course.response;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class MyPageCourseResponse {

    private final List<CourseDetailResponse> courseDetailResponseList;

    public MyPageCourseResponse(List<CourseDetailResponse> courseDetailResponseList) {
        this.courseDetailResponseList = courseDetailResponseList;
    }
}
