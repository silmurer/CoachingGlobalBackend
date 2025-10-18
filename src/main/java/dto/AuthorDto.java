package dto;

public class AuthorDto {
    public Long id;
    public String descr;
    public String profession;
    public AppUserDto appUserDto;

    public AuthorDto() {}

    public AuthorDto(Long id, String descr, String profession, AppUserDto appUserDto) {
        this.id = id;
        this.descr = descr;
        this.profession = profession;
        this.appUserDto = appUserDto;
    }

}
