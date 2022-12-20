package com.encore.tfa.controller.course.api;

import com.encore.tfa.controller.course.request.MakeCourseRequest;
import com.encore.tfa.controller.course.response.CourseResponse;
import com.encore.tfa.service.course.CourseService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/course")
@RequiredArgsConstructor
public class CourseController {

    private final CourseService courseService;

    // 사용자가 경로 만들기를 눌렀을 때
    @PostMapping("/create")
    public ResponseEntity<CourseResponse> createCourse(@RequestBody MakeCourseRequest params) {
        return ResponseEntity.ok().body(courseService.getCourse(params));
    }

    // 만들어진 경로 저장
    @PostMapping("/save")
    public String saveCourse() {
        return "경로가 저장되었습니다.";
    }

}
