CREATE DATABASE CurlingMasters;

USE CurlingMasters;

    CREATE TABLE Pracownicy (
        id_pracownik INTEGER,
        Imię_Nazwisko character varying(50) NOT NULL,
        Wykonywany_zawód character varying(50) NOT NULL,
        Pensja INTEGER
    );

    CREATE TABLE Zawodnicy (
        id_zawodnik INTEGER,
        Imię_Nazwisko character varying(50) NOT NULL,
        Pozycja character varying(50) NOT NULL
        wygrane INTEGER
    );

    CREATE TABLE Zawodniczki (
        id_zawodniczka INTEGER,
        Imię_Nazwisko character varying(50) NOT NULL,
        Pozycja character varying(50) NOT NULL
        wygrane INTEGER
    );


    CREATE TABLE Sprzęt (
        Nazwa character varying(50) NOT NULL,
        Ilość INTEGER,
        Cena INTEGER,
        Cena_łączna INTEGER
);

    CREATE TABLE Mecze_żeńskie (
        Przeciwnik character varying(50) NOT NULL,
        Wynik character varying(50) NOT NULL
    );

    CREATE TABLE Mecze_męskie (
        Przeciwnik character varying(50) NOT NULL,
        Wynik character varying(50) NOT NULL
    );

    CREATE TABLE Terminarz_spotkań_żeńskich (
        Data_meczu DATE,
        Przecwnik character varying(50) NOT NULL
    );

    CREATE TABLE Terminarz_spotkań_męskich (
        Data_meczu DATE,
        Przecwnik character varying(50) NOT NULL
    );

    CREATE TABLE Przychody (
        Nazwa character varying(50) NOT NULL,
        Suma character varying(50) NOT NULL
    );

    CREATE TABLE Wydatki (
        Nazwa character varying(50) NOT NULL,
        Suma character varying(50) NOT NULL
    );


/*
INSERT INTO sprzęt VALUES
('Kamień', 2000, 16, 32000),
('Szczotka', 400, 50, 20000),
('Buty', 1162, 50, 59100),
('Ochraniacze', 200, 50, 10000),
('Strój Drużyna', 100, 50, 5000)
;
*/