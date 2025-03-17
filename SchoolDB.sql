-- Crear la base de datos
CREATE DATABASE SchoolDB;
GO

-- Usar la base de datos creada
USE SchoolDB;
GO

-- Crear la tabla de Estudiantes
-- Crear tabla Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaNacimiento DATE,
    Genero CHAR(1)
);

-- Crear tabla Profesores
CREATE TABLE Profesores (
    ProfesorID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Especialidad VARCHAR(50)
);

-- Crear tabla Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NombreCurso VARCHAR(50),
    ProfesorID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
);

-- Crear tabla Inscripciones
CREATE TABLE Inscripciones (
    InscripcionID INT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    FechaInscripcion DATE,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

-- Crear tabla Calificaciones
CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    Calificacion INT,
    FechaCalificacion DATE,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);

-- Insertar datos en la tabla Estudiantes
INSERT INTO Estudiantes (EstudianteID, Nombre, Apellido, FechaNacimiento, Genero)
VALUES 
(1, 'Juan', 'Perez', '2005-05-15', 'M'),
(2, 'Maria', 'Gonzalez', '2006-07-22', 'F'),
(3, 'Carlos', 'Lopez', '2005-11-30', 'M'),
(4, 'Ana', 'Martinez', '2006-03-18', 'F'),
(5, 'Luis', 'Diaz', '2006-02-25', 'M');

-- Insertar datos en la tabla Profesores
INSERT INTO Profesores (ProfesorID, Nombre, Apellido, Especialidad)
VALUES 
(1, 'Pedro', 'Sanchez', 'Matemáticas'),
(2, 'Laura', 'Fernandez', 'Ciencias'),
(3, 'Jose', 'Rodriguez', 'Historia'),
(4, 'Sandra', 'Garcia', 'Lengua'),
(5, 'Miguel', 'Perez', 'Educación Física');

-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (CursoID, NombreCurso, ProfesorID)
VALUES 
(1, 'Álgebra', 1),
(2, 'Biología', 2),
(3, 'Historia Mundial', 3),
(4, 'Literatura', 4),
(5, 'Deportes', 5);

-- Insertar datos en la tabla Inscripciones
INSERT INTO Inscripciones (InscripcionID, EstudianteID, CursoID, FechaInscripcion)
VALUES 
(1, 1, 1, '2024-09-01'),
(2, 2, 2, '2024-09-02'),
(3, 3, 3, '2024-09-03'),
(4, 4, 4, '2024-09-04'),
(5, 5, 5, '2024-09-05'),
(6, 1, 3, '2024-09-01'),
(7, 2, 4, '2024-09-02'),
(8, 3, 5, '2024-09-03'),
(9, 4, 1, '2024-09-04'),
(10, 5, 2, '2024-09-05');

-- Insertar datos en la tabla Calificaciones
INSERT INTO Calificaciones (CalificacionID, EstudianteID, CursoID, Calificacion, FechaCalificacion)
VALUES 
(1, 1, 1, 85, '2024-11-15'),
(2, 2, 2, 90, '2024-11-16'),
(3, 3, 3, 78, '2024-11-17'),
(4, 4, 4, 88, '2024-11-18'),
(5, 5, 5, 92, '2024-11-19'),
(6, 1, 3, 80, '2024-12-01'),
(7, 2, 4, 85, '2024-12-02'),
(8, 3, 5, 75, '2024-12-03'),
(9, 4, 1, 82, '2024-12-04'),
(10, 5, 2, 89, '2024-12-05');
