-- Сначала удалим зачисление студента на курс
DELETE FROM Enrollments
WHERE student_id = 1;

-- Затем удалим самого студента
DELETE FROM Students
WHERE student_id = 1;

-- Сначала убедимся, что на курс нет зачисленных студентов
SELECT *
FROM Enrollments
WHERE course_id = 1;

-- Если вышеуказанный запрос вернул пустой результат, можно удалить курс
DELETE FROM Courses
WHERE course_id = 1;