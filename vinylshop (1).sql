-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 18 dec 2019 om 16:37
-- Serverversie: 5.7.27-0ubuntu0.18.04.1
-- PHP-versie: 7.3.8-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinylshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pop/rock', '2019-10-22 09:46:32', NULL),
(2, 'punk', '2019-10-22 09:46:32', NULL),
(3, 'industrial', '2019-10-22 09:46:32', NULL),
(4, 'hardrock', '2019-10-22 09:46:32', NULL),
(5, 'new wave', '2019-10-22 09:46:32', NULL),
(6, 'dance', '2019-10-22 09:46:32', NULL),
(7, 'reggae', '2019-10-22 09:46:32', NULL),
(8, 'jazz', '2019-10-22 09:46:32', NULL),
(9, 'dubstep', '2019-10-22 09:46:32', NULL),
(10, 'blues', '2019-10-22 09:46:32', NULL),
(11, 'indie rock', '2019-10-22 09:46:32', NULL),
(12, 'noise', '2019-10-22 09:46:32', NULL),
(13, 'electro', '2019-10-22 09:46:32', NULL),
(14, 'techno', '2019-10-22 09:46:32', NULL),
(15, 'folk', '2019-10-22 09:46:32', NULL),
(16, 'hip hop', '2019-10-22 09:46:32', NULL),
(17, 'soul', '2019-10-22 09:46:32', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_15_092020_create_genres_table', 1),
(4, '2019_10_15_092256_create_records_table', 1),
(5, '2019_10_15_092315_create_orders_table', 1),
(6, '2019_10_15_092335_create_orderlines_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orderlines`
--

CREATE TABLE `orderlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalPrice` double(6,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `totalPrice` double(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_mbid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mbid` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(5,2) NOT NULL DEFAULT '19.99',
  `stock` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `records`
--

INSERT INTO `records` (`id`, `genre_id`, `artist`, `artist_mbid`, `title`, `title_mbid`, `cover`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'Queen', '0383dadf-2a4e-4d10-a46a-e9e041da8eb3', 'Greatest Hits', 'fcb78d0d-8067-4b93-ae58-1e4347e20216', NULL, 19.99, 1, '2019-10-22 09:46:32', NULL),
(2, 1, 'The Rolling Stones', 'b071f9fa-14b0-4217-8e97-eb41da73f598', 'Sticky Fingers', 'd883e644-5ec0-4928-9ccd-fc78bc306a46', NULL, 21.00, 1, '2019-10-22 09:46:32', NULL),
(3, 1, 'The Beatles', 'b10bbbfc-cf9e-42e0-be17-e2c3e1d2600d', 'Abbey Road', 'd6010be3-98f8-422c-a6c9-787e2e491e58', NULL, 24.99, 0, '2019-10-22 09:46:32', NULL),
(4, 1, 'The Who', '9fdaa16b-a6c4-4831-b87c-bc9ca8ce7eaa', 'Tommy', 'fceaca05-a210-4f92-9e88-1e8b44ec8e37', NULL, 12.50, 3, '2019-10-22 09:46:32', NULL),
(5, 1, 'Fleetwood Mac', 'bd13909f-1c29-4c27-a874-d4aaf27c5b1a', 'Rumours', '081ea37e-db59-4332-8cd2-ad020cb93af6', NULL, 19.99, 1, '2019-10-22 09:46:32', NULL),
(6, 1, 'David Bowie', '5441c29d-3602-4898-b1a1-b77fa23b8e50', '\"Heroes\"', 'f0a4ed57-10e0-4c37-81b4-36311dc7d4b6', NULL, 19.99, 0, '2019-10-22 09:46:32', NULL),
(7, 1, 'David Bowie', '5441c29d-3602-4898-b1a1-b77fa23b8e50', 'The Rise and Fall of Ziggy Stardust and the Spiders From Mars', '7dc5edce-ead6-41e4-9c4b-240223c9bab0', NULL, 24.99, 3, '2019-10-22 09:46:32', NULL),
(8, 1, 'Steve Harley & Cockney Rebel', '9a07b4ae-7c2f-4473-b019-c63c3d5db45c', 'The Psychomodo', '88776dcc-072e-4072-bc25-8b970a3f055e', 'https://coverartarchive.org/release/4650b4c9-6cc2-4139-a46d-58b9f40a697b/front-250.jpg', 9.99, 1, '2019-10-22 09:46:32', NULL),
(9, 1, 'Roxy Music', '331ce348-1b08-40b9-8ed7-0763b92bd003', 'Siren', 'c2dad882-7804-416d-980e-d06b8405e9cf', NULL, 24.00, 4, '2019-10-22 09:46:32', NULL),
(10, 3, 'Ministry', '7a18b986-afcc-359c-add1-7aa3a79104a2', 'The Land of Rape and Honey', '4bcaf5b9-76ba-4891-934b-1a441c62b008', 'https://coverartarchive.org/release/8fc6c9e6-5541-39de-b1e6-67157bc75646/10665793150-250.jpg', 19.99, 4, '2019-10-22 09:46:32', NULL),
(11, 3, 'Front 242', '8fb6c00f-61d8-4f27-98f9-53e1ba481626', 'Front by Front', '97508279-e7d3-4303-8f2a-483119ce41c7', 'https://coverartarchive.org/release/feaf508a-ef4d-4680-8bf0-0f92bcf35048/6564772390-250.jpg', 16.49, 2, '2019-10-22 09:46:32', NULL),
(12, 3, 'Nine Inch Nails', 'b7ffd2af-418f-4be2-bdd1-22f8b48613da', 'Pretty Hate Machine', '8f156938-6462-3b3e-84ba-bfc7dd232c34', NULL, 25.00, 3, '2019-10-22 09:46:32', NULL),
(13, 3, 'Einstürzende Neubauten', '6e9ac29b-798c-4af7-8d9e-55cdc72a999c', 'Halber Mensch', '94b93f48-6357-49fd-affa-7c07db1f131b', NULL, 14.00, 0, '2019-10-22 09:46:32', NULL),
(14, 5, 'The Police', '9e0e2b01-41db-4008-bd8b-988977d6019a', 'Outlandos d\'Amour', 'e07a2c71-dde7-37a3-8b02-44d25dd128f9', NULL, 19.99, 5, '2019-10-22 09:46:32', NULL),
(15, 5, 'Japan', '697e7111-5630-4c77-83f3-39821bacc61a', 'Oil on Canvas', 'a7472800-543f-44a1-a299-7bd07b80e9a8', 'https://coverartarchive.org/release/80910883-e38d-48b3-b1dc-8e36365e94d8/10519153003-250.jpg', 9.99, 2, '2019-10-22 09:46:32', NULL),
(16, 5, 'The Cure', '69ee3720-a7cb-4402-b48d-a02c366f2bcf', 'Disintegration', '11af85e2-c272-4c59-a902-47f75141dc97', NULL, 26.00, 4, '2019-10-22 09:46:32', NULL),
(17, 5, 'Talking Heads', 'a94a7155-c79d-4409-9fcf-220cb0e4dc3a', 'Stop Making Sense', '5f4ad828-bb45-4867-9ae9-295cfe22449d', NULL, 9.90, 2, '2019-10-22 09:46:32', NULL),
(18, 2, 'Sex Pistols', 'e5db18cb-4b1f-496d-a308-548b611090d3', 'Never Mind the Bollocks', '11c6c574-6442-45f8-9c25-110675725f2f', NULL, 15.00, 1, '2019-10-22 09:46:32', NULL),
(19, 2, 'The Clash', '8f92558c-2baa-4758-8c38-615519e9deda', 'London Calling', '7bec22a0-eb73-4b79-a619-b253d5c2af87', NULL, 11.99, 1, '2019-10-22 09:46:32', NULL),
(20, 12, 'Atari Teenage Riot', 'fe404dd9-09b2-4ac8-a0e5-8da1c4027061', 'The Future of War', 'fcba15e2-3d1e-40b3-996c-be22450bda82', 'https://coverartarchive.org/release/aeaef39a-879d-41d1-8f6e-298cbee17771/21867740528-250.jpg', 21.50, 2, '2019-10-22 09:46:32', NULL),
(21, 12, 'Sonic Youth', '5cbef01b-cc35-4f52-af7b-d0df0c4f61b9', 'EVOL', '22079997-d0d3-449a-83e0-e8ac1942740f', NULL, 24.99, 3, '2019-10-22 09:46:32', NULL),
(22, 2, 'H₂O', '7dceb9fe-9c4f-41d8-8528-4c6bf529f919', 'Nothing to Prove', '60464f78-9697-4458-adfd-0e2a0109c9f5', 'https://coverartarchive.org/release/52937b1d-9124-4116-af39-f650ebacdd84/front-250.jpg', 18.99, 5, '2019-10-22 09:46:32', NULL),
(23, 2, 'Turnstile', '7b748dac-f5ce-45a7-9b95-c1d8b5b013ed', 'Time & Space', '36a6b0c0-24d3-4cae-9e7c-96ba0da9a331', 'https://coverartarchive.org/release/c05b7ae0-dab4-46b4-a5f8-2e7510eba1fb/front-250.jpg', 24.99, 5, '2019-10-22 09:46:32', NULL),
(24, 4, 'Guns N\' Roses', 'eeb1195b-f213-4ce1-b28c-8565211f8e43', 'Appetite for Destruction', 'b6945872-411f-4bf5-824b-7b319148a264', NULL, 24.99, 5, '2019-10-22 09:46:32', NULL),
(25, 2, 'Off With Their Heads', '552eb96a-7e91-439d-82d2-099804b75939', 'Home', 'ae6938f1-a7a1-4864-892e-778e27f17426', NULL, 15.99, 1, '2019-10-22 09:46:32', NULL),
(26, 2, 'Social Distortion', 'e1e05cce-3922-44e1-8f20-015abe5e309d', 'Somewhere Between Heaven and Hell', '68f75281-39f2-43fc-a63a-76a8854c777c', NULL, 15.99, 2, '2019-10-22 09:46:32', NULL),
(27, 7, 'Bob Marley & The Wailers', 'c296e10c-110a-4103-9e77-47bfebb7fb2e', 'Uprising', '62ed2ddd-498c-4d93-9b8c-d352d38e9ea9', 'https://coverartarchive.org/release/ab20031f-200c-44e8-88fb-4fca32ecbf38/front-250.jpg', 29.99, 3, '2019-10-22 09:46:32', NULL),
(28, 16, 'House of Pain', 'c2d6a6fb-7999-4bb3-b2df-7d752fdf4e95', 'House of Pain', 'f9490168-7fa1-4076-a5e2-ee6a246584c6', NULL, 16.99, 0, '2019-10-22 09:46:32', NULL),
(29, 4, 'Volbeat', '4753fcb7-9270-493a-974d-8daca4e49125', 'The Strength/The Sound/The Songs', '2794f3ec-ff30-4526-ab20-c188edc25024', 'https://coverartarchive.org/release/7d5cfc3e-61bd-4361-bfda-1bb18ade16b0/front-250.jpg', 19.99, 3, '2019-10-22 09:46:32', NULL),
(30, 2, 'Suicidal Tendencies', 'e9e2a634-984f-4c10-bf7b-7970179e1ef1', 'Join the Army', '6c5e4cc7-9955-4281-a017-463be6e71b09', 'https://coverartarchive.org/release/439148c3-0e6a-3f3d-81f3-fea3d09e5280/front-250.jpg', 14.99, 1, '2019-10-22 09:46:32', NULL),
(31, 2, 'Cock Sparrer', 'bbcc9824-31c0-4c70-a7af-d24090ea161e', 'Forever', '4171be5b-6904-40de-b1f7-07c73bbb6690', NULL, 17.50, 4, '2019-10-22 09:46:32', NULL),
(32, 2, 'SNFU', 'ca94290f-d456-4091-9fc4-fa83512f544f', 'The One Voted Most Likely to Succeed', 'fcaf21bb-915c-34bb-ab08-abb35588746f', NULL, 17.50, 0, '2019-10-22 09:46:32', NULL),
(33, 2, 'Descendents', 'f035837e-4117-438d-a524-cacf43500e68', 'Milo Goes to College', '72837739-550b-3a21-8d7a-3bb898562b6a', NULL, 32.50, 2, '2019-10-22 09:46:32', NULL),
(34, 7, 'Peter Tosh', '7db6aae5-6644-4513-9bfc-ca2e79d4469c', 'Mama Africa', '38d30631-9341-4e62-9d10-2cd372b3e0f4', NULL, 22.50, 1, '2019-10-22 09:46:32', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `active`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Phil Wysmans (update)', 'phil.wysmans@gmail.com', 1, 1, '2019-10-22 09:46:29', '$2y$10$ExsnLBIAe8RyeBqG4JUb2ush.jmjJGe1m3v5tvJdonacSn9xLWAMi', NULL, '2019-10-22 09:46:29', '2019-12-03 11:20:52'),
(2, 'Jane Doe', 'jane.doe@example.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$HI.tAINvIPTs9sRfRz.AH.8WoTPrzJwDL.h6HeWyiZ.k8uvoe6gRG', NULL, '2019-10-22 09:46:29', NULL),
(3, 'ITF User 0', 'itf_user_0@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$JEYErgoZ3y7Clhyn4chZIOiH6Tc3sbdlpoQ4nRfAKW392Y1C5K1dy', NULL, '2019-10-22 09:46:29', NULL),
(4, 'ITF User 1', 'itf_user_1@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$W6PMdZ50HD90FOOMqFY/iO9L1MowGOIJRV0qXFA.R9sG513ujG76C', NULL, '2019-10-22 09:46:29', NULL),
(5, 'ITF User 2', 'itf_user_2@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$0KY3H8tV059oH5ac2IlM1Ou0B.2LDr44DhLHz/wKs.Nq64Hv9H4wy', NULL, '2019-10-22 09:46:29', NULL),
(6, 'ITF User 3', 'itf_user_3@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$ETSjgFqIYERSfOGzqD80Eu.jdot2ugp0UglvROHACSWQlYg44zW4i', NULL, '2019-10-22 09:46:29', NULL),
(7, 'ITF User 4', 'itf_user_4@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$62rapXIMUOiZAjuUGFU8GO/pIIBe0sjnRwBSp5pFcZGkkceFhxXDa', NULL, '2019-10-22 09:46:29', NULL),
(8, 'ITF User 5', 'itf_user_5@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$0eaHTjMtYdiBIQ4QmT3e2.Ylrk48Tzaz9dviIG2YbIK8rGIdZetpq', NULL, '2019-10-22 09:46:29', NULL),
(9, 'ITF User 6', 'itf_user_6@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$GczKheFSzKGewVCwwq/JQeiaVsSqcM..Egk5A15X1kluk9FXzysa6', NULL, '2019-10-22 09:46:29', NULL),
(10, 'ITF User 7', 'itf_user_7@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$mpF2yEtOpMjLYYeSs.tn9.lTR88PIY46BiuvLYFBxuzba0/vP3MXO', NULL, '2019-10-22 09:46:29', NULL),
(11, 'ITF User 8', 'itf_user_8@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$NrcZT1DdlLfK5GAeFjWyAuIXsY45BoNgkxlA1LlYDlasLADz.vp3u', NULL, '2019-10-22 09:46:29', NULL),
(12, 'ITF User 9', 'itf_user_9@mailinator.com', 1, 0, '2019-10-22 09:46:29', '$2y$10$jajMIuZZPlLjR8C4O040YuHQAjCYJNz/UZc5rWXSRXYhW.oHPCeOa', NULL, '2019-10-22 09:46:29', NULL),
(13, 'ITF User 10', 'itf_user_10@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$38QLenyohZX/aQ3qz1naH.Wn.FJCLejWoP3TDhiqF3iOpD.ApOc9K', NULL, '2019-10-22 09:46:30', NULL),
(14, 'ITF User 11', 'itf_user_11@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$gKFpqiSp9c/bFFyui72Sw.xedNovpsbD90N7XWZzzb27yB9M9dhQq', NULL, '2019-10-22 09:46:30', NULL),
(15, 'ITF User 12', 'itf_user_12@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$C9dtzNw0AglfLEQAhBdROOdsRnWxBOEUdgzWTdEXrdtQOZiEPx.vy', NULL, '2019-10-22 09:46:30', NULL),
(16, 'ITF User 13', 'itf_user_13@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$oPgvhy/214xVfN9QLokMoO79rDjOyJsGjVI4QjOTel3RjGjY9CRP6', NULL, '2019-10-22 09:46:30', NULL),
(17, 'ITF User 14', 'itf_user_14@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$UTpUK0Hmbvoq93YL4ynVU.NWA7CQDYuU.Ej4v6thw.wfZCwYtj7Ni', NULL, '2019-10-22 09:46:30', NULL),
(18, 'ITF User 15', 'itf_user_15@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$vxc5bu4mXHQlc0xrLo41d.m0mjV3OZiy.0905lsmT5sq7iqALBPCq', NULL, '2019-10-22 09:46:30', NULL),
(19, 'ITF User 16', 'itf_user_16@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$2Qda6.4ngPL5f0d3yhmSEOl1gjE5dQ1raFcGiHU9TaLO032Tn403O', NULL, '2019-10-22 09:46:30', NULL),
(20, 'ITF User 17', 'itf_user_17@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$aONuYgnS1nXaQiqJNXelT.ixpIsnIPAwWeN0Sy0VoK50LpPulklwa', NULL, '2019-10-22 09:46:30', NULL),
(21, 'ITF User 18', 'itf_user_18@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$R5i7V9zS9m0miMe3QcnLze8Wx0qGylV4OMvf1Y1aHaYceKzKlEILq', NULL, '2019-10-22 09:46:30', NULL),
(22, 'ITF User 19', 'itf_user_19@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$06L9xLZF1u/LDmgMJooc8uDhx.O7Rbs0sz943yr1.Zbhdc3npRXgC', NULL, '2019-10-22 09:46:30', NULL),
(23, 'ITF User 20', 'itf_user_20@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$Ot6qJHmDyyrMsisSq4qIPumi7V0KblHn08lhpeqjVzCnIdOZY5AWa', NULL, '2019-10-22 09:46:30', NULL),
(24, 'ITF User 21', 'itf_user_21@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$wi1LpVcbjw4UpjRTr5pohOFImxIV5n1IvgVzYBUJyAIvQyLEWYw3K', NULL, '2019-10-22 09:46:30', NULL),
(25, 'ITF User 22', 'itf_user_22@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$M7sOzTKf445N0KEsNdzO8.o.X1LiKQ7L/eIsQr3TjIquq66.fk/VK', NULL, '2019-10-22 09:46:30', NULL),
(26, 'ITF User 23', 'itf_user_23@mailinator.com', 1, 0, '2019-10-22 09:46:30', '$2y$10$eCOLl2IB/ZFrkGFZSC6SduRzG7wisKjkrG4ZDBxkrMgNTiOaZa2Ue', NULL, '2019-10-22 09:46:30', NULL),
(27, 'ITF User 24', 'itf_user_24@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$IkNuV./30oZiX9iDvPftTeFdF4/0VJlUe3MpFoj2DInsVg.RoIt/.', NULL, '2019-10-22 09:46:31', NULL),
(28, 'ITF User 25', 'itf_user_25@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$3XUesjOFi5plMyvSvmk8OulcDkZonk3cdAL39hwFACotfgdnJMaQW', NULL, '2019-10-22 09:46:31', NULL),
(29, 'ITF User 26', 'itf_user_26@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$df6uOa7OqGqFpw518PxevO4b/GMou//c2BCaUiUxc26nb3NcUOTBu', NULL, '2019-10-22 09:46:31', NULL),
(30, 'ITF User 27', 'itf_user_27@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$hIG2gnqe39l0gGJi9mrwMevDmp3GnwsSPBfPCZlg43jglEEYEXkyC', NULL, '2019-10-22 09:46:31', NULL),
(31, 'ITF User 28', 'itf_user_28@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$gBJ8QQVKWuYosqGlUY67XOgS3ctEtNA2Ospr8FoDhqJaDmnyKqOES', NULL, '2019-10-22 09:46:31', NULL),
(32, 'ITF User 29', 'itf_user_29@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$CvFNJjfinEuMxo2nVXwjUeI8XZLK1WWY4u9ajTqjwUZRFz/q/Kg4W', NULL, '2019-10-22 09:46:31', NULL),
(33, 'ITF User 30', 'itf_user_30@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$nUkuE5yVbrxI0QuwzTWA/Oyj4Wi/s6YNDkrFfR9aMU/vHDgeJbW/2', NULL, '2019-10-22 09:46:31', NULL),
(34, 'ITF User 31', 'itf_user_31@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$CZgztBwSViJxIdMp5iyyxeUo6f3uwfRvn7bee/vT9yNtwPa80CK8a', NULL, '2019-10-22 09:46:31', NULL),
(35, 'ITF User 32', 'itf_user_32@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$8psaBIfFc1MbeTUTVPnoduvsNJ1UhvjRE3O1/a/P3IrOiQXbKkQTO', NULL, '2019-10-22 09:46:31', NULL),
(36, 'ITF User 33', 'itf_user_33@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$fNguqwFp25l6C0t/fanXXeYvavG4AkwcHKkCk.hVnP68iZMUaI.9m', NULL, '2019-10-22 09:46:31', NULL),
(37, 'ITF User 34', 'itf_user_34@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$BgaK3vWq9xDtvadi2Ao9keAWoFZlU.WYRB3coh.2pWoYPEMttEa8G', NULL, '2019-10-22 09:46:31', NULL),
(38, 'ITF User 35', 'itf_user_35@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$nYMdte5ApnPZi8hOdcB4puXlsY9VndyfjUg/snsHHFDcn5D86wm0e', NULL, '2019-10-22 09:46:31', NULL),
(39, 'ITF User 36', 'itf_user_36@mailinator.com', 1, 0, '2019-10-22 09:46:31', '$2y$10$GgSRvHdiFv2ITZ1ZhMN7LeLnns9THauKmIej8vLWz2fpcEMw4PttK', NULL, '2019-10-22 09:46:31', NULL),
(40, 'ITF User 37', 'itf_user_37@mailinator.com', 1, 0, '2019-10-22 09:46:32', '$2y$10$Tz6nfkxmSxV/nAlDc1wvEuAU28NDk30hF8s2Zeyc7vauzoFGPmv3O', NULL, '2019-10-22 09:46:32', NULL),
(41, 'ITF User 38', 'itf_user_38@mailinator.com', 1, 0, '2019-10-22 09:46:32', '$2y$10$0pNeKlSMi4/bCbwMwzeCa.Etu0JdujjirkPTQ0ZMyTLDnUooR4NR2', NULL, '2019-10-22 09:46:32', NULL),
(42, 'ITF User 39', 'itf_user_39@mailinator.com', 1, 0, '2019-10-22 09:46:32', '$2y$10$rcAuTvdufiHHPCvYbVhAM.a2RF5QVoileG0QNYj6malB9qSpQ/U.K', NULL, '2019-10-22 09:46:32', NULL),
(43, 'ITF User 40', 'itf_user_40@mailinator.com', 1, 0, '2019-10-22 09:46:32', '$2y$10$1/6P367GItEkErzzU8s1peLifNuYh7doDu3V81PF9rTknoCZxtFR6', NULL, '2019-10-22 09:46:32', NULL),
(44, 'Demo', 'demo_vs@mailinator.com', 1, 0, NULL, '$2y$10$0Yx6WBzDisASbBmWDx1rtOjLk7jaPW2JeySTBiOBDD003j7VDRACO', 'V9bKhdcr1d3ynQ6OtbJNbtXIhHkGHVF7zPHGIbxzkFjRaw1k0EAQ54cRkCt5', '2019-11-26 11:18:39', '2019-11-26 11:19:46');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `orderlines`
--
ALTER TABLE `orderlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderlines_order_id_foreign` (`order_id`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `records_genre_id_foreign` (`genre_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `orderlines`
--
ALTER TABLE `orderlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `orderlines`
--
ALTER TABLE `orderlines`
  ADD CONSTRAINT `orderlines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
