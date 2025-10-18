package dto;

import java.util.List;

public class CoachableSetDto {
    public Long id;
    public String title;
    public String description;
    public List<Long> nuggets;
    public Long author;

    public CoachableSetDto() {}

    public CoachableSetDto(Long id, String title, String description,
                           List<Long> nuggets, Long author) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.nuggets = nuggets;
        this.author = author;
    }
}
