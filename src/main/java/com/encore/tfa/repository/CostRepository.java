package com.encore.tfa.repository;

import com.encore.tfa.model.cost.Cost;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CostRepository extends JpaRepository<Cost, Long>  {


}
