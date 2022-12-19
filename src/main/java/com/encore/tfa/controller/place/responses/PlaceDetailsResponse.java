package com.encore.tfa.controller.place.responses;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PlaceDetailsResponse {

    private Long placeId;
    private Long courseId;
    private Long userId;
    private String placeName;
    private Integer cityCode;
    private Float lat;
    private Float lng;
    private Integer pathOrder;

    public PlaceDetailsResponse(Long placeId, Long courseId, Long userId, String placeName, Integer cityCode, Float lat, Float lng, Integer pathOrder) {
        this.placeId = placeId;
        this.courseId = courseId;
        this.userId = userId;
        this.placeName = placeName;
        this.cityCode = cityCode;
        this.lat = lat;
        this.lng = lng;
        this.pathOrder = pathOrder;
    }
}
