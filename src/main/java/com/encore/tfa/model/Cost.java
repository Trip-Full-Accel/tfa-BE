package com.encore.tfa.model;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.GeneratorType;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@DynamicInsert
@Builder
public class Cost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false ,name = "cousre_id")
    private Course course;

    @Column(nullable = true)
    private Integer transCost;

    @Column(nullable = true)
    private Integer foodCost;

    @Column(nullable = true)
    private Integer hotelCost;

    @Column(nullable = true)
    private Integer extraCost;

    @Column(nullable = true)
    private Integer totalCost;

    @Column(nullable = false, columnDefinition = "default 1")
    private Integer member;

    public Cost(Long id, Course course, Integer transCost, Integer foodCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.id = id;
        this.course = course;
        this.transCost = transCost;
        this.foodCost = foodCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
    }

    @Override
    public String toString() {
        return "Cost{" +
                "id=" + id +
                ", course=" + course +
                ", transCost=" + transCost +
                ", foodCost=" + foodCost +
                ", hotelCost=" + hotelCost +
                ", extraCost=" + extraCost +
                ", totalCost=" + totalCost +
                ", member=" + member +
                '}';
    }
}
