package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.course.request.RegisterCourseRequest;
import com.encore.tfa.controller.course.response.CourseDetailResponse;
import com.encore.tfa.controller.course.response.RegisterCourseResponse;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class CourseMapper {

    private static CourseMapper courseMapper = null;

    public static CourseMapper of() {
        if(courseMapper == null){
            courseMapper = new CourseMapper();
        }
        return courseMapper;
    }

    public Course convertRegisterRequestToCourse(RegisterCourseRequest request, User user){
        return Course.builder()
                .user(user)
                .courseName(request.getCourseName())
                .build();
    }

    public RegisterCourseResponse courseToRegisterResponse(Course course){
        return RegisterCourseResponse.builder()
                .courseId(course.getId())
                .courseName(course.getCourseName())
                .build();
    }

    public CourseDetailResponse convertCourseToDetailResponse(Course course){
        return CourseDetailResponse.builder()
                .userId(course.getUser().getId())
                .courseId(course.getId())
                .courseName(course.getCourseName())
                .build();
    }

}
