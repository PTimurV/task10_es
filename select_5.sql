-- Получить список всех студентов, зачисленных на определенный курс, отсортированный по фамилии
SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.course_id = 2
ORDER BY s.last_name;

-- Получить список курсов с указанием количества студентов, зачисленных на каждый курс
SELECT c.course_name, COUNT(e.student_id) as student_count
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Получить список студентов, которые имеют средний балл (GPA) выше определенного значения
SELECT first_name, last_name, gpa
FROM Students
WHERE gpa > 3.0;

-- Получить полную информацию о зачислениях (включая имя студента и название курса), произошедших в течение последнего месяца
SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.enrollment_date > CURRENT_DATE - INTERVAL '1 month';

-- Получить список студентов, у которых нет номера телефона, отсортированный по дате зачисления
SELECT first_name, last_name, enrollment_date
FROM Students
WHERE phone_number IS NULL
ORDER BY enrollment_date;

-- Получить список курсов, которые проводятся в определенном департаменте, и отсортируйте их по количеству кредитов
SELECT course_name, credits
FROM Courses
WHERE department = 'Математика'
ORDER BY credits;

-- Получить полную информацию о студентах, включая курсы, на которые они зачислены, и их оценки по этим курсам
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;