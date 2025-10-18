package ch.holydev;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

@Path("/courses")
public class CoursesResource {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Course> getCourses() {
        // TODO: Replace with actual database query
        return List.of(
        );
    }
    
    public record Course(
        Long id,
        String title,
        String description,
        Integer durationMinutes,
        String thumbnailUrl
    ) {}
}
