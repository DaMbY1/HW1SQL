-- Создание таблиц с поддержкой кириллицы
CREATE TABLE employer (
    employer_id INTEGER PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE vacancy (
    vacancy_id INTEGER PRIMARY KEY,
    active BOOLEAN,
    employer_id INTEGER,
    FOREIGN KEY (employer_id) REFERENCES employer(employer_id)
);

-- Заполнение работодателей
INSERT INTO employer (employer_id, name) VALUES
(1, 'ООО "Ромашка"'),
(2, 'АО "ТехноСервис"'),
(3, 'ИП Иванов'),
(4, 'ЗАО "СтройГрад"'),
(5, 'ООО "Альфа-Групп"'),
(6, 'ГБУ "ГосУслуги"'),
(7, 'ООО "Бета Лтд"');

-- Заполнение вакансий (после employer)
INSERT INTO vacancy (vacancy_id, active, employer_id) VALUES
(101, TRUE, 1), (102, TRUE, 1), (103, TRUE, 1), (104, TRUE, 1), (105, TRUE, 1),
(106, FALSE, 1),
(201, TRUE, 2), (202, TRUE, 2), (203, TRUE, 2), (204, TRUE, 2),
(205, FALSE, 2), (206, FALSE, 2),
(301, TRUE, 3), (302, TRUE, 3), (303, TRUE, 3), (304, TRUE, 3), (305, TRUE, 3),
(306, TRUE, 3), (307, TRUE, 3),
(308, FALSE, 3),
(401, TRUE, 4), (402, FALSE, 4), (403, FALSE, 4),
(501, FALSE, 5), (502, FALSE, 5), (503, FALSE, 5),
(601, TRUE, 6), (602, TRUE, 6), (603, TRUE, 6), (604, TRUE, 6), (605, TRUE, 6),
(606, TRUE, 6),
(607, FALSE, 6),
(701, TRUE, 7), (702, TRUE, 7), (703, TRUE, 7), (704, TRUE, 7), (705, TRUE, 7),
(706, TRUE, 7), (707, TRUE, 7);
