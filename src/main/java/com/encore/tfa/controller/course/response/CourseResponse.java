package com.encore.tfa.controller.course.response;


import lombok.Getter;

import java.util.Map;

@Getter
public class CourseResponse {

    private final Map<Integer, String> courseNames;

    private final Double[] courseLats;

    private final Double[] courseLngs;

    public CourseResponse(Map<Integer, String> courseNames, Double[] courseLats, Double[] courseLngs) {
        this.courseNames = courseNames;
        this.courseLats = courseLats;
        this.courseLngs = courseLngs;
    }
}
