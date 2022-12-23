package com.encore.tfa.model.post;

import com.encore.tfa.model.BaseEntity;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.post.dto.PostUpdateDTO;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity(name = "post")
@Builder
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor  (access = AccessLevel.PROTECTED)
@Where(clause = "state = false")
public class Post extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;
    @Column(length = 30, nullable = false)
    private String title;
    @Column(length = 200, nullable = false)
    private String content;
    @Column(nullable = false, columnDefinition = "int default 0")
    private Integer hits;
    @Column(nullable = true)
    private String url;
    @Column(columnDefinition = "bit(1) default 0", length = 1)
    private Boolean state;

    public Post(Long id, User user, String title, String content, Integer hits, String url, Boolean state) {
        this.id = id;
        this.user = user;
        this.title = title;
        this.content = content;
        this.hits = hits;
        this.url = url;
        this.state = state;
    }

    public void updatePost(PostUpdateDTO dto){
        setTitle(dto.getTitle());
        setContent(dto.getContent());
        setUrl(dto.getUrl());
    }

    public void deletePost() {
        setState(true);
    }

    public void increaseHits() {
        this.hits++;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", user=" + user +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", hits=" + hits +
                ", url='" + url + '\'' +
                ", state=" + state +
                '}';
    }
}
