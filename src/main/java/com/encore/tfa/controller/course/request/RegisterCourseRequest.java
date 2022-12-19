package com.encore.tfa.controller.course.request;

import lombok.Getter;

@Getter
public class RegisterCourseRequest {

    private final Long userId;
    private final String courseName;

    public RegisterCourseRequest(Long userId, String courseName) {
        this.userId = userId;
        this.courseName = courseName;
    }
}
