DROP SCHEMA IF EXISTS yrkesco CASCADE;

CREATE SCHEMA IF NOT EXISTS yrkesco;

SET search_path TO yrkesco;

-- Utbildningsledare
CREATE TABLE IF NOT EXISTS utbildningsledare (
    utbildningsledare_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(50),
    efternamn VARCHAR(50),
    email VARCHAR(100),
    telefon VARCHAR(20)
);

-- Program
CREATE TABLE IF NOT EXISTS program (
    program_id SERIAL PRIMARY KEY,
    program_namn VARCHAR(100),
    beskrivning TEXT
);

-- Skola
CREATE TABLE IF NOT EXISTS skola (
    skola_id SERIAL PRIMARY KEY,
    namn VARCHAR(100),
    adress VARCHAR(100),
    stad VARCHAR(100)
);

-- Klass
CREATE TABLE IF NOT EXISTS klass (
    klass_id SERIAL PRIMARY KEY,
    program_id INT REFERENCES program(program_id),
    skola_id INT REFERENCES skola(skola_id),
    utbildningsledare_id INT REFERENCES utbildningsledare(utbildningsledare_id)
);

-- Student
CREATE TABLE IF NOT EXISTS student (
    student_id SERIAL PRIMARY KEY,
    klass_id INT REFERENCES klass(klass_id),
    förnamn VARCHAR(50),
    efternamn VARCHAR(50),
    email VARCHAR(100)
);

-- Student_info
CREATE TABLE IF NOT EXISTS student_info (
    student_id INT PRIMARY KEY REFERENCES student(student_id),
    personnummer CHAR(12)
);

-- Kurs
CREATE TABLE IF NOT EXISTS kurs (
    kurs_id SERIAL PRIMARY KEY,
    namn VARCHAR(100),
    kurs_namn VARCHAR(100),
    kurs_kod VARCHAR(20),
    beskrivning TEXT
);

-- Program_kurs
CREATE TABLE IF NOT EXISTS program_kurs (
    program_id INT REFERENCES program(program_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (program_id, kurs_id)
);

-- Utbildare
CREATE TABLE IF NOT EXISTS utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(50),
    efternamn VARCHAR(50),
    email VARCHAR(100),
    telefon VARCHAR(20)
);

-- Kurs_klass
CREATE TABLE IF NOT EXISTS kurs_klass (
    kurs_klass_id SERIAL PRIMARY KEY,
    klass_id INT REFERENCES klass(klass_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    utbildare_id INT REFERENCES utbildare(utbildare_id)
);

-- Utbildningskurs
CREATE TABLE IF NOT EXISTS utbildningskurs (
    utbildare_id INT REFERENCES utbildare(utbildare_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (utbildare_id, kurs_id)
);

-- Företag
CREATE TABLE IF NOT EXISTS företag (
    företags_id SERIAL PRIMARY KEY,
    namn VARCHAR(100),
    org_nummer VARCHAR(20),
    adress VARCHAR(100)
);

-- Konsult
CREATE TABLE IF NOT EXISTS konsult (
    utbildare_id INT PRIMARY KEY REFERENCES utbildare(utbildare_id),
    konsult_företag_id INT REFERENCES företag(företags_id)
);
