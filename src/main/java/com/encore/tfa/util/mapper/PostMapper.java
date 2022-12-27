package com.encore.tfa.util.mapper;

import com.encore.tfa.controller.post.request.RegisterPostRequest;
import com.encore.tfa.controller.post.request.UpdatePostRequest;
import com.encore.tfa.controller.post.response.PostDetailResponse;
import com.encore.tfa.controller.post.response.RegisterPostResponse;
import com.encore.tfa.controller.post.response.UpdatePostResponse;
import com.encore.tfa.model.post.Post;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.post.dto.PostUpdateDTO;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class PostMapper {

    public static PostDetailResponse convertPostToDetailResponse(Post post){
        return PostDetailResponse.builder()
                .postId(post.getId())
                .userId(post.getUser().getId())
                .title(post.getTitle())
                .content(post.getContent())
                .hits(post.getHits())
                .url(post.getUrl())
                .build();
    }

    public static Post convertReigsterRequestToPost(RegisterPostRequest request, User user){
        return Post.builder()
                .user(user)
                .title((request.getTitle()))
                .content(request.getContent())
                .url(request.getUrl())
                .build();

    }

    public static RegisterPostResponse convertPostToRegisterResponse(Post post){
        return RegisterPostResponse.builder()
                .postId(post.getId())
                .userId(post.getUser().getId())
                .title(post.getTitle())
                .content(post.getContent())
                .url(post.getUrl())
                .build();

    }

    public static PostUpdateDTO convertUpdateRequestToDTO(UpdatePostRequest request){
        return PostUpdateDTO.builder()
                .title(request.getTitle())
                .content(request.getContent())
                .url(request.getUrl())
                .build();
    }

    public static UpdatePostResponse convertPostToUpdateResponse(Post post){
        return UpdatePostResponse.builder()
                .postId(post.getId())
                .title(post.getTitle())
                .content(post.getContent())
                .hits(post.getHits())
                .build();
    }


}


