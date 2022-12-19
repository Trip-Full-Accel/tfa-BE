package com.encore.tfa.controller.cost.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class CostDetailResponse {

    private final Long costId;
    private final Long courseId;
    private final Integer transCost;
    private final Integer foodCost;
    private final Integer hotelCost;
    private final Integer extraCost;
    private final Integer totalCost;
    private final Integer member;

    public CostDetailResponse(Long costId, Long courseId, Integer transCost, Integer foodCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.costId = costId;
        this.courseId = courseId;
        this.transCost = transCost;
        this.foodCost = foodCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
    }
}
