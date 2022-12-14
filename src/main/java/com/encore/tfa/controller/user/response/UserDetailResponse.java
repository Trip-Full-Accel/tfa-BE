package com.encore.tfa.controller.user.response;

import lombok.Getter;
import lombok.ToString;

@Getter
public class UserDetailResponse {

	Long userId;
	String nickname;
	String email;

	public UserDetailResponse(Long userId, String nickname, String email) {
		this.userId = userId;
		this.nickname = nickname;
		this.email = email;
	}
}
