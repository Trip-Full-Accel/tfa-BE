package com.encore.tfa.model.place;

import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;

@Entity
@Builder
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Place {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "course_id")
    private Course course;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;

    @Column(nullable = false)
    private String placeName;

    @Column(nullable = false)
    private Integer cityCode;

    @Column(nullable = false)
    private Double lat;

    @Column(nullable = false)
    private Double lng;

    @Column(nullable = false)
    private Integer pathOrder;

    public Place(Long id, Course course, User user, String placeName, Integer cityCode, Double lat, Double lng, Integer pathOrder) {
        this.id = id;
        this.course = course;
        this.user = user;
        this.placeName = placeName;
        this.cityCode = cityCode;
        this.lat = lat;
        this.lng = lng;
        this.pathOrder = pathOrder;
    }

    @Override
    public String toString() {
        return "Place{" +
                "id=" + id +
                ", course=" + course +
                ", user=" + user +
                ", placeName='" + placeName + '\'' +
                ", cityCode=" + cityCode +
                ", lat=" + lat +
                ", lng=" + lng +
                ", pathOrder=" + pathOrder +
                '}';
    }
}
