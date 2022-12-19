package com.encore.tfa.service.recommendation;

import com.encore.tfa.model.recommendation.Recommendation;
import com.encore.tfa.repository.recommendation.RecommendationRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecommendationService {

    private final RecommendationRepository recommendationRepository;

    public RecommendationService(RecommendationRepository recommendationRepository) {
        this.recommendationRepository = recommendationRepository;
    }

    public List<Recommendation> selectRecommendation(){
        return recommendationRepository.findAll();
    }
}
