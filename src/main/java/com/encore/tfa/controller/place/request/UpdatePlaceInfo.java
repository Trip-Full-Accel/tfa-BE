package com.encore.tfa.controller.place.request;

import lombok.Getter;

@Getter
public class UpdatePlaceInfo {

    private final Long placeId;
    private final String placeName;
    private final Double lat;
    private final Double lng;
    private final Integer pathOrder;

    public UpdatePlaceInfo(Long placeId, String placeName, Double lat, Double lng, Integer pathOrder) {
        this.placeId = placeId;
        this.placeName = placeName;
        this.lat = lat;
        this.lng = lng;
        this.pathOrder = pathOrder;
    }
}
