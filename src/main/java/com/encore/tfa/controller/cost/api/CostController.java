package com.encore.tfa.controller.cost.api;

import com.encore.tfa.controller.cost.request.RegisterCostRequest;
import com.encore.tfa.controller.cost.request.UpdateCostRequest;
import com.encore.tfa.controller.cost.response.CostDetailResponse;
import com.encore.tfa.controller.cost.response.RegisterCostResponse;
import com.encore.tfa.controller.cost.response.UpdateCostResponse;
import com.encore.tfa.service.cost.CostService;
import com.encore.tfa.controller.cost.response.MyPageCostResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/costs")
public class CostController {

    private final CostService costService;

    public CostController(CostService costService) {
        this.costService = costService;
    }

    @PostMapping
    public ResponseEntity<RegisterCostResponse> registerCost(@RequestBody RegisterCostRequest request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(costService.registerCost(request));
    }

    @GetMapping({"/detail/{cost-id}"})
    public ResponseEntity<CostDetailResponse> findCostById(@PathVariable("cost-id") Long costId) {
        return ResponseEntity.ok().body(costService.findCostById(costId));
    }

    @PutMapping("/{cost-id}")
    public ResponseEntity<UpdateCostResponse> costUpdate(@PathVariable("cost-id") Long costId,
                                                         @RequestBody UpdateCostRequest request) {
        return ResponseEntity.ok().body(costService.updateCost(costId, request));
    }

    @GetMapping("/{user-id}")
    public ResponseEntity<MyPageCostResponse> myPageCost(@PathVariable("user-id") Long userId){
        return ResponseEntity.ok().body(costService.findCostByUserId(userId));
    }
}
