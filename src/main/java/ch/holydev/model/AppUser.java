package ch.holydev.model;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.*;

@Entity
@Table(name = "app_user")
public class AppUser extends PanacheEntity {

    @Column(name = "first_name", nullable = false)
    public String firstName;

    @Column(name = "last_name", nullable = false)
    public String lastName;

    @Column(name = "photo_url")
    public String photoUrl;

    @Column(name = "email", nullable = false, unique = true)
    public String email;
}
