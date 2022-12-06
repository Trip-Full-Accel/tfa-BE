package com.encore.tfa.controller.user.api;

import static com.epages.restdocs.apispec.MockMvcRestDocumentationWrapper.*;

import static org.mockito.Mockito.*;

import static org.springframework.restdocs.payload.PayloadDocumentation.*;
import static org.springframework.restdocs.request.RequestDocumentation.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.restdocs.AutoConfigureRestDocs;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.restdocs.mockmvc.RestDocumentationRequestBuilders;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import com.encore.tfa.controller.user.response.UserDetailResponse;
import com.encore.tfa.service.user.UserService;

@WebMvcTest(controllers = UserController.class)
@AutoConfigureRestDocs
class UserControllerTest {

	@Autowired
	private MockMvc mockMvc;

	@MockBean
	private UserService userService;

	@Test
	@DisplayName("find user information by userId - Success")
	void userDetailsSuccess() throws Exception {
		//given
		String userId = "blabla";
		String password = "qwer1324!";
		String nickname = "스폰지밥";
		String email = "encore@naver.com";
		String phone = "010-1111-2222";

		UserDetailResponse userDetailResponse =
			new UserDetailResponse(userId, password, nickname, email, phone);

		when(userService.findUserDetails(userId)).thenReturn(userDetailResponse);
		//when
		ResultActions resultActions = mockMvc.perform(RestDocumentationRequestBuilders
			.get("/user/{user-id}", userId)
			.accept(MediaType.APPLICATION_JSON));
		//then
		resultActions.andExpect(status().isOk())
			.andDo(document("user-details",
				pathParameters(
					parameterWithName("user-id").description("유저 아이디")
				),
				responseFields(
					fieldWithPath("userId").description("유저 아이디"),
					fieldWithPath("password").description("유저 패스워드"),
					fieldWithPath("nickname").description("유저 닉네임"),
					fieldWithPath("email").description("유저 이메일"),
					fieldWithPath("phone").description("유저 핸드폰 번호")
				)
			)).andDo(print());
	}
}