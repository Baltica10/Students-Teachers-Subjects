INSERT INTO students (id, first_name, last_name) VALUES (1, 'Egor','Egorov');
INSERT INTO students (id, first_name, last_name) VALUES (2, 'Sasha','Sashin');
INSERT INTO students (id, first_name, last_name) VALUES (3, 'Ivan','Ivanov');
INSERT INTO students (id, first_name, last_name) VALUES (4, 'Petr','Petrov');
INSERT INTO students (id, first_name, last_name) VALUES (5, 'Alex','Alexov');
INSERT INTO students (id, first_name, last_name) VALUES (6, 'Mike','Miken');

INSERT INTO teachers (id, first_name, last_name) VALUES (1, 'Sergei','Sergeev');
INSERT INTO teachers (id, first_name, last_name) VALUES (2, 'Anton','Antonov');
INSERT INTO teachers (id, first_name, last_name) VALUES (3, 'Vitaly','Vitalyn');
INSERT INTO teachers (id, first_name, last_name) VALUES (4, 'Evgeny','Evgenyn');
INSERT INTO teachers (id, first_name, last_name) VALUES (5, 'Vlad','Vladov');
INSERT INTO teachers (id, first_name, last_name) VALUES (6, 'Roman','Romanov');

INSERT INTO subjects (id, name, description) VALUES (1, 'economy','Экономика');
INSERT INTO subjects (id, name, description) VALUES (2, 'phil','Философия');
INSERT INTO subjects (id, name, description) VALUES (3, 'fizika','Физика');
INSERT INTO subjects (id, name, description) VALUES (4, 'sxem','Схемотехника');
INSERT INTO subjects (id, name, description) VALUES (5, 'mat','Математика');
INSERT INTO subjects (id, name, description) VALUES (6, 'chem','Химия');

INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (1, 1);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (1, 2);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (2, 5);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (2, 6);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (3, 1);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (3, 4);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (4, 2);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (4, 1);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (5, 1);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (5, 4);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (6, 2);
INSERT INTO subjects_teachers_ref (subject_id, teacher_id) VALUES (6, 6);

INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (1, 2);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (1, 3);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (1, 4);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (1, 5);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (2, 1);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (2, 3);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (2, 4);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (2, 6);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (3, 1);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (3, 2);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (3, 5);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (3, 6);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (4, 6);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (4, 2);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (4, 3);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (4, 1);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (5, 5);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (5, 2);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (5, 4);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (5, 1);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (6, 1);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (6, 2);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (6, 3);
INSERT INTO subjects_students_ref (subject_id, student_id) VALUES (6, 4);

