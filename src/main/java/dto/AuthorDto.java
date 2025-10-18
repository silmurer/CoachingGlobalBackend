package dto;

public class AuthorDto {
    public Long id;
    public String descr;
    public String profession;

    public AuthorDto() {}

    public AuthorDto(Long id, String descr, String profession) {
        this.id = id;
        this.descr = descr;
        this.profession = profession;
    }
}
