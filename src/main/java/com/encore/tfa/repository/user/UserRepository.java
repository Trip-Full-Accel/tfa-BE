package com.encore.tfa.repository.user;

import java.util.Optional;

import com.encore.tfa.model.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> { //<엔티티, PK타입>
    Optional<User> findByUserCode(String userCode);
    User findExistUserByUserCode(String userCode);

}
