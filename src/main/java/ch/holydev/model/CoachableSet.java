package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "coachable_set")
public class CoachableSet extends PanacheEntity {

    @Column(nullable = false)
    public String title;

    @Column(columnDefinition = "TEXT")
    public String description;

    @ManyToMany
    @JoinTable(
            name = "coachable_set_nugget",
            joinColumns = @JoinColumn(name = "coachable_set_id"),
            inverseJoinColumns = @JoinColumn(name = "nugget_id")
    )
    public List<Nugget> nuggets = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "author_id", nullable = false)
    public Author author;
}
