package com.encore.tfa.controller.place.response;


import lombok.Getter;

import java.util.List;

@Getter

public class UpdatePlaceResponse {

    private final Long courseId;
    private final List<PlaceDetailsResponse> placeDetailsResponses;

    public UpdatePlaceResponse(Long courseId, List<PlaceDetailsResponse> placeDetailsResponses) {
        this.courseId = courseId;
        this.placeDetailsResponses = placeDetailsResponses;
    }
}
