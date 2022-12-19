package com.encore.tfa.repository;

import com.encore.tfa.model.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> { //<엔티티, PK타입>
    Optional<User> findByUserCode(String userCode);
}
