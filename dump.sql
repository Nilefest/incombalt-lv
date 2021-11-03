-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 19 2020 г., 19:42
-- Версия сервера: 5.6.49-cll-lve
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `incombal_mvcdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `article` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `article`, `lang`) VALUES
(1, 'about', 'Incombalt SIA является торговым представителем китайских производителей медицинских товаров и изделий медицинского назначения в Украине. <br><br>Incombalt SIA обеспечивает производство, разработку и инновации, глобальное распространение и маркетинг широкого спектра товаров медицинского назначения.<br><br>Профессиональная команда Incombalt SIA предлагает многолетний опыт в области здорового образа жизни. Наша философия заключается в предоставлении клиенту креативных, инновационных продуктов и услуг с отличным соотношением цены и качества. Мы предлагаем широкий ассортимент товаров для здоровья для домашнего использования, спортивных или медицинских учреждений. Мы успешно занимаем лидирующие позиции в соответствующих сегментах рынка.<br><br>Ваша команда Incombalt SIA', 'rus'),
(2, 'about', 'Incombalt SIA is a sales representative of Chinese manufacturers of medical products and medical products in Ukraine. <br><br>Incombalt SIA provides manufacturing, development and innovation, global distribution and marketing of a wide range of medical products. <br><br>Incombalt SIA`s professional team offers many years of experience in the field of healthy living. Our philosophy is to provide the client with creative, innovative products and services with an excellent value for money. We offer a wide range of health products for home use, sports or healthcare facilities. We successfully hold leading positions in the respective market segments. <br><br>Your team Incombalt SIA', 'eng'),
(3, 'about', 'Incombalt SIA ir Ķīnas medicīnas produktu un medicīnisko produktu ražotāju tirdzniecības pārstāvis Ukrainā. <br><br>Incombalt SIA nodrošina plaša medicīnas produktu ražošanu, attīstību un inovāciju, izplatīšanu un tirdzniecību. <br><br>Incombalt SIA profesionālā komanda piedāvā daudzu gadu pieredzi veselīga dzīvesveida jomā. Mūsu filozofija ir piedāvāt klientam radošus, inovatīvus produktus un pakalpojumus ar izcilu naudas vērtību. Mēs piedāvājam plašu veselības produktu klāstu lietošanai mājās, sportam vai veselības aprūpei. Mēs veiksmīgi ieņemam vadošās pozīcijas attiecīgajos tirgus segmentos. <br><br>Jūsu komanda Incombalt SIA', 'ltv'),
(4, 'contact', 'Если вас что-то интересует или у вас есть вопросы - вы можете связаться с нами, используя эту информацию', 'rus'),
(5, 'contact', 'If you are interested in something, or if you have any questions - you can contact us using this information', 'eng'),
(6, 'contact', 'Ja jūs kaut kas interesē vai ja jums ir kādi jautājumi, varat sazināties ar mums, izmantojot šo informāciju', 'ltv'),
(7, 'production', 'Сюда можно вставить текст, описывающий товар в целом. Довольно много текста', 'rus'),
(8, 'production', 'Here you can insert the text describing the product as a whole. Quite a bit of text', 'eng'),
(9, 'production', 'Šeit jūs varat ievietot tekstu, kas apraksta produktu kopumā. Diezgan mazliet teksta', 'ltv');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `title`, `contact`) VALUES
(1, 'mail', 'incombalt@gmail.com'),
(2, 'phone', '+371 29541523'),
(3, 'phone', '+371 67468844'),
(4, 'address', '<a href = \"https://www.google.com/maps/place/Bu%C4%BC%C4%BCu+iela+45B,+Kurzemes+rajons,+R%C4%ABga,+LV-1067,+%D0%9B%D0%B0%D1%82%D0%B2%D0%B8%D1%8F/@56.9754561,24.0367178,1202m/data=!3m1!1e3!4m5!3m4!1s0x46eec54481da7977:0xdd13d30de219cdef!8m2!3d56.9755906!4d24.039164\">Company</a>:<br><br><b>Incombalt SIA</b><br><br>Buļļu  45 B ; Rīga, Latvia ; LV1067');

-- --------------------------------------------------------

--
-- Структура таблицы `notes_lang`
--

