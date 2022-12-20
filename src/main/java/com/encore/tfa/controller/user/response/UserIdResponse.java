package com.encore.tfa.controller.user.response;

import lombok.Getter;

@Getter
public class UserIdResponse {
    Long userId;

    public UserIdResponse(Long userId) {
        this.userId = userId;
    }
}
