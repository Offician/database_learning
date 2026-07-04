-- 1. Zasilenie tabeli BENEFITY (6 rekordów)
INSERT INTO benefity (nazwa, cena_pln) VALUES
('Karta MultiSport Plus', 150),
('Prywatna Opieka Medyczna', 220),
('Ubezpieczenie na życie', 80),
('Dofinansowanie do posiłków', 300),
('Bilety do kina i teatru', 60),
('Platforma do nauki języków', 120);

-- 2. Zasilenie tabeli DZIALY (6 rekordów)
INSERT INTO dzialy (nazwa, miasto, ulica) VALUES
('Zarząd', 'Warszawa', 'Złota 44'),
('IT', 'Kraków', 'Pawia 5'),
('HR', 'Wrocław', 'Legnicka 40'),
('Księgowość', 'Poznań', 'Półwiejska 2'),
('Marketing', 'Gdańsk', 'Grunwaldzka 10'),
('Sprzedaż', 'Warszawa', 'Domaniewska 39');

-- 3. Zasilenie tabeli WYPOSAZENIE (6 rekordów)
INSERT INTO wyposazenie (nazwa) VALUES
('Laptop MacBook Pro 16'),
('Laptop Dell XPS 15'),
('Telefon iPhone 15 Pro'),
('Telefon Samsung Galaxy S24'),
('Monitor Dell UltraSharp 27'),
('Tablet iPad Pro');

-- 4. Zasilenie tabeli PRACOWNICY (20 rekordów)
-- Ważne: Rekordy są dodawane w odpowiedniej kolejności, aby menedzer_id odnosiło się do już istniejących pracowników (np. najpierw prezes z menedzer_id = NULL).
INSERT INTO pracownicy (imie, nazwisko, email, data_zatrudnienia, menedzer_id, dzial_id, narzedzie_id, komentarz) VALUES
('Jan', 'Kowalski', 'jan.kowalski@firma.pl', '2015-01-01', NULL, 1, 1, 'Prezes Zarządu - brak menedżera'),
('Anna', 'Nowak', 'anna.nowak@firma.pl', '2016-03-15', 1, 2, 1, 'Dyrektor IT'),
('Piotr', 'Zieliński', 'piotr.zielinski@firma.pl', '2016-06-01', 1, 3, 2, 'Dyrektor HR'),
('Katarzyna', 'Wójcik', 'katarzyna.wojcik@firma.pl', '2017-02-10', 1, 4, 2, 'Główna Księgowa'),
('Tomasz', 'Kamiński', 'tomasz.kaminski@firma.pl', '2018-09-01', 2, 2, 1, 'Senior Developer'),
('Magdalena', 'Lewandowska', 'magdalena.lewandowska@firma.pl', '2019-11-20', 2, 2, 5, 'DevOps Engineer'),
('Marcin', 'Dąbrowski', 'marcin.dabrowski@firma.pl', '2020-01-15', 5, 2, 2, 'Junior Developer'),
('Agnieszka', 'Kozłowska', 'agnieszka.kozlowska@firma.pl', '2021-04-01', 3, 3, 2, 'Specjalista ds. Rekrutacji'),
('Michał', 'Jankowski', 'michal.jankowski@firma.pl', '2019-05-10', 3, 3, 4, 'HR Business Partner'),
('Paulina', 'Mazur', 'paulina.mazur@firma.pl', '2022-07-01', 4, 4, 5, 'Młodsza Księgowa'),
('Krzysztof', 'Kwiatkowski', 'krzysztof.kwiatkowski@firma.pl', '2018-03-01', 1, 5, 1, 'Dyrektor Marketingu'),
('Ewa', 'Krawczyk', 'ewa.krawczyk@firma.pl', '2019-08-15', 11, 5, 6, 'Social Media Manager'),
('Paweł', 'Piotrowski', 'pawel.piotrowski@firma.pl', '2021-02-01', 11, 5, 6, 'Copywriter'),
('Karolina', 'Grabowska', 'karolina.grabowska@firma.pl', '2017-10-01', 1, 6, 3, 'Dyrektor Sprzedaży'),
('Łukasz', 'Zając', 'lukasz.zajac@firma.pl', '2018-05-20', 14, 6, 3, 'Key Account Manager'),
('Joanna', 'Pawłowska', 'joanna.pawlowska@firma.pl', '2020-09-01', 14, 6, 4, 'Specjalista ds. Sprzedaży'),
('Maciej', 'Michalski', 'maciej.michalski@firma.pl', '2021-11-15', 14, 6, 4, 'Przedstawiciel Handlowy'),
('Natalia', 'Król', 'natalia.krol@firma.pl', '2023-01-10', 5, 2, 5, 'Tester Oprogramowania'),
('Szymon', 'Wieczorek', 'szymon.wieczorek@firma.pl', '2023-03-01', 2, 2, 1, 'Data Analyst'),
('Barbara', 'Stępień', 'barbara.stepien@firma.pl', '2023-05-15', 4, 4, 2, 'Księgowa');

-- 5. Zasilenie tabeli PRACOWNICY_BENEFITY (12 rekordów)
-- Przypisujemy wybranym pracownikom pakiety korzyści
INSERT INTO pracownicy_benefity (pracownik_id, benefit_id) VALUES
(1, 2), -- Jan Kowalski: Opieka Medyczna
(1, 3), -- Jan Kowalski: Ubezpieczenie na życie
(2, 1), -- Anna Nowak: Karta MultiSport
(2, 2), -- Anna Nowak: Opieka Medyczna
(5, 1), -- Tomasz Kamiński: Karta MultiSport
(5, 4), -- Tomasz Kamiński: Dofinansowanie do posiłków
(10, 5), -- Paulina Mazur: Bilety do kina
(14, 6), -- Karolina Grabowska: Platforma do nauki języków
(14, 2), -- Karolina Grabowska: Opieka Medyczna
(20, 1), -- Barbara Stępień: Karta MultiSport
(8, 3), -- Agnieszka Kozłowska: Ubezpieczenie na życie
(12, 4); -- Ewa Krawczyk: Dofinansowanie do posiłków