-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 14 2023 г., 14:47
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kumarov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'Магия Востока'),
(2, 'Волшебное дерево'),
(3, 'Восточный базар');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `country` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `model` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `path` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `country`, `year`, `model`, `category`, `count`, `path`, `created_at`) VALUES
(1, 'Приправа для Рыбы 15гр', 55, 'Магия Востока', 2020, 'Пакет', 'Магия Востока', 2000, 'images/upload/1_1686477645_1_1684394674_1_1684394185_riba.jpg', '2023-06-11 10:00:45'),
(2, 'Приправа для Курицы-Гриль 15гр', 55, 'Магия Востока', 2020, 'Пакет', 'Магия Востока', 2000, 'images/upload/1_1686478449_1_1685356259_kuragril.jpg', '2023-06-11 10:14:09'),
(3, 'Приправа для Баранины 15гр', 55, 'Магия Востока', 2021, 'Пакет', 'Магия Востока', 2000, 'images/upload/1_1686479034_baranina.jpg', '2023-06-11 10:23:54'),
(4, 'Приправа для Супов 15гр', 55, 'Магия Востока', 2021, 'Пакет', 'Магия Востока', 2000, 'images/upload/1_1686479230_c946261446799f0f6986c6fda612f3a7.jpg', '2023-06-11 10:27:10'),
(5, 'Приправа для Рыбы 200гр', 165, 'Магия Востока', 2022, 'Дой-пак', 'Магия Востока', 2000, 'images/upload/1_1686479668_d79c989e15de8073d5746f8aee5fed28.png', '2023-06-11 10:34:28'),
(6, 'Морская соль 110гр', 170, 'Магия Востока', 2022, 'Мельница', 'Магия Востока', 2000, 'images/upload/1_1686488734_41d69fbebaa23a187e9efb8c40ca097e.jpg', '2023-06-11 13:05:34'),
(7, 'Приправа для Курицы 30гр', 75, 'Волшебное дерево', 2022, 'Пакет', 'Волшебное дерево', 2000, 'images/upload/1_1686739547_1zwx91cy342fv93zk91uuv0z9xrprdns.jpg', '2023-06-14 10:45:47'),
(8, 'Приправа для Шашлыка 30гр', 75, 'Волшебное дерево', 2022, 'Пакет', 'Волшебное дерево', 2000, 'images/upload/1_1686739814_b4elecbrftxx2akenobhhxezs09xstj3.jpg', '2023-06-14 10:50:14'),
(9, 'Приправа для Салатов 30гр', 75, 'Волшебное дерево', 2022, 'Пакет', 'Волшебное дерево', 2000, 'images/upload/1_1686739957_nm3cjlrvsd5ru3nq57gvcnqx9lxblhhr.jpg', '2023-06-14 10:52:37'),
(10, 'Морская соль \"Гималайская\" 115гр', 260, 'Волшебное дерево', 2023, 'Мельница', 'Волшебное дерево', 2000, 'images/upload/1_1686740042_9klk8na8el2zhpgia8wv4kcqgggrvdo5.jpg', '2023-06-14 10:54:02'),
(32, 'Лавровый лист 10гр', 8, 'Восточный базар', 2021, 'Пакет', 'Восточный базар', 2000, 'images/upload/1_1686740416_5c44dc84f4296ac74602b60c3aa01963.jpg', '2023-06-14 11:00:16'),
(33, 'Перец черный молотый 10гр', 30, 'Восточный базар', 2021, 'Пакет', 'Восточный базар', 2000, 'images/upload/1_1686740503_2353feda912a6c664e4e6ffdebf4c02a.jpg', '2023-06-14 11:01:43'),
(34, 'Перец черный горошком 10гр', 30, 'Восточный базар', 2021, 'Пакет', 'Восточный базар', 2000, 'images/upload/1_1686740779_4d279664a8fdc8554b47bdc18827430a.jpg', '2023-06-14 11:06:19');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `role`) VALUES
(1, 'Sergey', 'Kumarov', 'Andreevich', 'kumarov', 'lordprojokercool@gmail.com', 'segakum02', 'client'),
(4, 'admin', 'admin', 'admin', 'admin', 'admin@admin.com', 'admin55', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
