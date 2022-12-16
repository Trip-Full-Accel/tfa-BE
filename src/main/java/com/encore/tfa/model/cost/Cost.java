package com.encore.tfa.model.cost;

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

    @Builder
    public Cost(Long id, Integer transCost, Integer foodCost, Integer hotelCost, Integer extraCost, Integer totalCost, Integer member) {
        this.id = id;
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
                ", transCost=" + transCost +
                ", foodCost=" + foodCost +
                ", hotelCost=" + hotelCost +
                ", extraCost=" + extraCost +
                ", totalCost=" + totalCost +
                ", member=" + member +
                '}';
    }
}
