package com.encore.tfa.controller.cost.request;

import com.encore.tfa.model.Cost;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class CostRequest {
    private  Long courseId;
    private  Integer transCost;
    private  Integer foodCost;
    private  Integer hotelCost;
    private  Integer extraCost;
    private  Integer totalCost;
    private  Integer member;

    public Cost toEntity() {
        return Cost.builder()
                .id(courseId)
                .transCost(transCost)
                .foodCost(foodCost)
                .hotelCost(hotelCost)
                .extraCost(extraCost)
                .totalCost(totalCost)
                .member(member)
                .build()
        ;
    }
}
