/* ---------Strukturen-----------*/


/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* löschender DB boo wenn sie existiert*/
DROP DATABASE IF EXISTS boo;

/* CREATE mit Control Flow (falls noch nicht vorhanden)*/
CREATE DATABASE IF NOT EXISTS boo;

#SHOW DATABASES;

/* DB auswählen*/
USE boo;

/* Tabelle test anlegen (falls noch nicht vorhanden)*/
CREATE TABLE IF NOT EXISTS test
(
    /* VARCHAR und INT sind die DATENTYPEN, die (20) gibt die Zeichenlänge an*/
    name     VARCHAR(20), 
    age      INT
);


/* Tabellen anzeigen*/
SHOW TABLES;

/*zeigt Struktur der Tabelle test*/
DESCRIBE test;

/*------------DATEN------------------------*/
/* "Grizabella" als Name und 29 als age in test einfügen (Datensatz)*/
INSERT INTO test(name, age) VALUES ("Grizabella", 29);

INSERT INTO test(age, name) VALUES (35, "Alonzo"); #zuerst INT dann VARCHAR

INSERT INTO test VALUES (); # leerer Datensatz (TUPEL)(leeres Objekt,Ausgabe : NULL)

/* Inhalte der Tabelle anzeigen*/
/* erstellt Ergebnistabelle, (* FROM zeigt alle Inhalte von test*/
SELECT * FROM test;





