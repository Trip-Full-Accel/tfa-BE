package com.encore.tfa.controller.course.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class PlacesFromCourse {

	private final Long placeId;
	private final String placeName;
	private final Double lat;
	private final Double lng;
	private final Integer pathOrder;

	public PlacesFromCourse(Long placeId, String placeName, Double lat, Double lng, Integer pathOrder) {
		this.placeId = placeId;
		this.placeName = placeName;
		this.lat = lat;
		this.lng = lng;
		this.pathOrder = pathOrder;
	}
}