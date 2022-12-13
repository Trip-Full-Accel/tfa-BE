package com.encore.tfa.controller.post.api;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.restdocs.AutoConfigureRestDocs;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;

import java.time.LocalDate;

@WebMvcTest(controllers = PostController.class)
@AutoConfigureRestDocs
public class PostControllerTest {

    @Test
    @DisplayName("Get all post")
    void getAllPost() throws Exception {
        //given
        final Long postId;
        final String title;
        final String cotent;
        final LocalDate updatedAt;




        //when

        //then
    }

}
