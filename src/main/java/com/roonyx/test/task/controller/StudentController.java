package com.roonyx.test.task.controller;

import com.roonyx.test.task.dto.StudentDto;
import com.roonyx.test.task.service.StudentService;
import io.swagger.annotations.ApiParam;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RequestMapping("/students")
@RestController
public class StudentController {

    private final StudentService service;

    public StudentController(StudentService service) {
        this.service = service;
    }

    //ToDo В реальных условиях нужно искать по уникальным полям, а не по именам
    @GetMapping
    public ResponseEntity<List<StudentDto>> findStudents(
            @ApiParam(value = "Имена учителей: Sergei, Anton, Vitaly, Evgeny, Vlad, Roman")
            @RequestParam(required = false, value = "teachers") Set<String> teachers,

            @ApiParam(value = "Названия предметов: economy, phil, fizika, sxem, mat, chem")
            @RequestParam(required = false, value = "subjects") Set<String> subjects,

            @ApiParam(value = "Имена студентов: Egor, Sasha, Ivan, Petr, Alex, Mike")
            @RequestParam(required = false, value = "students") Set<String> students) {
        return ResponseEntity.ok(service.findStudents(teachers, subjects, students));
    }
}