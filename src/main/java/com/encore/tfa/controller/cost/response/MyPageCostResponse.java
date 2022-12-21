package com.encore.tfa.controller.cost.response;

import com.encore.tfa.controller.course.response.CourseDetailResponse;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class MyPageCostResponse {

    private final List<CourseDetailResponse> courseDetailResponseList;
    private final List<CostDetailResponse> costDetailResponseList;

    public MyPageCostResponse(List<CourseDetailResponse> courseDetailResponseList, List<CostDetailResponse> costDetailResponseList) {
        this.courseDetailResponseList = courseDetailResponseList;
        this.costDetailResponseList = costDetailResponseList;
    }
}