CREATE TABLE `notes_lang` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rus` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eng` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ltv` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `notes_lang`
--

INSERT INTO `notes_lang` (`id`, `title`, `type`, `rus`, `eng`, `ltv`) VALUES
(1, 'about', 'main', 'О нас', 'About', 'Par mums'),
(2, 'production', 'main', 'Продукция', 'Production', 'Ražošana'),
(3, 'contact', 'main', 'Контакты', 'Contact', 'Kontaktpersona'),
(4, 'links', 'main', 'Полезные ссылки', 'Useful links', 'Noderīgas saites'),
(5, 'about_company', 'main', 'Про кампанию', 'About the company', 'Par uzņēmumu'),
(11, 'medical_devices', 'main', 'Медицинское оборудование', 'Medical devices', 'Medicīniskās ierīces'),
(12, 'contact_us', 'main', 'Связаться с нами', 'Connect with us', 'Sazinieties ar mums'),
(13, 'to_map', 'main', 'Мы здесь', 'Here we are', 'Te nu mēs esam'),
(22, 'our_contact', 'contact', 'Наши контакты', 'Our contacts', 'Mūsu kontakti'),
(23, 'phone', 'contact', 'Телефоны', 'Phones', 'Telefoni'),
(24, 'mail', 'contact', 'Эл.почта', 'E-mails', 'E-pasti'),
(25, 'address', 'contact', 'Адрес', 'Address', 'Adrese'),
(28, 'our_production', 'productions', 'Наша продукция', 'Our production', 'Mūsu produkcija'),
(30, 'more', 'productions', 'Подробнее', 'More', 'Vairāk'),
(31, 'instructions', 'productions', 'Инструкции', 'Instructions', 'Instrukcijas'),
(32, 'source', 'productions', 'Источник', 'A source', 'Avots'),
(33, 'official', 'main', 'Официальный сайт', 'Official site', 'Oficiālā vietne');

-- --------------------------------------------------------

--
-- Структура таблицы `productions`
--

CREATE TABLE `productions` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `provider` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `productions`
--

INSERT INTO `productions` (`id`, `title`, `info`, `content`, `type`, `provider`, `lang`) VALUES
(1, 'Автоматический тонометр с манжетой на плечо Gamma Optima', 'Современный и точный прибор для измерения артериального давления и пульса от английского ТМ \"Gamma\".', 'Современный и точный прибор для измерения артериального давления и пульса от английского ТМ \"Gamma\".<br><br>Автоматический тонометр Gamma Optima соответствует всем международным стандартам качества.<br><br>Технология FUZZY LOGIC. Тонометр Гамма Оптима автоматически определяет оптимальную степень нагнетания манжеты, которая обеспечивает точный результат и комфортное измерения давления, потому что Манжета не передавливать руку.<br><br>Технология определения аритмии IHD. Если в процессе измерения артериального давления у пользователя была обнаружена аритмия (нарушения в ритме сердца), то тонометр Gamma Optima оповестит пользователя об этом специальным значком на экране (более подробно о технологии IHD читайте в инструкции).<br><br>В комплекте удобная манжета на плечо. Размер манжеты: 22-32см.<br><br>В тонометре Гамма Оптима является функция памяти. Прибор запоминает последние 90 измерений давления.<br><br>Гарантия на автоматический тонометр Gamma Optima 5 лет. ', 'tonometer', 'Gamma', 'rus'),
(2, 'Digital Blood Pressure Monitor Gamma Optima', 'Modern and accurate device for measuring blood pressure and pulse from the English TM \"Gamma\".', 'Modern and accurate device for measuring blood pressure and pulse from the English TM \"Gamma\".<br><br>Automatic tonometer Gamma Optima meets all international quality standards.<br><br>FUZZY LOGIC technology. Tonometer Gamma Optima automatically determines the optimal degree of cuff inflation, which provides an accurate result and comfortable pressure measurement, because the cuff does not squeeze the arm.<br><br>Arrhythmia detection technology IHD. If in the process of measuring blood pressure the user has an arrhythmia (heart rhythm disturbances), the Gamma Optima tonometer will notify the user about this with a special icon on the screen (for more details about IHD technology, read the instructions).<br><br>Includes a comfortable shoulder cuff. Cuff size: 22-32cm.<br><br>In the tonometer Gamma Optima is a memory function. The device remembers the last 90 pressure measurements.<br><br>The Gamma Optima automatic tonometer has a 5-year warranty.', 'tonometer', 'Gamma', 'eng'),
(3, 'Digitālais asinsspiediena mērītājs Gamma Optima', 'Mūsdienīga un precīza ierīce asinsspiediena un pulsa mērīšanai no angļu valodas TM \"Gamma\".', 'Mūsdienīga un precīza ierīce asinsspiediena un pulsa mērīšanai no angļu valodas TM \"Gamma\". <br><br>Automātiskais tonometrs Gamma Optima atbilst visām starptautiskajām kvalitātes standarti. <br><br>FUZZY LOGIC tehnoloģija. Tonometra gamma Optima automātiski nosaka optimālu aproces piepūšanās pakāpi, kas nodrošina precīzu rezultātu un ērtu spiediena mērīšanu, jo aproce nespiež roku. <br><br>Aritmijas noteikšanas tehnoloģija IHD. Ja asinsspiediena mērīšanas laikā lietotājam ir aritmija (sirds ritma traucējumi), Gamma Optima tonometrs par to paziņo lietotājam ar speciālu ikonu ekrānā (lai iegūtu sīkāku informāciju par IHD tehnoloģiju, izlasiet instrukcijas). <br> Ietver ērtu plecu aproci. Manšetes izmērs: 22-32 cm. <br><br>Tonometrā Gamma Optima ir atmiņas funkcija. Ierīce atceras pēdējos 90 spiediena mērījumus. <br><br>Gamma Optima automātiskajam tonometram ir piecu gadu garantija.', 'tonometer', 'Gamma', 'ltv'),
(4, 'Автоматический тонометр с манжетой на плечо Gamma Control', 'Надежный прибор для измерения артериального давления и пульса в домашних условиях.', 'Надежный прибор для измерения артериального давления и пульса в домашних условиях.<br><br>Автоматический тонометр Gamma Control быстро и точно измерит давление. Тонометр соответствует всем стандартам качества.<br><br>Технология FUZZY LOGIC.Тонометр Гамма Контрол автоматически определяет степень нагнетания манжеты. В результате: манжета НЕ передавливать руку, и точный результат.<br><br>Технология IHD. Передовая технология определения аритмии. Если во время измерения давления была обнаружена аритмия, то тонометр Гамма КОНТРОЛЯ оповестит пользователя специальным значком на экране.<br><br>Память последнего измерения артериального давления и пульса.<br><br>Результаты измерения артериального давления и пульса выводятся на большой дисплей. Цифры большие. Тонометр Gamma Control подойдет для людей с плохим зрением. Удобная манжета на предплечье с крупным резиновой вкладкой. Размер манжеты: 22-32 см.<br><br>Компактная сумочка для хранения и транспортировки тонометра.<br><br>Гарантия на автоматический тонометр Gamma Control 5 лет.<br><br>Автоматический тонометр Gamma Control может работает как от батареек (поставляются в комплекте), так и от сетевого адаптера (в комплекте не поставляется).', 'tonometer', 'Gamma', 'rus'),
(5, 'Digital Blood Pressure Monitor Gamma Control', 'Reliable device for measuring blood pressure and heart rate at home.', 'Reliable device for measuring blood pressure and heart rate at home.<br><br>The Gamma Control automatic tonometer quickly and accurately measures pressure. The tonometer meets all quality standards.<br><br>FUZZY LOGIC technology. Tonometer Gamma Control automatically determines the degree of injection of the cuff. As a result: the cuff does not overwhelm the hand, and the exact result.<br><br>IHD technology. Advanced technology for determining arrhythmia. If an arrhythmia is detected during the pressure measurement, the Gamma Control tonometer will notify the user with a special icon on the screen.<br><br>Memory of the last measurement of blood pressure and pulse.<br><br>The results of blood pressure and pulse measurements are displayed on a large display. The numbers are large. The Gamma Control tonometer is suitable for people with poor eyesight. Comfortable cuff on the forearm with a large rubber tab. Cuff size: 22-32 cm.<br><br>Compact bag for storage and transportation of the tonometer.<br><br>Warranty on the automatic tonometer Gamma Control: 5 years. The Gamma Control automatic tonometer can work both from batteries (delivered in a set), and from the network adapter (in a set is not delivered).', 'tonometer', 'Gamma', 'eng'),
(6, 'Automātisks asinsspiediena mērītājs ar plecu aproci Gamma Control', 'Uzticama ierīce asinsspiediena un sirdsdarbības mērīšanai mājās.', ' Uzticama ierīce asinsspiediena un sirdsdarbības mērīšanai mājās. | Automātiskais Gamma Control tonometrs ātri un precīzi mēra spiedienu. Tonometrs atbilst visiem kvalitātes standartiem. <br><br>FUZZY LOGIC tehnoloģija. Tonometra gamma kontrole automātiski nosaka aproces iesmidzināšanas pakāpi. Rezultātā: aproce nepārspīlē ar roku, un precīzs rezultāts. <br><br>IHD tehnoloģija. Jaunākā tehnoloģija aritmijas noteikšanai. Ja spiediena mērīšanas laikā tiek atklāta aritmija, tonometrs Gamma Control brīdina lietotāju ar īpašu ikonu uz ekrāna. <br><br>Atmiņa par pēdējiem asinsspiediena un pulsa mērījumiem. <br><br>Asinsspiediena un pulsa rezultāti mērījumi tiek parādīti lielā displejā. Skaitļi ir lieli. Gamma Control tonometrs ir piemērots cilvēkiem ar vāju redzi. Ērta aproce uz apakšdelma ar lielu gumijas cilni. Manšetes izmērs: 22-32 cm. <br><br>Kompakts maiss tonometra glabāšanai un pārvadāšanai. <br><br>Automātiskā tonometra garantija Gamma Control: 5 gadi. Automātiskais Gamma Control tonometrs var darboties gan no akumulatoriem (piegādāti komplektācijā), gan no tīkla adaptera (komplektā netiek piegādāti).', 'tonometer', 'Gamma', 'ltv'),
(7, 'Автоматичний тонометр з манжетою на плечо Gamma Plus', 'Электронный тонометр для измерения артериального давления и пульса в домашних умовах.Точнисть измерения давления всех тонометров Гамма подтверждено сертификатами качества.', 'Электронный тонометр для измерения артериального давления и пульса в домашних умовах.Точнисть измерения давления всех тонометров Гамма подтверждено сертификатами качества.<br><br>Автоматическое определение степени нагнетания манжеты (FUZZY LOGIC). Манжета НЕ передавливать руку при измерении АД.<br><br>Новейшая технология определения аритмии (технология IHD).<br><br>Цветной индикатор уровня артериального давления наглядно демонстрирует результат измерения: давление повышено, снижен или в пределах нормы (дал согласие на ВОЗ).<br><br>Тонометр Гамма Плюс оснащен памятью на 90 измерений артериального давления и пульса, что может служить электронным дневником гипертоника.<br><br>Дата и время измерения артериального давления и пульса сохраняется. Пользователь может просмотреть динамику изменений результатов измерения давления.<br><br>Большой дисплей с крупными цифрами. Прибор могут использовать люди с плохим зрением.<br><br>Удобная манжета на плечо, размер: 22-32 см.<br><br>Сетевой адаптер к тонометр Gamma Plus поставляется в комплекте. Экономия средств на покупку адаптера.<br><br>Гарантия на автоматический тонометр Gamma Plus: 5 лет.<br><br>', 'tonometer', 'Gamma', 'rus'),
(8, 'Digital Blood Pressure Monitor Gamma Plus', 'Electronic tonometer for measurement of arterial pressure and pulse in house conditions. Accuracy of measurement of pressure of all Gamma tonometers is confirmed by quality certificates.', 'Electronic tonometer for measurement of arterial pressure and pulse in house conditions. Accuracy of measurement of pressure of all Gamma tonometers is confirmed by quality certificates.<br><br>Automatic determination of the degree of injection of the cuff (FUZZY LOGIC). The cuff does not overwhelm the hand when measuring blood pressure.<br><br>The latest technology for determining arrhythmia (IHD technology).<br><br>The color indicator of the level of blood pressure clearly shows the result of the measurement: the pressure is increased, decreased or within normal limits (agreed by the WHO).<br><br>The Gamma Plus tonometer is equipped with memory for 90 measurements of arterial pressure and pulse that can serve as the electronic diary of the hypertensive person.<br><br>The date and time of blood pressure and pulse measurement is saved. The user can view the dynamics of changes in the results of pressure measurements.<br><br>Large display with large numbers. The device can be used by people with poor eyesight.<br><br>Comfortable cuff on the shoulder, size: 22-32 cm.<br><br>The mains adapter to the Gamma Plus tonometer is delivered in a set. Save money on buying an adapter.<br><br>Warranty on the automatic tonometer Gamma Plus: 5 years.<br><br>', 'tonometer', 'Gamma', 'eng'),
(9, 'Digitālais asinsspiediena mērītājs Gamma Plus', 'Elektroniskais tonometrs asinsspiediena un sirdsdarbības mērīšanai mājsaimniecībās. Visu Gamma tonometru spiediena mērīšanas precizitāti apstiprina kvalitātes sertifikāti. ', 'Elektroniskais tonometrs asinsspiediena un sirdsdarbības mērīšanai mājsaimniecībās. Visu Gamma tonometru spiediena mērīšanas precizitāti apstiprina kvalitātes sertifikāti. <br><br>Automātiska manšetes piepūšanās pakāpes noteikšana (FUZZY LOGIC). Aproce NEIZSpiediet roku, mērot asinsspiedienu. <br><br>Jaunākā aritmijas noteikšanas tehnoloģija (IHD tehnoloģija). <br><br>Krāsainā asinsspiediena līmeņa indikators skaidri parāda mērījumu rezultātu: spiediens ir paaugstināts, pazemināts vai normālās robežās (saskaņots ar PVO). <Br > Tonometrs Gamma Plus ir aprīkots ar atmiņu 90 asinsspiediena un pulsa mērījumiem, kas var kalpot par hipertensijas slimnieku elektronisko dienasgrāmatu. <br><br>Tiek saglabāts asinsspiediena un pulsa mērīšanas datums un laiks. Lietotājs var apskatīt spiediena mērīšanas izmaiņu dinamiku. <br><br>Liels displejs ar lielu skaitu. Ierīci var izmantot cilvēki ar vāju redzi. <br><br>Ērta plecu aproce, izmērs: 22-32 cm. <br><br>Komplektācijā ietilpst Gamma Plus tonometra tīkla adapteris. Ietaupiet naudu par adaptera iegādi. <br><br>Automātiskā asinsspiediena mērītāja Gamma Plus garantija: 5 gadi. <br><br>', 'tonometer', 'Gamma', 'ltv'),
(10, 'Полуавтоматический тонометр с манжетой на плечо Gamma Semi', 'Надежный электронный тонометр для контроля артериального давления и пульса от английского ТМ Gamma.', 'Надежный электронный тонометр для контроля артериального давления и пульса от английского ТМ Gamma.<br><br>Технология определения аритмии (технология IHD).<br><br>Память на последнее измерение артериального давления и пульса.<br><br>Сообщение об ошибке при измерении артериального давления.<br><br>большой дисплей<br><br>Удобная манжета на плечо, размер: 22-32см.<br><br>Автоматическое выключение тонометра после использования.<br><br>Гарантия на полуавтоматический тонометр Gamma Semi 5 лет.<br><br><h3>Дополнительные функции</h3><br><br>В Gamma Semi реализована технология IHD, которая позволяет на ранних стадиях выявлять нарушения ритма сердца. Используя данный тонометр пользователю совсем не обязательно быть экспертом в области медицины, поскольку он оснащен специальным индикатором, благодаря которому вы быстро определите уровень своего давления согласно шкале ВОЗ (пониженное, повышенное, нормальный).<br><br>ЖК-дисплей с крупными цифрами создавался с расчетом на людей с плохим зрением. В дополнение к этому, производитель оснастил тонометр своеобразным электронным «дневником самоконтроля», в котором хранятся показатели последних 90 измерений. Еще одна полезная функция - среднее значение трех последовательных измерений, проведенных в течение 10 минут, что дает возможность получить наиболее объективный результат. Так же у нас вы можете найти любые аксессуары к тонометров, большой выбор по низким ценам.<br><br>', 'tonometer', 'Gamma', 'rus'),
(11, 'Digital Blood Pressure Monitor Gamma Semi', 'Reliable electronic tonometer for control of arterial pressure and pulse from the English TM Gamma.', 'Reliable electronic tonometer for control of arterial pressure and pulse from the English TM Gamma.<br><br>Arrhythmia detection technology (IHD technology).<br><br>Memory for the last measurement of blood pressure and heart rate.<br><br>Error message when measuring blood pressure.<br><br>Large display Comfortable cuff on the shoulder, size: 22-32 cm.<br><br>Automatic shutdown of the tonometer after use.<br><br>Warranty on the semi-automatic tonometer Gamma Semi: 5 years.<br><br>Additional features<br><br>Gamma Semi implements IHD technology, which allows you to detect heart rhythm disorders in the early stages. Using this tonometer, the user does not have to be an expert in medicine, because it is equipped with a special indicator that allows you to quickly determine the level of your blood pressure according to the WHO scale (low, high, normal).<br><br>The LCD display with large numbers was created for people with poor eyesight. In addition, the manufacturer has equipped the tonometer with a kind of electronic \"diary of self-monitoring\", which stores the indicators of the last 90 measurements. Another useful feature is the average value of three consecutive measurements taken over 10 minutes, which makes it possible to obtain the most objective result. Also with us you can find any accessories for blood pressure monitors, a large selection at low prices.<br><br>', 'tonometer', 'Gamma', 'eng'),
(12, 'Pusautomātiskais asinsspiediena mērītājs ar plecu aproci Gamma Semi', 'Uzticams elektroniskais tonometrs arteriāla spiediena un pulsa kontrolei no angļu valodas TM Gamma. ', 'Uzticams elektroniskais tonometrs arteriāla spiediena un pulsa kontrolei no angļu valodas TM Gamma. <br><br>Aritmijas noteikšanas tehnoloģija (IHD tehnoloģija). <br><br>Atmiņa pēdējiem asinsspiediena un sirdsdarbības mērījumiem. <br><br>Kļūdas ziņojums, mērot asinis spiediens. <br><br>Liels displejs Ērta aproce uz pleca, izmērs: 22-32 cm. <br><br>Automātiska tonometra izslēgšana pēc lietošanas. <br><br>Garantija pusautomātiskajam tonometram Gamma Semi: 5 gadi. <br><br>Papildu funkcijas <br><br>Gamma Semi ievieš IHD tehnoloģiju, kas ļauj atklāt sirds ritma traucējumus agrīnā stadijā. Izmantojot šo tonometru, lietotājam nav jābūt medicīnas ekspertam, jo tas ir aprīkots ar īpašu indikatoru, kas ļauj ātri noteikt asinsspiediena līmeni atbilstoši PVO skalai (zems, augsts, normāls). <br> LCD displejs ar lielu skaitu tika izveidots cilvēkiem ar vāju redzi. Turklāt ražotājs ir uzstādījis tonometru ar sava veida elektronisku \"pašpārraudzības dienasgrāmatu\", kurā tiek glabāti pēdējo 90 mērījumu rādītāji. Vēl viena noderīga īpašība ir trīs secīgu mērījumu vidējā vērtība, kas veikti 10 minūšu laikā, un tas ļauj iegūt objektīvāko rezultātu. Arī pie mums jūs varat atrast jebkuru aksesuāru asinsspiediena mērītājiem, lielu izvēli par zemām cenām. <br><br>', 'tonometer', 'Gamma', 'ltv'),
(13, 'Автоматический тонометр с манжетой на запястье Gamma Active', 'Автоматический тонометр для измерения артериального давления и пульса.', 'Автоматический тонометр для измерения артериального давления и пульса.<br><br>Технология IHD - выявления нерегулярного сердцебиения.<br><br>Индикатор уровня артериального давления. Классификатор согласно норм ВОЗ.<br><br>Память на 90 измерений артериального давления и пульса.<br><br>Автоматическое определение степени нагнетания манжеты (FUZZY LOGIC).<br><br>Сигнал про ошибку при измерении давления.<br><br>Дисплей с крупными символами.<br><br>Удобная сумочка для транспортировки тонометра.<br><br>Гарантия на автоматический тонометр на запястье Gamma Active: 5 лет.<br><br>', 'tonometer', 'Gamma', 'rus'),
(14, 'Automatic tonometer with a wrist cuff Gamma Active', 'Automatic tonometer for measuring blood pressure and pulse.', 'Automatic tonometer for measuring blood pressure and pulse. <br><br>IHD technology - detecting irregular heartbeat. <br><br>Blood pressure level indicator. Classifier according to WHO standards. <br><br>Memory for 90 blood pressure and pulse measurements. <br><br>Automatic determination of the degree of cuff inflation (FUZZY LOGIC). <br><br>Signal about an error when measuring pressure. <br><br>Display with large symbols. <br><br>Convenient bag for transporting the tonometer. <br><br>Automatic tonometer on the wrist Gamma Active: 5 years. <br><br>', 'tonometer', 'Gamma', 'eng'),
(15, 'Automātiskais tonometrs ar rokas aproci Gamma Active', 'Automātiskais tonometrs asinsspiediena un pulsa mērīšanai.', 'Automātiskais tonometrs asinsspiediena un pulsa mērīšanai. <br><br>IHD tehnoloģija - neregulāru sirdsdarbību noteikšana. <br><br>Asinsspiediena līmeņa indikators. Klasifikators pēc PVO standartiem. <br><br>Atmiņa 90 asinsspiediena un pulsa mērījumiem. <br><br>Automātiska manšetes piepūšanās pakāpes noteikšana (FUZZY LOGIC). <br><br>Signāls par kļūdu, mērot spiedienu. <br><br>Displejs ar lieliem simboliem. <br><br>Ērta soma tonometra pārvadāšanai. <br><br>Automātisks tonometrs uz plaukstas locītavas. Gamma Active: 5 gadi. <br><br>', 'tonometer', 'Gamma', 'ltv'),
(16, 'Механический тонометр с манжетой на плечо Gamma 800 К', 'Высококачественный манометр.', 'Высококачественный манометр.<br><br>Прочная нейлоновая манжета с фиксирующим металлическим кольцом.<br><br>Встроенный стетоскоп.<br><br>Надежный нагнетатель клапаном.<br><br>Размер манжеты 25,4 - 36 см.<br><br>Удобная сумочка в комплекте.<br><br>', 'tonometer', 'Gamma', 'rus'),
(17, 'Mechanical tonometer with a cuff on the shoulder Gamma 800 K', 'Visokoyak_sny manometer.', 'Visokoyak_sny manometer.<br><br>Fitted with a nylon cuff with a fixed metal ring.<br><br>A stethoscope is inserted.<br><br>Nad_yny nagn_tach with the valve.<br><br>The size of the cuff is 25.4 - 36 cm.<br><br>Handbag included.<br><br>', 'tonometer', 'Gamma', 'eng'),
(18, 'Mehāniskais tonometrs ar aproci uz pleca Gamma 800 K', 'Visokoyak_sny manometrs.', 'Visokoyak_sny manometrs. <br><br>Aprīkots ar neilona aproci ar fiksētu metāla gredzenu. <br><br>Ievietots stetoskops. <br><br>Nad_yny nagn_tach ar vārstu. <br><br>Aproces izmērs ir 25,4 - 36 cm. <br><br>Rokassoma iekļauta. <br><br>', 'tonometer', 'Gamma', 'ltv'),
(19, 'Механический тонометр с манжетой на плечо Gamma 700 К', 'Металлический манометр точности.', 'Металлический манометр точности.<br><br>Усовершенствован механизм манометра.<br><br>Манжета повышенной прочности (материал - нейлон).<br><br>Повышенная надежность игольчатого клапана (обеспечивает плавный спуск воздуха).<br><br>Нагнетатель и камера изготовлены из высококачественного латекса с применением бесшовной технологии<br><br>Металлический стетоскоп входит в комплект<br><br>В комплект входит удобная сумочка для хранения и транспортировки тонометра.<br><br>Гарантия на механический тонометр с манжетой на плечо Gamma 700k 18 месяцев.<br><br>Механический тонометр с манжетой на плечо Gamma (Гамма) 700 сертифицирован в соответствии с европейскими стандартами качества и прошел необходимые клинические исследования.<br><br>', 'tonometer', 'Gamma', 'rus'),
(20, 'Mechanical tonometer with a cuff on a shoulder of Gamma 700 K', 'High-precision metal pressure gauge.', 'High-precision metal pressure gauge.<br><br>The mechanism of the manometer is improved.<br><br>High-strength cuff (material - nylon).<br><br>Increased reliability of the needle valve (provides smooth descent of air).<br><br>The supercharger and the camera are made of high-quality latex using seamless technology<br><br>A metal stethoscope is included<br><br>The set includes a convenient bag for storing and transporting the tonometer.<br><br>Warranty on a mechanical tonometer with a cuff on the shoulder Gamma 700k: 18 months.<br><br>The mechanical tonometer with a cuff on a shoulder of Gamma (Gamma) 700 is certified according to the European quality standards and passed necessary clinical researches.<br><br>', 'tonometer', 'Gamma', 'eng'),
(21, 'Mehāniskais tonometrs ar aproci uz Gamma 700 K pleca', 'Augstas precizitātes metāla spiediena mērītājs.', 'Augstas precizitātes metāla spiediena mērītājs. <br><br>Manometra mehānisms ir uzlabots. <br><br>Augstas izturības aproce (materiāls - neilons). <br><br>Palielināta adatas vārsta uzticamība (nodrošina vienmērīgu gaisa nolaišanos). <Br > Kompresors un fotokamera ir izgatavoti no augstas kvalitātes lateksa, izmantojot bezšuvju tehnoloģiju. Komplektā ietilpst metāla stetoskops. Komplektā ietilpst ērta soma tonometra glabāšanai un transportēšanai. <br><br>Garantija mehāniskajam tonometram ar aproce uz pleca Gamma 700k: 18 mēneši. <br><br>Mehāniskais tonometrs ar aproci uz pleca Gamma (Gamma) 700 ir sertificēts saskaņā ar Eiropas kvalitātes standartiem un ir veikts nepieciešamais klīniskais pētījums. <br><br>', 'tonometer', 'Gamma', 'ltv'),
(22, 'Компрессорный ингалятор Gamma Effect New', 'Компактный и надежный компрессорный ингалятор (небулайзер) для всей семьи.', 'Компактный и надежный компрессорный ингалятор (небулайзер) для всей семьи.<br><br>Эффективная ингаляционная терапия в домашних условиях.<br><br>Низкий уровень шума (< 55дБ).<br><br>Мелкие частицы аэрозоля обеспечивают глубокое проникновение лекарственного препарата в легкие (MMAD - 2,44 мкм).<br><br>Высокая скорость распыления аэрозоля (0,4 мл / мин.) Значительно сокращает продолжительность ингаляционной терапии.<br><br>В комплектацию небулайзера Gamma Effect New входят: полости мундштук, взрослая и детская маски, воздушные фильтры (5шт.), Воздушная трубка.<br><br>Гарантия на компрессорный небулайзер Gamma Effect New 2 года.<br><br>Ингаляция является общепризнанным и наиболее действенным методом лечения заболеваний органов дыхания, в число которых входят не только острые респираторные, но и хронические болезни. Эффективность данной процедуры зависит от качества аэрозоля, создаваемого небулайзером - более мелкие и однородные частицы проникают дальше и позволяют лечить бронхит и бронхиальную астму.<br><br>Компрессорный ингалятор Gamma (Гамма) Effect New предназначен для проведения ингаляций у детей и взрослых, стало возможным благодаря функции регулирования скорости распыления аэрозоля. Аппарат может использоваться для терапии любыми лекарственными средствами, в том числе антибиотиками и гормональными препаратами.<br><br><h3>Показания к применению</h3><br><br>Используется для проведения ингаляций при следующих заболеваниях:<br><br><ul><li>простудах;</li><li>ОРВИ;</li><li>сухом кашле;</li><li>бронхите;</li><li>рините, синусите;</li><li>отечности носоглотки</li><li>фарингите, тонзиллите.</li></ul><br><br><h3>Особенности небулайзера Gamma Effect New</h3>Одним из главных достоинств данной модели является возможность регулирования скорости распыления аэрозоля, которая варьируется от 0,2 до 0,4 мл / мин, в зависимости от болезни и возраста пользователя. Ингалятор генерирует частицы размером около 2,44 мкм, обеспечивает их проникновение в самые отдаленные участки дыхательной системы. Низкий уровень шума при работе, не превышает 55 дБ, способствует более комфортному проведению ингаляции.<br><br>', 'inhalers_nebulizers', 'Gamma', 'rus'),
(23, 'Gamma Effect New compressor inhaler', 'Compact and reliable compressor inhaler (nebulizer) for the whole family.', 'Compact and reliable compressor inhaler (nebulizer) for the whole family.<br><br>Effective inhalation therapy at home.<br><br>Low noise level (< 55dB).<br><br>Fine aerosol particles provide deep penetration of the drug into the lungs (MMAD - 2.44 μm).<br><br>High aerosol spray rate (0.4 ml / min.) Significantly reduces the duration of inhalation therapy.<br><br>The complete set of the Gamma Effect New nebulizer includes: a mouthpiece, adult and children`s masks, air filters (5 pieces), an air tube.<br><br>Warranty on the Gamma Effect New compressor nebulizer: 2 years.<br><br>Inhalation is a generally accepted and most effective method of treating respiratory diseases, which include not only acute respiratory but also chronic diseases. The effectiveness of this procedure depends on the quality of the aerosol created by the nebulizer - smaller and homogeneous particles penetrate further and can treat bronchitis and bronchial asthma.<br><br>The Gamma (Gamma) Effect New compressor inhaler is designed for inhalation in children and adults, which is made possible by the aerosol spray rate control function. The device can be used for therapy with any drugs, including antibiotics and hormonal drugs.<br><br><h3>Indications for use</h3>Used for inhalation in the following diseases:<ul><li>colds;</li><li>SARS;</li><li>dry cough;</li><li>bronchitis;</li><li>rhinitis, sinusitis;</li><li>swelling of the nasopharynx;</li><li>pharyngitis, tonsillitis.</li></ul><br><br><h3>Features of the Gamma Effect New nebulizer</h3>One of the main advantages of this model is the ability to adjust the spray rate of aerosol, which varies from 0.2 to 0.4 ml / min, depending on the disease and age of the user. The inhaler generates particles about 2.44 microns in size, which ensures their penetration into the most remote parts of the respiratory system. Low noise level during operation, not exceeding 55 dB, contributes to a more comfortable inhalation.<br><br>', 'inhalers_nebulizers', 'Gamma', 'eng'),
(24, 'Gamma Effect Jauns kompresora inhalators', 'Kompakts un uzticams kompresora inhalators (smidzinātājs) visai ģimenei.', 'Kompakts un uzticams kompresora inhalators (smidzinātājs) visai ģimenei. <br><br>Efektīva ieelpošanas terapija mājās. <br><br>Zems trokšņu līmenis (<55 dB). <br><br>Smalkās aerosola daļiņas nodrošina zāļu dziļu iespiešanos plaušās (MMAD). - 2,44 μm). <br><br>Augsts aerosola izsmidzināšanas ātrums (0,4 ml / min.) Ievērojami samazina inhalācijas terapijas ilgumu. <br><br>Pilns Gamma Effect New izsmidzinātāja komplekts satur: iemuti, pieaugušo un bērnu maskas, gaisu. filtri (5 gab.), gaisa caurule. <br><br>Gama efekta garantija Jauns kompresora smidzinātājs: 2 gadi. <br><br>Inhalācijas ir vispārpieņemta un efektīvākā elpceļu slimību ārstēšanas metode, kas ietver ne tikai akūtas elpošanas, bet arī hroniskas slimības. Šīs procedūras efektivitāte ir atkarīga no smidzinātāja izveidotā aerosola kvalitātes - mazākas un viendabīgas daļiņas iekļūst tālāk un var ārstēt bronhītu un bronhiālo astmu. <br><br>Gamma (Gamma) efekts Jaunais kompresora inhalators ir paredzēts ieelpošanai bērniem un pieaugušajiem, ko padara iespējamu aerosola izsmidzināšanas daudzuma kontroles funkcija. Ierīci var izmantot terapijai ar jebkurām zālēm, ieskaitot antibiotikas un hormonālos medikamentus. <br><br><h3> Lietošanas indikācijas </h3> Lieto inhalācijām šādām slimībām: <ul> <li> saaukstēšanās; </li> <li> SARS ;</li> <li> sauss klepus; </li> <li> bronhīts; </li> <li> rinīts, sinusīts; </li> <li> nazofarneksa pietūkums; </li> > <li> faringīts, tonsilīts. </li> </ul> <br><br><h3> Gamma Effect iezīmes Jaunais smidzinātājs </h3> Viena no galvenajām šī modeļa priekšrocībām ir spēja pielāgot aerosols, kas svārstās no 0,2 līdz 0,4 ml / min, atkarībā no slimības un lietotāja vecuma. Inhalators rada daļiņas aptuveni 2,44 mikronu lielumā, kas nodrošina to iekļūšanu visattālākajās elpošanas sistēmas daļās. Zems trokšņa līmenis darbības laikā, kas nepārsniedz 55 dB, veicina ērtāku ieelpošanu. <br><br>', 'inhalers_nebulizers', 'Gamma', 'ltv'),
(25, 'Компрессорный небулайзер Gamma Nemo', 'Дизайн компрессорного ингалятора Gamma Nemo разработан специально для детей, но пользоваться им могут все члены семьи.', 'Дизайн компрессорного ингалятора Gamma Nemo разработан специально для детей, но пользоваться им могут все члены семьи.<br><br>Мелкое распыление аэрозоля обеспечивает глубокое проникновение лекарств в легкие, что обеспечивает быстрый лечебный эффект (MMAD - 2,44 мкм).<br><br>Высокая скорость распыления аэрозоля (0,4 мл / мин.) Значительно сокращает продолжительность ингаляционной терапии.<br><br>Комплектация: ротовой мундштук, взрослая и детская маски, воздушные фильтры (5шт.)<br><br>Гарантия на детский компрессорный небулайзер Gamma Nemo 2 года.<br><br>Компрессорных детский небулайзер Gamma (Гамма) Nemo предназначен для проведения ингаляций при острых респираторных заболеваниях, простудах, хронических болезнях дыхательной системы. Дизайн этого компактного аппарата обязательно привлечет внимание маленьких детей, обеспечит качественное проведение процедуры, а его технические характеристики гарантируют максимальный эффект от ингаляции для пациентов этого возраста.<br><br><h3>Показания</h3>Ингаляционная терапия показания при:<ul><li>ОРВИ;</li><li>простудах;</li><li>тонзиллиты;</li><li>ринитах, синуситах;</li><li>бронхитах;</li><li>сухом кашле;</li><li>астме.</li></ul><br><br><h3>Особенности детского небулайзера Gamma Nemo</h3>Скорость распыления аэрозоля составляет 0,4 мл / мин - это оптимальный показатель для проведения ингаляций у детей, который к тому же позволяет сократить время проведения процедуры. Мелкодисперсные частицы размером 2,4 мкм, генерируемых аппаратом, проникают глубоко в дыхательную систему, воздействуя непосредственно на патологический очаг. Размер генерируемые аппаратом частиц - 2,4 мкм. Низкий уровень шума при работе Gamma Nemo, не превышает 55 дБ, не вызывает дискомфорта у детей. Все аксессуары можно посмотреть у нас на сайте!<br><br>', 'inhalers_nebulizers', 'Gamma', 'rus'),
(26, 'Gamma Nemo compressor nebulizer', 'The design of the Gamma Nemo compressor inhaler is designed specifically for children, but can be used by all family members.', 'The design of the Gamma Nemo compressor inhaler is designed specifically for children, but can be used by all family members.<br><br>Fine spraying of the aerosol provides deep penetration of the drug into the lungs, which provides a rapid therapeutic effect (MMAD - 2.44 μm).<br><br>High aerosol spray rate (0.4 ml / min.) Significantly reduces the duration of inhalation therapy.<br><br>Complete set: mouthpiece, adult and children`s masks, air filters (5pcs)<br><br>Warranty on the children`s Gamma Nemo compressor nebulizer: 2 years.<br><br>The Gamma (Gamma) Nemo children`s compressor nebulizer is intended for carrying out inhalations at acute respiratory diseases, colds, chronic diseases of respiratory system. The design of this compact device is sure to attract the attention of young children, which will ensure a quality procedure, and its technical characteristics guarantee the maximum effect of inhalation for patients of this age.<br><br><h3>Indications for use</h3>Inhalation therapy indications for:<ul><li>SARS;</li><li>colds;</li><li>tonsillitis;</li><li>rhinitis, sinusitis;</li><li>bronchitis;</li><li>dry cough;</li><li>asthma.</li></ul><br><br><h3>Features of the children`s nebulizer Gamma Nemo</h3>The aerosol spray rate is 0.4 ml / min - this is the optimal rate for inhalation in children, which also reduces the time of the procedure. Fine particles with a size of 2.4 μm, generated by the device, penetrate deep into the respiratory system, acting directly on the pathological focus. The size of the particle generated by the apparatus is 2.4 μm. The low noise level of the Gamma Nemo, not exceeding 55 dB, does not cause discomfort in children. You can see all the accessories on our website!', 'inhalers_nebulizers', 'Gamma', 'eng'),
(27, 'Gamma Nemo kompresora smidzinātājs', 'Kompresora inhalatora Gamma Nemo dizains ir īpaši paredzēts bērniem, bet to var izmantot visi ģimenes locekļi.', 'Kompresora inhalatora Gamma Nemo dizains ir īpaši paredzēts bērniem, bet to var izmantot visi ģimenes locekļi. <br><br>Smalks aerosola izsmidzināšana nodrošina zāļu dziļu iespiešanos plaušās, kas nodrošina ātru terapeitisko efektu (MMAD - 2,44 μm). <br><br>Augsts aerosola izsmidzināšanas ātrums (0,4 ml / min.) Ievērojami samazina inhalācijas terapijas ilgumu. <br><br>Pilns komplekts: iemutis, pieaugušo un bērnu maskas, gaisa filtri (5 gab.) <br><br>garantija Bērnu kompresora smidzinātājs Gamma Nemo: 2 gadi. <br><br>Bērnu kompresora smidzinātājs Gamma (Gamma) Nemo ir paredzēts inhalāciju veikšanai pie akūtām elpceļu slimībām, saaukstēšanās, hroniskām elpošanas sistēmas slimībām. Šīs kompaktās ierīces dizains noteikti piesaista mazu bērnu uzmanību, kas nodrošinās kvalitatīvu procedūru, un tā tehniskie parametri garantē maksimālu ieelpošanas efektu šī vecuma pacientiem. <br><br><h3> Lietošanas indikācijas </ h3> Inhalācijas terapijas indikācijas: <ul> <li> SARS; </li> <li> saaukstēšanās; </li> <li> tonsilīts; </li> <li> rinīts, sinusīts; </li> <li > bronhīts; </li> <li> sauss klepus; </li> <li> astma. </li> </ul> <br><br><h3> Bērnu izsmidzinātāja Gamma Nemo iezīmes </h3> Aerosola aerosols ātrums ir 0,4 ml / min - tas ir optimālais ātrums ieelpojot bērniem, kas arī samazina procedūras laiku. Ierīces ģenerētās smalkās daļiņas ar izmēru 2,4 μm dziļi iekļūst elpošanas sistēmā, tieši iedarbojoties uz patoloģisko fokusu. Aparāta ģenerēto daļiņu lielums ir 2,4 μm. Zemais Gamma Nemo trokšņu līmenis, kas nepārsniedz 55 dB, nerada bērniem diskomfortu. Visus aksesuārus varat redzēt mūsu mājas lapā!', 'inhalers_nebulizers', 'Gamma', 'ltv'),
(28, 'Компрессорный ингалятор Gamma Effect Max', 'Универсальный компрессорный ингалятор (небулайзер) для детей и взрослых.', 'Универсальный компрессорный ингалятор (небулайзер) для детей и взрослых.<br><br>Эффективная ингаляционная терапия в домашних условиях.<br><br>Низкий уровень шума работы небулайзера <55дБ.<br><br>Мелкие частицы аэрозоля обеспечивают глубокое проникновение лекарственного препарата в легкие (MMAD - 2,44 мкм).<br><br>Скорость распыления аэрозоля (0,2 мл / мин.).<br><br>В комплект небулайзера Гамма Эффект Макс входят: полости мундштук, взрослая и детская маски, воздушные фильтры (5шт.)<br><br>Гарантия на компрессорный небулайзер Gamma Max 2 года.<br><br>', 'inhalers_nebulizers', 'Gamma', 'rus'),
(29, 'Compressor inhaler Gamma Effect Max', 'Universal compressor inhaler (nebulizer) for children and adults.', 'Universal compressor inhaler (nebulizer) for children and adults.<br><br>Effective inhalation therapy at home.<br><br>Low noise level of the nebulizer: <55dB.<br><br>Small aerosol particles provide deep penetration of the drug into the lungs (MMAD - 2.44 μm).<br><br>Aerosol spray rate (0.2 ml / min.).<br><br>The set of the Gamma Effect Max nebulizer includes: an oral mouthpiece, adult and children`s masks, air filters (5 pieces)<br><br>Warranty on the Gamma Max compressor nebulizer: 2 years.<br><br>', 'inhalers_nebulizers', 'Gamma', 'eng'),
(30, 'Kompresora inhalators Gamma Effect Max', 'Universāls kompresora inhalators (smidzinātājs) bērniem un pieaugušajiem.', 'Universāls kompresora inhalators (smidzinātājs) bērniem un pieaugušajiem. Efektīva inhalācijas terapija mājās. <br><br>Zems smidzinātāja trokšņu līmenis: <55 dB. <br><br>Mazas aerosola daļiņas nodrošina zāļu dziļu iespiešanos plaušās (MMAD). - 2,44 μm). <br><br>Aerosola izsmidzināšanas ātrums (0,2 ml / min.). <br><br>Smidzinātāja Gamma Effect Max komplektā ietilpst: mutes dobuma iemutnis, pieaugušo un bērnu maskas, gaisa filtri (5 gab.) Garantija kompresora smidzinātājam Gamma Max: 2 gadi. <br><br>', 'inhalers_nebulizers', 'Gamma', 'ltv'),
(31, 'Электронный термометр Gamma Thermo Base', 'Высокая точность измерения температуры тела у новорожденных и взрослых: +/- 0,1 ° С, водонепроницаемый корпус', 'Высокая точность измерения температуры тела у новорожденных и взрослых: +/- 0,1 ° С, водонепроницаемый корпус<br><br>Время измерения температуры тела у детей и взрослых: орально и ректально 60 +/- 10 секунд аксилярной 100 +/- 20 секунд.<br><br>Термометр оснащен памятью на последнее измерение температуры.<br><br>звуковой сигнал<br><br>Минимальный шаг: 0,1 ° С<br><br>С помощью электронного термометра Gamma (Гамма) Thermo Base процесс измерения температуры тела становится как никогда комфортным и безопасным. В отличие от классических аналоговых термометров, электронный прибор не содержит ртути и стекла, поэтому может смело использоваться не только у взрослых, но и детей.<br><br>Время, необходимое для определения температуры зависит от области измерения: орально или ректально - 60 секунд, в подмышечной впадине - 120 секунд. Современные материалы и технологии изготовления гарантируют высокую точность измерений, погрешность которых не превышает 0,1 градуса.<br><br><h3>Особенности термометра Gamma Thermo Base</h3>Влагонепроницаемый корпус защищает электронную часть устройства от повреждений, благодаря чему условия его эксплуатации становятся менее жесткими, а стерилизация может проводиться более качественно. Еще более комфортным процедуру делает наличие звукового сигнала, оповестит пользователя об окончании процесса измерения.<br><br>Наличие в Gamma Thermo Base функции хранения результатов последнего измерения позволяет сравнивать показатели двух последовательных процедур. Термометр отключается автоматически, что позволяет продлить срок службы батареи.<br><br>High accuracy of body temperature measurement in newborns and adults: +/- 0.1 ° C<br><br>waterproof case', 'thermometers', 'Gamma', 'rus'),
(32, 'Electronic thermometer Gamma Thermo Base', 'Time of measurement of body temperature at children and adults: orally and rectally 60 +/- 10 seconds; axillary 100 +/- 20 seconds', 'Time of measurement of body temperature at children and adults: orally and rectally 60 +/- 10 seconds; axillary 100 +/- 20 seconds.<br><br>The thermometer is equipped with memory for the last temperature measurement.<br><br>Sound signal<br><br>Minimum step: 0.1 ° C<br><br>With the help of the electronic thermometer Gamma (Gamma) Thermo Base the process of measuring body temperature becomes more comfortable and safe than ever. Unlike classic analog thermometers, the electronic device does not contain mercury and glass, so it can be safely used not only by adults but also children.<br><br>The time required to determine the temperature depends on the measurement area: orally or rectally - 60 seconds, in the axilla - 120 seconds. Modern materials and manufacturing technologies guarantee high accuracy of measurements, the error of which is less than 0.1 degrees.<br><br><h3>Features of the Gamma Thermo Base thermometer</h3>The moisture-proof housing protects the electronic part of the device from damage, so that its operating conditions become less stringent, and sterilization can be performed better. Even more comfortable procedure is the presence of an audible signal that will notify the user of the end of the measurement process.<br><br>The presence in Gamma Thermo Base of the function of storage of results of the last measurement allows to compare indicators of two consecutive procedures. The thermometer switches off automatically, which allows you to extend the battery life.<br><br>', 'thermometers', 'Gamma', 'eng'),
(33, 'Elektroniskais termometrs Gamma Thermo Base', 'Ķermeņa temperatūras mērīšanas laiks bērniem un pieaugušajiem: perorāli un rektāli 60 +/- 10 sekundes; aksilārs 100 +/- 20 sekundes', 'Ķermeņa temperatūras mērīšanas laiks bērniem un pieaugušajiem: perorāli un rektāli 60 +/- 10 sekundes; aksilāri 100 +/- 20 sekundes. <br><br>Termometrs ir aprīkots ar atmiņu pēdējās temperatūras mērīšanai. <br><br>Skaņas signāls | Minimālais solis: 0,1 ° C | Ar elektroniskā termometra palīdzību Gamma (Gamma) ) Termo bāze ķermeņa temperatūras mērīšanas process kļūst ērtāks un drošāks nekā jebkad agrāk. Atšķirībā no klasiskajiem analogiem termometriem, elektroniskajā ierīcē nav dzīvsudraba un stikla, tāpēc to var droši izmantot ne tikai pieaugušie, bet arī bērni. <br><br>Temperatūras noteikšanai nepieciešamais laiks ir atkarīgs no mērīšanas laukuma: perorāli vai rektāli - 60 sekundes, aksilā - 120 sekundes. Mūsdienu materiāli un ražošanas tehnoloģijas garantē augstu mērījumu precizitāti, kuras kļūda ir mazāka par 0,1 grādiem. <br><br><h3> Termometra Gamma Thermo Base īpašības </h3> Mitrumizturīgs korpuss aizsargā ierīces elektronisko daļu. no bojājumiem, lai tā darbības apstākļi kļūtu mazāk stingri, un sterilizāciju var veikt labāk. Vēl ērtāka procedūra ir skaņas signāla klātbūtne, kas lietotājam paziņo par mērīšanas procesa beigām. <br><br>Pēdējā mērījuma rezultātu saglabāšanas funkcijas klātbūtne Gamma Thermo Base ļauj salīdzināt divu rādītāju rādītājus. secīgas procedūras. Termometrs automātiski izslēdzas, kas ļauj pagarināt akumulatora darbības laiku. <br><br>', 'thermometers', 'Gamma', 'ltv'),
(34, 'Водонепроницаемый электронный термометр Gamma Thermo Soft', 'Высокая точность измерения температуры тела у детей и взрослых: +/- 0,1 ° С, Водонепроницаемый корпус.', 'Высокая точность измерения температуры тела у детей и взрослых: +/- 0,1 ° С, Водонепроницаемый корпус.<br><br>Термометр с гибким кончиком, что обеспечивает полную безопасность при измерении температуры тела у новорожденных.<br><br>Не содержит ртуть и стекло.<br><br>Время измерения температуры тела у детей и взрослых: орально и ректально 60 +/- 10 секунд подмышечных 100 +/- 20 секунд.<br><br>Термометр Gamma Thermo Soft оснащен памятью на последнее измерение температуры.<br><br>Звуковой сигнал.<br><br>Минимальный шаг: 0,1 ° С<br><br>Электронный термометр Gamma (Гамма) Thermo Soft создан для максимально быстрого и безопасного определения температуры тела у взрослых и детей в диапазоне от 32 до 42,9 градусов. Процедура измерения выполняется орально, ректально или в подмышечной впадине. Время, необходимое для определения температуры зависит от области, в которой проводится измерение: 60 секунд - орально или ректально, 100 секунд - в подмышечной впадине, при этом его погрешность не превышает 0,1 градуса.<br><br><h3>Особенности термометра Gamma Thermo Soft</h3>Полностью водонепроницаемый корпус гарантирует работоспособность устройства независимо от условий его эксплуатации и упрощает проведение стерилизации. Наличие гибкого наконечника позволяет использовать термометр для определения температуры у новорожденных, обеспечивая полную безопасность процедуры.<br><br>Об окончании процесса измерения пользователь узнает с помощью звукового сигнала. Gamma Thermo Soft отключается самостоятельно через определенное время после бездействия, что позволяет продлить срок службы батареи. Последнее измеренное значение температуры сохраняется в ячейке памяти, поэтому у пользователя появляется возможность контролировать динамику ее изменений.<br><br>', 'thermometers', 'Gamma', 'rus'),
(35, 'Waterproof electronic thermometer Gamma Thermo Soft', 'High accuracy of body temperature measurement in children and adults: +/- 0.1 ° С, Waterproof case.', 'High accuracy of body temperature measurement in children and adults: +/- 0.1 ° С, Waterproof case.<br><br>Thermometer with a flexible tip, which provides complete safety when measuring body temperature in newborns.<br><br>Does not contain mercury and glass.<br><br>Time of body temperature measurement in children and adults: orally and rectally 60 +/- 10 seconds; axillary 100 +/- 20 seconds.<br><br>The Gamma Thermo Soft thermometer is equipped with memory for the last temperature measurement.<br><br>Sound signal.<br><br>Minimum step: 0.1 ° C<br><br>Electronic thermometer Gamma (Gamma) Thermo Soft is designed for the fastest and safest determination of body temperature in adults and children in the range from 32 to 42.9 degrees. The measurement procedure is performed orally, rectally or in the axilla. The time required to determine the temperature depends on the area in which the measurement is performed: 60 seconds - orally or rectally, 100 seconds - in the axilla, and its error does not exceed 0.1 degrees.<br><br><h3>Features of the Gamma Thermo Soft thermometer</h3>The completely waterproof case guarantees operability of the device irrespective of conditions of its operation and simplifies carrying out sterilization. The presence of a flexible tip allows you to use a thermometer to determine the temperature in newborns, ensuring complete safety of the procedure.<br><br>The user learns about the end of the measurement process with the help of an audible signal. Gamma Thermo Soft shuts down automatically after a period of inactivity, which allows you to extend the life of the battery. The last measured value of temperature is stored in a memory cell therefore the user has an opportunity to control dynamics of its changes.<br><br>', 'thermometers', 'Gamma', 'eng'),
(36, 'Ūdensizturīgs elektroniskais termometrs Gamma Thermo Soft', 'Augsta ķermeņa temperatūras mērīšanas precizitāte bērniem un pieaugušajiem: +/- 0,1 ° С, ūdensnecaurlaidīgs korpuss.', 'Augsta ķermeņa temperatūras mērīšanas precizitāte bērniem un pieaugušajiem: +/- 0,1 ° С, ūdensnecaurlaidīgs korpuss. <br><br>Termometrs ar elastīgu galu, kas nodrošina pilnīgu drošību, mērot ķermeņa temperatūru jaundzimušajiem. <br><br>Nesatur dzīvsudrabu un stiklu . <br><br>Ķermeņa temperatūras mērīšanas laiks bērniem un pieaugušajiem: perorāli un rektāli 60 +/- 10 sekundes; aksilāri 100 +/- 20 sekundes. <br><br>Gamma Thermo Soft termometrs ir aprīkots ar atmiņu pēdējās temperatūras mērīšanai. <br><br>Skaņas signāls. <br><br>Minimālais solis: 0,1 ° C <br><br>Elektroniskais termometrs Gamma (Gamma). Thermo Soft ir paredzēts ātrai un drošai ķermeņa temperatūras noteikšanai pieaugušajiem un bērniem diapazonā no 32 līdz 42,9 grādiem. Mērīšanas procedūra tiek veikta perorāli, rektāli vai asilā. Laiks, kas nepieciešams temperatūras noteikšanai, ir atkarīgs no apgabala, kurā tiek veikts mērījums: 60 sekundes - perorāli vai rektāli, 100 sekundes - aksiālā, un tās kļūda nepārsniedz 0,1 grādus. <br><br><h3> Termometrs Gamma Thermo Soft </h3> Pilnībā ūdensnecaurlaidīgs korpuss garantē ierīces darbību neatkarīgi no tās darbības apstākļiem un vienkāršo sterilizācijas veikšanu. Elastīga uzgaļa klātbūtne ļauj izmantot termometru, lai noteiktu temperatūru jaundzimušajiem, nodrošinot pilnīgu procedūras drošību. <br><br>Lietotājs ar skaņas signāla palīdzību uzzina par mērīšanas procesa beigām. Gamma Thermo Soft automātiski izslēdzas pēc neaktivitātes perioda, kas ļauj pagarināt akumulatora darbības laiku. Pēdējā izmērītā temperatūras vērtība tiek glabāta atmiņas šūnā, tāpēc lietotājam ir iespēja kontrolēt tās izmaiņu dinamiku. <br><br>', 'thermometers', 'Gamma', 'ltv');

