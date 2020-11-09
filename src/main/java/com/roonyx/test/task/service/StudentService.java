package com.roonyx.test.task.service;

import com.roonyx.test.task.dto.StudentDto;

import java.util.*;

public interface StudentService {

    List<StudentDto> findStudents(Set<String> teachers,
                                  Set<String> subjects,
                                  Set<String> students);
}