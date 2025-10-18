package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "subject")
public class Subject extends PanacheEntity {

    @Column(name = "title", nullable = false)
    public String title;

    @Column(name = "description", columnDefinition = "TEXT")
    public String description;

    // Self-referencing many-to-many for 'subjects' relationships
    @ManyToMany
    @JoinTable(
            name = "subject_relations",
            joinColumns = @JoinColumn(name = "subject_id"),
            inverseJoinColumns = @JoinColumn(name = "related_subject_id")
    )
    public List<Subject> subjects = new ArrayList<>();

    // Many-to-many relationship with CoachableSet entity
    @ManyToMany
    @JoinTable(
            name = "subject_coachable_set",
            joinColumns = @JoinColumn(name = "subject_id"),
            inverseJoinColumns = @JoinColumn(name = "coachable_set_id")
    )
    public List<CoachableSet> coachableSets = new ArrayList<>();
}
