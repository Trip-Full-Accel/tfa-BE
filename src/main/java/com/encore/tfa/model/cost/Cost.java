package com.encore.tfa.model.cost;

import com.encore.tfa.model.BaseEntity;
import com.encore.tfa.model.course.Course;
import com.encore.tfa.model.user.User;
import com.encore.tfa.service.cost.dto.CostUpdateDTO;
import lombok.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity(name = "cost")
@Builder
@Getter
@Setter(AccessLevel.PRIVATE)
@DynamicInsert
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Where(clause = "state = false")
public class Cost extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false, name = "course_id")
    private Course course;

    @Column(nullable = true, columnDefinition = "int")
    private Integer transCost;

    @Column(nullable = true, columnDefinition = "int")
    private Integer foodCost;

    @Column(nullable = true, columnDefinition = "int")
    private Integer hotelCost;

    @Column(nullable = true, columnDefinition = "int")
    private Integer extraCost;

    @Column(nullable = true, columnDefinition = "int")
    private Integer totalCost;

    @Column(nullable = false, columnDefinition = "int default 1")
    private Integer member;

    @Column(columnDefinition = "bit(1) default 0", length = 1)
    private Boolean state;

    public Cost(Long id, User user, Course course, Integer transCost, Integer foodCost, Integer hotelCost,
        Integer extraCost, Integer totalCost, Integer member, Boolean state) {
        this.id = id;
        this.user = user;
        this.course = course;
        this.transCost = transCost;
        this.foodCost = foodCost;
        this.hotelCost = hotelCost;
        this.extraCost = extraCost;
        this.totalCost = totalCost;
        this.member = member;
        this.state = state;
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
            ", state=" + state +
            '}';
    }
}
