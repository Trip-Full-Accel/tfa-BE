package com.encore.tfa.controller.user.api;

import com.encore.tfa.controller.user.request.UserDeleteRequest;
import com.encore.tfa.controller.user.request.UserLoginRequest;
import com.encore.tfa.controller.user.request.UserSignUpRequest;
import com.encore.tfa.controller.user.request.UserUpdateRequest;
import com.encore.tfa.controller.user.response.UserCodeCheckResponse;
import com.encore.tfa.controller.user.response.UserDeleteResponse;
import com.encore.tfa.controller.user.response.UserLoginResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
	public ResponseEntity<UserDetailResponse> userDetails(@PathVariable("userId") Long userId){
		return ResponseEntity.ok().body(userService.findUserDetails(userId));
	}

	@PostMapping("/sign-up")
	public ResponseEntity<Long> signUpUser(@RequestBody UserSignUpRequest userSignUpRequest) {
		return ResponseEntity.status(HttpStatus.CREATED).body(userService.signUpUser(userSignUpRequest));
	}

	@GetMapping("/check-userId-exist/{userId}")
	public ResponseEntity<UserCodeCheckResponse> checkUserCodeExist(@PathVariable("userId") Long userId) {
		return ResponseEntity.ok().body(userService.checkUserIdExist(userId));
	}

	@PostMapping("/login")
	public ResponseEntity<UserLoginResponse> loginUser(@RequestBody UserLoginRequest userLoginRequest) {
		return ResponseEntity.ok().body(userService.loginUser(userLoginRequest));
	}
	@PutMapping("/{user-id}")
	public ResponseEntity<Long> updateUser(@PathVariable("user-id") Long userId,
													 @RequestBody UserUpdateRequest userUpdateRequest) {
		return ResponseEntity.ok().body(userService.updateUser(userUpdateRequest, userId));
	}

	@DeleteMapping
	public ResponseEntity<UserDeleteResponse> deleteUser(@RequestHeader("userId") Long userId) {
		return ResponseEntity.ok().body(userService.deleteUser(userId));
	}
}
