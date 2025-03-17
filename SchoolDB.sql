-- Crear la base de datos
CREATE DATABASE SchoolDB;
GO

-- Usar la base de datos creada
USE SchoolDB;
GO

-- Crear la tabla de Estudiantes
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    EnrollmentDate DATE
);
GO

-- Crear la tabla de Cursos
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName NVARCHAR(100),
    Credits INT
);
GO

-- Crear la tabla de Inscripciones
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    Grade INT
);
GO