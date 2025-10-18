package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "subject")
public class Subject extends PanacheEntity {
        @Column(nullable = false)
        public String name;

        public String description;

        @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name = "parent_id")
        public Subject parent;

        @OneToMany(mappedBy = "parent", fetch = FetchType.LAZY)
        public List<Subject> children;
    }

