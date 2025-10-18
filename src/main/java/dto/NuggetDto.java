package dto;

public class NuggetDto {
    public Long id;
    public String title;
    public String youtubeUrl;
    public String description;
    public Long author;

    public NuggetDto() {}

    public NuggetDto(Long id, String title, String youtubeUrl,
                     String description, Long author) {
        this.id = id;
        this.title = title;
        this.youtubeUrl = youtubeUrl;
        this.description = description;
        this.author = author;
    }
}
