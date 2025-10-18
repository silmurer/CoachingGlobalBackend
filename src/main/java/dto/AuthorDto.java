package dto;

public class AuthorDto {
    public Integer user;
    public String descr;
    public String profession;

    public AuthorDto() {}

    public AuthorDto(Integer user, String descr, String profession) {
        this.user = user;
        this.descr = descr;
        this.profession = profession;
    }
}
