-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 яну 2021 в 08:26
-- Версия на сървъра: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookproject`
--

-- --------------------------------------------------------

--
-- Структура на таблица `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Схема на данните от таблица `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(10);

-- --------------------------------------------------------

--
-- Структура на таблица `tbl_book`
--

CREATE TABLE `tbl_book` (
  `book_id` bigint(20) NOT NULL,
  `book_author` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL,
  `book_genre` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL,
  `book_name` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Схема на данните от таблица `tbl_book`
--

INSERT INTO `tbl_book` (`book_id`, `book_author`, `book_genre`, `book_name`) VALUES
(4, 'Andrzej Sapkowski', 'Fantasy', 'The Witcher'),
(6, 'Stephen King', 'Horror', 'Pet Sematary'),
(8, 'Emily Brontë', 'Tragedy', 'Wuthering Heights');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(45) COLLATE utf16_unicode_ci NOT NULL,
  `first_name` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`) VALUES
(8, 'qnicaa395@abv.bg', 'Yanitsa', 'Koedzhikova', '$2a$10$T059j235EN8KgJOvb5MVPegspGo/bmfOVtQqyN31jAbOBdvkfP0vq'),
(9, 'test@abv.bg', 'testname', 'testname', '$2a$10$nce6jBGHFd6vzSZKasK1AOf1mDW.qVdhsnn8Zt/8E8MiYxXX59Oke');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
