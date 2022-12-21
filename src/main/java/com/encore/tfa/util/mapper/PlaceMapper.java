package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.place.request.RegisterPlaceRequest;
import com.encore.tfa.controller.place.request.UpdatePlaceInfo;
import com.encore.tfa.controller.place.response.PlaceDetailsResponse;
import com.encore.tfa.controller.place.response.RegisterMultiPlaceResponse;
import com.encore.tfa.controller.place.response.RegisterPlaceResponse;
import com.encore.tfa.controller.place.response.UpdatePlaceResponse;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.place.Place;

import java.util.ArrayList;
import java.util.List;

public class PlaceMapper {

    public static Place convertRegisterRequestToPlace(RegisterPlaceRequest registerPlaceRequest, Course course) {
        return Place.builder()
                .course(course)
                .placeName(registerPlaceRequest.getPlaceName())
                .lat(registerPlaceRequest.getLat())
                .lng(registerPlaceRequest.getLng())
                .pathOrder(registerPlaceRequest.getPathOrder())
                .build();
    }

    public static RegisterMultiPlaceResponse convertEntitiesToRegisterResponse(List<Place> places, Long courseId) {
        List<RegisterPlaceResponse> responses = new ArrayList<>();

        for (Place place : places) {
            responses.add(RegisterPlaceResponse.builder()
                    .placeId(place.getId())
                    .placeName(place.getPlaceName())
                    .lat(place.getLat())
                    .lng(place.getLng())
                    .pathOrder(place.getPathOrder())
                    .build());
        }

        return new RegisterMultiPlaceResponse(courseId, responses);
    }

    public static PlaceDetailsResponse convertEntityToDetailResponse(Place place){
        return PlaceDetailsResponse.builder()
                .placeId(place.getId())
                .placeName(place.getPlaceName())
                .lat(place.getLat())
                .lng(place.getLng())
                .pathOrder(place.getPathOrder())
                .build();
    }

    public static Place convertUpdateInfoToEntity(UpdatePlaceInfo info){
        return Place.builder()
                .id(info.getPlaceId())
                .placeName(info.getPlaceName())
                .lat(info.getLat())
                .lng(info.getLng())
                .pathOrder(info.getPathOrder())
                .build();
    }

    public static UpdatePlaceResponse convertEntitiesToDetailsResponse(List<Place> updatedPlaces, Long courseId){
        List<PlaceDetailsResponse> placeDetailsResponses = new ArrayList<>();

        for(Place place : updatedPlaces){
            placeDetailsResponses.add(PlaceDetailsResponse.builder()
                    .placeId(place.getId())
                    .placeName(place.getPlaceName())
                    .lat(place.getLat())
                    .lng(place.getLng())
                    .pathOrder(place.getPathOrder())
                    .build());
        }

        return new UpdatePlaceResponse(courseId, placeDetailsResponses);
    }
}
