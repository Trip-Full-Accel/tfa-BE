package com.encore.tfa.controller.course.response;

import lombok.Getter;

import java.util.List;

@Getter
public class CourseResponseList {

    private List<CourseResponse> courseResponseList;

    public CourseResponseList(List<CourseResponse> courseResponseList) {
        this.courseResponseList = courseResponseList;
    }
}
