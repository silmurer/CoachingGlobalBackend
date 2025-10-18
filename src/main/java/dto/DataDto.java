package dto;

import java.util.List;

public class DataDto {
    public List<SubjectDto> subjects;
    public List<CoachableSetDto> coachableSets;
    public List<NuggetDto> nuggets;
    public List<AuthorDto> authors;

    public DataDto() {}

    public DataDto(List<SubjectDto> subjects,
                   List<CoachableSetDto> coachableSets,
                   List<NuggetDto> nuggets,
                   List<AuthorDto> authors) {
        this.subjects = subjects;
        this.coachableSets = coachableSets;
        this.nuggets = nuggets;
        this.authors = authors;
    }
}
