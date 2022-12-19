package com.encore.tfa.controller.place.response;

import lombok.Getter;

import java.util.List;

@Getter
public class RetrievePlacesResponse {

    private final Long courseName;
    private final List<PlaceDetailsResponse> placeDetailsResponses;

    public RetrievePlacesResponse(Long courseName, List<PlaceDetailsResponse> placeDetailsResponses) {
        this.courseName = courseName;
        this.placeDetailsResponses = placeDetailsResponses;
    }
}
