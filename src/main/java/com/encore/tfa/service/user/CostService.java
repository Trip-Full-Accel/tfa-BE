package com.encore.tfa.service.user;


import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.cost.Cost;
import com.encore.tfa.repository.CostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CostService {
    private final CostRepository costRepository;

    // 예산 조회
    @Transactional
    public CostResponse getCost(Long courseId) {
        Optional < Cost> cost = costRepository.findById(courseId);

        if (cost.isEmpty()) {
            throw new NonExistResourceException("error");
        }

        Cost entity = cost.get();

        return new CostResponse(entity);

    }

    // 예산 생성
    @Transactional
    public Long saveCost (final CostRequest params) {
        Cost entity = costRepository.save(params.toEntity());
        return entity.getId();
    }

    @Transactional
    public Long updateCost(Long courseId, CostRequest params) {

        Optional <Cost> cost = costRepository.findById(params.getCourseId());

        if (cost.isEmpty()) {
            throw new NonExistResourceException("error");
        }

        Cost entity = cost.get();

        entity.update(
                params.getTransCost(),
                params.getFoodCost(),
                params.getHotelCost(),
                params.getExtraCost(),
                params.getTotalCost(),
                params.getMember());

        return courseId;
    }
}