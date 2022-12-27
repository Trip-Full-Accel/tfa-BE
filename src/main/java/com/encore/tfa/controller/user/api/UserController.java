package com.encore.tfa.controller.user.api;

import com.encore.tfa.controller.user.request.UserLoginRequest;
import com.encore.tfa.controller.user.request.UserSignUpRequest;
import com.encore.tfa.controller.user.request.UserUpdateRequest;
import com.encore.tfa.controller.user.response.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.encore.tfa.controller.user.response.UserDetailResponse;
import com.encore.tfa.service.user.UserService;
@RestController
@RequestMapping("/users")
public class UserController {

	private final UserService userService;

	public UserController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/{user-id}")
	public ResponseEntity<UserDetailResponse> userDetails(@PathVariable("user-id") Long userId){
		return ResponseEntity.ok().body(userService.findUserDetails(userId));
	}

	@PostMapping()
	public ResponseEntity<Long> signUpUser(@RequestBody UserSignUpRequest userSignUpRequest) {
		return ResponseEntity.status(HttpStatus.CREATED).body(userService.signUpUser(userSignUpRequest));
	}

	@GetMapping("/check/{userId}")
	public ResponseEntity<UserCodeCheckResponse> checkUserCodeExist(@PathVariable("userId") Long userId) {
		return ResponseEntity.ok().body(userService.checkUserIdExist(userId));
	}

	@PostMapping("/auth")
	public ResponseEntity<UserLoginResponse> loginUser(@RequestBody UserLoginRequest userLoginRequest) {
		return ResponseEntity.ok().body(userService.loginUser(userLoginRequest));
	}

	@PutMapping("/{userId}")
	public ResponseEntity<Long> updateUser(@PathVariable("userId") Long userId,
													 @RequestBody UserUpdateRequest userUpdateRequest) {
		return ResponseEntity.ok().body(userService.updateUser(userUpdateRequest, userId));
	}

	@DeleteMapping("/{userId}")
	public ResponseEntity<UserDeleteResponse> deleteUser(@PathVariable("userId") Long userId) {
		return ResponseEntity.ok().body(userService.deleteUser(userId));
	}
}
