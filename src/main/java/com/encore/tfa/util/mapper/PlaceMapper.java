package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.place.response.PlaceDetailsResponse;
import com.encore.tfa.model.place.Place;

public class PlaceMapper {
    public static PlaceDetailsResponse entityToPlaceDetailResponse(Place place) {
        return new PlaceDetailsResponse(place.getId(), place.getCourse().getId(), place.getUser().getId(), place.getPlaceName(), place.getCityCode(), place.getLat(), place.getLng(), place.getPathOrder());
    }
}
