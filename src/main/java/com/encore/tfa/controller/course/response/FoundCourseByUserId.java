package com.encore.tfa.controller.course.response;

import java.util.List;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class FoundCourseByUserId {

	private final Long courseId;
	private final String courseName;
	private final List<PlacesFromCourse> placesFromCourseList;

	public FoundCourseByUserId(Long courseId, String courseName, List<PlacesFromCourse> placesFromCourseList) {
		this.courseId = courseId;
		this.courseName = courseName;
		this.placesFromCourseList = placesFromCourseList;
	}
}
