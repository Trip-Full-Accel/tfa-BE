package com.encore.tfa.controller.place.response;

import lombok.Getter;

import java.util.List;

@Getter
public class RegisterMultiPlaceResponse {

    private final Long courseId;
    private final List<RegisterPlaceResponse> registerPlaceResponseList;

    public RegisterMultiPlaceResponse(Long courseId, List<RegisterPlaceResponse> registerPlaceResponseList) {
        this.courseId = courseId;
        this.registerPlaceResponseList = registerPlaceResponseList;
    }
}
