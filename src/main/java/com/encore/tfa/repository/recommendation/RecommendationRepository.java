package com.encore.tfa.repository.recommendation;

import com.encore.tfa.model.recommendation.Recommendation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecommendationRepository extends JpaRepository<Recommendation, Long> {
}
