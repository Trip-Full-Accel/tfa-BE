package com.encore.tfa.controller.user.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.encore.tfa.controller.user.response.UserDetailResponse;
import com.encore.tfa.service.user.UserService;

@RestController
@RequestMapping("/user")
public class UserController {

	private final UserService userService;

	public UserController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/{user-id}")
	public ResponseEntity<UserDetailResponse> userDetails(@PathVariable("user-id") String userId){
		return ResponseEntity.ok().body(userService.findUserDetails(userId));
	}

}
