package ch.holydev.util;

import ch.holydev.model.Subject;
import dto.SubjectDto;

import java.util.stream.Collectors;


public class SubjectMapper {
    public static SubjectDto toDto(Subject e) {
        return new SubjectDto(
                e.id,
                e.title,
                e.description,
                e.subjects.stream().map(s -> s.id).collect(Collectors.toList()),
                e.coachableSets.stream().map(cs -> cs.id).collect(Collectors.toList())
        );
    }
}
