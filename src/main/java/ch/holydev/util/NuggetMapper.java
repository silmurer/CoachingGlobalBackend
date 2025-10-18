package ch.holydev.util;

import ch.holydev.model.Nugget;
import dto.NuggetDto;

public class NuggetMapper {
    public static NuggetDto toDto(Nugget e) {
        return new NuggetDto(
                e.id,
                e.title,
                e.youtubeUrl,
                e.description,
                e.author.id
        );
    }
}
