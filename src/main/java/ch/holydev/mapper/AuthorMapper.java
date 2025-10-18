package ch.holydev.mapper;

import ch.holydev.model.Author;
import dto.AuthorDto;

public class AuthorMapper {
    public static AuthorDto toDto(Author e) {
        return new AuthorDto(e.id, e.descr, e.profession);
    }
}
