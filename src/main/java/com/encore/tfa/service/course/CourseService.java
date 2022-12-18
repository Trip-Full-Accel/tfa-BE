package com.encore.tfa.service.course;

import com.encore.tfa.controller.course.request.MakeCourseRequest;
import com.encore.tfa.controller.course.response.CourseResponse;
import com.encore.tfa.repository.CourseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CourseService {

    private final CourseRepository courseRepository;

    //두 여행지 간 거리 계산
    private double distance(double lat1, double lng1, double lat2, double lng2, String unit) {
        double theta = lng1 - lng2;
        double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));

        if (unit == "kilometer") {
            dist = dist * 1.609344;
        } else if (unit == "meter") {
            dist = dist * 1609.344;
        }
        return dist;
    }

    // decimal => radians
    private double deg2rad(double deg) {
        return (deg * Math.PI / 180.0);
    }

    // radians => decimal
    private double rad2deg(double rad) {
        return (rad * 180 / Math.PI);
    }

    // 사용자가 선택한 여행지를 받아서 경로를 만들어줌
    public CourseResponse getCourse(MakeCourseRequest params) {

        final CourseResponse courseResponse;

        String firstCourseName = params.getFirstCourseName();
        Double firstCourseLat = params.getFirstCourseLat();
        Double firstCourseLng = params.getFirstCourseLng();

        String[] otherCourseNames = params.getOtherCourseNames();
        Double[] otherCourseLats = params.getOtherCourseLats();
        Double[] otherCourseLngs = params.getOtherCourseLngs();

        String[] resultCourseNames = new String[otherCourseNames.length + 1];
        Double[] resultCourseLats = new Double[otherCourseNames.length + 1];
        Double[] resultCourseLngs = new Double[otherCourseNames.length + 1];

        boolean[] checked = new boolean[otherCourseNames.length];
        resultCourseNames[0] = firstCourseName;
        resultCourseLats[0] = firstCourseLat;
        resultCourseLngs[0] = firstCourseLng;

        for (int i = 1; i < resultCourseNames.length; i++) {
            Double min = Double.MAX_VALUE;
            int index = -1;
            for (int j = 0; j < checked.length; j++) {
                Double diff = distance(firstCourseLat, otherCourseLats[j], firstCourseLng, otherCourseLngs[j], "meter");
                if (!checked[j]) {
                    if (min > diff) {
                        min = diff;
                        index = j;
                    }
                }
            }
            if (index != -1) {
                checked[index] = true;
                resultCourseNames[i] = otherCourseNames[index];
                resultCourseLats[i] = otherCourseLats[index];
                resultCourseLngs[i] = otherCourseLngs[index];

                firstCourseLat = otherCourseLats[index];
                firstCourseLng = otherCourseLngs[index];
            }
        }

        return null;
    }

}
