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

    private static PostMapper postMapper = null;

    public static PostMapper of(){
        if(postMapper == null){
            postMapper = new PostMapper();
        }
        return postMapper;
    }

    public PostDetailResponse convertPostToDetailResponse(Post post){
        return PostDetailResponse.builder()
                .postId(post.getId())
                .userId(post.getUser().getId())
                .title(post.getTitle())
                .content(post.getContent())
                .hits(post.getHits())
                .createdTime(post.getCreatedDate())
                .modifiedTime(post.getModifiedDate())
                .build();
    }

    public Post convertReigsterRequestToPost(RegisterPostRequest request, User user){
        return Post.builder()
                .user(user)
                .title((request.getTitle()))
                .content(request.getContent())
                .createdDate(request.getCreatedTime())
                .build();

    }

    public RegisterPostResponse convertPostToRegisterResponse(Post post){
        return RegisterPostResponse.builder()
                .postId(post.getId())
                .userId(post.getUser().getId())
                .title(post.getTitle())
                .content(post.getContent())
                .createdTime(post.getCreatedDate())
                .build();

    }

    public PostUpdateDTO convertUpdateRequestToDTO(UpdatePostRequest request, User user){
        return PostUpdateDTO.builder()
                .title(request.getTitle())
                .content(request.getContent())
                .modifiedDate(request.getModifiedDate())
                .build();
    }

    public UpdatePostResponse convertPostToUpdateResponse(Post post){
        return UpdatePostResponse.builder()
                .postId(post.getId())
                .title(post.getTitle())
                .content(post.getContent())
                .hits(post.getHits())
                .modifiedDate(post.getModifiedDate())
                .build();
    }



}


