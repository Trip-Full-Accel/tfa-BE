package com.encore.tfa.controller.user.response;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class UserDetailResponse {

	String userId;
	String password;
	String nickname;
	String email;
	String phone;

	public UserDetailResponse(String userId, String password, String nickname, String email, String phone) {
		this.userId = userId;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
	}
}
