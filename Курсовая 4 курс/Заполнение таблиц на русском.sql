USE [Тур агенство];

-- Таблица Пользователи
INSERT INTO Пользователи (Имя, Фамилия, Отчество, ПарольХеш, Роль, ЭлПочта, СерияИНомерПаспорта, Телефон)
VALUES
('Иван',		'Иванов',		'Фыпог', 'pass1', 'сотрудник',		'ivan.i@example.com',		'1880 699588', '+79001234567'),
('Анна',		'Андреева',		'Фыпог', 'pass2', 'сотрудник',		'anna.a@example.com',		'1880 699589', '+79002345678'),
('Пётр',		'Петухов',		'Фыпог', 'pass3', 'сотрудник',		'petr.p@example.com',		'1880 699590', '+79003456789'),
('Елена',		'Ильина',		'Фыпог', 'pass4', 'сотрудник',		'elena.i@example.com',		'1880 699591', '+79004567890'),
('Дмитрий',		'Козлов',		 'Фыпог', 'pass5', 'сотрудник',		'dmitriy.k@example.com',	'1880 699592', '+79005678901'),
('Ольга',		'Фомина',		'Фыпог', 'pass6', 'сотрудник',		'olga.f@example.com',		'1880 699593', '+79006789012'),
('Сергей',		'Семёнов',		'Фыпог', 'pass7', 'сотрудник',		 'sergey.s@example.com',	 '1880 699594', '+79007890123'),
('Марина',		'Ковалёва',		'Фыпог', 'pass8', 'сотрудник',		'marina.k@example.com',		'1880 699595', '+79008901234'),
('Алексей',		'Зотов',		'Фыпог', 'pass9', 'сотрудник',		'aleksey.z@example.com',	'1880 699596', '+79009012345'),
('Наталья',		'Медведева',	 'Фыпог', 'pass10', 'сотрудник',	 'natalya.m@example.com',	'1880 699597', '+79000123456'),
('Михаил',		'Васильев',		'Фыпог', 'pass11', 'сотрудник',		'mikhail.v@example.com',	'1880 699598', '+79001234568'),
('Татьяна',		'Симакова',		'Фыпог', 'pass12', 'сотрудник',		'tatyana.s@example.com',	'1880 699599', '+79002345679'),
('Евгений',		'Рычков',		'Фыпог', 'pass13', 'сотрудник',		'evgeniy.r@example.com',	'1880 699600', '+79003456780'),
('Виктория',	'Кузнецова',	'Фыпог', 'pass14', 'сотрудник',		'viktoria.k@example.com',	'1880 699601', '+79004567891'),
('Александр',	'Старцев',		'Фыпог', 'pass15', 'сотрудник',		'aleksandr.s@example.com',	'1880 699602', '+79005678902'),
('Кристина',	'Шарова',		'Фыпог', 'pass16', 'сотрудник',		'kristina.sh@example.com',	'1880 699603', '+79006789013'),
('Игорь',		'Некрасов',		'Фыпог', 'pass17', 'сотрудник',		'igor.n@example.com',		'1880 696047', '+79007890124'),
('Елизавета',	 'Васильева',	'Фыпог', 'pass18', 'сотрудник',		'elizaveta.v@example.com',	 '1880 699605', '+79008901235'),
('Кирилл',		'Матросов',		'Фыпог', 'pass19', 'сотрудник',		'kirill.m@example.com',		'1880 699606', '+79009012346'),
('Дарья',		'Курочкина',	'Фыпог', 'pass20', 'сотрудник',		'dariya.k@example.com',		'1880 699607','+79000123457'),
('Максим',		'Широков',		'Фыпог', 'pass21', 'сотрудник',		'maksim.sh@example.com',	'1880 699608', '+79001234569'),
('Анна',		'Щукина',		 'Фыпог', 'pass22', 'сотрудник',	 'anna.shch@example.com',	'1880 699609', '+79002345680'),
('Дмитрий', 'Кожин', 'Фыпог', 'pass23', 'сотрудник', 'dmitriy.kz@example.com', '1880 699700', '+79003456781'),
('Алина', 'Брагина', 'Фыпог', 'pass24', 'сотрудник', 'alina.br@example.com', '1880 699701', '+79004567892'),
('Артём', 'Тихонов', 'Фыпог', 'pass25', 'сотрудник', 'artiom.t@example.com', '1880 699702', '+79005678903'),
('Борис', 'Салимов', 'Фыпог', 'pass26', 'сотрудник', 'boris.salimov@example.com', '1880 699703', '+79006789014'),

