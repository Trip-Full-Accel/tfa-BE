package com.encore.tfa.model.place;

import com.encore.tfa.model.BaseEntity;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.place.dto.PlaceUpdateDTO;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;

@Entity
@Builder
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Place extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "course_id")
    private Course course;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;

    @Column(nullable = false, columnDefinition = "varchar(50)")
    private String placeName;

    @Column(nullable = false, columnDefinition = "Double")
    private Double lat;

    @Column(nullable = false, columnDefinition = "Double")
    private Double lng;

    @Column(nullable = false, columnDefinition = "Integer")
    private Integer pathOrder;

    public Place(Long id, Course course, User user, String placeName, Double lat, Double lng, Integer pathOrder) {
        this.id = id;
        this.course = course;
        this.user = user;
        this.placeName = placeName;
        this.lat = lat;
        this.lng = lng;
        this.pathOrder = pathOrder;
    }

    public void updatePlace(PlaceUpdateDTO dto){
        setPlaceName(dto.getPlaceName());
        setLng(dto.getLng());
        setLat(dto.getLat());
        setPathOrder(dto.getPathOrder());
    }


    @Override
    public String toString() {
        return "Place{" +
                "id=" + id +
                ", course=" + course +
                ", user=" + user +
                ", placeName='" + placeName + '\'' +
                ", lat=" + lat +
                ", lng=" + lng +
                ", pathOrder=" + pathOrder +
                '}';
    }
}
