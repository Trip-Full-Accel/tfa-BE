package com.encore.tfa.controller.course.response;

import lombok.Getter;

@Getter
public class CourseResponse {

    private final Integer courseOrders;

    private final String courseNames;

    private final Double courseLats;

    private final Double courseLngs;

    public CourseResponse(Integer courseOrders, String courseNames, Double courseLats, Double courseLngs) {
        this.courseOrders = courseOrders;
        this.courseNames = courseNames;
        this.courseLats = courseLats;
        this.courseLngs = courseLngs;
    }
}
