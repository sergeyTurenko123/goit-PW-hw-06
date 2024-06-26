-- Table: students
DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student VARCHAR(255) UNIQUE NOT NULL,
    student_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES groups (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: groups
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  group_number VARCHAR(255) UNIQUE NOT NULL);

-- Table: teachers
DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher VARCHAR(255) UNIQUE NOT NULL
);

-- Table: subjects
DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject VARCHAR(255) UNIQUE NOT NULL,
    subject_id INTEGER,
    FOREIGN KEY (subject_id) REFERENCES teachers (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: evaluations
DROP TABLE IF EXISTS evaluations;
CREATE TABLE evaluations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student VARCHAR(255)  NOT NULL,
    subject VARCHAR(255)  NOT NULL,
    evaluation VARCHAR(255) NOT NULL,
    created_at VARCHAR(255)  NOT NULL -- TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);