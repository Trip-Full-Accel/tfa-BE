package com.encore.tfa.controller.course.response;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class MyPageCourseResponse {

    private final List<FoundCourseByUserId> foundCoursesByUserId;

    public MyPageCourseResponse(List<FoundCourseByUserId> foundCoursesByUserId) {
        this.foundCoursesByUserId = foundCoursesByUserId;
    }
}
