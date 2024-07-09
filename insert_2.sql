INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number, address, enrollment_date, gpa)
VALUES
('Иван', 'Иванов', '2000-01-15', 'ivan.ivanov@example.com', '555-1234', 'ул. Главная 123', '2020-09-01', 3.5),
('Анна', 'Смирнова', '1999-02-20', 'anna.smirnova@example.com', NULL, 'ул. Еловая 456', '2020-09-01', 3.8),
('Елена', 'Петрова', '2001-03-25', 'elena.petrova@example.com', '555-5678', 'ул. Дубовая 789', '2021-01-10', NULL),
('Петр', 'Сидоров', '2000-04-30', 'petr.sidorov@example.com', '555-8765', NULL, '2021-01-10', NULL),
('Сергей', 'Кузнецов', '1998-05-05', 'sergey.kuznetsov@example.com', NULL, 'ул. Сосновая 321', '2019-08-20', 3.7);

INSERT INTO Courses (course_name, description, credits, department)
VALUES
('Системы баз данных', 'Введение в базы данных и SQL', 4, 'Компьютерные науки'),
('Математический анализ I', 'Основные понятия математического анализа', 3, 'Математика'),
('Английская литература', 'Изучение английских литературных произведений', 3, 'Искусство');

INSERT INTO Enrollments (student_id, course_id, enrollment_date, grade)
VALUES
(1, 1, '2021-09-01', 'A'),
(2, 2, '2022-09-01', 'B'),
(3, 3, '2022-09-01', NULL),
(4, 2, '2023-09-01', 'C'),
(5, 2, '2024-09-01', NULL);