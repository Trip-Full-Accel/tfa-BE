package com.encore.tfa.controller.place.request;

import lombok.Getter;

@Getter
public class RegisterPlaceRequest {

    private final String placeName;
    private final Double lat;
    private final Double lng;
    private final Integer pathOrder;

    public RegisterPlaceRequest(String placeName, Double lat, Double lng, Integer pathOrder) {
        this.placeName = placeName;
        this.lat = lat;
        this.lng = lng;
        this.pathOrder = pathOrder;
    }
}
