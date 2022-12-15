package com.encore.tfa.controller.course.request;


import lombok.Getter;

import java.util.List;

@Getter
public class MakeCourseRequest {

    private String firstCourseName; // 첫 번째 지역 이름

    private List<String> OtherCourseNames; // 나머지 지역 이름

    private Double firstCourseLat; // 첫 번째 지역 위도

    private Double firstCourseLng; // 첫 번째 지역 경도

    private List<Double> OtherCourseLats; // 나머지 지역 위도

    private List<Double> OtherCourseLngs; // 나머지 지역 경도

}
