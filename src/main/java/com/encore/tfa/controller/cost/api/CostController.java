package com.encore.tfa.controller.cost.api;

import com.encore.tfa.service.user.CostService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/cost")
public class CostController {

    private final CostService costService;

    public CostController(CostService costService) {
        this.costService = costService;
    }

    @PostMapping
    public ResponseEntity<CreateCostResponse> costCreate(@RequestBody CostRequest costRequest) {
        return costService.saveCost(costRequest);
    }

    @GetMapping({"/{course-id}"})
    public CostResponse costResponse(@PathVariable Long courseId) {
        return costService.getCost(courseId);
    }

    @PutMapping("/update/{course-id}")
    public Long costUpdate(@PathVariable Long courseId, @RequestBody CostRequest costRequest) {
        return costService.updateCost(courseId, costRequest);
    }


}
