package com.encore.tfa.model.user;

import com.encore.tfa.service.user.dto.UserUpdateDTO;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;

@Entity
@Getter
@Setter(AccessLevel.PRIVATE)
@Builder
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 100, unique = true)
    private String userCode;

    @Column(nullable = false, length = 10, unique = true)
    private String nickname;

    @Column(nullable = true, length = 64)
    private String email;

    @Column(nullable = false, columnDefinition = "bit(1) default 0", length = 1)
    private Boolean state;

    public User(Long id, String userCode, String nickname, String email, Boolean state) {
        this.id = id;
        this.userCode = userCode;
        this.nickname = nickname;
        this.email = email;
        this.state = state;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userCode='" + userCode + '\'' +
                ", nickname='" + nickname + '\'' +
                ", email='" + email + '\'' +
                ", state=" + state +
                '}';
    }

    public void updateUser(UserUpdateDTO dto) {
        setNickname(dto.getNickname());
        setEmail(dto.getEmail());
    }
    public void deleteUser() {
        this.state = true;
    }
}
