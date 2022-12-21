package com.encore.tfa.controller.user.request;

import lombok.Getter;

@Getter
public class UserUpdateRequest {
    private final String nickname;
    private final String email;

    public UserUpdateRequest(String nickname, String email) {
        this.nickname = nickname;
        this.email = email;
    }
}
