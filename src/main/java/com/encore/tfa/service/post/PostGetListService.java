package com.encore.tfa.service.post;

import com.encore.tfa.controller.post.request.PostListGetByUserIdRequest;
import com.encore.tfa.controller.post.response.PostListGetByUserIdResponse;
import com.encore.tfa.controller.post.response.PostWithUserResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.user.UserRepository;
import com.encore.tfa.repository.post.PostListSearchRepository;
import com.encore.tfa.util.mapper.PostGetListMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class PostGetListService {

    private final PostListSearchRepository postListSearchRepository;
    private final UserRepository userRepository;

    public PostGetListService(PostListSearchRepository postListSearchRepository, UserRepository userRepository) {
        this.postListSearchRepository = postListSearchRepository;
        this.userRepository = userRepository;
    }

    public PostListGetByUserIdResponse getPostListLByUserId(
            PostListGetByUserIdRequest postListGetByUserIdRequest){
        User user = userRepository.findById(postListGetByUserIdRequest.getUserId())
                .orElseThrow(()->new NonExistResourceException("User could not be fouhnd"));

        Page<PostWithUserResponse> postPage = postListSearchRepository.getPostListPage(user.getId(),
                convertPageRequest(postListGetByUserIdRequest));

        return PostGetListMapper.of().postListToResponse(postPage);
    }

    private static PageRequest convertPageRequest(PostListGetByUserIdRequest request){
        return PageRequest.of(request.getPageNum() - 1,
                request.getAmount());
    }


}
