package com.encore.tfa.service.course;

import com.encore.tfa.controller.course.request.RegisterCourseRequest;
import com.encore.tfa.controller.course.response.CourseDetailResponse;
import com.encore.tfa.controller.course.response.MyPageCourseResponse;
import com.encore.tfa.controller.course.response.RegisterCourseResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.course.CourseRepository;
import com.encore.tfa.repository.user.UserRepository;
import com.encore.tfa.controller.course.request.CreateCourseRequest;
import com.encore.tfa.controller.course.response.CourseResponse;
import org.springframework.stereotype.Service;

import java.util.*;

import com.encore.tfa.util.mapper.CourseMapper;

import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Service
public class CourseService {
    private final CourseRepository courseRepository;

    private final UserRepository userRepository;

    public CourseService(CourseRepository courseRepository, UserRepository userRepository) {
        this.courseRepository = courseRepository;
        this.userRepository = userRepository;
    }

    @Transactional(readOnly = true)
    public MyPageCourseResponse findCourseByUserId(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new NonExistResourceException("User could not be found"));

        List<Course> courseList = courseRepository.findAllByUserId(user.getId());

        if (courseList.isEmpty()) throw new NonExistResourceException("Course does not exist");

        List<CourseDetailResponse> courseDetailResponseList = new ArrayList<>();

        for (Course course : courseList) {
            courseDetailResponseList.add(CourseMapper.of().convertCourseToDetailResponse(course));
        }

        return new MyPageCourseResponse(courseDetailResponseList);
    }

    @Transactional
    public RegisterCourseResponse registerCourse(RegisterCourseRequest request) {
        Course course = courseRepository.save(
                createCourseInstance(request));

        return CourseMapper.of().courseToRegisterResponse(course);
    }

    private Course createCourseInstance(RegisterCourseRequest request) {
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(() -> new NonExistResourceException("User could not be found"));

        return CourseMapper.of().convertRegisterRequestToCourse(request, user);
    }

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
    public CourseResponse getCourse(CreateCourseRequest params) {

        String firstCourseName = params.getFirstCourseName();
        Double firstCourseLat = params.getFirstCourseLat();
        Double firstCourseLng = params.getFirstCourseLng();

        String[] otherCourseNames = params.getOtherCourseNames();
        Double[] otherCourseLats = params.getOtherCourseLats();
        Double[] otherCourseLngs = params.getOtherCourseLngs();

        Map<Integer, String> resultCourseNames = new HashMap<>();

        Double[] resultCourseLats = new Double[otherCourseNames.length + 1];
        Double[] resultCourseLngs = new Double[otherCourseNames.length + 1];

        boolean[] checked = new boolean[otherCourseNames.length];
        resultCourseNames.put(1, firstCourseName);
        resultCourseLats[0] = firstCourseLat;
        resultCourseLngs[0] = firstCourseLng;

        for (int i = 1; i < resultCourseLats.length; i++) {
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

                resultCourseNames.put(i + 1, otherCourseNames[index]);
                resultCourseLats[i] = otherCourseLats[index];
                resultCourseLngs[i] = otherCourseLngs[index];

                firstCourseLat = otherCourseLats[index];
                firstCourseLng = otherCourseLngs[index];
            }
        }
        CourseResponse courseResponse = new CourseResponse(resultCourseNames, resultCourseLats, resultCourseLngs);

        return courseResponse;
    }

}
