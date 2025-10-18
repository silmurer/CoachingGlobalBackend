package dto;

import java.util.List;

public class CoachableSetDto {
    public Integer id;
    public String title;
    public String description;
    public List<Integer> nuggets;
    public Integer author;

    public CoachableSetDto() {}

    public CoachableSetDto(Integer id, String title, String description,
                           List<Integer> nuggets, Integer author) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.nuggets = nuggets;
        this.author = author;
    }
}
