package com.encore.tfa.controller.course.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CourseDetailResponse {

    private final Long userId;
    private final Long courseId;
    private final String courseName;

    public CourseDetailResponse(Long userId, Long courseId, String courseName) {
        this.userId = userId;
        this.courseId = courseId;
        this.courseName = courseName;
    }
}
