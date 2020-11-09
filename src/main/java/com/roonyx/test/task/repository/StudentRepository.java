package com.roonyx.test.task.repository;

import com.roonyx.test.task.model.Student;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

    @Query("SELECT st " +
            "FROM Student st " +
            "LEFT JOIN FETCH st.subjects sb " +
            "LEFT JOIN FETCH sb.teachers t " +
            "WHERE t.firstName IN :teachers")
    Set<Student> findAllByParams(@Param("teachers") Iterable<String> teachers);
}