package com.encore.tfa.controller.course.response;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
import java.util.Map;

@Getter
public class CourseResponse {

    private Integer courseOrders;

    private String courseNames;

    private Double courseLats;

    private Double courseLngs;

    public CourseResponse(Integer courseOrders, String courseNames, Double courseLats, Double courseLngs) {
        this.courseOrders = courseOrders;
        this.courseNames = courseNames;
        this.courseLats = courseLats;
        this.courseLngs = courseLngs;
    }
}
