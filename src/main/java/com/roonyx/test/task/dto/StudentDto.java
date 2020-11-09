package com.roonyx.test.task.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.roonyx.test.task.model.*;
import lombok.*;

import java.util.*;
import java.util.stream.Collectors;

@Getter
@Setter
@NoArgsConstructor
public class StudentDto {

    private Long id;

    @JsonProperty("display_name")
    private String displayName;

    @JsonProperty("subjects")
    private List<SubjectDto> subjects;

    public StudentDto(Student model) {
        this.id = model.getId();
        this.displayName = model.getFirstName() + " " + model.getLastName();
        this.subjects = model.getSubjects().stream()
                .sorted(Comparator.comparing(Subject::getId))
                .map(SubjectDto::new)
                .collect(Collectors.toList());
    }
}
