package com.encore.tfa.model.course;

import com.encore.tfa.model.BaseEntity;
import com.encore.tfa.model.cost.Cost;
import com.encore.tfa.model.place.Place;
import com.encore.tfa.model.user.User;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity(name = "course")
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Where(clause = "state = false")
public class Course extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;

    @Column(nullable = false, columnDefinition = "varchar(20)")
    private String courseName;

    @Column(nullable = false, columnDefinition = "bit(1) default 0", length = 1)
    private Boolean state;

    @OneToMany(mappedBy = "course", cascade = CascadeType.REMOVE)
    private List<Place> places = new ArrayList<>();

    @OneToMany(mappedBy = "course", cascade = CascadeType.REMOVE)
    private List<Cost> costs = new ArrayList<>();

    @Builder
    public Course(Long id, User user, String courseName, Boolean state) {
        this.id = id;
        this.user = user;
        this.courseName = courseName;
        this.state = state;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", user=" + user +
                ", courseName='" + courseName + '\'' +
                ", state=" + state +
                ", places=" + places +
                '}';
    }
}
