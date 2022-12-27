package com.encore.tfa.repository.recommendation;

import java.util.List;

import com.encore.tfa.model.recommendation.Recommendation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecommendationRepository extends JpaRepository<Recommendation, Long> {

	List<Recommendation> findByCityCode(Integer cityCode);
}
