package ch.holydev.repository;

import ch.holydev.model.Subject;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
    public class SubjectRepository implements PanacheRepository<Subject> {

        // You can add custom queries here as needed
    }
