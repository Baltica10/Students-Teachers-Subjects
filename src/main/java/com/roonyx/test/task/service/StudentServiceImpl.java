package com.roonyx.test.task.service;

import com.roonyx.test.task.dto.StudentDto;
import com.roonyx.test.task.model.*;
import com.roonyx.test.task.repository.StudentRepository;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

import static java.util.Objects.isNull;

@Service
public class StudentServiceImpl implements StudentService {

    private final StudentRepository studentRepository;

    public StudentServiceImpl(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @Override
    public List<StudentDto> findStudents(Set<String> teachers,
                                         Set<String> subjects,
                                         Set<String> students) {
        return studentRepository.findAllByParams(teachers).stream()
                .filter(v -> isNull(subjects) || v.getSubjects().stream()
                        .map(Subject::getName)
                        .collect(Collectors.toSet())
                        .containsAll(subjects)
                )
                .filter(v -> isNull(students) || students.contains(v.getFirstName()))
                .sorted(Comparator.comparing(Student::getId))
                .map(StudentDto::new)
                .collect(Collectors.toList());
    }
}