package com.encore.tfa.controller.course.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class RegisterCourseResponse {

    private final Long courseId;
    private final String courseName;

    public RegisterCourseResponse(Long courseId, String courseName) {
        this.courseId = courseId;
        this.courseName = courseName;
    }
}
