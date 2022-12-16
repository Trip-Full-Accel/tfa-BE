package com.encore.tfa.controller.user.request;

import lombok.Getter;

@Getter
public class UserLoginRequest {
    private final String userCode;
    private final String nickname;

    public UserLoginRequest(String userCode, String nickname, String email) {
        this.userCode = userCode;
        this.nickname = nickname;
    }
}
