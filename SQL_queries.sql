-- ЛАБОРАТОРНАЯ РАБОТА №4
-- SQL запросы для базы данных Students

-- ===========================================
-- 1. СОЗДАНИЕ ТАБЛИЦЫ
-- ===========================================

CREATE TABLE Students (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT(50),
    GroupName TEXT(20),
    AverageGrade REAL
);

-- ===========================================
-- 2. ДОБАВЛЕНИЕ ДАННЫХ
-- ===========================================

INSERT INTO Students (Name, GroupName, AverageGrade)
VALUES
("Иванов Иван", "ИС-21", 4.3),
("Петрова Мария", "ИС-21", 4.9),
("Сидоров Алексей", "ИС-22", 3.8);

-- ===========================================
-- 3. ВЫБОРКА ДАННЫХ
-- ===========================================

-- Запрос 1: Выборка отличников (балл >= 4.5)
SELECT Name, GroupName, AverageGrade
FROM Students
WHERE AverageGrade >= 4.5;

-- Запрос 2: Средний балл по группам
SELECT GroupName, AVG(AverageGrade) AS СреднийБалл
FROM Students
GROUP BY GroupName;

-- Запрос 3: Все студенты (для проверки)
SELECT * FROM Students;