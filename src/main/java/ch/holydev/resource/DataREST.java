package ch.holydev.resource;

import dto.DataDto;
import dto.SubjectDto;
import dto.CoachableSetDto;
import dto.NuggetDto;
import dto.AuthorDto;
import ch.holydev.mapper.SubjectMapper;
import ch.holydev.mapper.CoachableSetMapper;
import ch.holydev.mapper.NuggetMapper;
import ch.holydev.mapper.AuthorMapper;
import ch.holydev.repository.SubjectRepository;
import ch.holydev.repository.CoachableSetRepository;
import ch.holydev.repository.NuggetRepository;
import ch.holydev.repository.AuthorRepository;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import java.util.List;
import java.util.stream.Collectors;

@Path("/data")
@Produces(MediaType.APPLICATION_JSON)
public class DataREST {

    @Inject
    SubjectRepository subjectRepo;

    @Inject
    CoachableSetRepository coachableSetRepo;

    @Inject
    NuggetRepository nuggetRepo;

    @Inject
    AuthorRepository authorRepo;

    @GET
    public DataDto getAllData() {
        List<SubjectDto> subjects = subjectRepo.listAll().stream()
                .map(SubjectMapper::toDto)
                .collect(Collectors.toList());

        List<CoachableSetDto> coachableSets = coachableSetRepo.listAll().stream()
                .map(CoachableSetMapper::toDto)
                .collect(Collectors.toList());

        List<NuggetDto> nuggets = nuggetRepo.listAll().stream()
                .map(NuggetMapper::toDto)
                .collect(Collectors.toList());

        List<AuthorDto> authors = authorRepo.listAll().stream()
                .map(AuthorMapper::toDto)
                .collect(Collectors.toList());

        return new DataDto(subjects, coachableSets, nuggets, authors);
    }
}
