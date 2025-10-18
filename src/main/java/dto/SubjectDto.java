package dto;

import java.util.List;

public class SubjectDto {
    public Integer id;
    public String title;
    public String description;
    public List<Integer> subjects;
    public List<Integer> coachableSets;

    public SubjectDto() {}

    public SubjectDto(Integer id, String title, String description,
                      List<Integer> subjects, List<Integer> coachableSets) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.subjects = subjects;
        this.coachableSets = coachableSets;
    }
}
