/* ---------Strukturen-----------*/


/*
        NULL wird nicht mehr zugelassen
        DEFAULT Werte eintragenALTER
*/


/* löschender DB boo wenn sie existiert*/
DROP DATABASE IF EXISTS boo;

/* CREATE mit Control Flow (falls noch nicht vorhanden)*/
CREATE DATABASE IF NOT EXISTS boo;

#SHOW DATABASES;

/* DB auswählen*/
USE boo;

/* Tabelle test anlegen (falls noch nicht vorhanden)*/
CREATE TABLE IF NOT EXISTS boo.test # Alternativ DotSyntax = boo.test (muss dann überall so geschrieben werden;
(
    /* VARCHAR und INT sind die DATENTYPEN, die (20) gibt die Zeichenlänge an*/
    name     VARCHAR(20) NOT NULL DEFAULT "TBA", #NULL Werte werden nicht zugelassen
    age      INT NOT NULL DEFAULT 0 #DEFAULT gibt den DEFAULT WERT an der verwendewt werden soll
);


/* Tabellen anzeigen*/
SHOW TABLES;

/*zeigt Struktur der Tabelle test*/
DESCRIBE boo.test;

/*------------DATEN------------------------*/
/* "Grizabella" als Name und 29 als age in test einfügen (Datensatz)*/
INSERT INTO boo.test(name, age) VALUES ("Grizabella", 29);

INSERT INTO boo.test(age, name) VALUES (35, "Alonzo"); #zuerst INT dann VARCHAR

INSERT INTO boo.test VALUES (); # leerer Datensatz (TUPEL)(leeres Objekt,Ausgabe : NULL)

/* Inhalte der Tabelle anzeigen*/
/* erstellt Ergebnistabelle, (* FROM zeigt alle Inhalte von test*/
SELECT * FROM boo.test;





