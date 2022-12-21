package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.cost.request.RegisterCostRequest;
import com.encore.tfa.controller.cost.request.UpdateCostRequest;
import com.encore.tfa.controller.cost.response.CostDetailResponse;
import com.encore.tfa.controller.cost.response.RegisterCostResponse;
import com.encore.tfa.controller.cost.response.UpdateCostResponse;
import com.encore.tfa.model.cost.Cost;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.cost.dto.CostUpdateDTO;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PACKAGE)
public class CostMapper {

    private static CostMapper costMapper = null;

    public static CostMapper of() {
        if(costMapper == null){
            costMapper = new CostMapper();
        }
        return costMapper;
    }

    public Cost convertRegisterRequestToCost(RegisterCostRequest request, User user, Course course){
        return Cost.builder()
                .user(user)
                .course(course)
                .transCost(request.getTransCost())
                .foodCost(request.getFoodCost())
                .hotelCost(request.getHotelCost())
                .extraCost(request.getExtraCost())
                .totalCost(request.getTotalCost())
                .member(request.getMember())
                .build();
    }

    public RegisterCostResponse convertCostToRegisterResponse(Cost cost){
        return RegisterCostResponse.builder()
                .costId(cost.getId())
                .userId(cost.getUser().getId())
                .courseId(cost.getCourse().getId())
                .transCost(cost.getTransCost())
                .hotelCost(cost.getHotelCost())
                .extraCost(cost.getExtraCost())
                .totalCost(cost.getTotalCost())
                .member(cost.getMember())
                .build();
    }

    public CostDetailResponse convertCostToDetailResponse(Cost cost){
        return CostDetailResponse.builder()
                .costId(cost.getId())
                .courseId(cost.getCourse().getId())
                .transCost(cost.getTransCost())
                .foodCost(cost.getFoodCost())
                .hotelCost(cost.getHotelCost())
                .extraCost(cost.getExtraCost())
                .totalCost(cost.getTotalCost())
                .member(cost.getMember())
                .build();
    }

    public CostUpdateDTO convertUpdateRequestToDTO(UpdateCostRequest request){
        return CostUpdateDTO.builder()
                .costId(request.getCostId())
                .transCost(request.getTransCost())
                .foodCost(request.getFoodCost())
                .hotelCost(request.getHotelCost())
                .extraCost(request.getExtraCost())
                .totalCost(request.getTotalCost())
                .member(request.getMember())
                .build();
    }

    public static UpdateCostResponse convertCostToUpdateResponse(Cost cost){
        return UpdateCostResponse.builder()
                .costId(cost.getId())
                .transCost(cost.getTransCost())
                .foodCost(cost.getFoodCost())
                .hotelCost(cost.getHotelCost())
                .extraCost(cost.getExtraCost())
                .totalCost(cost.getTotalCost())
                .member(cost.getMember())
                .build();
    }

}
