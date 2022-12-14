package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.user.request.UserSignUpRequest;
import com.encore.tfa.controller.user.request.UserUpdateRequest;
import com.encore.tfa.controller.user.response.UserDeleteResponse;
import com.encore.tfa.controller.user.response.UserDetailResponse;
import com.encore.tfa.controller.user.response.UserLoginResponse;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.user.dto.UserUpdateDTO;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class UserMapper {

    public static User convertSignUpResquestToEntity(UserSignUpRequest userSignUpRequest) {
        return User.builder()
                .id(userSignUpRequest.getUserId())
                .userCode(userSignUpRequest.getUserCode())
                .state(false)
                .email(userSignUpRequest.getEmail())
                .nickname(userSignUpRequest.getNickName())
                .build();
    }
    public static UserDetailResponse entityToUserDetailsResponse(User user) {
        return new UserDetailResponse(user.getId(),user.getNickname(),user.getEmail());
    }
    public static UserLoginResponse convertEntityToUserLoginResponse(User user) {
        return new UserLoginResponse(user.getId(),user.getNickname());
    }

    public User signUpRequestToEntity(UserSignUpRequest request) {
        return User.builder()
                .id(request.getUserId())
                .userCode(request.getUserCode())
                .nickname(request.getNickName())
                .email(request.getEmail())
                .state(false)
                .build();
    }
    public static UserUpdateDTO convertUpdateRequestToUpdateDTO(UserUpdateRequest request) {
        return UserUpdateDTO.builder()
                .nickname(request.getNickname())
                .email(request.getEmail())
                .build();
    }
    public static UserDeleteResponse entityToUserDeleteResponse(User user) {
        return new UserDeleteResponse(user.getId(), user.getState());
    }
}
