package com.encore.tfa.controller.user.response;

import lombok.Getter;

@Getter
public class UserDeleteResponse {
    private final Long userId;
    private final Boolean state;

    public UserDeleteResponse(Long userId, Boolean state) {
        this.userId = userId;
        this.state = state;
    }
}
