package com.encore.tfa.controller.course.api;

import com.encore.tfa.controller.course.response.CourseDetailsListResponse;
import com.encore.tfa.controller.course.request.CreateCourseRequest;
import com.encore.tfa.controller.course.response.CourseDetailsListResponse;
import com.encore.tfa.controller.course.response.CourseResponse;

import com.encore.tfa.service.course.CourseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/course")
public class CourseController {
    private final CourseService courseService;

    public CourseController(CourseService courseService) { this.courseService = courseService; }
    @GetMapping("/{userId}")
    public ResponseEntity<CourseDetailsListResponse> courseDetail(@PathVariable("userId") Long userId){
        return ResponseEntity.ok().body(courseService.findCourseDetail(userId));
    }

    // 사용자가 경로 만들기를 눌렀을 때
    @PostMapping()
    public ResponseEntity<CourseResponse> createCourse(@RequestBody CreateCourseRequest params) {
        return ResponseEntity.ok().body(courseService.getCourse(params));
    }

}