-- --------------------------------------------------------

--
-- Структура таблицы `prod_notes`
--

CREATE TABLE `prod_notes` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `prod_notes`
--

INSERT INTO `prod_notes` (`id`, `prod_id`, `title`, `content`) VALUES
(1, 1, 'Стоимость', '632 грн'),
(2, 2, 'Cost', '632 грн'),
(3, 3, 'Cena', '632 грн'),
(4, 4, 'Стоимость', '685 грн'),
(5, 5, 'Cost', '685 грн'),
(6, 6, 'Cena', '685 грн'),
(7, 7, 'Стоимость', '935 грн'),
(8, 8, 'Cost', '935 грн'),
(9, 9, 'Cena', '935 грн'),
(10, 10, 'Стоимость', '649 грн'),
(11, 11, 'Cost', '649 грн'),
(12, 12, 'Cena', '649 грн'),
(13, 13, 'Стоимость', '755 грн'),
(14, 14, 'Cost', '755 грн'),
(15, 15, 'Cena', '755 грн'),
(16, 16, 'Стоимость', '340 грн'),
(17, 17, 'Cost', '340 грн'),
(18, 18, 'Cena', '340 грн'),
(19, 19, 'Стоимость', '350 грн'),
(20, 20, 'Cost', '350 грн'),
(21, 21, 'Cena', '350 грн'),
(22, 22, 'Стоимость', '998 грн'),
(23, 23, 'Cost', '998 грн'),
(24, 24, 'Cena', '998 грн'),
(25, 25, 'Стоимость', '1185 грн'),
(26, 26, 'Cost', '1185 грн'),
(27, 27, 'Cena', '1185 грн'),
(28, 28, 'Стоимость', '745 грн'),
(29, 29, 'Cost', '745 грн'),
(30, 30, 'Cena', '745 грн'),
(31, 31, 'Стоимость', '105 грн'),
(32, 32, 'Cost', '105 грн'),
(33, 33, 'Cena', '105 грн'),
(34, 34, 'Стоимость', '150 грн'),
(35, 35, 'Cost', '150 грн'),
(36, 36, 'Cena', '150 грн');

-- --------------------------------------------------------

--
-- Структура таблицы `prod_types`
--

CREATE TABLE `prod_types` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rus` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eng` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ltv` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `prod_types`
--

INSERT INTO `prod_types` (`id`, `title`, `rus`, `eng`, `ltv`) VALUES
(1, 'tonometer', 'Тонометры', 'Tonometers', 'Tonometrs'),
(2, 'inhalers_nebulizers', 'Ингаляторы и небулайзеры', 'Inhalers and nebulizers', 'Inhalatori un smidzinātāji'),
(3, 'thermometers', 'Термометры', 'Thermometers', 'Termometri');

-- --------------------------------------------------------

--
-- Структура таблицы `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `title` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `providers`
--

INSERT INTO `providers` (`id`, `title`, `url`) VALUES
(1, 'Gamma', 'http://gamma-med.com.ua');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes_lang`
--
ALTER TABLE `notes_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prod_notes`
--
ALTER TABLE `prod_notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `prod_types`
--
ALTER TABLE `prod_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `notes_lang`
--
ALTER TABLE `notes_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `productions`
--
ALTER TABLE `productions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `prod_notes`
--
ALTER TABLE `prod_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `prod_types`
--
ALTER TABLE `prod_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
