package com.encore.tfa.service.user;

import com.encore.tfa.controller.user.request.UserLoginRequest;
import com.encore.tfa.controller.user.request.UserSignUpRequest;
import com.encore.tfa.controller.user.request.UserUpdateRequest;
import com.encore.tfa.controller.user.response.UserCodeCheckResponse;
import com.encore.tfa.controller.user.response.UserDeleteResponse;
import com.encore.tfa.controller.user.response.UserLoginResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.user.UserRepository;
import com.encore.tfa.util.mapper.UserMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.encore.tfa.controller.user.response.UserDetailResponse;

import java.util.Optional;

@Service
public class UserService {

	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Transactional(readOnly = true)
	public UserDetailResponse findUserDetails(Long userId){
		User user = userRepository.findById(userId)
				.orElseThrow(() -> new NonExistResourceException("user does not exist"));
		return UserMapper.of().entityToUserDetailsResponse(user);
	}

	@Transactional
	public Long signUpUser(UserSignUpRequest userSignUpRequest) {
		Optional<User> user = userRepository.findByUserCode(userSignUpRequest.getUserCode()); // 중복가입을 방지하기 위한 코드 체크
		if(user.isPresent())
			throw new NonExistResourceException("User Id already existed");

		User newUser = UserMapper.of().convertSignUpRequestToEntity(userSignUpRequest);
		User savedUser = userRepository.save(newUser);

		return savedUser.getId();
	}

	@Transactional(readOnly = true)
	public UserCodeCheckResponse checkUserIdExist(Long userId) {
		return new UserCodeCheckResponse(userRepository.findById(userId).isPresent());
	}

	@Transactional(readOnly = true)
	public User checkUserIdExistIsCorrect(String userCode) {
		return userRepository.findByUserCode(userCode)
				.orElseThrow(() -> new NonExistResourceException("user does not exist"));
	}

	@Transactional
	public UserLoginResponse loginUser(UserLoginRequest userLoginRequest) {
		User user = checkUserIdExistIsCorrect(userLoginRequest.getUserCode());

		return UserMapper.of().convertEntityToUserLoginResponse(user);
	}

	@Transactional
	public Long updateUser(UserUpdateRequest userUpdateRequest, Long userId) {
		User user = userRepository.findById(userId)
				.orElseThrow(()-> new NonExistResourceException("User could not be found"));

		user.updateUser(
				UserMapper.of().convertUpdateRequestToUpdateDTO(userUpdateRequest));
		return userId;
	}

	@Transactional
	public UserDeleteResponse deleteUser(Long userId) {
		User user = userRepository.findById(userId)
				.orElseThrow(() -> new NonExistResourceException("User could not delete"));
		user.deleteUser();
		return UserMapper.of().entityToUserDeleteResponse(user);
	}
}
