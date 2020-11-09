package com.roonyx.test.task.dto;

import com.roonyx.test.task.model.*;
import lombok.*;

import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@NoArgsConstructor
public class SubjectDto {

    private String name;
    private String description;
    private List<String> teachers;

    public SubjectDto(Subject model) {
        this.name = model.getName();
        this.description = model.getDescription();
        this.teachers = model.getTeachers().stream()
                .map(Teacher::getFirstName)
                .collect(Collectors.toList());
    }
}
