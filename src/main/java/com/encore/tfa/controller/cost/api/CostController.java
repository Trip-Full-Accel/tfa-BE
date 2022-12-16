package com.encore.tfa.controller.cost.api;

import com.encore.tfa.controller.cost.request.CostRequest;
import com.encore.tfa.controller.cost.response.CostResponse;
import com.encore.tfa.service.user.CostService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/cost")
@RequiredArgsConstructor
public class CostController {

    private final CostService costService;

    // 예산 등록
    @PostMapping
    public Long costCreate(@RequestBody CostRequest costRequest) {
        return costService.saveCost(costRequest);
    }

    // 예산 조회
    @GetMapping({"/{course-id}"})
    public CostResponse costResponse(@PathVariable Long courseId) {
        return costService.getCost(courseId);
    }

    // 예산 수정
    @PutMapping("/update/{course-id}")
    public Long costUpdate(@PathVariable Long courseId, @RequestBody CostRequest costRequest) {
        return costService.updateCost(courseId, costRequest);
    }


}
