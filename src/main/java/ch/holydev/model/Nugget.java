package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;

@Entity
@Table(name = "nugget")
public class Nugget extends PanacheEntity {

    @Column(nullable = false)
    public String title;

    @Column(name = "youtube_url")
    public String youtubeUrl;

    @Column(columnDefinition = "TEXT")
    public String description;

    @ManyToOne
    @JoinColumn(name = "author_id", nullable = false)
    public Author author;
}