-- Начинаются клиенты с 27-й записи
('Андрей', 'Белов', 'Фыпог', 'pass27', 'клиент', 'belov.andrey@example.com', '1880 699704', '+79001234568'), 
('Светлана', 'Бирюкова', 'Фыпог', 'pass28', 'клиент', 'biryukova.svetlana@example.com', '1880 699705', '+79002345679'), 
('Павел', 'Власов', 'Фыпог', 'pass29', 'клиент', 'vlasov.pavel@example.com', '1880 699706', '+79003456780'), 
('Евгения', 'Галкина', 'Фыпог', 'pass30', 'клиент', 'galkina.evgeniya@example.com', '1880 699707', '+79004567891'), 
('Ростислав', 'Даценко', 'Фыпог', 'pass31', 'клиент', 'danetsko.rostislav@example.com', '1880 699708', '+79005678902'), --вппр
('Дарья', 'Ефимова', 'Фыпог', 'pass32', 'клиент', 'efimova.darya@example.com', '1880 699709', '+79006789013'),
('Михаил', 'Жуков', 'Фыпог', 'pass33', 'клиент', 'zhukov.mikhail@example.com', '1880 699710', '+79007890124'), -- 7
('Анастасия', 'Зарубина', 'Фыпог', 'pass34', 'клиент', 'zarubina.anastasia@example.com', '1880 699711', '+79008901235'),
('Олег', 'Игнатьев', 'Фыпог', 'pass35', 'клиент', 'ignatev.oleg@example.com', '1880 699712', '+79009012346'),
('Татьяна', 'Калугина', 'Фыпог', 'pass36', 'клиент', 'kalugina.tatyana@example.com', '1880 699713', '+79000123457'), -- 10
('Сергей', 'Кондратьев', 'Фыпог', 'pass37', 'клиент', 'kondratiev.sergey@example.com', '1880 699714', '+79001234569'),
('Анна', 'Купцова', 'Фыпог', 'pass38', 'клиент', 'kupcova.anna@example.com', '1880 699715', '+79002345680'),
('Максим', 'Лаврентьев', 'Фыпог', 'pass39', 'клиент', 'lavrentiev.maxim@example.com', '1880 699716', '+79003456781'),
('Ольга', 'Меньшикова', 'Фыпог', 'pass40', 'клиент', 'menshikova.olga@example.com', '1880 699717', '+79004567892'),
('Игорь', 'Насонов', 'Фыпог', 'pass41', 'клиент', 'nasonov.igor@example.com', '1880 699718', '+79005678903'), -- 15
('Нина', 'Орехова', 'Фыпог', 'pass42', 'клиент', 'orekhova.nina@example.com', '1880 699719', '+79006789014'),
('Кирилл', 'Патрушев', 'Фыпог', 'pass43', 'клиент', 'patrushhev.kirill@example.com', '1880 699720', '+79007890125'),
('Елена', 'Пономарёва', 'Фыпог', 'pass44', 'клиент', 'ponomaryova.elena@example.com', '1880 699721', '+79008901236'),
('Руслан', 'Радченко', 'Фыпог', 'pass45', 'клиент', 'radchenko.ruslan@example.com', '1880 699722', '+79009012347'),
('Виктория', 'Самсонова', 'Фыпог', 'pass46', 'клиент', 'samsonova.viktoria@example.com', '1880 699723', '+79000123458'), -- 20
('Егор', 'Тарасов', 'Фыпог', 'pass47', 'клиент', 'tarasov.egor@example.com', '1880 699724', '+79001234560'),
('Евгения', 'Уварова', 'Фыпог', 'pass48', 'клиент', 'uvorava.evgeniya@example.com', '1880 699725', '+79002345681'),
('Роман', 'Филатов', 'Фыпог', 'pass49', 'клиент', 'filatov.roman@example.com', '1880 699726', '+79003456782'),
('Ярослав', 'Худяков', 'Фыпог', 'pass50', 'клиент', 'khudyakov.yaroslav@example.com', '1880 699727', '+79004567893'),
('Елена', 'Черкесова', 'Фыпог', 'pass51', 'клиент', 'cherkesova.elena@example.com', '1880 699728', '+79005678904'), -- 25
('Георгий', 'Шабалин', 'Фыпог', 'pass52', 'клиент', 'shabalin.georgiy@example.com', '1880 699729', '+79006789015');

