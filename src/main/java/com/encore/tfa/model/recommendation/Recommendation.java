package com.encore.tfa.model.recommendation;

import lombok.*;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;

@Entity(name = "recommendation")
@Builder
@DynamicInsert
@Getter
@Setter(AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Recommendation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private Integer cityCode;
    @Column(nullable = false)
    private Integer lat;
    @Column(nullable = false)
    private Integer lng;
    @Column
    private Integer travelCost;
    @Column
    private String url;

    public Recommendation(Long id, String name, Integer cityCode, Integer lat, Integer lng, Integer travelCost, String url) {
        this.id = id;
        this.name = name;
        this.cityCode = cityCode;
        this.lat = lat;
        this.lng = lng;
        this.travelCost = travelCost;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Recommendation{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cityCode=" + cityCode +
                ", lat=" + lat +
                ", lng=" + lng +
                ", travelCost=" + travelCost +
                ", url='" + url + '\'' +
                '}';
    }
}
