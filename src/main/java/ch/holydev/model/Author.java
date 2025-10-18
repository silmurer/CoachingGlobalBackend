package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.*;

@Entity
@Table(name = "author")
public class Author extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "author_id")
    public Integer id;

    @Column(columnDefinition = "TEXT")
    public String descr;

    @Column(nullable = false)
    public String profession;
}
