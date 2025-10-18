package dto;

import java.util.List;

public class SubjectDto {
    public Long id;
    public String title;
    public String description;
    public List<Long> subjects;
    public List<Long> coachableSets;

    public SubjectDto() {}

    public SubjectDto(Long id, String title, String description,
                      List<Long> subjects, List<Long> coachableSets) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.subjects = subjects;
        this.coachableSets = coachableSets;
    }
}
