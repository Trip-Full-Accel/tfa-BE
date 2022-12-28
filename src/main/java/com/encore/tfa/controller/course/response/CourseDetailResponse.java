package com.encore.tfa.controller.course.response;

import java.util.List;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CourseDetailResponse {

    private final Long courseId;
    private final String courseName;

    public CourseDetailResponse(Long courseId, String courseName) {
        this.courseId = courseId;
        this.courseName = courseName;
    }
}
