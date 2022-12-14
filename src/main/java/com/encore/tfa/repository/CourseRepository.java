package com.encore.tfa.repository;


import com.encore.tfa.model.course.Course;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CourseRepository extends JpaRepository<Course, Long> {
    List<Course> findByUserId(Long id);
}
