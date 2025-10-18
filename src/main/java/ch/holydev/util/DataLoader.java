package ch.holydev.util;

import ch.holydev.model.Subject;
import io.quarkus.runtime.StartupEvent;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.event.Observes;
import jakarta.transaction.Transactional;

@ApplicationScoped
public class DataLoader {

    @Transactional
    public void loadData(@Observes StartupEvent event) {
        // Only load if database is empty
        if (Subject.count() > 0) {
            return;
        }

        // Create root subjects
        Subject ichMitGott = new Subject();
        ichMitGott.name = "Ich mit Gott";
        ichMitGott.description = "Relationship with God";
        ichMitGott.persist();

        Subject ichMitMir = new Subject();
        ichMitMir.name = "Ich mit mir";
        ichMitMir.description = "Self-awareness";
        ichMitMir.persist();

        // Create child subjects
        Subject bibel = new Subject();
        bibel.name = "Bibel lesen";
        bibel.parent = ichMitGott;
        bibel.persist();

        Subject beten = new Subject();
        beten.name = "Beten";
        beten.parent = ichMitGott;
        beten.persist();

        System.out.println("✅ Initial data loaded successfully!");
    }
}
