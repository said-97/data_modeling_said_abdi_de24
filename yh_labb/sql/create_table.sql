CREATE SCHEMA IF NOT EXISTS yrkesco;
 
SET search_path TO yrkesco;

CREATE TABLE Utbildningsledare (
    utbildningsledare_id INT PRIMARY KEY,
    förnamn VARCHAR(50),
    efternamn VARCHAR(50),
    email VARCHAR(100),
    telefon VARCHAR(20)
);
