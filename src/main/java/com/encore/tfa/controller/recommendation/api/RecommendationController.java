package com.encore.tfa.controller.recommendation.api;

import com.encore.tfa.model.recommendation.Recommendation;
import com.encore.tfa.service.recommendation.RecommendationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/recommendations")
public class RecommendationController {

    private final RecommendationService recommendationService;

    public RecommendationController(RecommendationService recommendationService) {
        this.recommendationService = recommendationService;
    }

    @GetMapping()
    public ResponseEntity<List<Recommendation>> selectRecommend(){
        return ResponseEntity.ok().body(recommendationService.selectRecommendation());
    }
}
