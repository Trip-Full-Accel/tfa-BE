package com.encore.tfa.controller.cost.request;

import lombok.Getter;

@Getter
public class RegisterCostRequest {

    private final Long userId;
    private final Long courseId;
    private final Integer transCost;
    private final Integer foodCost;
    private final Integer hotelCost;
    private final Integer extraCost;
    private final Integer totalCost;
    private final Integer member;

    public RegisterCostRequest(Long userId, Long courseId, Integer transCost, Integer foodCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.userId = userId;
        this.courseId = courseId;
        this.transCost = transCost;
        this.foodCost = foodCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
    }
}
