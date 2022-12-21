package com.encore.tfa.controller.user.request;

import lombok.Getter;

@Getter
public class UserSignUpRequest {
    private final Long userId;
    private final String userCode;
    private final String nickName;
    private final String email;
    private final Boolean state;

    public UserSignUpRequest(Long userId, String userCode, String nickName, String email, Boolean state) {
        this.userId = userId;
        this.userCode = userCode;
        this.nickName = nickName;
        this.email = email;
        this.state = state;
    }
}
