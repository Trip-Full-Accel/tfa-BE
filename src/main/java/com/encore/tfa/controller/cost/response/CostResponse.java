package com.encore.tfa.controller.cost.response;

import com.encore.tfa.model.Cost;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
public class CostResponse {
    private Long costId;
    private Integer transCost;
    private Integer foodCost;
    private Integer hotelCost;
    private Integer extraCost;
    private Integer totalCost;
    private Integer member;

    public CostResponse(Cost entity) {
        this.costId = entity.getId();
        this.transCost = entity.getTransCost();
        this.foodCost = entity.getFoodCost();
        this.hotelCost = entity.getHotelCost();
        this.extraCost = entity.getExtraCost();
        this.totalCost = entity.getTotalCost();
        this.member = entity.getMember();
    }
}
