package com.encore.tfa.controller.user.response;

import lombok.Getter;

@Getter
public class UserCodeCheckResponse {
    public final boolean userExist;

    public UserCodeCheckResponse(boolean userExist) { this.userExist = userExist; }
}
