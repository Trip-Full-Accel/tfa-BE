package com.encore.tfa.model.cost;

import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.cost.dto.CostUpdateDTO;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Builder
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Where(clause = "state = false")
public class Cost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @Column(nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @Column(nullable = false)
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

    public Cost(Long id, User user, Course course, Integer transCost, Integer foodCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.id = id;
        this.user = user;
        this.course = course;
        this.transCost = transCost;
        this.foodCost = foodCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
    }

    public void updateCost(CostUpdateDTO dto){
        setTransCost(dto.getTransCost());
        setFoodCost(dto.getFoodCost());
        setHotelCost(dto.getHotelCost());
        setExtraCost(dto.getExtraCost());
        setTotalCost(dto.getTotalCost());
        setMember(dto.getExtraCost());
    }

    @Override
    public String toString() {
        return "Cost{" +
                "id=" + id +
                ", user=" + user +
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
