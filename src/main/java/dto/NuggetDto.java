package dto;

public class NuggetDto {
    public int id;
    public String title;
    public String youtubeUrl;
    public String description;
    public Integer author;

    public NuggetDto() {}

    public NuggetDto(int id, String title, String youtubeUrl,
                     String description, Integer author) {
        this.id = id;
        this.title = title;
        this.youtubeUrl = youtubeUrl;
        this.description = description;
        this.author = author;
    }
}
