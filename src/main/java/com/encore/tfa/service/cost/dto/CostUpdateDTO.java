package com.encore.tfa.service.cost.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CostUpdateDTO {

    private final Long costId;
    private final Integer transCost;
    private final Integer foodCost;
    private final Integer hotelCost;
    private final Integer extraCost;
    private final Integer totalCost;
    private final Integer member;

    public CostUpdateDTO(Long costId, Integer transCost, Integer foodCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.costId = costId;
        this.transCost = transCost;
        this.foodCost = foodCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
    }
}
