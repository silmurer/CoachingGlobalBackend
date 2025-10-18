package ch.holydev.mapper;

import ch.holydev.model.CoachableSet;
import dto.CoachableSetDto;

import java.util.stream.Collectors;

public class CoachableSetMapper {
    public static CoachableSetDto toDto(CoachableSet e) {
        return new CoachableSetDto(
                e.id,
                e.title,
                e.description,
                e.nuggets.stream().map(n -> n.id).collect(Collectors.toList()),
                e.author.id
        );
    }}