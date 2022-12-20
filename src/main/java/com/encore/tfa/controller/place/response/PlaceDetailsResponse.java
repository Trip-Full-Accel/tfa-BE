package com.encore.tfa.controller.place.response;

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
    private Double lat;
    private Double lng;
    private Integer pathOrder;

    public PlaceDetailsResponse(Long placeId, Long courseId, Long userId, String placeName, Integer cityCode, Double lat, Double lng, Integer pathOrder) {
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
