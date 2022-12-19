package com.encore.tfa.controller.place.request;

import lombok.Getter;

import java.util.List;

@Getter
public class RegisterMultiPlaceRequest {

    private final Long userId;
    private final Long courseId;
    private final List<RegisterPlaceRequest> registerPlaceRequestList;

    public RegisterMultiPlaceRequest(Long userId, Long courseId, List<RegisterPlaceRequest> registerPlaceRequestList) {
        this.userId = userId;
        this.courseId = courseId;
        this.registerPlaceRequestList = registerPlaceRequestList;
    }
}
