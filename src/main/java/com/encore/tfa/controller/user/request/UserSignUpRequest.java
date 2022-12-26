package com.encore.tfa.controller.user.request;

import lombok.Getter;

@Getter
public class UserSignUpRequest {
    private final String userCode;
    private final String nickname;
    private final String email;
    private final Boolean state;

    public UserSignUpRequest(String userCode, String nickname, String email, Boolean state) {
        this.userCode = userCode;
        this.nickname = nickname;
        this.email = email;
        this.state = state;
    }
}