GO

-- Таблица Клиенты
INSERT INTO Клиенты (ПользовательID)
VALUES
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='belov.andrey@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='biryukova.svetlana@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='vlasov.pavel@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='galkina.evgeniya@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='danetsko.rostislav@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='efimova.darya@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zhukov.mikhail@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zarubina.anastasia@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ignatev.oleg@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kalugina.tatyana@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kondratiev.sergey@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kupcova.anna@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='lavrentiev.maxim@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='menshikova.olga@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='nasonov.igor@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='orekhova.nina@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='patrushhev.kirill@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ponomaryova.elena@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='radchenko.ruslan@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='samsonova.viktoria@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='tarasov.egor@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='uvorava.evgeniya@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='filatov.roman@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='khudyakov.yaroslav@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='cherkesova.elena@example.com')),
((SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com'));

GO

-- Таблица Сотрудники
INSERT INTO Сотрудники (Должность, ДатаПриема, ПользовательID)
VALUES
('менеджер', '2020-01-15', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ivan.i@example.com')),
('менеджер', '2021-03-10', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='anna.a@example.com')),
('заместитель директора', '2022-05-20', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='petr.p@example.com')),
('администратор', '2022-06-15', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='elena.i@example.com')),
('помощник менеджера', '2023-01-05', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='dmitriy.k@example.com')),
('супервайзер', '2023-02-10', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='olga.f@example.com')),
('старший продавец', '2023-03-15', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='sergey.s@example.com')),
('финансовый контроллер', '2023-04-20', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='marina.k@example.com')),
('IT-специалист', '2023-05-25', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='aleksey.z@example.com')),
('рекрутёр', '2023-06-01', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='natalya.m@example.com')),
('экономист', '2023-07-10', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='mikhail.v@example.com')),
('HR-директор', '2023-08-15', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='tatyana.s@example.com')),
('операционист', '2023-09-20', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='evgeniy.r@example.com')),
('PR-менеджер', '2023-10-25', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='viktoria.k@example.com')),
('служащий техподдержки', '2023-11-01', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='aleksandr.s@example.com')),
('архивариус', '2023-12-10', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kristina.sh@example.com')),
('водитель', '2024-01-15', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='igor.n@example.com')),
('аналитик', '2024-02-20', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='elizaveta.v@example.com')),
('администратор офиса', '2024-03-25', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kirill.m@example.com')),
('бренд-менеджер', '2024-04-01', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='dariya.k@example.com')),
('переводчик', '2024-05-10', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='maksim.sh@example.com')),
('судебный представитель', '2024-06-15', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='anna.shch@example.com')),
('руководитель департамента', '2024-07-20', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='dmitriy.kz@example.com')),
('делопроизводитель', '2024-08-25', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='alina.br@example.com')),
('работник склада', '2024-09-01', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='artiom.t@example.com')),
('старший координатор', '2024-10-10', (SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='boris.salimov@example.com'));

