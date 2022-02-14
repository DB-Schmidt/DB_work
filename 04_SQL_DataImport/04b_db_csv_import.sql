/* CRUD CREATE | READ | Update | Delete */

/* CREATE: siehe 04 ..ALTER */

SELECT * FROM boo.cats;

/* UPDATE --> Änderungen in bestehender Tab. */

UPDATE boo.cats SET cat_name = "Alonzo" WHERE cat_name = "Alonza";
UPDATE boo.cats SET fur_color = "grey" WHERE id = 3;

/* READ - SELECT : NEUE Ergebnisstabelle wird erstellt */

SELECT * FROM boo.cats; /* gesamte Tabelle */
SELECT cat_name FROM boo.cats; /* nur Spalte cat_name anzeigen */
SELECT cat_name,fur_color FROM boo.cats; /* mehrere Spalten anzeigen */
SELECT cat_name AS "Katzen",fur_color AS "Fellfarbe" FROM boo.cats; /*Spaltennamen mittels AS (Alias) ändern */

/* Restriktionen durch WHERE */

SELECT
    cat_name AS "Katzenname",
    fur_color AS "Fellfarbe"
FROM 
    boo.cats
WHERE 
    age > 35
    
;

/* Delete - Datensätze löschen | VORSICHT | */

DELETE FROM boo.cats; /* alle Datensätze löschen */

DELETE FROM boo.cats WHERE age <=35;

SELECT * FROM boo.cats;