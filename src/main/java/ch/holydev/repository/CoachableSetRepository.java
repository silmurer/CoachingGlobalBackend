package ch.holydev.repository;

import ch.holydev.model.CoachableSet;
import io.quarkus.hibernate.orm.panache.PanacheRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class CoachableSetRepository implements PanacheRepository<CoachableSet> {
}

