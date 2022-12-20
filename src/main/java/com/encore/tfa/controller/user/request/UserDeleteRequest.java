package com.encore.tfa.controller.user.request;

import lombok.Getter;

@Getter
public class UserDeleteRequest {
    private final Long userId;

    public UserDeleteRequest(Long userId) {
        this.userId = userId;
    }
}
