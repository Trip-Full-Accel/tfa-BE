package com.encore.tfa.controller.course.response;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

@Getter
public class CourseResponse {

    private Map<Integer, String> courseNames;

    private Double[] courseLats;

    private Double[] courseLngs;

    public CourseResponse(Map<Integer, String> courseNames, Double[] courseLats, Double[] courseLngs) {
        this.courseNames = courseNames;
        this.courseLats = courseLats;
        this.courseLngs = courseLngs;
    }
}
