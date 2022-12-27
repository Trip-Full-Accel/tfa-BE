package com.encore.tfa.controller.course.api;

import com.encore.tfa.controller.course.request.RegisterCourseRequest;
import com.encore.tfa.controller.course.response.CourseResponseList;
import com.encore.tfa.controller.course.response.MyPageCourseResponse;
import com.encore.tfa.controller.course.response.RegisterCourseResponse;
import com.encore.tfa.controller.course.request.CreateCourseRequest;
import com.encore.tfa.service.course.CourseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/courses")
public class CourseController {
    private final CourseService courseService;

    public CourseController(CourseService courseService) { this.courseService = courseService; }

    @PostMapping
    public ResponseEntity<RegisterCourseResponse> registerCourse(@RequestBody RegisterCourseRequest request){
        return ResponseEntity.ok().body(courseService.registerCourse(request));
    }

    @GetMapping("/{user-id}")
    public ResponseEntity<MyPageCourseResponse> myPageCourse(@PathVariable("user-id") Long userId){
        return ResponseEntity.ok().body(courseService.findCourseByUserId(userId));
    }

    @PostMapping("/create")
    public ResponseEntity<CourseResponseList> createCourse(@RequestBody CreateCourseRequest params) {
        return ResponseEntity.ok().body(courseService.getCourse(params));
    }

}
