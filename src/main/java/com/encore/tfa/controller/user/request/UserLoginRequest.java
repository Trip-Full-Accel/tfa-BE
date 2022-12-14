package com.encore.tfa.controller.user.request;

import lombok.Getter;

@Getter
public class UserLoginRequest {
    private final String userCode;
    private final String nickname;
    private final String email;

    public UserLoginRequest(String userCode, String nickname, String email) {
        this.userCode = userCode;
        this.nickname = nickname;
        this.email = email;
    }
}
