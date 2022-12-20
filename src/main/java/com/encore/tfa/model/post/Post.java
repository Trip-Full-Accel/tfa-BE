package com.encore.tfa.model.post;

import com.encore.tfa.model.user.User;
import com.encore.tfa.service.post.dto.PostUpdateDTO;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Builder
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor  (access = AccessLevel.PROTECTED)
@Where(clause = "state = false")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;

    @Column(length = 30, nullable = false)
    private String title;

    @Column(length = 200, nullable = false)
    private String content;

    @Column(nullable = false, columnDefinition = "integer default 0")
    private Integer hits;

    @Column(nullable = false, columnDefinition = "TIMESTAMP")
    private LocalDateTime createdDate = LocalDateTime.now();

    @Column(nullable = true, columnDefinition = "TIMESTAMP")
    private LocalDateTime modifiedDate;

    @Column(nullable = false, columnDefinition = "bit(1) default 0", length = 1)
    private Boolean state;

    public Post(Long id, User user, String title, String content, Integer hits, LocalDateTime createdDate, LocalDateTime modifiedDate, Boolean state) {
        this.id = id;
        this.user = user;
        this.title = title;
        this.content = content;
        this.hits = hits;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
        this.state = state;
    }

    public void updatePost(PostUpdateDTO dto){
        setTitle(dto.getTitle());
        setContent(dto.getContent());
        setModifiedDate(dto.getModifiedDate());
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
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", hits=" + hits +
                ", createdDate=" + createdDate +
                ", modifiedDate=" + modifiedDate +
                ", state=" + state +
                '}';
    }
}
