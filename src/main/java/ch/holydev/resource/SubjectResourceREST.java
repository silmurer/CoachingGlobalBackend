package ch.holydev.ressources;

import ch.holydev.model.Subject;
import ch.holydev.repository.SubjectRepository;
import jakarta.inject.Inject;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

@Path("/subjects")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public class SubjectResourceREST {

    @Inject
    SubjectRepository subjectRepository;

        @GET
        public List<Subject> listAll() {
            return subjectRepository.listAll();
        }

        @POST
        public Subject add(Subject subject) {
            subjectRepository.persist(subject);
            return subject;
        }
    }
