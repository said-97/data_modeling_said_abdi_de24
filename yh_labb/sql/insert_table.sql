SET search_path TO yrkesco;

-- Utbildningsledare
INSERT INTO utbildningsledare (förnamn, efternamn, email, telefon) VALUES
('Lina', 'Hassan', 'lina.hassan@example.com', '0701122334'),
('Johan', 'Berg', 'johan.berg@example.com', '0705566778');

-- Skola
INSERT INTO skola (namn, adress, stad) VALUES
('Yrkesakademin', 'Sveavägen 12', 'Stockholm'),
('Campus Göteborg', 'Norra Hamngatan 8', 'Göteborg');

-- Program
INSERT INTO program (program_namn, beskrivning) VALUES
('Webbutveckling', 'Fokus på HTML, CSS, JavaScript och moderna ramverk.'),
('Cybersäkerhet', 'Lär dig om nätverk, säkerhet och incidenthantering.');

-- Klass
INSERT INTO klass (program_id, skola_id, utbildningsledare_id) VALUES
(1, 1, 1),
(2, 2, 2);

-- Student
INSERT INTO student (klass_id, förnamn, efternamn, email) VALUES
(1, 'Fatima', 'Ali', 'fatima.ali@student.se'),
(2, 'Jonas', 'Ekström', 'jonas.ekstrom@student.se');

-- Student_info
INSERT INTO student_info (student_id, personnummer) VALUES
(1, '200202022222'),
(2, '199811112222');

-- Kurs
INSERT INTO kurs (namn, kurs_namn, kurs_kod, beskrivning) VALUES
('Frontend-utveckling', 'HTML & CSS', 'FRONT1', 'Lär dig skapa webbplatser med HTML och CSS'),
('IT-säkerhet', 'Grunder i cybersäkerhet', 'SEC1', 'Introduktion till säkerhetsprinciper');

-- Program_kurs
INSERT INTO program_kurs (program_id, kurs_id) VALUES
(1, 1),
(2, 2);

-- Utbildare
INSERT INTO utbildare (förnamn, efternamn, email, telefon) VALUES
('Said', 'Abdi', 'said.abdi@example.com', '0700001122'),
('Maria', 'Holm', 'maria.holm@example.com', '0703334455');

-- Kurs_klass
INSERT INTO kurs_klass (klass_id, kurs_id, utbildare_id) VALUES
(1, 1, 1),
(2, 2, 2);

-- Utbildningskurs
INSERT INTO utbildningskurs (utbildare_id, kurs_id) VALUES
(1, 1),
(2, 2);

-- Företag
INSERT INTO företag (namn, org_nummer, adress) VALUES
('Digital Konsult AB', '559988-7766', 'Konsultvägen 1'),
('Nätverksproffs AB', '559977-6655', 'Säkerhetsgatan 3');

-- Konsult
INSERT INTO konsult (utbildare_id, konsult_företag_id) VALUES
(2, 1);
