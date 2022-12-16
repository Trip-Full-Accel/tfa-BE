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

    private static UserMapper userMapper = null;

    public static UserMapper of() {
        if (userMapper == null){
            userMapper = new UserMapper();
        }
        return userMapper;
    }

    public User convertSignUpRequestToEntity(UserSignUpRequest userSignUpRequest) {
        return User.builder()
                .id(userSignUpRequest.getUserId())
                .userCode(userSignUpRequest.getUserCode())
                .state(false)
                .email(userSignUpRequest.getEmail())
                .nickname(userSignUpRequest.getNickName())
                .build();
    }
    public UserDetailResponse entityToUserDetailsResponse(User user) {
        return new UserDetailResponse(user.getId(),user.getNickname(),user.getEmail());
    }
    public UserLoginResponse convertEntityToUserLoginResponse(User user) {
        return new UserLoginResponse(user.getId(),user.getNickname());
    }

    public UserUpdateDTO convertUpdateRequestToUpdateDTO(UserUpdateRequest request) {
        return UserUpdateDTO.builder()
                .nickname(request.getNickname())
                .email(request.getEmail())
                .build();
    }
    public UserDeleteResponse entityToUserDeleteResponse(User user) {
        return new UserDeleteResponse(user.getId(), user.getState());
    }
}
