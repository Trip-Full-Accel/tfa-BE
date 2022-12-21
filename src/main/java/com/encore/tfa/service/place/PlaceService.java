package com.encore.tfa.service.place;

import com.encore.tfa.controller.place.request.RegisterMultiPlaceRequest;
import com.encore.tfa.controller.place.request.RegisterPlaceRequest;
import com.encore.tfa.controller.place.request.UpdateMultiPlacesRequest;
import com.encore.tfa.controller.place.request.UpdatePlaceInfo;
import com.encore.tfa.controller.place.response.*;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.exception.WrongRequestException;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.place.Place;
import com.encore.tfa.model.post.Post;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.course.CourseRepository;
import com.encore.tfa.repository.place.PlaceRepository;
import com.encore.tfa.repository.user.UserRepository;
import com.encore.tfa.service.place.dto.PlaceUpdateDTO;
import com.encore.tfa.util.mapper.PlaceMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlaceService {

    private final CourseRepository courseRepository;
    private final PlaceRepository placeRepository;

    public PlaceService(CourseRepository courseRepository, PlaceRepository placeRepository) {
        this.courseRepository = courseRepository;
        this.placeRepository = placeRepository;
    }

    @Transactional
    public RegisterMultiPlaceResponse registerPlace(RegisterMultiPlaceRequest request) {
        List<Place> places = createPlaces(request);

        List<Place> savedPlaces = placeRepository.saveAll(places);

        return PlaceMapper.convertEntitiesToRegisterResponse(savedPlaces, request.getCourseId());
    }

    private List<Place> createPlaces(RegisterMultiPlaceRequest request) {
        Course course = courseRepository.findById(request.getCourseId())
                .orElseThrow(()-> new NonExistResourceException("Course could not be found"));

        List<RegisterPlaceRequest> registerPlaceRequestList = request.getRegisterPlaceRequestList();

        List<Place> places = new ArrayList<>();

        for (RegisterPlaceRequest registerPlaceRequest : registerPlaceRequestList) {
            places.add(PlaceMapper.convertRegisterRequestToPlace(registerPlaceRequest, course));
        }

        return places;
    }

    @Transactional(readOnly = true)
    public RetrievePlacesResponse retrievePlaces(Long courseId){

        List<Place> places = placeRepository.findByCourseId(courseId);

        List<PlaceDetailsResponse> placeDetailsResponses = new ArrayList<>();

        for (Place place : places){
            placeDetailsResponses.add(PlaceMapper.convertEntityToDetailResponse(place));
        }

        return new RetrievePlacesResponse(courseId, placeDetailsResponses);
    }

    @Transactional
    public UpdatePlaceResponse updatePlaces(Long courseId, UpdateMultiPlacesRequest request){

        List<Place> foundPlaces = placeRepository.findByCourseId(courseId);

        List<UpdatePlaceInfo> updatePlaceInfos = request.getUpdatePlaceInfos();

        List<Place> places = new ArrayList<>();

        for(Place foundPlace : foundPlaces) {
            for (UpdatePlaceInfo info : updatePlaceInfos){
                Place convertedPlace = PlaceMapper.convertUpdateInfoToEntity(info);
                if(checkPlaceIsMatch(foundPlace, convertedPlace)) {
                    places.add(convertedPlace);
                }
            }
        }

        List<Place> updatedPlaces = placeRepository.saveAll(places);

        PlaceMapper.convertEntitiesToDetailsResponse(updatedPlaces, courseId);

        return PlaceMapper.convertEntitiesToDetailsResponse(updatedPlaces, courseId);
    }

    private boolean checkPlaceIsMatch(Place expect, Place result){
        return expect.equals(result);
    }
}
