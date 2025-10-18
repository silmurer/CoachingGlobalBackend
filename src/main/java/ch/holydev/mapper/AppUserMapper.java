package ch.holydev.mapper;

import ch.holydev.model.AppUser;
import dto.AppUserDto;

public class AppUserMapper {
    public static AppUserDto toDto(AppUser u) {
        return new AppUserDto(
                u.id,
                u.firstName,
                u.lastName,
                u.email
        );
    }
}
