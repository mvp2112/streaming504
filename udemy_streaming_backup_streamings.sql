-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 07:05:37
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `udemy_streaming`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actors`
--

CREATE TABLE `actors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1  es director y 2 es actor',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `profesion` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actors`
--

INSERT INTO `actors` (`id`, `full_name`, `imagen`, `type`, `state`, `profesion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'James Chinlund', 'streaming/actors/N7mQllnswYx7oVEJZlzlW1EjEqfGNwNo739Mujlm.jpg', 2, 1, 'Actor de reparto', '2023-06-26 13:32:45', '2023-07-03 03:07:59', NULL),
(2, 'Karen Gilchrist', 'streaming/actors/MWtZ1SCiHH4UjRKWgscnQxgAnAeQjeGmorT87tDO.jpg', 1, 1, 'Director de efectos especiales', '2023-06-26 13:33:52', '2023-07-03 03:07:46', NULL),
(3, 'Elena Donato', 'streaming/actors/qAFuiw5xZooVrApucBWp6c43qfEtSR9DiovWrry3.png', 2, 1, 'Actriz de reparto', '2023-07-03 03:09:00', '2023-07-03 03:09:00', NULL),
(4, 'Freddy Vegas', 'streaming/actors/egeGXejd46GrmV8pR92FSFe3Fsv87OgpYBfZgTRT.png', 1, 1, 'Director de guiones', '2023-07-03 03:09:31', '2023-07-03 03:09:31', NULL),
(5, 'Julio Diaz', 'streaming/actors/PLMEy2jeV681WiTPzSPJKsZVH7UmqXmitnslIE7e.png', 2, 1, 'Actriz suplente', '2023-07-03 03:10:03', '2023-07-03 03:10:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es pelicula, 2 es tv show y videos',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `title`, `imagen`, `type`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Actions', 'streaming/genres/UlPpcmNPIdfIcC5bx9ETxW3MQphgP7gFZJVa8B8R.jpg', 1, 1, '2023-06-26 12:08:41', '2023-06-26 12:26:00', NULL),
(2, 'Animation', 'streaming/genres/nWSxEC8J5kw8xrgkvOWpiVzHDJHnbx51euVVYaVk.jpg', 1, 1, '2023-06-26 12:09:13', '2023-06-26 12:09:13', NULL),
(3, 'Action', 'streaming/genres/kDUiLHISdE9QtlgxTT0f2q2gE9NuQZK8tqHEaWNO.jpg', 2, 1, '2023-06-26 12:09:35', '2023-07-01 03:08:57', NULL),
(5, 'dasdasdas', 'streaming/genres/t9V2OWtAZVUpP5lChdKeRymOBpYPm3X2mLhRr6Ds.jpg', 1, 1, '2023-06-26 12:28:45', '2023-06-26 17:29:28', '2023-06-26 12:29:44'),
(6, 'Fantasia', 'streaming/genres/QrbR3S1g49UU3Qr5Sc1qUoEADc5WhtQF7o9eIwN3.jpg', 2, 1, '2023-07-01 03:08:53', '2023-07-01 03:08:53', NULL),
(7, 'Fantasy', 'streaming/genres/YgWa3hUCrl5lximLxmOVAMdezGDOf73ckTadT67L.jpg', 3, 1, '2023-07-01 03:09:12', '2023-07-03 03:04:54', NULL),
(8, 'Space', 'streaming/genres/5moaJ3uuWKDjBTAdFOrxUqGaC3EF2P3HkbL1tHqA.jpg', 3, 1, '2023-07-01 03:09:24', '2023-07-03 03:04:43', NULL),
(9, 'Drama', 'streaming/genres/uS503a5wTaVNiC9vgWor6WsplBPZuds0SDuzfWVA.jpg', 1, 1, '2023-07-03 02:57:53', '2023-07-03 02:58:43', NULL),
(10, 'Biography', 'streaming/genres/KDiPSvePEG9WwCY5WJxDiK4eJaxMgd9NTII3rj9x.jpg', 1, 1, '2023-07-03 02:58:10', '2023-07-03 02:58:10', NULL),
(11, 'Comedy', 'streaming/genres/5nEQBcF6sWq3wpQGqZHnmSv8hlpM2wRZ20OWnUYj.jpg', 1, 1, '2023-07-03 02:58:30', '2023-07-03 02:58:30', NULL),
(12, 'suspense', 'streaming/genres/KSoSr7P9ylKkVxR5qXCZ6pmoF3s8WKESI5bpu3py.jpg', 1, 1, '2023-07-03 02:59:43', '2023-07-03 02:59:43', NULL),
(13, 'Aventura', 'streaming/genres/HpVR7GvH7FBkonXDjZxxQwxTFazENTL0qGfkxbQB.jpg', 2, 1, '2023-07-03 03:00:21', '2023-07-03 03:00:21', NULL),
(14, 'Terror', 'streaming/genres/2fLDK6oFypuy58ROmUNCZGHYbPwRqdboTQBC16HU.jpg', 2, 1, '2023-07-03 03:00:44', '2023-07-03 03:00:44', NULL),
(15, 'Special', 'streaming/genres/G1yL35lSWDpgUUaYrL7qx43ODWfOxyJw1uvJkj54.jpg', 2, 1, '2023-07-03 03:02:15', '2023-07-03 03:02:15', NULL),
(16, 'Mystery', 'streaming/genres/gCAAugN7CUZIvhxsXHnA48kkgnYK13xsHAWtbKkZ.jpg', 2, 1, '2023-07-03 03:02:31', '2023-07-03 03:02:36', NULL),
(17, 'Science fiction', 'streaming/genres/jE4qzPECyNCWZC8j2cArFhvS3voMH0xPo8fuGyGm.jpg', 2, 1, '2023-07-03 03:03:37', '2023-07-03 03:03:37', NULL),
(18, 'Romantyc', 'streaming/genres/Fx7bGQOZHNsVU8pstdDXgDVppvSbvSYPC3Obbes4.jpg', 2, 1, '2023-07-03 03:04:01', '2023-07-03 03:04:06', NULL),
(19, 'Action', 'streaming/genres/YYI2X2Mqyia0sLe1ZWUmjXtjDRonG5JobxzgS1PW.jpg', 3, 1, '2023-07-03 03:04:29', '2023-07-03 03:04:29', NULL),
(20, 'Family', 'streaming/genres/6neoDliJEMJ5STWu0CjTwBxjAz7lZPgQyHevKJWx.jpg', 3, 1, '2023-07-03 03:05:09', '2023-07-03 03:05:14', NULL),
(21, 'Animation', 'streaming/genres/V37CpcNH3QPZjlKGxw0ihe6zEtce561n7Al8l2dL.jpg', 3, 1, '2023-07-03 03:05:27', '2023-07-03 03:05:27', NULL),
(22, 'Science fiction', 'streaming/genres/SUUcMArERFWlJm2oW5KAnq2zxsNEPL8IqMjSqyCC.jpg', 3, 1, '2023-07-03 03:05:41', '2023-07-03 03:05:41', NULL),
(23, 'Ilusionaty', 'streaming/genres/mf5dJbz0zDxbm7kQ7hRpVuZxw3TX4qtu7fkxtGN5.jpg', 3, 1, '2023-07-03 03:06:07', '2023-07-03 03:06:07', NULL),
(24, 'Comedy', 'streaming/genres/Hoq3KDmOTbmTUXED6ydHYVDYK56NkRStrAeWJ1Rm.jpg', 3, 1, '2023-07-03 03:06:50', '2023-07-03 03:06:50', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_paypals`
--

CREATE TABLE `plan_paypals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `precio_mensual` double NOT NULL,
  `precio_anual` double NOT NULL,
  `month_free` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `id_plan_paypal_mensual` varchar(150) NOT NULL,
  `id_plan_paypal_anual` varchar(150) NOT NULL,
  `id_product_paypal` varchar(150) DEFAULT NULL,
  `product_paypal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plan_paypals`
--

INSERT INTO `plan_paypals` (`id`, `name`, `description`, `precio_mensual`, `precio_anual`, `month_free`, `id_plan_paypal_mensual`, `id_plan_paypal_anual`, `id_product_paypal`, `product_paypal_id`, `created_at`, `updated_at`) VALUES
(1, 'BASICO', 'CON EL PLAN BASICO EL CLIENTE VA PODER VER SOLAMENTE PELICULAS', 20, 144, 1, 'P-37G215571F695220KMSNC2WA', 'P-2DC15981FS789025CMSNC2WA', 'PROD-71W244368L094794G', 1, '2023-06-27 00:29:13', '2023-06-27 00:29:13'),
(2, 'STANDARzzz', 'EL PLAN STANDAR VA PERMITR AL CLIENTE VER LAS PELICULAS Y SERIES', 45, 400, 1, 'P-9HU75018SD124402JMSNC4JI', 'P-5WV088191A643330GMSNC4JQ', 'PROD-71W244368L094794G', 1, '2023-06-27 00:32:38', '2023-06-27 00:47:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_paypals`
--

CREATE TABLE `product_paypals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `id_product_paypal` varchar(1250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product_paypals`
--

INSERT INTO `product_paypals` (`id`, `name`, `type`, `category`, `description`, `id_product_paypal`, `created_at`, `updated_at`) VALUES
(1, 'Plataforma de Suscripción', 'SERVICE', 'MOVIE', 'El cliente va poder ver sus peliculas, series ademas de novelas y videos', 'PROD-71W244368L094794G', '2023-06-24 04:04:19', '2023-06-23 07:18:44'),
(2, 'Ventas de cursos Online', 'DIGITAL', 'ONLINE_SERVICES', 'Ventas de cursos de desarrollo web para estudiantes de udemy', 'PROD-9R054585D6180430G', '2023-06-24 04:04:19', '2023-06-24 04:04:19'),
(3, 'Soluciones multimedia Vimeo', 'DIGITAL', 'ONLINE_DATING', 'Plataforma para poder alojar los recursos multimedia de tu pagina\nudemyssssssssssss', 'PROD-2G621148CT761894B', '2023-06-23 23:10:36', '2023-06-23 23:10:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `permisos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `permisos`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRADOR GENERAL', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `streamings`
--

CREATE TABLE `streamings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` text NOT NULL,
  `subtitle` text NOT NULL,
  `imagen` varchar(250) DEFAULT NULL,
  `genre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vimeo_id` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `vimeo_contenido_id` varchar(50) DEFAULT NULL,
  `time_contenido` varchar(50) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es INACctivo y 2 es PUBLIC',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es movie, 2 es tv show y 3 video',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `streamings`
--

INSERT INTO `streamings` (`id`, `title`, `slug`, `subtitle`, `imagen`, `genre_id`, `vimeo_id`, `time`, `vimeo_contenido_id`, `time_contenido`, `description`, `tags`, `state`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ISLAND WAR', 'island-war', 'The most brutal emperor in the history of world.He', 'streaming/nAaaonvii4g8etBsga4wqlW44pIlLHrP1SNEyfuy.jpg', 1, '658765120', '00:00:16', '725581406', '02:02:56', 'The most brutal emperor in the history of world.He was the founder of the most contiguous empire of the world i.e. the Mongol empire.He made an army by himself by uniting some nomadic tribes and trained them.', 'Action', 2, 2, '2023-06-28 04:44:37', '2023-07-05 04:42:47', NULL),
(2, 'FOLKER FLAT', 'folker-flat', 'It is a long established fact that a reader.', 'streaming/Ou3pnEaiFi7zOWgDhKJziX68eBHI8INBbaWoxQFa.jpg', 2, '840355042', '00:00:30', '840358545', '00:00:16', 'The most brutal emperor in the history of world.He was the founder of the most contiguous empire of the world i.e. the Mongol empire.He made an army by himself by uniting some nomadic tribes and trained them.', 'Action', 2, 1, '2023-06-28 05:11:09', '2023-06-30 03:52:35', NULL),
(3, 'ZOMBIE ISLAND 2', 'zombie-island-2', 'The most brutal emperor in the history of world.', 'streaming/kblDBCJIzkqpIdIqU9tgU9oj0orbKD5oiAkRr04H.jpg', 2, '657781791', '00:00:30', '838658787', '01:34:50', 'The most brutal emperor in the history of world.He was the founder of the most contiguous empire of the world i.e. the Mongol empire.He made an army by himself by uniting some nomadic tribes and trained them.', 'Action,Suspeso', 2, 1, '2023-07-01 05:23:58', '2023-07-01 05:23:58', NULL),
(4, 'NOCHE DE FUBTOL', 'noche-de-fubtol', 'He was the founder of the most contiguous empire of the world i.e.', 'streaming/WGrv9i0pnBj6AuVbkzGxYAsgqKbfrFSVR3NH6aiY.jpg', 1, '657781791', '00:00:30', '657781791', '02:34:50', 'The most brutal emperor in the history of world.He was the founder of the most contiguous empire of the world i.e. the Mongol empire.He made an army by himself by uniting some nomadic tribes and trained them.', 'Suspeso', 2, 1, '2023-07-01 05:28:16', '2023-07-01 13:47:41', NULL),
(5, 'The Kissing Booth 2', 'the-kissing-booth-2', 'Tras un verano romántico juntos, Noah se va a Harvard, y Elle regresa a la escuela para cursar su último año.', 'streaming/fdFNggtbLnCoKxa8mPqwPu2F5nWzVeeXxTlnNrAb.jpg', 11, '824684204', '00:00:30', '712138359', '01:54:50', 'La película comienza con Elle narrando su tiempo con Noah antes de que se vaya a Harvard. Su último año comienza con sus compañeros de clase chismorreando cómo ella y Noah terminarán rompiendo, haciendo que su temor como Noah se ha hecho amigo de una atractiva chica llamada Chloe mientras revisa su Instagram.', 'Comedy,Suspeso,Recommonded,Romance', 2, 1, '2023-07-03 03:25:32', '2023-07-03 03:25:32', NULL),
(6, 'El Asesino (War)', 'el-asesino-war', 'El Asesino (War) es una película dirigida por Philip G. Atwell con Jason Statham, Jet Li. Sinopsis : Entre el FBI y la mafia japonesa existía una tregua.', 'streaming/zVeqmKaAAFYASxmuwcwGoGhuPlPb40mlA5EFXhch.webp', 12, '712138359', '00:00:30', '824684204', '02:14:50', 'Después de que su socio pierde la vida a manos del temido criminal Rogue, el agente del FBI Jack Crawford jura cazar al asesino y encargarse personalmente de vengar la muerte de su compañero.', 'Thriller,Recommonded,Suspeso', 2, 1, '2023-07-03 03:27:59', '2023-07-03 03:27:59', NULL),
(7, 'Dioses de Egipto', 'dioses-de-egipto', 'Dioses de Egipto en Hispanoamérica y España (Gods of Egypt) es una película estadounidense de fantasía con antiguas deidades egipcias.', 'streaming/QBEDiHXZpsjYcTHtyZ0C2hEbRPQqx03qSWeCK67m.jpg', 1, '838475504', '00:00:30', '838475504', '03:54:30', 'La supervivencia de la humanidad se ve amenazada cuando Set, el despiadado dios del mal, se apodera del trono de Egipto y transforma al imperio en un caos. Solo Bek, un mortal, podrá enfrentarlo y salvar al mundo.', 'Suspeso,Comedy,Thriller', 2, 1, '2023-07-03 03:32:49', '2023-07-03 03:32:49', NULL),
(8, 'Matrix', 'matrix', 'La película plantea que en el futuro, tras una dura guerra, casi todos los seres humanos han sido esclavizados por las máquinas y las inteligencias artificiales creadas', 'streaming/KtTpO3zc4KOyIYmP8PgbWzmc4PTiA2ssEzIAlf0C.jpg', 9, '824684204', '00:00:30', '838471409', '01:24:50', 'Un experto en computadoras descubre que su mundo es una simulación total creada con maliciosas intenciones por parte de la ciberinteligencia.', 'Recommonded,Action,Suspeso', 2, 1, '2023-07-03 03:34:36', '2023-07-03 03:34:36', NULL),
(9, 'King Kong', 'king-kong', 'Fue estrenada el 14 de diciembre de 2005 en Alemania y Estados Unidos, y tuvo una apertura de 50,1 millones de dólares.', 'streaming/psK8Sdzw8sMrUFO45qXP8180qZMJ1ihy6ZurERaD.jpg', 10, '838471409', '00:00:45', '833455285', '02:24:30', 'Un grupo de exploradores, liderado por un extrovertido director de cine, visitan Skull Island para investigar todo lo relacionado con la leyenda del gorila gigante llamado King Kong. Ahí encuentran una jungla llena de criaturas prehistóricas.', 'Mystery,Thriller,Action', 2, 1, '2023-07-03 03:39:23', '2023-07-03 03:39:23', NULL),
(10, 'Al borde de la extinción', 'al-borde-de-la-extincion', 'Tras sufrir un accidente y caer a un planeta desconocido, los supervivientes de la nave descubren que han llegado a la Tierra, pero hace 65 millones de años.', 'streaming/cznbeJLfGBIurmc9x1rLfPVsip9NjuKpW9eq7ybP.jpg', 1, '833455285', '00:00:45', '825970185', '01:34:50', 'Tras sufrir un accidente y caer a un planeta desconocido, los supervivientes de la nave descubren que han llegado a la Tierra, pero hace 65 millones de años. Ahora, deben cruzar un territorio inhóspito, poblado de bestias prehistóricas, para salir.', 'Comedy,Suspeso,Mystery', 2, 1, '2023-07-03 03:42:19', '2023-07-03 03:42:19', NULL),
(11, 'Overlord', 'overlord', 'Instead, they\'ve created zombies. Disgusting, vicious and incredibly violent zombies.', 'streaming/iYdkLY9V0UxMOpSctJzHW9PIFhtnvTZR3NXbjyK5.jpg', 2, '813227141', '00:00:45', '824959826', '02:24:30', 'Instead, they\'ve created zombies. Disgusting, vicious and incredibly violent zombies. Just before D-Day, a team of American paratroopers is sent behind the lines to cut off German communications in preparation for Operation Overlord\'s big day.', 'Mystery,Action,Thriller,Adventure', 2, 1, '2023-07-03 03:43:52', '2023-07-03 03:43:52', NULL),
(12, 'scary movie 1', 'scary-movie-1', 'Una parodia de los filmes de asesinatos donde un homicida vengativo acecha a un grupo de adolescentes.', 'streaming/5NCJNKD8Z0SmKC1cbD6HZBpGW2wBfztSO9R8pSlE.webp', 11, '824959826', '00:00:45', '816731498', '03:24:30', 'Scary Movie (titulada Scary Movie: Una película de miedo en Hispanoamérica) es una película estadounidense de humor negro del año 2000, dirigida por Keenen', 'Comedy,Mystery,Recommonded,Action', 2, 1, '2023-07-03 03:45:11', '2023-07-03 03:45:11', NULL),
(13, 'Señora smith', 'senora-smith', 'Un hombre y su esposa ignoran que a cada uno, como asesino internacional, se le ha asignado matar al otro.', 'streaming/wRBga1Bmod3vkb7YpGxnDZfhWqiMV26a0vlKpF9F.webp', 9, '774288555', '00:00:45', '813227141', '02:24:30', 'La película se abre con el ejecutivo de construcción John (Brad Pitt) y la representante de soporte técnico Jane Smith (Angelina Jolie) respondiendo a las preguntas durante una terapia de pareja. La pareja ha estado casada por \"cinco o seis años\", pero su matrimonio está sufriendo hasta el punto de que no pueden recordar la última vez que tuvieron relaciones sexuales.', 'Suspeso,Mystery,Adventure,Romance', 2, 1, '2023-07-03 03:47:53', '2023-07-03 03:47:53', NULL),
(14, 'The Babysitter', 'the-babysitter', 'Samara Weaving (Ash vs Evil Dead) y Bella Thorne (Tú me entiendes) protagonizan esta comedia de terror del director McG. Videos. La niñera', 'streaming/sVfLlQJNhTLn060cdRffhoeuXKTtQhMdf18kxsKS.webp', 12, '790872475', '00:01:45', '807516670', '02:44:40', 'The Babysitter es una película adolescente estadounidense de comedia de terror producida y dirigida por Joseph McGinty Nichol y escrita por Brian Duffield.', 'Thriller,Comedy,Mystery,Romance', 2, 1, '2023-07-03 03:50:45', '2023-07-03 03:50:45', NULL),
(15, 'Guerra mundial Z', 'guerra-mundial-z', 'Guerra mundial Z (en inglés World War Z) es una película estadounidense postapocalíptica de 2013 dirigida por Marc Forster y protagonizada por Brad Pitt.', 'streaming/HREKCXWZXEVGNT29o0EOOhFGq1ujna2tTvOMIG5J.jpg', 12, '807516670', '00:01:45', '790872475', '02:44:40', 'Cuando una pandemia de zombis amenaza con destruir a la humanidad, un exinvestigador de Naciones Unidas es obligado a regresar al servicio para intentar descubrir la fuente de la infección.', 'Suspeso,Adventure,Romance,Thriller', 2, 1, '2023-07-03 03:54:33', '2023-07-03 03:54:33', NULL),
(16, 'Avatar', 'avatar', 'Está ambientada en el año 2154 y los acontecimientos que se narran en la historia Pandora, una luna (y aparentemente la más grande) de un planeta similar a Júpiter llamado Polífemo', 'streaming/okWpjuA6dkUf3A6tvUIVmZf1dUIdSwMZnZw0UFMY.webp', 10, '320695531', '00:01:45', '791837360', '01:24:30', 'En un exuberante planeta llamado Pandora viven los Na\'vi, seres que aparentan ser primitivos pero que en realidad son muy evolucionados. Debido a que el ambiente de Pandora es venenoso, los híbridos humanos/Na\'vi, llamados Avatares, están relacionados con las mentes humanas, lo que les permite moverse libremente por Pandora. Jake Sully, un exinfante de marina paralítico se transforma a través de un Avatar, y se enamora de una mujer Na\'vi.', 'Action,Comedy,Mystery,Adventure', 2, 1, '2023-07-03 03:56:21', '2023-07-03 03:56:21', NULL),
(17, 'Avatar 2', 'avatar-2', 'Está ambientada en el año 2154 y los acontecimientos que se narran en la historia Pandora, una luna (y aparentemente la más grande) de un planeta similar a Júpiter llamado Polífemo', 'streaming/w6gzmYXehgiZyRjjIz6V7mGJREUM3ITQbrGXCYkJ.webp', 10, '323104499', '00:01:45', '774288555', '03:24:30', 'En un exuberante planeta llamado Pandora viven los Na\'vi, seres que aparentan ser primitivos pero que en realidad son muy evolucionados. Debido a que el ambiente de Pandora es venenoso, los híbridos humanos/Na\'vi, llamados Avatares, están relacionados con las mentes humanas, lo que les permite moverse libremente por Pandora. Jake Sully, un exinfante de marina paralítico se transforma a través de un Avatar, y se enamora de una mujer Na\'vi.', 'Recommonded,Adventure,Mystery,Comedy', 2, 1, '2023-07-03 03:59:26', '2023-07-03 03:59:26', NULL),
(18, 'Titanic', 'titanic', 'Una joven de la alta sociedad abandona a su arrogante pretendiente por un artista humilde en el trasatlántico que se hundió durante su viaje inaugural.', 'streaming/SUYto2bnAvjv4ZFzJqdOynMEhcts6xPlyye1aabQ.jpg', 9, '790872475', '00:01:45', '781681150', '03:54:30', 'El RMS Titanic fue un transatlántico británico, el mayor barco de pasajeros del mundo al finalizar su construcción, que naufragó en las aguas del océano Atlántico durante la noche del 14 y la madrugada del 15 de abril de 1912, mientras realizaba su viaje inaugural desde Southampton a Nueva York, tras chocar con un iceberg. En el hundimiento murieron 1496 personas de las 2208 que iban a bordo, lo que convierte a esta catástrofe en uno de los mayores naufragios de la historia ocurridos en tiempos de paz.', 'Adventure,Comedy,Romance,Thriller', 2, 1, '2023-07-03 04:03:14', '2023-07-03 04:03:14', NULL),
(19, 'Red Notice', 'red-notice', 'Ryan Rodney Reynolds es un actor, actor de voz, comediante, guionista y productor de cine canadiense-estadounidense', 'streaming/R8P5qbSFdWDKsWliXyDUT2z3VEOON2U0wiQDC3iD.webp', 24, '322787092', '00:01:45', '320695531', '02:45:30', 'Comenzó su carrera protagonizando la telenovela canadiense para adolescentes Hillside (1991-1993) y tuvo papeles menores antes de obtener el papel principal en la comedia de situación Two Guys and a Girl entre 1998 y 2001.', 'Science fiction,Family,Ilusionaty', 2, 3, '2023-07-03 04:17:06', '2023-07-03 04:17:06', NULL),
(20, 'Home Alone', 'home-alone', 'La película recibió dos nominaciones a los Globos de Oro en las categorías de mejor película de comedia o musical y de mejor actor en una comedia o musical para Culkin', 'streaming/ZZiMcoTU6YA8u0nsuxHI3HJkfUKPnqxKAvi3Xl1Y.webp', 20, '321779303', '00:01:25', '322787092', '02:15:30', 'La película recibió dos nominaciones a los Globos de Oro en las categorías de mejor película de comedia o musical y de mejor actor en una comedia o musical para Culkin, al igual que dos nominaciones a los Premios Óscar por mejor banda sonora original (la cual fue compuesta por John Williams) y mejor canción original (\"Somewhere in My Memory\").', 'Romantico,Family,Drama', 2, 3, '2023-07-03 04:19:39', '2023-07-03 04:19:39', NULL),
(21, 'Orgullo y prejuicio', 'orgullo-y-prejuicio', 'Elizabeth Bennet conoce al apuesto y adinerado Sr. Darcy, con quien, rápidamente, inicia una intensa y compleja relación.', 'streaming/DCB3W41zXw2VQLff0I76197O9I11xHWZLSLbJCVe.jpg', 7, '320695531', '00:01:25', '323104499', '01:45:30', 'Orgullo y prejuicio (en inglés, Pride and Prejudice), publicada por primera vez el 28 de enero de 1813 como una obra anónima, es la más famosa de las novelas de Jane Austen y una de las primeras comedias románticas en la historia de la novela. Su primera frase es, además, una de las más famosas en la literatura inglesa: «Es una verdad mundialmente reconocida que un hombre soltero, poseedor de una gran fortuna, necesita una esposa».', 'Romantico,Family,Ilusionaty', 2, 3, '2023-07-03 04:21:10', '2023-07-03 04:21:42', NULL),
(22, 'La propuesta', 'la-propuesta', 'The Proposal, titulada La proposición en España y La propuesta en Hispanoamérica, es una comedia romántica estadounidense de 2009 que tiene lugar en Sitka, Alaska.', 'streaming/xDhTkIbBTII3SNVdvhGn833wJsZfQ6Ri3WeaOEoB.jpg', 23, '781681150', '00:00:45', '838658787', '01:35:30', 'Margaret, una famosa e influyente editora de Nueva York, está a punto de ser deportada a Canadá. Para evitarlo, declara que está comprometida con su ayudante Andrew. Él está dispuesto a participar en la farsa, pero imponiendo ciertas condiciones.', 'Ficción,Ilusionaty,Fantasy,Romantico', 2, 3, '2023-07-03 04:24:57', '2023-07-03 04:24:57', NULL),
(23, 'Entrevista a James Cameron y el elenco de \'Avatar 2\'', 'entrevista-a-james-cameron-y-el-elenco-de-avatar-2', 'Avatar 2: el sentido del agua está a punto de convertirse en el gran evento cinematográfico del año.', 'streaming/PU4gywbpPuypTaZCcXiAPaHm75za4sOw050jZKvL.webp', 8, '326104460', '00:00:45', '321779303', '02:45:30', 'Avatar 2: el sentido del agua está a punto de convertirse en el gran evento cinematográfico del año. Pero, para James Cameron, se trata de algo más. Un sueño cumplido tras décadas de planes, esfuerzo y de vencer incontables obstáculos.', 'Ficción,Ilusionaty,Fantasy', 2, 3, '2023-07-03 04:29:56', '2023-07-03 04:29:56', NULL),
(24, 'Viajeros', 'viajeros', 'Los últimos seres humanos sobrevivientes descubren cómo enviar la conciencia de nuevo en el tiempo al siglo XXI.', 'streaming/2ED3JfyBN7iebLb385bRAzrf72ghgnAuAFacDMQu.webp', 22, '321779303', '00:00:45', '320791584', '01:15:10', 'Los últimos seres humanos sobrevivientes descubren cómo enviar la conciencia de nuevo en el tiempo al siglo XXI.\r\nEl agente del FBI Grant MacLaren descubre la importancia de la misión de los Viajeros cuando varios ciudadanos son poseídos al azar por conciencias del futuro.', 'Romantico,Ilusionaty,Fantasy', 2, 3, '2023-07-03 04:37:19', '2023-07-03 04:37:19', NULL),
(25, 'No se aceptan devoluciones', 'no-se-aceptan-devoluciones', 'Valentín es el soltero más mujeriego de Acapulco. Un día, una mujer de su pasado deja un bebé en su puerta y desaparece.', 'streaming/1qKJlpct5nbnUPpH3IpezDwkXLAwYI8KI4EyEpje.webp', 20, '263240676', '00:00:45', '272624653', '02:15:30', 'Valentín es el soltero más mujeriego de Acapulco. Un día, una mujer de su pasado deja un bebé en su puerta y desaparece. Valentín decide ir a Los Ángeles en su búsqueda, pero en vez de encontrar a la madre, descubre un hogar para él y su nueva hija Maggie.', 'Romantico,Ilusionaty,Fantasy', 2, 3, '2023-07-03 04:38:50', '2023-07-03 04:38:50', NULL),
(26, 'El Marine', 'el-marine', 'Los exmarines Jake Carter y Luke Trapper se unen para rescatar a una chica, quien ha sido secuestrada por un grupo de criminales internacionales.', 'streaming/Cqq7D3tHJb429HrY0MPcCs5v6oIu7TTdyInrxqat.jpg', 19, '272624653', '00:00:45', '326104460', '02:05:30', 'Jake Carter (superestrella de la WWE Mike \"The Miz\" Mizanin) y su excompañero del Cuerpo de Marines, Luke Trapper (leyenda de la WWE Shawn Michaels), aúnan fuerzas para rescatar a una niña secuestrada por una banda de criminales internacionales encabezada por Maddy Hayes (superestrella de la WWE Becky Lynch) .', 'Ilusionaty,Drama,Family,Science fiction', 2, 3, '2023-07-03 04:40:38', '2023-07-03 04:40:38', NULL),
(27, 'Godzilla y Kong', 'godzilla-y-kong', 'Godzilla vs. Kong es una película de monstruos estadounidense de 2021 dirigida por Adam Wingard.', 'streaming/Tzu3XUW8kAfYGgi40yok5N1NACxTI6709Vp1Yzfv.webp', 22, '263240676', '00:00:45', '326993567', '01:45:30', 'Godzilla y Kong, dos de las fuerzas más poderosas de un planeta habitado por aterradoras criaturas, se enfrentan en un espectacular combate que sacude los cimientos de la humanidad.', 'Ilusionaty,Science fiction,Fantasy', 2, 3, '2023-07-03 04:44:55', '2023-07-03 04:44:55', NULL),
(28, 'Batman: el caballero de la noche', 'batman-el-caballero-de-la-noche', 'The Dark Knight (El caballero oscuro en España y Batman: El caballero de la noche en Latinoamérica)', 'streaming/ht7GcHglobA6ntNoymcYM2FznbT9h26oaOqx1JTI.webp', 23, '781681150', '00:00:55', '263240676', '02:15:30', 'Batman tiene que mantener el equilibrio entre el heroísmo y el vigilantismo para pelear contra un vil criminal conocido como el Guasón, que pretende sumir Ciudad Gótica en la anarquía.', 'Science fiction,Fantasy,Ilusionaty', 2, 3, '2023-07-03 04:46:25', '2023-07-03 04:46:25', NULL),
(29, 'John Wick', 'john-wick', 'John Wick es una franquicia estadounidense de suspenso y acción neo-noir creada por Derek Kolstad y producidas por Lionsgate', 'streaming/UVHlyrvcdQq30ofhZNMEcr2RKAfTgtdPppEUJkTa.jpg', 19, '320791584', '00:00:55', '380409922', '01:55:50', 'John Wick es una franquicia estadounidense de suspenso y acción neo-noir creada por Derek Kolstad y producidas por Lionsgate a través de Summit Entertainment. La franquicia esta centrada en John Wick, un ex asesino a sueldo que se ve obligado a regresar al inframundo criminal que había abandonado anteriormente.', 'Ilusionaty,Science fiction,Drama,Fantasy', 2, 3, '2023-07-03 04:49:02', '2023-07-03 04:49:02', NULL),
(30, '1917', '1917', 'Durante la Primera Guerra Mundial, dos jóvenes soldados británicos reciben una orden, aparentemente, imposible de ejecutar: en una carrera contra el reloj', 'streaming/OJZuBGevqdRKpFBRYsxZeCDgEdFh3KM3qBDhcoSL.jpg', 8, '321779303', '00:00:55', '378753132', '01:35:34', 'Durante la Primera Guerra Mundial, dos jóvenes soldados británicos reciben una orden, aparentemente, imposible de ejecutar: en una carrera contra el reloj, deben infiltrarse en territorio enemigo para entregar un mensaje que podría salvar a miles de compañeros.', 'Ficción,Fantasy,Family', 2, 3, '2023-07-03 04:50:08', '2023-07-03 04:50:08', NULL),
(31, 'La casa de papel', 'la-casa-de-papel', 'Una banda organizada de ladrones se propone cometer el atraco del siglo en la Fábrica Nacional de Moneda y Timbre', 'streaming/D1OTkasOFtAkfHSHu0f9Sxjc1saQr3yCcuVolfZL.webp', 13, '263240676', '00:00:35', NULL, NULL, 'Una banda organizada de ladrones se propone cometer el atraco del siglo en la Fábrica Nacional de Moneda y Timbre. Cinco meses de preparación quedarán reducidos a once días para poder llevar a cabo con éxito el gran golpe.', 'Aventura,4K ULTRAs,Terror', 2, 2, '2023-07-04 06:06:30', '2023-07-04 06:06:30', NULL),
(32, 'Flash', 'flash', 'The Flash es una serie de televisión estadounidense de superhéroes desarrollada por Greg Berlanti, Andrew Kreisberg y Geoff Johns, que se emite en The CW', 'streaming/uYUFwGpWNewBWwb60Kzd6IsNJmdkOSrWKBMzoqEk.webp', 17, '774288555', '00:01:55', NULL, NULL, 'Nueve meses después de la explosión en el laboratorio S.T.A.R., Barry despierta del coma y descubre que tiene el poder de la supervelocidad. Con la ayuda de su nuevo equipo, Barry, ahora \"The Flash\", luchará contra el crimen en Ciudad Central.', 'Aventura,4K ULTRAs,Science fiction', 2, 2, '2023-07-04 06:09:25', '2023-07-04 06:09:25', NULL),
(33, 'Prison Break', 'prison-break', 'Michael Scofield es un hombre desesperado en una situación desesperada. Su hermano, Lincoln Burrows fue condenado a muerte por un crimen que no cometió y está esperando que se lleve a cargo su sentencia.', 'streaming/G6X32hKCIzezEnASLCGuGz9JiYOE7NRylIbLaEDi.jpg', 3, '813227141', '00:01:45', NULL, NULL, 'Michael asalta un banco para poder entrar a la cárcel y estar junto a su hermano en la Penitenciaría Estatal Fox River, luego pone en funcionamiento sus planes elaborados para que Lincoln escape y pueda probar su inocencia. Una vez fuera de la cárcel, sus peligros no han terminado, los hermanos tienen que escapar de ser capturados nuevamente y luchan contra una conspiración policial intrincada que pone las vidas de todos en riesgo.', '4K ULTRAs,Aventura,Mystery', 2, 2, '2023-07-04 06:12:11', '2023-07-04 06:12:11', NULL),
(34, 'You', 'you', 'You es una serie de televisión estadounidense de suspenso psicológico desarrollada por Greg Berlanti y Sera Gamble.', 'streaming/qzJypU42K2eFGWRGaTugAnEz1AqgRVeVJnjFkQol.jpg', 18, '321779303', '00:00:45', NULL, NULL, 'Un hombre encantador y muy peligroso toma medidas extremas para introducirse en la vida de las mujeres de las que se enamora.You es una serie de televisión estadounidense de suspenso psicológico desarrollada por Greg Berlanti y Sera Gamble.', '4K ULTRAs,Terror,Science fiction,Mystery', 2, 2, '2023-07-04 06:18:27', '2023-07-04 06:18:27', NULL),
(35, 'El juego del calamar', 'el-juego-del-calamar', 'Cientos de personas con dificultades económicas aceptan una extraña invitación a un juego de supervivencia.', 'streaming/XagMyakLpnEZVhIisJR0sMpySD9bHJOW5sov4oZW.webp', 14, '320695531', '00:02:45', NULL, NULL, 'Cientos de personas con dificultades económicas aceptan una extraña invitación a un juego de supervivencia. Les espera un premio millonario, pero hay mucho en juego.\r\nLa casa de papel es una serie de televisión española creada por Álex Pina, producida por Atresmedia en sus inicios, aunque posteriormente por Netflix y con el periodista y guionista Javier Gómez Santander como coproductor ejecutivo.', 'Terror,Aventura,Relationship', 2, 2, '2023-07-04 06:23:41', '2023-07-04 06:23:41', NULL),
(36, 'Black Summer', 'black-summer', 'Uno de los fenómenos del año 2019, que pilló por sorpresa a los aficionados del género.', 'streaming/7aaDzCYQpscOH1tcRLa3Hlek9G49VH63JgOAnN6R.jpg', 14, '838658787', '00:03:45', NULL, NULL, 'En tan solo ocho episodios consiguió resumir lo que series como The Walking Dead llevan años alargando: la tensión y el miedo a lo desconocido, la peor cara del ser humano cuando se le pone a prueba, el dilema de salvar a tu familia o enfrentarte a ella… Una pequeña joya tanto por su historia como por su narrativa que pretender ser una precuela de Z Nation, pero filmada con seriedad y sin gamberradas.', '4K ULTRAs,Terror,Science fiction', 2, 2, '2023-07-04 13:41:25', '2023-07-04 13:41:25', NULL),
(37, 'The last of us serie', 'the-last-of-us-serie', 'The Last of Us es una serie de televisión estadounidense postapocalíptica que se estrenó el 15 de enero de 2023 a través de HBO.', 'streaming/foRBGlMHXRWJbdzQl47zgFty69qYW7qTcATFjpmU.jpg', 15, '774288555', '00:01:25', NULL, NULL, 'Joel y Ellie, dos personas conectadas por la brutalidad del mundo en el que viven, se ven obligados a enfrentarse a criaturas y asesinos despiadados, mientras viajan a través de un Estados Unidos posapocalíptico.', 'Science fiction,Terror,Aventura', 2, 2, '2023-07-04 13:43:04', '2023-07-04 13:43:04', NULL),
(38, 'The Outpost', 'the-outpost', 'he Outpost es una oda al valor de un grupo de militares, muy jóvenes en su mayoría, que defendieron, lo mejor que pudieron, una base', 'streaming/u5tZbByoOtkOZTxOB9lcfcOb8Ukq0O1iQX8kE6IH.jpg', 3, '781681150', '00:01:05', NULL, NULL, 'Una pequeña unidad de soldados estadounidenses, estacionada en el lugar más peligroso de Afganistán, hace frente al ataque avasallador de un grupo más numeroso de talibanes. El grupo convierte la lucha por la supervivencia en un ejemplo de coraje.', 'Aventura,4K ULTRAs', 2, 2, '2023-07-04 13:46:37', '2023-07-04 13:46:37', NULL),
(39, 'Las cronicas de sarah connor', 'las-cronicas-de-sarah-connor', 'Terminator: The Sarah Connor Chronicles (Las crónicas de Sarah Connor en español) es una serie de televisión estadounidense de ciencia ficción de la cadena', 'streaming/YuZ7ykqtBbeLzkqDfp7Iub8qvdTrWYLbXaFAI4C5.jpg', 17, '813227141', '00:02:15', NULL, NULL, 'Cansada de huir de asesinos del futuro y policías del presente, Sarah Connor decide prepararse para luchar contra la máquina del futuro que intenta eliminar a su hijo John.', '4K ULTRAs,Science fiction,Aventura', 2, 2, '2023-07-04 13:51:13', '2023-07-04 13:51:13', NULL),
(40, 'Another Danger', 'another-danger', 'Un grupo de jóvenes se pierde en Texas y termina encontrándose con asesinos dementes que los persiguen con motosierras.', 'streaming/v9iODrUmgGXNkIMcG3ypjmtJ6FHK3Q5MWbftKfPq.jpg', 16, '320695531', '00:01:05', NULL, NULL, 'Un grupo de jóvenes se pierde en Texas y termina encontrándose con asesinos dementes que los persiguen con motosierras. Un grupo de jóvenes se pierde en Texas y termina encontrándose con asesinos dementes que los persiguen con motosierras.', '4K ULTRAs,Science fiction,Relationship,Mystery', 2, 2, '2023-07-04 13:55:59', '2023-07-04 13:55:59', NULL),
(41, 'Ash vs Evil Dead', 'ash-vs-evil-dead', 'El cazador de demonios Ash regresa a la acción cuando la humanidad se ve amenazada por una plaga Deadite.', 'streaming/tLAddLwlgSVFn3TPpHNNXDJ5cLIV6pplngR3r5KE.jpg', 6, '781681150', '00:01:11', NULL, NULL, 'El cazador de demonios Ash regresa a la acción cuando la humanidad se ve amenazada por una plaga Deadite.El cazador de demonios Ash regresa a la acción cuando la humanidad se ve amenazada por una plaga Deadite.', 'Science fiction,4K ULTRAs,Terror', 2, 2, '2023-07-04 13:58:47', '2023-07-04 13:58:47', NULL),
(42, 'Luna Neras', 'luna-neras', 'En la Italia del siglo XVII, una partera adolescente acusada de brujería debe elegir entre cumplir su poderoso destino y un amor.', 'streaming/5HTkFcnREDE58YsLtuQI9tu5t0n1gh35q8sqHmcq.jpg', 16, '774288555', '00:01:25', NULL, NULL, 'En la Italia del siglo XVII, una partera adolescente acusada de brujería debe elegir entre cumplir su poderoso destino y un amor.En la Italia del siglo XVII, una partera adolescente acusada de brujería debe elegir entre cumplir su poderoso destino y un amor.', 'Terror,Mystery,Relationship,Mystery,Aventura', 2, 2, '2023-07-04 14:01:51', '2023-07-06 06:30:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `streaming_actors`
--

CREATE TABLE `streaming_actors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `streaming_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `streaming_actors`
--

INSERT INTO `streaming_actors` (`id`, `streaming_id`, `actor_id`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2023-06-28 04:44:37', '2023-06-30 03:52:46', '2023-06-30 03:52:46'),
(2, 2, 2, 1, '2023-06-28 05:11:09', '2023-06-28 11:01:21', '2023-06-28 11:01:21'),
(3, 2, 1, 1, '2023-06-28 05:11:09', '2023-06-28 06:01:21', '2023-06-28 06:01:21'),
(4, 2, 2, 1, '2023-06-28 06:01:21', '2023-06-28 06:39:02', '2023-06-28 06:39:02'),
(5, 2, 2, 1, '2023-06-28 06:39:02', '2023-06-30 08:30:55', '2023-06-30 08:30:55'),
(6, 2, 2, 1, '2023-06-30 03:30:55', '2023-06-30 08:32:11', '2023-06-30 08:32:11'),
(7, 2, 2, 1, '2023-06-30 03:32:11', '2023-06-30 03:52:35', '2023-06-30 03:52:35'),
(8, 2, 2, 1, '2023-06-30 03:52:35', '2023-06-30 03:52:35', NULL),
(9, 1, 1, 1, '2023-06-30 03:52:46', '2023-07-05 04:42:47', '2023-07-05 04:42:47'),
(10, 3, 1, 1, '2023-07-01 05:23:58', '2023-07-01 05:23:58', NULL),
(11, 4, 2, 1, '2023-07-01 05:28:16', '2023-07-01 13:47:41', '2023-07-01 13:47:41'),
(12, 4, 2, 1, '2023-07-01 13:47:41', '2023-07-01 13:47:41', NULL),
(13, 5, 5, 1, '2023-07-03 03:25:32', '2023-07-03 03:25:32', NULL),
(14, 5, 2, 1, '2023-07-03 03:25:32', '2023-07-03 03:25:32', NULL),
(15, 5, 4, 1, '2023-07-03 03:25:32', '2023-07-03 03:25:32', NULL),
(16, 6, 3, 1, '2023-07-03 03:27:59', '2023-07-03 03:27:59', NULL),
(17, 6, 1, 1, '2023-07-03 03:27:59', '2023-07-03 03:27:59', NULL),
(18, 6, 5, 1, '2023-07-03 03:27:59', '2023-07-03 03:27:59', NULL),
(19, 7, 4, 1, '2023-07-03 03:32:50', '2023-07-03 03:32:50', NULL),
(20, 7, 5, 1, '2023-07-03 03:32:50', '2023-07-03 03:32:50', NULL),
(21, 8, 2, 1, '2023-07-03 03:34:36', '2023-07-03 03:34:36', NULL),
(22, 8, 1, 1, '2023-07-03 03:34:36', '2023-07-03 03:34:36', NULL),
(23, 9, 2, 1, '2023-07-03 03:39:23', '2023-07-03 03:39:23', NULL),
(24, 9, 4, 1, '2023-07-03 03:39:23', '2023-07-03 03:39:23', NULL),
(25, 10, 5, 1, '2023-07-03 03:42:19', '2023-07-03 03:42:19', NULL),
(26, 10, 3, 1, '2023-07-03 03:42:19', '2023-07-03 03:42:19', NULL),
(27, 11, 4, 1, '2023-07-03 03:43:52', '2023-07-03 03:43:52', NULL),
(28, 12, 3, 1, '2023-07-03 03:45:11', '2023-07-03 03:45:11', NULL),
(29, 12, 2, 1, '2023-07-03 03:45:11', '2023-07-03 03:45:11', NULL),
(30, 12, 4, 1, '2023-07-03 03:45:11', '2023-07-03 03:45:11', NULL),
(31, 13, 2, 1, '2023-07-03 03:47:53', '2023-07-03 03:47:53', NULL),
(32, 13, 4, 1, '2023-07-03 03:47:53', '2023-07-03 03:47:53', NULL),
(33, 13, 5, 1, '2023-07-03 03:47:53', '2023-07-03 03:47:53', NULL),
(34, 14, 1, 1, '2023-07-03 03:50:45', '2023-07-03 03:50:45', NULL),
(35, 14, 3, 1, '2023-07-03 03:50:45', '2023-07-03 03:50:45', NULL),
(36, 14, 4, 1, '2023-07-03 03:50:45', '2023-07-03 03:50:45', NULL),
(37, 15, 3, 1, '2023-07-03 03:54:33', '2023-07-03 03:54:33', NULL),
(38, 15, 4, 1, '2023-07-03 03:54:33', '2023-07-03 03:54:33', NULL),
(39, 16, 2, 1, '2023-07-03 03:56:21', '2023-07-03 03:56:21', NULL),
(40, 16, 4, 1, '2023-07-03 03:56:21', '2023-07-03 03:56:21', NULL),
(41, 17, 4, 1, '2023-07-03 03:59:26', '2023-07-03 03:59:26', NULL),
(42, 17, 3, 1, '2023-07-03 03:59:26', '2023-07-03 03:59:26', NULL),
(43, 18, 2, 1, '2023-07-03 04:03:14', '2023-07-03 04:03:14', NULL),
(44, 18, 4, 1, '2023-07-03 04:03:14', '2023-07-03 04:03:14', NULL),
(45, 18, 3, 1, '2023-07-03 04:03:14', '2023-07-03 04:03:14', NULL),
(46, 19, 5, 1, '2023-07-03 04:17:06', '2023-07-03 04:17:06', NULL),
(47, 19, 4, 1, '2023-07-03 04:17:06', '2023-07-03 04:17:06', NULL),
(48, 20, 3, 1, '2023-07-03 04:19:39', '2023-07-03 04:19:39', NULL),
(49, 20, 5, 1, '2023-07-03 04:19:39', '2023-07-03 04:19:39', NULL),
(50, 21, 2, 1, '2023-07-03 04:21:10', '2023-07-03 04:21:42', '2023-07-03 04:21:42'),
(51, 21, 3, 1, '2023-07-03 04:21:10', '2023-07-03 04:21:42', '2023-07-03 04:21:42'),
(52, 21, 2, 1, '2023-07-03 04:21:42', '2023-07-03 04:21:42', NULL),
(53, 21, 3, 1, '2023-07-03 04:21:42', '2023-07-03 04:21:42', NULL),
(54, 22, 3, 1, '2023-07-03 04:24:57', '2023-07-03 04:24:57', NULL),
(55, 22, 5, 1, '2023-07-03 04:24:57', '2023-07-03 04:24:57', NULL),
(56, 23, 1, 1, '2023-07-03 04:29:56', '2023-07-03 04:29:56', NULL),
(57, 23, 4, 1, '2023-07-03 04:29:56', '2023-07-03 04:29:56', NULL),
(58, 23, 3, 1, '2023-07-03 04:29:56', '2023-07-03 04:29:56', NULL),
(59, 24, 3, 1, '2023-07-03 04:37:19', '2023-07-03 04:37:19', NULL),
(60, 24, 2, 1, '2023-07-03 04:37:19', '2023-07-03 04:37:19', NULL),
(61, 24, 4, 1, '2023-07-03 04:37:19', '2023-07-03 04:37:19', NULL),
(62, 25, 4, 1, '2023-07-03 04:38:50', '2023-07-03 04:38:50', NULL),
(63, 25, 3, 1, '2023-07-03 04:38:50', '2023-07-03 04:38:50', NULL),
(64, 25, 2, 1, '2023-07-03 04:38:50', '2023-07-03 04:38:50', NULL),
(65, 26, 2, 1, '2023-07-03 04:40:39', '2023-07-03 04:40:39', NULL),
(66, 26, 3, 1, '2023-07-03 04:40:39', '2023-07-03 04:40:39', NULL),
(67, 26, 4, 1, '2023-07-03 04:40:39', '2023-07-03 04:40:39', NULL),
(68, 27, 3, 1, '2023-07-03 04:44:55', '2023-07-03 04:44:55', NULL),
(69, 27, 2, 1, '2023-07-03 04:44:55', '2023-07-03 04:44:55', NULL),
(70, 27, 4, 1, '2023-07-03 04:44:55', '2023-07-03 04:44:55', NULL),
(71, 28, 2, 1, '2023-07-03 04:46:25', '2023-07-03 04:46:25', NULL),
(72, 28, 4, 1, '2023-07-03 04:46:25', '2023-07-03 04:46:25', NULL),
(73, 28, 3, 1, '2023-07-03 04:46:25', '2023-07-03 04:46:25', NULL),
(74, 29, 2, 1, '2023-07-03 04:49:02', '2023-07-03 04:49:02', NULL),
(75, 29, 3, 1, '2023-07-03 04:49:02', '2023-07-03 04:49:02', NULL),
(76, 29, 4, 1, '2023-07-03 04:49:02', '2023-07-03 04:49:02', NULL),
(77, 30, 3, 1, '2023-07-03 04:50:08', '2023-07-03 04:50:08', NULL),
(78, 30, 4, 1, '2023-07-03 04:50:08', '2023-07-03 04:50:08', NULL),
(79, 31, 1, 1, '2023-07-04 06:06:30', '2023-07-04 06:06:30', NULL),
(80, 31, 2, 1, '2023-07-04 06:06:30', '2023-07-04 06:06:30', NULL),
(81, 32, 2, 1, '2023-07-04 06:09:25', '2023-07-04 06:09:25', NULL),
(82, 32, 5, 1, '2023-07-04 06:09:25', '2023-07-04 06:09:25', NULL),
(83, 33, 2, 1, '2023-07-04 06:12:11', '2023-07-04 06:12:11', NULL),
(84, 33, 3, 1, '2023-07-04 06:12:11', '2023-07-04 06:12:11', NULL),
(85, 33, 4, 1, '2023-07-04 06:12:11', '2023-07-04 06:12:11', NULL),
(86, 34, 3, 1, '2023-07-04 06:18:27', '2023-07-04 06:18:27', NULL),
(87, 34, 4, 1, '2023-07-04 06:18:27', '2023-07-04 06:18:27', NULL),
(88, 35, 2, 1, '2023-07-04 06:23:41', '2023-07-04 06:23:41', NULL),
(89, 35, 4, 1, '2023-07-04 06:23:41', '2023-07-04 06:23:41', NULL),
(90, 36, 2, 1, '2023-07-04 13:41:25', '2023-07-04 13:41:25', NULL),
(91, 36, 4, 1, '2023-07-04 13:41:25', '2023-07-04 13:41:25', NULL),
(92, 37, 2, 1, '2023-07-04 13:43:04', '2023-07-04 13:43:04', NULL),
(93, 37, 4, 1, '2023-07-04 13:43:04', '2023-07-04 13:43:04', NULL),
(94, 37, 3, 1, '2023-07-04 13:43:04', '2023-07-04 13:43:04', NULL),
(95, 38, 4, 1, '2023-07-04 13:46:37', '2023-07-04 13:46:37', NULL),
(96, 39, 3, 1, '2023-07-04 13:51:13', '2023-07-04 13:51:13', NULL),
(97, 40, 4, 1, '2023-07-04 13:55:59', '2023-07-04 13:55:59', NULL),
(98, 41, 4, 1, '2023-07-04 13:58:47', '2023-07-04 13:58:47', NULL),
(99, 42, 4, 1, '2023-07-04 14:01:51', '2023-07-04 14:01:51', NULL),
(100, 42, 3, 1, '2023-07-04 14:01:51', '2023-07-04 14:01:51', NULL),
(101, 1, 1, 1, '2023-07-05 04:42:47', '2023-07-05 04:42:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `streaming_episodes`
--

CREATE TABLE `streaming_episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `streaming_season_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo',
  `vimeo_id` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `streaming_episodes`
--

INSERT INTO `streaming_episodes` (`id`, `streaming_season_id`, `title`, `description`, `imagen`, `state`, `vimeo_id`, `time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 'The Reckless 1', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'episodes/IwkWtNxurmJIXqPrGNyWYdwWTMu46bmiKrvY0Aia.jpg', 1, '370747767', '00:35:30', '2023-06-30 06:36:59', '2023-06-30 06:36:59', NULL),
(2, 5, 'The Reckless 2', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'episodes/xGcM8dSVzrfjXFZaNa1WUQDtgJFoxFISxguAx84l.jpg', 1, '841130679', '00:40:57', '2023-06-30 06:39:12', '2023-06-30 07:26:37', NULL),
(3, 5, 'The Reckless 34', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 'episodes/j9A4HO86yhgfDyjZ81RdqdhARH8MrEgBZ0djuzwX.jpg', 1, '841129868', '00:15:30', '2023-06-30 06:41:00', '2023-06-30 11:57:53', NULL),
(4, 6, 'Ingreso a la casa de moneda', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Porro perferendis reprehenderit voluptatibus ducimus animi accusamus alias voluptatem illum iste quis repellendus odit, aspernatur provident nobis incidunt quasi sunt hic ipsum corrupti consectetur enim iure? Fugit laboriosam distinctio, repellendus eaque modi quo sed minima a aliquam sunt amet? Laudantium ullam corrupti, eaque quaerat esse reprehenderit voluptate quam mollitia repellendus doloribus aliquid.', 'episodes/RUrb1WQvBY9qFM7oFqXQbWEXp0vDaNHxS70FWsFD.jpg', 1, '830034780', '00:05:30', '2023-07-05 03:15:01', '2023-07-05 03:15:01', NULL),
(5, 6, 'Mensaje al exterior', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Porro perferendis reprehenderit voluptatibus ducimus animi accusamus alias voluptatem illum iste quis repellendus odit, aspernatur provident nobis incidunt quasi sunt hic ipsum corrupti consectetur enim iure? Fugit laboriosam distinctio, repellendus eaque modi quo sed minima a aliquam sunt amet? Laudantium ullam corrupti, eaque quaerat esse reprehenderit voluptate quam mollitia repellendus doloribus aliquid.', 'episodes/xtVnuzNCx2b7qgniQVqeLRUBfZLcExrcuor79zaS.png', 1, '380779328', '00:20:30', '2023-07-05 03:15:36', '2023-07-05 03:15:36', NULL),
(6, 7, 'Poner a trabajar a los rehenes', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam?', 'episodes/No4emIUAAR2nqwadDLfz9ivXkQRgAbwVZhK8uhTz.jpg', 1, '348114426', '00:18:40', '2023-07-05 03:17:07', '2023-07-05 03:17:07', NULL),
(7, 7, 'Análisis  del plan', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam?', 'episodes/mBvnRgFK3vPcQ4PUCQY5akNRZoxX9sYoIlQgJ6DQ.jpg', 1, '341346681', '00:48:25', '2023-07-05 03:17:48', '2023-07-05 03:17:48', NULL),
(8, 7, 'Condena Provista', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam?', 'episodes/y306sK0M2bCPykFwix3jxOR3uhh1ujkpAAuOmSKs.webp', 1, '357826343', '00:39:40', '2023-07-05 03:18:14', '2023-07-05 03:18:14', NULL),
(9, 8, 'Un conocido en el amanecer', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum  inventore fugit architecto eligendi at.', 'episodes/L9R0hDT9cG0AfMyBQXAMMY1UEH33aauV5Vyx71Gp.webp', 1, '555252697', '00:32:30', '2023-07-05 03:23:08', '2023-07-05 03:23:08', NULL),
(10, 8, 'Amenaza cercana', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum  inventore fugit architecto eligendi at.', 'episodes/pJRXCrdGOdNFuHx6HgdmXMSfafNiyO8yHXE3PZ4f.webp', 1, '840114240', '00:41:25', '2023-07-05 03:24:09', '2023-07-05 03:24:09', NULL),
(11, 9, 'Luchando por un motivo', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum  inventore fugit architecto eligendi at.', 'episodes/MzSM1AIfIoBlPNOJXNDv4ZEqaAVEFcaniguG9fxM.jpg', 1, '840294807', '00:34:45', '2023-07-05 03:24:36', '2023-07-05 03:24:36', NULL),
(12, 9, 'Un enemigo del pasado', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum  inventore fugit architecto eligendi at.', 'episodes/tPLaxEUCtncXIiT78htIRQeVGWGjqIYtrz2lE6vy.jpg', 1, '838262246', '00:55:30', '2023-07-05 03:24:53', '2023-07-05 03:24:53', NULL),
(13, 9, 'Una amenaza inesperada', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam,  veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum  inventore fugit architecto eligendi at.', 'episodes/pHr5rhh7nlaCMkEinwh8QaCWy1NBqoesiIIrby0c.webp', 1, '366518375', '00:32:30', '2023-07-05 03:27:34', '2023-07-05 03:27:34', NULL),
(14, 10, 'Conocimientos del plan', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum \r\ninventore fugit architecto eligendi at.', 'episodes/5biCaGLGcEbvJWz7J4LjTg8osQrgu9sQV2TRtdfU.webp', 1, '838997569', '00:40:57', '2023-07-05 03:58:35', '2023-07-05 03:58:35', NULL),
(15, 10, 'Plan de operaciones', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum \r\ninventore fugit architecto eligendi at.', 'episodes/pgwVukmluKpmgzFOuTJzA5bcwlsyR1BKigeEjbR9.webp', 1, '502163294', '00:41:25', '2023-07-05 03:59:12', '2023-07-05 03:59:12', NULL),
(16, 10, 'Ejecución del plan', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum \r\ninventore fugit architecto eligendi at.', 'episodes/52Wtji1NNwCb7ygzNo6mN61XnfeSDEwDK08qUCTK.jpg', 1, '838700437', '00:13:25', '2023-07-05 04:00:02', '2023-07-05 04:00:02', NULL),
(17, 10, 'En búsqueda de la salida', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum \r\ninventore fugit architecto eligendi at.', 'episodes/yIJTmW8EubnGbhGXg2X884tx3cbQtFRP3AHDcddo.jpg', 1, '838262246', '00:25:25', '2023-07-05 04:00:42', '2023-07-05 04:00:42', NULL),
(18, 11, 'Conociendo a la chica', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/d9tDY3vxa2l4eQLriadJEBiXk8K0n8sgU0ttGjrE.jpg', 1, '837882414', '00:41:25', '2023-07-05 04:05:30', '2023-07-05 04:05:30', NULL),
(19, 11, 'Conociéndonos', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/NhXZYZwux7n0K11yEdcq9LJKE6DCnHqolLqhSWuI.jpg', 1, '355210534', '00:55:25', '2023-07-05 04:06:11', '2023-07-05 04:06:11', NULL),
(20, 12, 'Cita perfecta', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/n0voqpe2sAAMuOALIB6E2ngxXqqgo7V2PYld0sdZ.webp', 1, '370747767', '00:46:15', '2023-07-05 04:06:56', '2023-07-05 04:06:56', NULL),
(21, 12, 'Conociendo el miedo', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/tMITqLt3ZnE9yKfXqXKDZbMuuf1G2Y08BkBchBGW.jpg', 1, '624629606', '00:36:25', '2023-07-05 04:07:13', '2023-07-05 04:07:13', NULL),
(22, 12, 'Secuestrada por You', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/PMwuIduWza7ZUMd9mEA3jylF9vwjBoksSIRvmqPm.jpg', 1, '837580999', '00:51:15', '2023-07-05 04:07:50', '2023-07-05 04:07:50', NULL),
(23, 13, 'El inicio de las pruebas', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/zGWBDTkOTrlaQihqKThd2OpTab8fg3oikhfwYdKt.webp', 1, '529378408', '00:53:25', '2023-07-05 04:08:47', '2023-07-05 04:08:47', NULL),
(24, 13, 'Selección de supervivientes', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/hQF3Dc4jFBfKvBDuwTDDPMQNTh2YZ2gaoVQ2Hy4x.jpg', 1, '837882414', '00:51:15', '2023-07-05 04:09:21', '2023-07-05 04:09:21', NULL),
(25, 13, 'Una amenaza viviente', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/K18Wb2WadDNxPpOfK3f5BJu8weSovFu7tOnjuQ7T.jpg', 1, '838700437', '00:52:15', '2023-07-05 04:10:24', '2023-07-05 04:10:24', NULL),
(26, 13, 'La ultima prueba', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/D2D3Mp0PaR0JJKdBeskQGFhdkeNJSYFeDQm9z0iZ.webp', 1, '537382142', '00:53:25', '2023-07-05 04:10:52', '2023-07-05 04:10:52', NULL),
(27, 14, 'Amanecer de los muertos', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores.', 'episodes/KMBM1yw6CJyt4EqcJWAnyS53k9LmJt7hOJeKOCUz.webp', 1, '838997569', '00:47:15', '2023-07-05 04:13:06', '2023-07-05 04:13:06', NULL),
(28, 14, 'Inicio de una nueva guerra', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur?\r\n Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatur laboriosam? Necessitatibus maiores, molestiae voluptatum maxime dolorum \r\ninventore fugit architecto eligendi at.', 'episodes/phogimm7hw57PdywVfcb6xRPlTXscU7dlmejqaa9.webp', 1, '840294807', '00:53:15', '2023-07-05 04:18:09', '2023-07-05 04:18:09', NULL),
(29, 15, 'Un nuevo aliado en contra a los zombies', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/HGTVM88tBa3GGy7DtXkL25bcPnlVVZm3nbr1OGKC.jpg', 1, '341825351', '00:51:15', '2023-07-05 04:20:32', '2023-07-05 04:20:32', NULL),
(30, 15, 'Una nueva regla en la fortaleza', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/GLfOTWraSDxO0Br0HXnSgAQ09CSGMakKFhCPN7kT.webp', 1, '370747767', '00:48:15', '2023-07-05 04:21:20', '2023-07-05 04:21:25', NULL),
(31, 15, 'Una nueva oportunidad', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/8qWXzA0b1quvzJJmeJ8QjERqzuFAstnXPogPzP20.jpg', 1, '537382142', '00:34:35', '2023-07-05 04:21:55', '2023-07-05 04:21:55', NULL),
(32, 16, 'Conocimiento de la fortaleza', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/PErvAiefQewuY3b8VR4t2RLkwNGQ7oOWrA2blNnx.webp', 1, '348114426', '00:45:15', '2023-07-05 04:23:00', '2023-07-05 04:23:00', NULL),
(33, 16, 'En búsqueda  de los alimentos', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/meNBxrhHucTe7O99rOHDqrSUzi1PIpOEDEhdG1aX.jpg', 1, '514470296', '01:53:15', '2023-07-05 04:23:25', '2023-07-05 04:23:25', NULL),
(34, 16, 'Nuevas ciudades', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/FhPpR5u8tDHOZFNUQa2YZu1nrqXqbYznLuC6vHR9.jpg', 1, '840114240', '00:43:45', '2023-07-05 04:24:11', '2023-07-05 04:24:11', NULL),
(35, 17, 'Nuevas apariciones', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/rkQvKFoIYloRGVH3p5EsYHYuNxFfnlYXlkiLqR9q.jpg', 1, '533729157', '00:51:15', '2023-07-05 04:24:48', '2023-07-05 04:24:48', NULL),
(36, 17, 'Una nueva guerra se acerca', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/uCs0aY0Uh644Ps6nAl0yH179znKmniaNtKPNnwqb.jpg', 1, '840594147', '00:32:30', '2023-07-05 04:25:04', '2023-07-05 04:25:04', NULL),
(37, 17, 'Espera de los refuerzos', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/4tX4KzBPTPVB2ewJVZiE6UXH3mve7OYxIa85E6fc.webp', 1, '357826343', '00:54:35', '2023-07-05 04:25:23', '2023-07-05 04:25:23', NULL),
(38, 17, 'No todos están a salvo', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/QA1Reh38zsqT46fciIvYPhQZb66mMEdy5ZSbAV9h.jpg', 1, '514470296', '00:34:35', '2023-07-05 04:25:53', '2023-07-05 04:25:53', NULL),
(39, 18, 'Nuevas esperas', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/yXrlkHaLqkLOR0Y5R9wDdFk0HMkxSVVGwrxhZfsM.webp', 1, '333541450', '00:44:45', '2023-07-05 04:27:23', '2023-07-05 04:27:23', NULL),
(40, 18, 'Inicio de la guerra civil', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/nVTv5wimjFW5Vdtt9iLhCWyggG9YGBgzTpGm8EqN.jpg', 1, '341825351', '00:39:40', '2023-07-05 04:27:41', '2023-07-05 04:27:41', NULL),
(41, 19, 'Una nueva guerra se acerca', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/tVNAmpfQTAWFUTzjRtmn5bPn42BDognuSU9c2ERQ.jpg', 1, '533729157', '00:23:25', '2023-07-05 04:31:03', '2023-07-05 04:31:03', NULL),
(42, 19, 'Creaciones de un nuevo futuro', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/ETAnjbeyDzjW9d9FONqMt1R3LJigzuVOxWpSuRaD.webp', 1, '348114426', '00:53:25', '2023-07-05 04:31:41', '2023-07-05 04:31:41', NULL),
(43, 19, 'Generación de una nueva arma', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/ZQQcd1xtVixpHjSFF1rQ9aNdiMLF86DQbCdVpDb5.jpg', 1, '341346681', '00:49:35', '2023-07-05 04:32:08', '2023-07-05 04:32:08', NULL),
(44, 19, 'Amigo y Enemigo', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/nRz6ARP7KHqC9U0HdDSruk4nuHrqT44jPLASoEuq.webp', 1, '529378408', '00:51:15', '2023-07-05 04:33:33', '2023-07-05 04:33:33', NULL),
(45, 20, 'La guerra inicia', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/xWCPr62f0ZuywjOQd3NO52AtpIzOUaQUsJqQYvcb.jpg', 1, '380779328', '00:47:55', '2023-07-05 04:34:32', '2023-07-05 04:34:32', NULL),
(46, 20, 'Un nuevo aliado inesperado', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/twcG5cGy97i5FGimWHHXc18b09JWKsKtefDLfufh.webp', 1, '533729157', '00:43:35', '2023-07-05 04:34:53', '2023-07-05 04:34:53', NULL),
(47, 21, 'Pasantía esperada', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/ldmRx3o6WGVmOYgcb9NRmrpZoIKy34RLuOz8Bnc2.jpg', 1, '366518375', '00:43:45', '2023-07-05 04:35:55', '2023-07-05 04:35:55', NULL),
(48, 22, 'Nuevos aliados', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/QgWLMP33pw2FE0KYRNr2hwPnethcBtloNDAI1drJ.webp', 1, '333541450', '00:32:30', '2023-07-05 04:37:16', '2023-07-05 04:37:16', NULL),
(49, 22, 'Sorpresa de los amigos', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/sJXxEDdssTbul3rEFHwACf8zm2gBLJLPvCFcLvk1.jpg', 1, '370747767', '00:34:35', '2023-07-05 04:37:31', '2023-07-05 04:37:31', NULL),
(50, 23, 'La herida renace', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/5b7qAC2EvH0jIPpqWMJzw6Sxnj3DZ1NuovN271W5.webp', 1, '514470296', '00:20:30', '2023-07-05 04:38:18', '2023-07-05 04:38:18', NULL),
(51, 23, 'Nueva ayuda llega', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/6hwgPi08lJBnQeqAEkNRvlW8xpWowAvUDLNVCMVZ.jpg', 1, '355210534', '00:55:30', '2023-07-05 04:38:34', '2023-07-05 04:38:34', NULL),
(52, 24, 'Un nuevo grupo se ha creado', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/jEGU7nOoBlPBGiIrbMZBYL5JYgYvuaGMVMumeZ9i.jpg', 1, '366518375', '00:41:25', '2023-07-05 04:39:30', '2023-07-05 04:39:30', NULL),
(53, 24, 'Buscando aliados', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dolorem, architecto reprehenderit ea doloremque commodi quam officia quod consectetur? Quas saepe veniam soluta neque magnam iure nesciunt nisi ut, nostrum beatae, ab molestiae expedita cum deleniti temporibus cupiditate laudantium? Ullam, veniam officia, reprehenderit corrupti rerum nobis earum rem omnis autem maiores quidem vitae temporibus pariatu', 'episodes/MB5LmKe4YSOMpzDaxRjnKeteSt70mZoawfYMdysc.jpg', 1, '533729157', '00:34:35', '2023-07-05 04:39:45', '2023-07-05 04:39:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `streaming_seasons`
--

CREATE TABLE `streaming_seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `streaming_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `streaming_seasons`
--

INSERT INTO `streaming_seasons` (`id`, `streaming_id`, `title`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'SEASON 1: LA LLEGADO', 1, '2023-06-30 04:34:54', '2023-06-30 04:34:54', NULL),
(2, 1, 'SEASON 2: EL FINAL', 1, '2023-06-30 04:43:35', '2023-06-30 04:43:35', NULL),
(3, 1, 'SEASON 3: EL RENACER', 1, '2023-06-30 04:44:19', '2023-06-30 04:44:19', NULL),
(4, 1, 'SEASON 4: NUNCA MAS', 1, '2023-06-30 04:44:54', '2023-06-30 04:44:54', NULL),
(5, 1, 'SEASON 5: OTRA OPORTUNIDAD', 2, '2023-06-30 04:45:47', '2023-06-30 05:11:55', NULL),
(6, 31, 'Temporada 1', 1, '2023-07-05 03:13:22', '2023-07-05 03:13:22', NULL),
(7, 31, 'Temporada 2', 1, '2023-07-05 03:13:27', '2023-07-05 03:13:27', NULL),
(8, 32, 'Temporada 1 : Flash Reverso', 1, '2023-07-05 03:22:03', '2023-07-05 03:22:03', NULL),
(9, 32, 'Temporada 2:  Flash Reverso', 1, '2023-07-05 03:22:11', '2023-07-05 03:22:11', NULL),
(10, 33, 'Temporada 1 : Plan', 1, '2023-07-05 03:58:04', '2023-07-05 03:58:04', NULL),
(11, 34, 'Temporada 1 : Conocimiento', 1, '2023-07-05 04:04:42', '2023-07-05 04:04:42', NULL),
(12, 34, 'Temporada 2 : Nuevo Inicio', 1, '2023-07-05 04:04:50', '2023-07-05 04:04:50', NULL),
(13, 35, 'Temporada 1 : Los juegos', 1, '2023-07-05 04:08:17', '2023-07-05 04:08:17', NULL),
(14, 36, 'Temporada 1: Nuevo Verano', 1, '2023-07-05 04:12:18', '2023-07-05 04:12:18', NULL),
(15, 36, 'Temporada 2:  Veranos Pasado', 1, '2023-07-05 04:12:32', '2023-07-05 04:12:32', NULL),
(16, 37, 'Temporada 1', 1, '2023-07-05 04:22:24', '2023-07-05 04:22:24', NULL),
(17, 38, 'Temporada 1', 1, '2023-07-05 04:24:25', '2023-07-05 04:24:25', NULL),
(18, 38, 'Temporada 2', 1, '2023-07-05 04:24:28', '2023-07-05 04:24:28', NULL),
(19, 39, 'Temporada 1 : T-100', 1, '2023-07-05 04:28:02', '2023-07-05 04:28:02', NULL),
(20, 39, 'Temporada 2 : Guerra', 1, '2023-07-05 04:34:16', '2023-07-05 04:34:16', NULL),
(21, 40, 'Temporada 1', 1, '2023-07-05 04:35:33', '2023-07-05 04:35:33', NULL),
(22, 40, 'Temporada 2', 1, '2023-07-05 04:36:57', '2023-07-05 04:36:57', NULL),
(23, 41, 'Temporada 1', 1, '2023-07-05 04:37:54', '2023-07-05 04:37:54', NULL),
(24, 42, 'Temporada 1', 1, '2023-07-05 04:38:51', '2023-07-05 04:38:51', NULL),
(25, 42, 'Temporada 2', 1, '2023-07-05 04:38:55', '2023-07-05 04:38:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es pelicula, 2 es tv show y videos',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `title`, `type`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Action', 1, 1, '2023-06-27 04:29:20', '2023-06-27 04:29:20', NULL),
(2, '4K ULTRAs', 2, 1, '2023-06-27 04:30:39', '2023-07-01 03:09:33', NULL),
(4, 'Terror', 2, 1, '2023-07-01 03:09:45', '2023-07-01 03:09:45', NULL),
(5, 'Suspeso', 1, 1, '2023-07-01 03:09:58', '2023-07-01 03:09:58', NULL),
(6, 'Ficción', 3, 1, '2023-07-01 03:10:10', '2023-07-01 03:10:10', NULL),
(7, 'Romantico', 3, 1, '2023-07-01 03:10:17', '2023-07-01 03:10:17', NULL),
(8, 'Comedy', 1, 1, '2023-07-03 03:12:16', '2023-07-03 03:12:16', NULL),
(9, 'Adventure', 1, 1, '2023-07-03 03:12:29', '2023-07-03 03:12:29', NULL),
(10, 'Mystery', 1, 1, '2023-07-03 03:12:39', '2023-07-03 03:12:39', NULL),
(11, 'Romance', 1, 1, '2023-07-03 03:12:56', '2023-07-03 03:12:56', NULL),
(12, 'Recommonded', 1, 1, '2023-07-03 03:13:06', '2023-07-03 03:13:06', NULL),
(13, 'Thriller', 1, 1, '2023-07-03 03:13:32', '2023-07-03 03:13:32', NULL),
(14, 'Relationship', 2, 1, '2023-07-03 03:14:10', '2023-07-03 03:14:10', NULL),
(15, 'Mystery', 2, 1, '2023-07-03 03:14:36', '2023-07-03 03:14:36', NULL),
(16, 'Aventura', 2, 1, '2023-07-03 03:14:45', '2023-07-03 03:15:12', NULL),
(17, 'Science fiction', 2, 1, '2023-07-03 03:15:29', '2023-07-03 03:15:29', NULL),
(18, 'Science fiction', 3, 1, '2023-07-03 03:15:48', '2023-07-03 03:17:07', NULL),
(19, 'Drama', 3, 1, '2023-07-03 03:16:04', '2023-07-03 03:16:04', NULL),
(20, 'Family', 3, 1, '2023-07-03 03:16:17', '2023-07-03 03:16:17', NULL),
(21, 'Fantasy', 3, 1, '2023-07-03 03:16:28', '2023-07-03 03:16:28', NULL),
(22, 'Ilusionaty', 3, 1, '2023-07-03 03:17:33', '2023-07-03 03:17:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_user` tinyint(1) UNSIGNED DEFAULT 1 COMMENT '1 es admi y 2 es cliente',
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es activo y 2 es inactivo',
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `type_user`, `role_id`, `state`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Echo Dev', NULL, 'echodev@gmail.com', 1, 1, 1, NULL, NULL, '$2y$10$k8KL5OqFGQOBGK2DhKPT5elywT8V57QNQt85ypelD8Q0HaPn9Vrna', NULL, '2023-06-21 08:29:36', '2023-06-21 08:29:36', NULL),
(2, 'Lorena', 'smit', 'lorena@gmail.com', 1, 1, 1, 'users/jSWUMRYYErumA7dNSKejx8tZ3KAtUX9HcMAPd7u4.png', NULL, '12345678', NULL, '2023-06-22 11:02:28', '2023-06-22 11:02:28', NULL),
(3, 'Damian', 'Code', 'damian@gmail.com', 1, 1, 2, 'users/nRtIQS4f65AL1Nyxb3LoaXUa1jTFtA7l0AWpp8is.png', NULL, '12345678', NULL, '2023-06-22 11:04:30', '2023-06-22 11:04:30', NULL),
(4, 'Franks', 'Dev', 'frank@gmail.com', 1, 1, 1, 'users/K2aXfMdUzOieTOiA6b9OmZ9FjYGFOtuRqX9THvYX.png', NULL, '12345678', NULL, '2023-06-22 11:27:49', '2023-06-22 12:12:31', NULL),
(5, 'Steven', 'dev', 'steven@gmail.com', 1, 1, 1, 'users/T4HMsfUdIuX1xoimGaZoR5IisaWYsn65hXvqsU5p.png', NULL, '12345678', NULL, '2023-06-22 11:29:01', '2023-06-22 12:11:26', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `plan_paypals`
--
ALTER TABLE `plan_paypals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_paypals`
--
ALTER TABLE `product_paypals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `streamings`
--
ALTER TABLE `streamings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `streaming_actors`
--
ALTER TABLE `streaming_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `streaming_episodes`
--
ALTER TABLE `streaming_episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `streaming_seasons`
--
ALTER TABLE `streaming_seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `plan_paypals`
--
ALTER TABLE `plan_paypals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `product_paypals`
--
ALTER TABLE `product_paypals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `streamings`
--
ALTER TABLE `streamings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `streaming_actors`
--
ALTER TABLE `streaming_actors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `streaming_episodes`
--
ALTER TABLE `streaming_episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `streaming_seasons`
--
ALTER TABLE `streaming_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
