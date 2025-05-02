SET search_path TO yrkesco;

INSERT INTO Utbildningsledare (utbildningsledare_id, förnamn, efternamn, email, telefon)
VALUES (1, 'Anna', 'Svensson', 'anna.svensson@example.com', '0701234567');

SELECT * FROM utbildningsledare;