package com.encore.tfa.controller.user.response;

import lombok.Getter;

@Getter
public class UserLoginResponse {
    Long userId;
    String nickname;

    public UserLoginResponse(Long userId, String nickname) {
        this.userId = userId;
        this.nickname = nickname;
    }
}
