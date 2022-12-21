package com.encore.tfa.repository.post;


import com.encore.tfa.controller.post.response.PostWithUserResponse;
import com.encore.tfa.model.post.Post;
import com.encore.tfa.model.post.QPost;
import com.encore.tfa.model.user.QUser;
import com.querydsl.core.types.Projections;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QuerydslPostListSearchRepository extends QuerydslRepositorySupport implements PostListSearchRepository {

    private QPost qPost = QPost.post;
    private QUser qUser = QUser.user;

    public QuerydslPostListSearchRepository() {super(Post.class);}

    @Override
    public Page<PostWithUserResponse> getPostListPage(Long userId, Pageable pageable) {
        List<PostWithUserResponse> postWithUserResponsesList
                = getPostWithUserResponseList(userId, pageable);

        Long postAmount = countPostAmountByUser(userId);

        return new PageImpl<>(postWithUserResponsesList, pageable, postAmount);
    }

    private Long countPostAmountByUser(Long userId){
        return from(qPost)
                .select(qPost.count())
                .where(qPost.user.id.eq(userId))
                .fetchOne();
    }

    private List<PostWithUserResponse> getPostWithUserResponseList(Long userId, Pageable pageable){
        return from(qPost)
                .select(Projections.constructor(PostWithUserResponse.class,
                        qUser.id,
                        qPost.id,
                        qPost.title,
                        qPost.content,
                        qPost.url))
                .leftJoin(qUser)
                .fetchJoin()
                .on(qUser.id.eq(qPost.user.id))
                .where(qPost.user.id.eq(userId))
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .orderBy(qPost.id.desc()).fetch();
    }
}





