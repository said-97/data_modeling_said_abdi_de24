
-- Visa alla utbildare
SELECT * FROM yrkesco.utbildare;

-- Visa alla studenter och deras klass
SELECT s.förnamn, s.efternamn, k.klass_id FROM yrkesco.student s
JOIN yrkesco.klass k ON s.klass_id = k.klass_id;

-- Visa alla kurser i ett program
SELECT p.program_namn, k.kurs_namn FROM yrkesco.program_kurs pk
JOIN yrkesco.program p ON pk.program_id = p.program_id
JOIN yrkesco.kurs k ON pk.kurs_id = k.kurs_id;

-- Visa kontaktinfo för utbildningsledare
SELECT förnamn, efternamn, email, telefon FROM yrkesco.utbildningsledare;