GO

-- Таблица Путешествия
INSERT INTO Путешествия (Название, Описание, Цена, ДлительностьДней)
VALUES
('Золотое кольцо России', 'Классический экскурсионный тур по старинным городам Золотого кольца.', 30000, 7),
('Карибские острова', 'Лучший пляжный отдых на Карибских островах.', 100000, 14),
('Горнолыжный курорт Австрии', 'Катание на лучших горнолыжных курортах Европы.', 70000, 10),
('Тайланд', 'Райский уголок Юго-Восточной Азии.', 60000, 12),
('Италия', 'Обзорная программа Италии.', 80000, 10),
('Крым', 'Отдых на Чёрном море.', 25000, 7),
('Куба', 'Лучшее лето на Кубе.', 85000, 14),
('Франция', 'Французская культура и гастрономия.', 90000, 10),
('США', 'Америка ждёт вас!', 150000, 14),
('Португалия', 'Живописные пейзажи Португалии.', 75000, 10),
('Испания', 'Фламенко и тапас ждут вас.', 80000, 12),
('Таиланд', 'Сказочный остров Самуи.', 65000, 10),
('Вьетнам', 'Природа и релакс.', 55000, 14),
('Мальдивы', 'Идеальные пляжи Индийского океана.', 120000, 10),
('Новая Зеландия', 'Лучшие природные ландшафты планеты.', 180000, 14),
('Швейцария', 'Альпы и швейцарский шоколад.', 95000, 10),
('Греция', 'История и античность.', 70000, 12),
('Абхазия', 'Теплое море и гостеприимство.', 20000, 7),
('Болгария', 'Балканский колорит.', 35000, 10),
('Грузия', 'Сваны и хачапури.', 40000, 10),
('Северная Корея', 'Открой секретное государство.', 100000, 14),
('Япония', 'Буддизм и технологии.', 120000, 10),
('Индонезия', 'Суматра и вулканические курорты.', 75000, 14),
('Украина', 'Историческое наследие Украины.', 25000, 10),
('Казахстан', 'Открытые степи Казахстана.', 30000, 12),
('Южная Африка', 'Большое сафари.', 150000, 14),
('Армения', 'Истории древней Армении.', 35000, 10);

GO

-- Таблица Бронирование
INSERT INTO Бронирование (КлиентID, ПутешествиеID, ДатаНачала, ДатаОкончания)
VALUES
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='belov.andrey@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Золотое кольцо России'), '2023-07-15', '2023-07-22'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='biryukova.svetlana@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Карибские острова'), '2023-08-10', '2023-08-24'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='vlasov.pavel@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Горнолыжный курорт Австрии'), '2023-12-20', '2023-12-30'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='galkina.evgeniya@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Тайланд'), '2024-01-05', '2024-01-17'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='danetsko.rostislav@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Италия'), '2024-02-15', '2024-02-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='efimova.darya@example.com')), -- 6
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Крым'), '2024-03-10', '2024-03-17'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zhukov.mikhail@example.com')), -- 7
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Куба'), '2024-04-20', '2024-04-30'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zarubina.anastasia@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Франция'), '2024-05-15', '2024-05-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ignatev.oleg@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='США'), '2024-06-10', '2024-06-24'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kalugina.tatyana@example.com')), -- 10
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Португалия'), '2024-07-15', '2024-07-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kondratiev.sergey@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Испания'), '2024-08-10', '2024-08-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kupcova.anna@example.com')), -- 12
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Таиланд'), '2024-09-15', '2024-09-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='lavrentiev.maxim@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Вьетнам'), '2024-10-10', '2024-10-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='menshikova.olga@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Индонезия'), '2024-11-15', '2024-11-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='nasonov.igor@example.com')), -- 15
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Япония'), '2024-12-10', '2024-12-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='orekhova.nina@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Новая Зеландия'), '2025-01-15', '2025-01-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='patrushhev.kirill@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Австрия'), '2025-02-10', '2025-02-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ponomaryova.elena@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Англия'), '2025-03-15', '2025-03-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='radchenko.ruslan@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Швейцария'), '2025-04-10', '2025-04-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='samsonova.viktoria@example.com')), -- 20
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Голландия'), '2025-05-15', '2025-05-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='tarasov.egor@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Китай'), '2025-06-10', '2025-06-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='uvorava.evgeniya@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Индия'), '2025-07-15', '2025-07-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='filatov.roman@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Южная Корея'), '2025-08-10', '2025-08-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='khudyakov.yaroslav@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Украина'), '2025-09-15', '2025-09-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='cherkesova.elena@example.com')), -- 25
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Казахстан'), '2025-10-10', '2025-10-20'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Канада'), '2025-11-15', '2025-11-25'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Южная Африка'), '2025-12-10', '2025-12-20');

