package com.encore.tfa.repository.place;

import com.encore.tfa.model.place.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PlaceRepository extends JpaRepository<Place, Long> {
    List<Place> findByCourseId(Long courseId);
}
