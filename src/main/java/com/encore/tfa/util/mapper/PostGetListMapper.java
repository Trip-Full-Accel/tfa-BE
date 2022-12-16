package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.post.response.PostListGetByUserIdResponse;
import com.encore.tfa.controller.post.response.PostWithUserResponse;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;

@NoArgsConstructor
public class PostGetListMapper {

    private static PostGetListMapper postGetListMapper = null;

    public static PostGetListMapper of(){
        if(postGetListMapper == null){
            postGetListMapper = new PostGetListMapper();
        }
        return postGetListMapper;
    }

    public PostListGetByUserIdResponse postListToResponse(Page<PostWithUserResponse> postPage){
        return new PostListGetByUserIdResponse(postPage.getTotalPages(), postPage.getNumber() + 1,
                postPage.getNumberOfElements(), postPage.getContent());
    }
}