GO

-- Таблица Отзывы
INSERT INTO Отзывы (КлиентID, ПутешествиеID, Оценка, Комментарий)
VALUES
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='belov.andrey@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Золотое кольцо России'), 5, 'Очень понравился культурный туризм, много узнали нового.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='biryukova.svetlana@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Карибские острова'), 4, 'Пляжи отличные, отели хорошие, однако экскурсии хотелось бы подробнее.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='vlasov.pavel@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Горнолыжный курорт Австрии'), 5, 'Отличный активный отдых, впечатляющие горы и трассы.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='galkina.evgeniya@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Тайланд'), 4, 'Хороший отдых, красивые места, погода отличная.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='danetsko.rostislav@example.com')), -- 5
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Италия'), 5, 'Исключительный уровень сервиса, великолепные впечатления.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='efimova.darya@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Крым'), 4, 'Доброжелательные местные жители, хорошее размещение.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zhukov.mikhail@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Куба'), 5, 'Яркий и незабываемый отдых, райские уголки природы.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zarubina.anastasia@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Франция'), 4, 'Вкусная кухня и прекрасная архитектура.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ignatev.oleg@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='США'), 5, 'Всегда мечтал увидеть Нью-Йорк и Лос-Анджелес, мечта сбылась.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kalugina.tatyana@example.com')), -- 10
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Португалия'), 4, 'Интересные города, уютные улочки Лиссабона.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kondratiev.sergey@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Испания'), 5, 'Посещение Барселоны оставило яркие эмоции.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='lavrentiev.maxim@example.com')), -- 12
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Таиланд'), 4, 'Много интересных мест, но море разочаровало качеством воды.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='lavrentiev.maxim@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Вьетнам'), 5, 'Любопытные экскурсии, страна прекрасна.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='menshikova.olga@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Индонезия'), 4, 'Потрясающее приключение, единственно маловато отелей.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='nasonov.igor@example.com')), -- 15
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Япония'), 5, 'Загадочная страна, прекрасные храмы и вкусная еда.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='orekhova.nina@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Новая Зеландия'), 4, 'Удивительная природа, фантастические водопады.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='patrushhev.kirill@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Австрия'), 5, 'Скалы, озера и горнолыжные курорты.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ponomaryova.elena@example.com')), -- 18
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Англия'), 4, 'Традиционный английский чай и исторические замки.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='radchenko.ruslan@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Швейцария'), 5, 'Спокойный отдых среди живописных пейзажей.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='samsonova.viktoria@example.com')), -- 20
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Голландия'), 4, 'Цветочные сады и знаменитые мельницы.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='tarasov.egor@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Китай'), 5, 'Шанхай поразил небоскребами и ночной жизнью.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='uvorava.evgeniya@example.com')), -- 22
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Индия'), 4, 'Масштабные храмы и яркая индийская культура.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='filatov.roman@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Южная Корея'), 5, 'Современный Сеул, удивительные рынки и кафе.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='khudyakov.yaroslav@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Украина'), 4, 'Прекрасные Карпаты и добрые украинцы.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='cherkesova.elena@example.com')), -- 25
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Казахстан'), 5, 'Высокая культура гостеприимства и красивая природа.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com')), 
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Канада'), 4, 'Огромные национальные парки и чистота воздуха.'),
((SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com')), -- 27
(SELECT ПутешествиеID FROM Путешествия WHERE Название='Южная Африка'), 5, 'Непередаваемые ощущения от африканского сафари.');

GO

-- Таблица Чеки
INSERT INTO Чеки (БронированиеID, ДатаОплаты, Сумма, МетодОплаты)
VALUES
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='belov.andrey@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Золотое кольцо России')), 
GETDATE(), 30000, 'Банковский перевод'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='biryukova.svetlana@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Карибские острова')), 
GETDATE(), 100000, 'Кредитная карта'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='vlasov.pavel@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Горнолыжный курорт Австрии')), 
GETDATE(), 70000, 'Электронный кошелёк'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='galkina.evgeniya@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Тайланд')), 
GETDATE(), 60000, 'Перевод через приложение банка'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='danetsko.rostislav@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Италия')), 
GETDATE(), 80000, 'Банкомат'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='efimova.darya@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Крым')), 
GETDATE(), 25000, 'Интернет-банкинг'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zhukov.mikhail@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Куба')), 
GETDATE(), 90000, 'Наличными в офисе'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='zarubina.anastasia@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Франция')), 
GETDATE(), 90000, 'Через терминал'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ignatev.oleg@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='США')), 
GETDATE(), 150000, 'Электронный кошелек'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kalugina.tatyana@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Португалия')), 
GETDATE(), 75000, 'Картой через банкомат'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='kondratiev.sergey@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Испания')), 
GETDATE(), 80000, 'Онлайн оплата'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='lavrentiev.maxim@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Таиланд')), 
GETDATE(), 65000, 'Оплата картой онлайн'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='lavrentiev.maxim@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Вьетнам')), 
GETDATE(), 55000, 'С банковской карты'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='menshikova.olga@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Индонезия')), 
GETDATE(), 75000, 'Банковской картой онлайн'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='nasonov.igor@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Япония')), 
GETDATE(), 120000, 'Банковская карта'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='orekhova.nina@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Новая Зеландия')), 
GETDATE(), 180000, 'Банковский перевод'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='patrushhev.kirill@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Австрия')), 
GETDATE(), 95000, 'Картой в отделении'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='ponomaryova.elena@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Англия')), 
GETDATE(), 70000, 'Банковская карта'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='radchenko.ruslan@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Швейцария')), 
GETDATE(), 90000, 'Картой в кассе'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='samsonova.viktoria@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Голландия')), 
GETDATE(), 70000, 'Банковская карточка'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='tarasov.egor@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Китай')), 
GETDATE(), 35000, 'Электронный кошелёк'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='uvorava.evgeniya@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Индия')), 
GETDATE(), 40000, 'Наличными в офисе'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='filatov.roman@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Южная Корея')), 
GETDATE(), 120000, 'Онлайн банковская система'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='khudyakov.yaroslav@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Украина')), 
GETDATE(), 25000, 'Оплата через мобильное приложение'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='cherkesova.elena@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Казахстан')), 
GETDATE(), 30000, 'Банковская карточка'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Канада')), 
GETDATE(), 150000, 'Наличная оплата'),
((SELECT БронированиеID FROM Бронирование WHERE КлиентID=(SELECT КлиентID FROM Клиенты WHERE ПользовательID=(SELECT ПользовательID FROM Пользователи WHERE ЭлПочта='shabalin.georgiy@example.com')) AND ПутешествиеID=(SELECT ПутешествиеID FROM Путешествия WHERE Название='Южная Африка')), 
GETDATE(), 150000, 'Банковская карта');

GO