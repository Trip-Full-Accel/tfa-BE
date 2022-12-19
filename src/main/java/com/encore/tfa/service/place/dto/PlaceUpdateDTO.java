package com.encore.tfa.service.place.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class PlaceUpdateDTO {

    private String placeName;
    private Double lat;
    private Double lng;
    private Integer pathOrder;

    public PlaceUpdateDTO(String placeName, Double lat, Double lng, Integer pathOrder) {
        this.placeName = placeName;
        this.lat = lat;
        this.lng = lng;
        this.pathOrder = pathOrder;
    }
}
