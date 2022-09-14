-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 13 2022 г., 23:56
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bank`
--

-- --------------------------------------------------------

--
-- Структура таблицы `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` int NOT NULL,
  `surname` text NOT NULL,
  `name` text NOT NULL,
  `patronymic` text NOT NULL,
  `age` int NOT NULL,
  `floor` text NOT NULL,
  `marital_status` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `series` text NOT NULL,
  `passport_number` text NOT NULL,
  `issue_address` text NOT NULL,
  `date_of_issue` date NOT NULL,
  `registration` text NOT NULL,
  `telephone` text NOT NULL,
  `relatives_phone_number` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `organization` text NOT NULL,
  `organizations_address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post` text NOT NULL,
  `experience` text NOT NULL,
  `employers_phone_number` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requested_amount` text NOT NULL,
  `term` text NOT NULL,
  `purpose_of_the_loan` text NOT NULL,
  `fico` int NOT NULL,
  `salary` text NOT NULL,
  `Pension_and_social_benefits` text NOT NULL,
  `Information_on_credit_payments` text NOT NULL,
  `other_income` text NOT NULL,
  `employees_comment` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `surname`, `name`, `patronymic`, `age`, `floor`, `marital_status`, `date_of_birth`, `series`, `passport_number`, `issue_address`, `date_of_issue`, `registration`, `telephone`, `relatives_phone_number`, `organization`, `organizations_address`, `post`, `experience`, `employers_phone_number`, `requested_amount`, `term`, `purpose_of_the_loan`, `fico`, `salary`, `Pension_and_social_benefits`, `Information_on_credit_payments`, `other_income`, `employees_comment`, `status`) VALUES
