package com.encore.tfa.controller.course.api;

import com.encore.tfa.controller.course.request.MakeCourseRequest;
import com.encore.tfa.controller.course.response.CourseResponse;
import com.encore.tfa.service.course.CourseService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/course")
@RequiredArgsConstructor
public class CourseController {

    private final CourseService courseService;

    // 사용자가 경로 만들기를 눌렀을 때
    @PostMapping("/make")
    public CourseResponse makeCourse(@RequestBody MakeCourseRequest params) {
        return courseService.getCourse(params);
    }

    // 만들어진 경로 저장
    @PostMapping("/save")
    public void saveCourse() {

    }

}
