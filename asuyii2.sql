-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 11 2015 г., 18:26
-- Версия сервера: 5.5.46-0+deb8u1
-- Версия PHP: 5.6.14-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `asuyii2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `altitle` varchar(200) NOT NULL,
  `num` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `on` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`, `altitle`, `num`, `url`, `on`) VALUES
(1, 'Главная', 'Главная', 1, 'home', 1),
(2, 'О нас', 'О нас', 2, 'about', 1),
(3, 'Проекты', 'Нашы Проеты', 4, 'projects', 1),
(4, 'Координаты', 'Наши координаты', 5, 'coordinate', 1),
(5, 'Документы', 'Документы', 3, 'document', 1),
(6, 'Заказчики', 'Заказчики', 4, 'client', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1448432735),
('m130524_201442_init', 1448432741);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
`id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `title`, `text`, `url`) VALUES
(1, 'Главная', '<p>ООО «АСУ Проект Инжиниринг» – современная инжиниринговая компания, специализирующаяся на выполнении проектов в области реконструкции и строительства объектов в нефтегазодобывающей и нефтегазоперерабатывающей отраслях, нефтегазохимических заводов, объектов общезаводского хозяйства, нефтебаз, объектов энергетики, портовых терминалов и других объектов.</p>\r\n \r\n\r\n<p>\r\nВ настоящее время ООО «АСУ Проект Инжиниринг» — это динамически развивающееся предприятие, имеющее в своей структуре высококвалифицированных и аттестованных специалистов.\r\n</p><p>\r\nОгромный опыт работы, приобретенный при реализации крупнейших проектов, оснащение современным оборудованием, применение прогрессивных методик и технологий позволяет оперативно и с высоким качеством выполнять работы по заявленным видам деятельности.\r\n</p><p>\r\nООО «АСУ Проект Инжиниринг» имеет материально-техническую базу в состав которой входит лаборатория неразрушающего контроля, оснащенная широким спектром современного оборудования и аттестованная в установленном порядке.\r\n</p><p>\r\nВ основу кадрового состава входят высококвалифицированные специалисты и эксперты в области строительного контроля и промышленной безопасности, аттестованные на различные виды неразрушающего контроля.\r\n</p><p>\r\nВсё выше перечисленное позволяет ООО «АСУ Проект Инжиниринг» выполнять полный комплекс диагностических и экспертных работ на объектах Заказчика качественно и в установленные сроки.</p>', 'home'),
(2, 'О нас', '<p>Особенностью работы компании является разработка уникальных технологий для месторождений с их индивидуальными свойствами и учетом любых требований заказчика.</p>\r\n<p>\r\nКомпания выполняет весь комплекс работ по решению стоящих перед заказчиком задач – от разработки документации до ввода систем в эксплуатацию.</p>\r\n<p>ООО «АСУ Проект Инжиниринг » реализует проекты в следующих направлениях:\r\n<img src="/images/kst07869.jpg">\r\n<ul>\r\n<li>проектирование объектов нефтегазового комплекса,</li>\r\n<li>проектирование объектов переработки нефти и газа,</li>\r\n<li>проектирование зданий и сооружений промышленного и гражданского&nbsp;строительства,</li>\r\n<li>разработка и внедрение современных автоматизированных систем управления<br> технологическими процессами (АСУТП),</li>\r\n<li>разработка нормативно-технической документации,</li>\r\n<li>разработка и внедрение программного обеспечения для реализации<br> информационно-вычислительных задач;</li>\r\n<li>инжиниринговые услуги.</li>\r\n</ul>\r\n\r\n</p>', 'about'),
(3, 'Проекты', '\r\n<strong>Перечень основных объектов проектирования</strong>\r\n<ol>\r\n<li>Реконструкция БКНС-1 инвентарный номер № ЧН-930225. Проект обустройства Малочерногорского месторождения</li>\r\n\r\n<li>Полигон отходов производства и потребления на Урненском месторождении</li>\r\n\r\n<li>Строительство дистанционного управления линейным краном на 12 км «Бахиловская КС – Хохряковский ЦПС»</li>\r\n\r\n<li>Проектирование и монтаж пожарной сигнализации операторной,&nbsp; БНВП №1, БНВП №2, БРХ№1, БРХ №2 ЦППН-5 ДНС-17 <br />ОАО «Самотлорнефтегаз»</li>\r\n\r\n<li>Реконструкция ДНС Гун-Еганского месторождения</li>\r\n\r\n<li>Блок-боксы для механической и электронной лабораторий ОАО «НЗРА»</li>\r\n\r\n<li>Техническое перевооружение склада ГСМ ООО «Доркомплект»</li>\r\n\r\n<li>ТЭО на строительство факельной системы УСН 4/1 в цехе №1 ООО «ННПО»</li>\r\n\r\n<li>Модернизация системы контроля воздушной среды на технологической установке №4 ООО «Нижневартовский ГПК»</li>\r\n\r\n<li>Модернизация здания с наружной установкой ВяКЦ 11600369 с заменой воздушных компрессоров 4ВУ-5/9 на компрессоры винтовые GA-30 ООО «Ноябрьский ГПК»</li>\r\n\r\n<li>Техническое перевооружение цеха №1 УСН 4/2. Обвязка газосепаратора. ООО «ННПО»</li>\r\n\r\n<li>Замена источников бесперебойного питания (5 шт.) в ЗРУ-1,2 для нужд ООО Белозерный ГПК»</li>\r\n\r\n<li>Техническое перевооружение внутрицеховых технических трубопроводов ОАО «Нижневартовский ГПК»</li>\r\n\r\n<li>Согласование и изменение технологических регламентов установок переработки и стабилизации нефти ООО «ННПО»</li>\r\n\r\n<li>Техническое перевооружение дополнительной системы подготовки газа на дожимной компрессорной станции Вать-Еганского месторождения</li>\r\n\r\n<li>Обустройство Ватинского месторождения нефти. Периметральное ограждение ДНС-1,2,3. Монтаж видеодомофонов ДНС-1,2,3. <br />ОАО «Славнефть-Мегионнефтегаз»</li>\r\n\r\n<li>Обустройство Аганского местрождения нефти. Кусты скважин №№ 126, 10б. ОАО «Славнефть-Мегионнефтегаз»</li>\r\n\r\n<li>Реконструкция ДНС «Турсунт» с привязкой блочной установки подготовки газа</li>\r\n\r\n<li>Монтаж узлов учёта на потоках энергоносителей&nbsp;и факельных газов на УСН-4/1 иУСН-4/2 цех&nbsp;№1, УПН-1 и УПН-2 цех&nbsp; №2». Техническое перевооружение. ООО «ННПО»</li>\r\n\r\n<li>Переоборудование РВС-3000м<sup>3</sup> №1,2 под технологические, строительство технологических трубопроводов, склад хранения хим. реагента, замена насосов внешнего транспорта нефти на ДНС-2 Тайлаковского месторождения нефти <br />ОАО «Славнефть-Мегионнефтегаз»</li>\r\n\r\n<li>Многотопливная АЗС в г. Нижневартовске</li>\r\n\r\n<li>Автоматизированная система управления технологическим процессом ПОЗиС – 1,2 (с заменой корректоров СПГ-761) <br />ООО «Нижневартовский ГПК»</li>\r\n\r\n<li>Техперевооружение 5 электродвигателей 10 кВ основных технологических компрессоров (Внедрение системы оперативного мониторинга частичных разрядов IRIS) на УПГ-1 ООО «Белозерный ГПК»</li>\r\n\r\n<li>Техническое перевооружение на объектах УКГ-1, УКГ-2 для нужд ОАО «Губкинский ГПК»</li>\r\n\r\n<li>Реконструкция трубопровода сырого газа от С-01/4 до ТК – 1,2,3 на Холмогорском КЦ (газосепаратор С-01 инв. ос 00000593)<br />ОАО «Ноябрьский ГПК»</li>\r\n\r\n<li>Техническое перевооружение межцеховых внутризаводских технологических коммуникаций ООО «Нижневартовский ГПК»</li>\r\n\r\n<li>Техническое перевооружение котельной ООО «Тарховское». Ершовое месторождение. ДНС-3.</li>\r\n\r\n<li>Техническое перевооружение объектов ООО «ННПО»</li>\r\n\r\n<li>Строительство ЛЭС в районе &nbsp;Муравленковского ГПЗ ОАО «СибурТюменьГаз»</li>\r\n</ol>\r\n', 'projects'),
(4, 'Документы', '<div id="thumbnails">\r\n<div>\r\n<p>Свидетельство Федеральная налоговая служба</p>\r\n  <a href="/images/document01_big.jpg" title=""><img src="/images/document01.jpg"width="150" height="216"></a>\r\n <a href="/images/document02_big.jpg" title=""><img src="/images/document02.jpg"width="150" height="216"></a>\r\n <a href="/images/document03_big.jpg" title=""><img src="/images/document03.jpg"width="150" height="216"></a>\r\n<div style="clear: both"></div>\r\n</div>\r\n<div>\r\n<p>Свидетельство о допуске к определённым видам работ</p>\r\n<a href="/images/document05_big.jpg" title=""><img src="/images/document05.jpg"width="150" height="216"></a>\r\n<a href="/images/document06_big.jpg" title=""><img src="/images/document06.jpg"width="150" height="216"></a>\r\n <a href="/images/document07_big.jpg" title=""><img src="/images/document07.jpg"width="150" height="216"></a>\r\n <a href="/images/document08_big.jpg" title=""><img src="/images/document08.jpg"width="150" height="216"></a>\r\n<a href="/images/document09_big.jpg" title=""><img src="/images/document09.jpg"width="150" height="216"></a>\r\n<div style="clear: both"></div>\r\n</div>\r\n<div>\r\n<p>Страховой полис</p>\r\n<a href="/images/document10_big.jpg" title=""><img src="/images/document10.jpg"width="150" height="216"></a>\r\n<a href="/images/document11_big.jpg" title=""><img src="/images/document11.jpg"width="150" height="216"></a>\r\n <a href="/images/document12_big.jpg" title=""><img src="/images/document12.jpg"width="150" height="216"></a>\r\n <a href="/images/document13_big.jpg" title=""><img src="/images/document13.jpg"width="150" height="216"></a>\r\n<div style="clear: both"></div>\r\n</div>\r\n<div>\r\n<p>Сертификат соответствия</p>\r\n<a href="/images/document04_big.jpg" title=""><img src="/images/document04.jpg"width="150" height="216"></a>\r\n<div style="clear: both"></div>\r\n    </div>\r\n</div>\r\n\r\n\r\n', 'document'),
(5, 'Заказчики', '<p>Мы не делим наших заказчиком на "крупных" и "мелких". Независимо от величины заказа мы стремимся выполнять свои обязательства с неизменным качеством и в соответствии с достигнутыми договоренностями!</p>\r\n\r\n<strong>Наши основные заказчики</strong><br>\r\n<img src="/images/slavneft_logo.jpg"> <img src="/images/rosneft_logo.jpg">  <img src="/images/lukoil_logo.jpg">  <img src="/images/sibur_logo.jpg">  <img src="/images/ugp_logo.jpg"> \r\n', 'client');

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keyword` text NOT NULL,
  `slogan` text NOT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `title`, `keyword`, `slogan`, `mail`, `phone`) VALUES
(1, 'OOO 	"АСУ Проект Инжиниринг"', 'проектирование, инжиниринг, НПЗ, КНС', 'Проектирование индустриальных объектов<br>\r\nПроектирование нефтегазовых объектов<br>\r\nРазработка технической документации<br>\r\nРазработка и внедрение АСУТП<br>\r\nИнжиниринговые услуги', 'info@asu-project.ru', '+7 3466 310007<br>+7 3466 311581');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kuzma', 'kvBLh1WEzISwIa3JDP6Sxyu1m6RgbCXH', '$2y$13$JiFNRNtpJhwQ5yJZwvj2sO6MOsPwfp2iaI1TV6P.n7yMXMX9526yi', NULL, 'kuzma@mail.ru', 10, 1448434683, 1448434683);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
