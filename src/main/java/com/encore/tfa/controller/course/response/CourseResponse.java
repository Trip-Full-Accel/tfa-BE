package com.encore.tfa.controller.course.response;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
public class CourseResponse {

    private String[] courseNames;

    private Double[] courseLats;

    private  Double[] courseLngs;

    public CourseResponse(String[] courseNames, Double[] courseLats, Double[] courseLngs) {
        this.courseNames = courseNames;
        this.courseLats = courseLats;
        this.courseLngs = courseLngs;
    }
}
