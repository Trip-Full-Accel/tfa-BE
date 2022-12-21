package com.encore.tfa.repository.cost;

import com.encore.tfa.model.cost.Cost;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CostRepository extends JpaRepository<Cost, Long>  {

    List<Cost> findByCourseId(Long courseId);
}
