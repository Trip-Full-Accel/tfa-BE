package com.encore.tfa.model;
import com.encore.tfa.model.user.User;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import javax.persistence.*;
@Entity
@Getter
@Setter(AccessLevel.PRIVATE)
@Builder
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private Long id;
    @ManyToOne(fetch =  FetchType.LAZY)
    @JoinColumn(nullable = false, name = "course_id")
    private Course course;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;
    @Column(nullable = false, length = 25)
    private String placeName;
    @Column(nullable = false ,length = 50)
    private Integer cityCode;
    @Column(nullable = false)
    private Float lat;
    @Column(nullable = false)
    private Float lng;
    @Column(nullable = false ,length = 50)
    private Integer pathOrder;

    public Place(Long id, Course course, User user, String placeName, Integer cityCode, Float lat, Float lng, Integer pathOrder) {
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
                ", lat='" + lat + '\'' +
                ", lng='" + lng + '\'' +
                ", pathOrder=" + pathOrder +
                '}';
    }
}