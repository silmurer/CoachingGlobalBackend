package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;

@Entity
@Table(name = "author")
public class Author extends PanacheEntity {

    @Column(columnDefinition = "TEXT")
    public String descr;

    @Column(nullable = false)
    public String profession;

    @ManyToOne
    public AppUser appUser;
}
