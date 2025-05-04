CREATE DATABASE IF NOT EXISTS `paf-admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paf-admin`;

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `data` (`id`, `date`, `message`) VALUES
(0, '2025-04-30 12:00:00', 'First entry in DB!');

CREATE TABLE `migration` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `migration` (`id`, `date`, `message`) VALUES
(0, '2025-04-30 12:00:00', 'DB initialisation');
