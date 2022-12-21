package com.encore.tfa.controller.place.request;

import lombok.Getter;

import java.util.List;

@Getter
public class UpdateMultiPlacesRequest {

    private final List<UpdatePlaceInfo> updatePlaceInfos;

    public UpdateMultiPlacesRequest(List<UpdatePlaceInfo> updatePlaceInfos) {
        this.updatePlaceInfos = updatePlaceInfos;
    }
}
