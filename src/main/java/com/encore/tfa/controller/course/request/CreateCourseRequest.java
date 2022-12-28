package com.encore.tfa.controller.course.request;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CreateCourseRequest {

    private String firstCourseName; // 첫 번째 지역 이름
    private Double firstCourseLat; // 첫 번째 지역 위도
    private Double firstCourseLng; // 첫 번째 지역 경도

    private String[] otherCourseNames; // 나머지 지역 이름
    private Double[] otherCourseLats; // 나머지 지역 위도
    private Double[] otherCourseLngs; // 나머지 지역 경도

    public CreateCourseRequest makeCourseRequest() {
        return CreateCourseRequest.builder().
                firstCourseName(firstCourseName).
                firstCourseLat(firstCourseLat).
                firstCourseLng(firstCourseLng).
                otherCourseNames(otherCourseNames).
                otherCourseLats(otherCourseLats).
                otherCourseLngs(otherCourseLngs).
                build();
    }

}
