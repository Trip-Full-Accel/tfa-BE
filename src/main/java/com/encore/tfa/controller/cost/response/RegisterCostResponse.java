package com.encore.tfa.controller.cost.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class RegisterCostResponse {

    private final Long costId;
    private final Long userId;
    private final Long courseId;
    private final Integer transCost;
    private final Integer hotelCost;
    private final Integer extraCost;
    private final Integer totalCost;
    private final Integer member;

    public RegisterCostResponse(Long costId, Long userId, Long courseId, Integer transCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.costId = costId;
        this.userId = userId;
        this.courseId = courseId;
        this.transCost = transCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
    }
}