(1, 'Орлова', 'Виктория', 'Ильинична', 27, 'женщина', 'замужем', '2000-09-12', '4212', '4551256', 'Ивановская область, город Видное, пр. Домодедовская, 05', '2014-09-11', 'Омская область, город Пушкино, въезд Космонавтов, 58', ' 8(88)096-25-13 ', ' 81(65)156-16-20', 'Предприятие «ОРМЕТ»', '\r\nОрск, ул. Андреева, 11 ', 'Грузчик', '1 год', '\r\n+7(3537)34-39-00 ', '150000', '6 месяцев', 'приобретение машины', 745, '45000', 'нет', 'чистая история', 'нет', 'еоеноенорп', '2'),
(2, 'Лебедев', 'Степан', 'Александрович', 43, 'Мужчина', 'Женат', '1982-09-17', '4566', '511557', 'Курганская область, город Раменское, ул. Будапештсткая, 97', '1992-09-11', 'Волгоградская область, город Ногинск, наб. Ладыгина, 35', ' 168(94)754-46-06 ', ' 71(4009)389-35-57 ', 'Texair', 'Москва, Ленинградский пр-т., 57', 'Водитель', '3 года', '\r\n+7(495)5436539 ', '340000', '2 года', 'Покупка дачи', 420, '47000', 'Нет', 'Нет кредитной истории', 'нет', '', '0'),
(3, 'Фокина', 'Александра ', 'Демьяновна', 37, 'Женщина', 'Не замужем', '1982-09-17', '8765', '543542', 'Иркутская область, город Шатура, ул. Ладыгина, 53', '1992-09-11', 'Ярославская область, город Коломна, ул. Ладыгина, 14', ' 396(695)418-09-24 ', ' 9(85)318-39-58 ', 'Металлист', 'Москва, Ленинградский пр-т., 57', 'Менеджер', '2 года', '\r\n+79062996256', '400000', '1,5 года', 'Покупка авто', 740, '44000', 'Нет', 'Выплачены все кредиты', 'нет', 'онрпон', '2'),
(4, 'Белова', 'Таисия ', 'Владиславовна', 27, 'Женщина', 'Не замужем', '1982-09-17', '7854', '133243', 'Ивановская область, город Истра, ул. Бухарестская, 42', '1992-09-11', 'Мурманская область, город Подольск, пл. Ленина, 52', ' 2(13)865-76-85', ' 34(8529)565-21-38', 'Электровент', 'Москва, Варшавское шоссе, д. 37А', 'Бухгалтер', '2 года', '\r\n +74956624995', '240000', '1 года', 'Покупка квартиры', 702, '42000', 'Нет', 'нет', 'нет', NULL, '1'),
(5, 'Новиков', 'Максим', 'Петрович', 37, 'Мужчина', 'Женат', '1982-09-17', '8464', '114454', 'Ленинградская область, город Зарайск, наб. Гоголя, 53', '1992-09-11', 'Амурская область, город Шаховская, проезд Чехова, 62', ' 8(90)896-37-01', ' 6(4062)823-48-97', 'Композиционные материалы', ' Республика Мордовия, г. Саранск, ул. 2-я Промышленная д. 18/1', 'Водитель', '1 года', '\r\n+7(83451)6-68-35', '50000', '1 года', 'Покупка техники', 420, '35000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(6, 'Петров', 'Егор', 'Игоревич', 29, 'Мужчина', 'Женат', '1982-09-17', '4893', '879952', ' Самарская область, город Серпухов, проезд Будапештсткая, 29', '1992-09-11', 'Пензенская область, город Истра, пер. Космонавтов, 66', ' 2(006)038-99-27 ', ' 9(85)318-39-58 ', 'Грознефтегаз', 'Грозный, ул. им. С.Ш. Лорсанова, д. 2 «а»', 'Рабочий', '6 лет', '\r\n+7(495)730-02-41', '18000', '2 года', 'Покупка недвижимости', 750, '38500', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(7, 'Фомин', 'Михаил ', 'Александрович', 41, 'Мужчина', 'Женат', '1982-09-17', '9841', '968474', 'Ивановская область, город Егорьевск, пер. Ленина, 08', '1992-09-11', 'Тульская область, город Красногорск, наб. Сталина, 81', ' 911(91)428-45-87 ', ' 451(8106)683-09-19 ', 'Продмаш', 'Ростов-на-Дону, пер. Машиностроительный, 5', 'Слесарь', '4.5 лет', '\r\n 300(14)321-81-97', '80000', '2.5 года', 'Покупка недвижимости', 731, '35600', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(8, 'Софронов', 'Ярослав', 'Тимофеевич', 36, 'Мужчина', 'Женат', '1984-09-10', '9874', '968474', 'Тульская область, город Щёлково, шоссе Бухарестская, 41', '1995-01-12', 'Смоленская область, город Балашиха, спуск Ломоносова, 07', ' 7(279)166-48-55', ' 302(55)152-34-36', 'Биокомплекс', 'г. Москва, ул. Ибрагимова, д. 31, корп. 47', 'Водитель', '3.2 года', '\r\n 166(865)850-09-96', '120000', '2 года', 'Покупка недвижимости', 654, '39800', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(9, 'Назарова', 'Мирослава', 'Матвеевна', 32, 'Женщина', 'Не замужем', '1993-11-11', '8697', '147664', 'Волгоградская область, город Дорохово, ул. Ленина, 12', '1995-01-12', 'Воронежская область, город Щёлково, проезд Косиора, 74', ' 2(40)341-14-32', ' 319(3402)948-71-94', 'НПО Спецнефтемаш', 'г. Москва, ул. Руставели, д. 14, стр. 6', 'Охранник', '8 месяцев', '\r\n8-800-3021-565', '70000', '1 год', 'Ремонт квартиры', 768, '34000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(10, 'Казаков', 'Андрей', 'Елисеевич', 43, 'Мужчина', 'Женат', '1973-12-13', '2963', '781687', 'Псковская область, город Подольск, пл. Славы, 74', '1995-01-12', 'Тверская область, город Лотошино, пр. Ленина, 35', ' 0(54)751-23-93 ', ' 8(6301)920-65-07', 'ПО Бежицкая сталь', 'Брянская область, Брянск, ул. Сталелитейная, 1А', 'Водитель', '5 лет', '\r\n(4832) 71-59-53', '84000', '2 года', 'Открытие магазина', 725, '200000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(11, 'Алексеева', 'Ева', 'Артёмовна', 38, 'Женщина', 'Замужем', '1979-09-11', '3427', '328678', 'Владимирская область, город Волоколамск, шоссе 1905 года, 52', '1988-01-08', 'Тюменская область, город Красногорск, пер. Будапештсткая, 04', ' 166(865)850-09-96', ' 0(54)751-23-93', 'Армавирский электротехнический завод', 'Краснодарский край, Армавир', 'Курьер', '7 лет', '\r\n(86137) 3-71-23', '40000', '2 года', 'Переезд', 768, '100000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(12, 'Фролова', 'Ника', 'Максимовна', 34, 'Женщина', 'Замужем', '1970-10-16', '7852', '489256', 'Смоленская область, город Мытищи, въезд Космонавтов, 61', '1991-01-05', 'Псковская область, город Одинцово, ул. Гоголя, 77', ' 7(2394)291-20-10', ' 4(923)579-10-09', 'Чайковский завод РТД', 'Пермский край, Чайковский, промзона АО Уралоргсинтез', 'Разноробочий', '3 года', '\r\n 51(137)894-81-78', '70000', '2 года', 'Покупка мебели', 694, '42000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(13, 'Юдина', 'Анна', 'Богдановна', 36, 'Женщина', 'Замужем', '1968-10-31', '6796', '876344', 'Амурская область, город Лотошино, пр. Ленина, 13', '1981-02-26', 'Астраханская область, город Подольск, спуск 1905 года, 88', ' 12(53)834-99-00 ', ' 319(3402)948-71-94 ', 'Новатэк-Таркосаленефтегаз', 'Ямало-Ненецкий автономный округ, Пуровский район, г. Тарко-Сале', 'Откатчик', '4 года', '\r\n+7(34997)65365', '95000', '3 года', 'Покупка автомобиля', 765, '40000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(14, 'Смирнов', 'Максим ', 'Денисович', 53, 'Мужчина', 'Женат', '1973-12-13', '8495', '849854', 'Тверская область, город Павловский Посад, ул. Славы, 63', '1995-01-12', 'Тюменская область, город Ногинск, спуск Гоголя, 54', ' 7(94)702-18-82 ', ' 715(29)271-28-38', 'Мессояханефтегаз', 'Тюмень, ул. 50 лет Октября, 8б', 'Водитель', '12 лет', '\r\n (3452) 522-190 ', '120000', '2 года', 'Постройка здания', 724, '43000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(15, 'Нечаев', 'Максим', 'Богданович', 36, 'Мужчина', 'Женат', '1977-01-20', '7855', '879667', 'Сахалинская область, город Видное, пер. Бухарестская, 78', '1998-05-08', 'Магаданская область, город Серебряные Пруды, шоссе Ленина, 40', ' 726(51)677-02-99 ', ' 0(58)544-43-23 ', 'Судостроительный завод \"Лотос\"', 'Нариманов, ул. Береговая, 3', 'Автомеханик', '6,5 лет', '\r\n (85171) 6-11-72 ', '75000', '1 год', 'Приобретение техники', 796, '52000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(16, 'Киселев', 'Артём', 'Ярославович', 39, 'Мужчина', 'Женат', '1979-05-18', '8465', '876545', 'Тамбовская область, город Одинцово, пл. Балканская, 24', '1998-05-08', 'Волгоградская область, город Чехов, пл. 1905 года, 18', ' 42(7443)964-92-56 ', ' 1(969)589-97-15 ', 'Электроконтактор', 'Челябинск, ул. Енисейская, 75-Б', 'Водитель', '7 лет', '\r\n 829(7856)050-02-15 ', '77000', '1,5 год', 'Приобретение недвижимости', 739, '43000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(17, 'Жуков', 'Михаил', 'Сергеевич', 36, 'Мужчина', 'Женат', '1983-05-17', '8965', '877811', 'Челябинская область, город Кашира, бульвар Будапештсткая, 59', '2002-05-24', 'Кировская область, город Воскресенск, бульвар Гагарина, 93', ' 42(7443)964-92-56 ', ' 518(021)834-84-74 ', 'Якутуголь', 'Нерюнгри, пр. Ленина, д. 3/1', 'Погрузчик', '8 лет', '\r\n 865(1951)618-72-29 ', '80000', '1,5 год', 'Ремонт жилья', 762, '56000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(18, 'Новиков', 'Марк', 'Егорович', 39, 'Мужчина', 'Женат', '1981-07-10', '7868', '875785', 'Иркутская область, город Волоколамск, ул. Гагарина, 74', '1999-07-09', 'Кемеровская область, город Серпухов, бульвар Славы, 13', ' 528(23)479-82-62 ', ' 507(3068)560-19-83 ', 'Южный Кузбасс', 'Междуреченск, ул. Юности, д. 6', 'Подземный рабочий', '9 лет', '\r\n 6(543)562-43-93 ', '120000', '3 года', 'Приобретения автомобиля', 716, '58000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(19, 'Поляков', 'Михаил', 'Елисеевич', 46, 'Мужчина', 'Женат', '1978-07-12', '8766', '428487', 'Мурманская область, город Дорохово, наб. Ломоносова, 27', '2002-08-08', 'Томская область, город Балашиха, наб. Ладыгина, 28', ' 62(358)191-43-21 ', ' 46(5891)027-95-53 ', 'Барлайн', 'Москва, ул. Горбунова, 2 (БЦ Grand Setun Plaza)', 'Экспедитор', '7 лет', '\r\n 865(1951)618-72-29 ', '110000', '2 года', 'Приобретения бытовой техники', 468, '46000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(20, 'Васильева ', 'Мария ', 'Дмитриевна', 42, 'Женщина', 'Замужем', '1972-10-22', '7863', '876078', 'Костромская область, город Подольск, въезд Космонавтов, 93', '1985-02-12', 'Владимирская область, город Можайск, наб. Бухарестская, 18', ' 70(9635)616-23-16 ', ' 388(03)966-86-57 ', 'Восход', 'Саратовская область, Саратов, Сакко и Ванцетти, 14', 'Вахтер', '4 года', '\r\n 62(358)191-43-21 ', '100000', '3 года', 'Покупка автомобиля', 718, '43000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(21, 'Кузьмина ', 'Виктория ', 'Алексеевна', 39, 'Женщина', 'Не замужем', '1976-10-15', '8496', '846516', 'Саратовская область, город Орехово-Зуево, спуск Ломоносова, 06', '1987-09-11', 'Белгородская область, город Ступино, наб. Ленина, 95', ' 1(9687)223-85-70 ', ' 1(5256)712-24-95 ', 'Texair', '125057, Москва, Ленинградский пр-т., 57', 'Секретарь', '5 года', '\r\n 2(96)523-22-54 ', '200000', '3 года', 'Покупка авто', 740, '53000', 'Нет', 'Выплачены все кредиты', 'нет', NULL, '1'),
(22, 'Котов ', 'Матвей ', 'Гордеевич', 46, 'Мужчина', 'Женат', '1968-12-20', '8468', '879845', 'Мурманская область, город Клин, наб. Гагарина, 52', '1996-05-10', 'Белгородская область, город Орехово-Зуево, бульвар 1905 года, 49', ' 799(0252)540-91-67 ', ' 3(61)487-15-67 ', 'Электровент', 'Москва, Варшавское шоссе, д. 37А', 'Охранник', '7 лет', '\r\n +74956624995 ', '50000', '5 месяцев', 'Покупка техники', 732, '36000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(23, 'Маркин ', 'Глеб ', 'Александрович', 48, 'Мужчина', 'Женат', '1970-01-09', '1655', '145877', 'Вологодская область, город Шаховская, пр. Гагарина, 67', '1989-07-13', 'Орловская область, город Щёлково, наб. Ломоносова, 30', ' 4(943)782-54-76 ', ' 92(16)770-26-84 ', 'Rotado', 'Чебоксары, Дорожный проезд, 10', 'Водитель', '7 лет', '\r\n88007002460', '100000', '2 года', 'Покупка автомобиля', 762, '38000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(24, 'Ковалев ', 'Юрий ', 'Миронович', 42, 'Мужчина', 'Женат', '1980-01-12', '6548', '98484', 'Челябинская область, город Чехов, пл. 1905 года, 24', '1990-08-17', 'Вологодская область, город Луховицы, пр. Ладыгина, 24', ' 1(62)912-47-58 ', ' 156(0109)592-19-83 ', 'Барнаултрансмаш', ' Алтайский край, Барнаул, пр. Калинина, 28', 'Грузчик', '5 лет', '\r\n 94(77)495-34-29 ', '110000', '3 года', 'Покупка автомобиля', 721, '35000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1'),
(25, 'Грибов ', 'Ярослав ', 'Александрович', 35, 'Мужчина', 'Женат', '1989-02-10', '8484', '844554', 'Костромская область, город Можайск, проезд Балканская, 78', '2001-08-10', 'Амурская область, город Талдом, пер. Славы, 08', ' 2(949)778-02-41 ', ' 7(475)707-68-55 ', 'Автоэлектроарматура', 'Псковская область, Псков, ул. Советская,108', 'Охранник', '5 лет', '\r\n (8112) 66-34-84 ', '100000', '2 года', 'Ремонт жилья', 706, '38000', 'Нет', 'Нет кредитной истории', 'нет', NULL, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `idUser` text NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `idUser`, `login`, `password`) VALUES
(1, '16629881540', 'admin', '$2y$10$cCnf5rvTN9P5AuvoWmKJ4uSVvhbntX18ei739Erzg41eipK3n0HBS');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;