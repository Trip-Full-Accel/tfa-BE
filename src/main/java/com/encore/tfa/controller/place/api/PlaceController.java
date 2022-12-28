package com.encore.tfa.controller.place.api;

import com.encore.tfa.controller.place.request.RegisterMultiPlaceRequest;
import com.encore.tfa.controller.place.request.UpdateMultiPlacesRequest;
import com.encore.tfa.controller.place.response.RegisterMultiPlaceResponse;
import com.encore.tfa.controller.place.response.RetrievePlacesResponse;
import com.encore.tfa.controller.place.response.UpdatePlaceResponse;
import com.encore.tfa.service.place.PlaceService;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/places")
public class PlaceController {

    private final PlaceService placeService;

    public PlaceController(PlaceService placeService) {
        this.placeService = placeService;
    }

    @PostMapping
    public ResponseEntity<RegisterMultiPlaceResponse> registerPlace(@RequestBody RegisterMultiPlaceRequest request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(placeService.registerPlace(request));
    }

    @PutMapping("/{course-id}")
    public ResponseEntity<UpdatePlaceResponse> updatePlaces(@PathVariable("course-id") Long courseId,
                                                            @RequestBody UpdateMultiPlacesRequest request) {
        return ResponseEntity.ok().body(placeService.updatePlaces(courseId, request));
    }
}