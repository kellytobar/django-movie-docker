-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2019 a las 00:07:02
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movie_break_django`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add actor', 7, 'add_actor'),
(20, 'Can change actor', 7, 'change_actor'),
(21, 'Can delete actor', 7, 'delete_actor'),
(22, 'Can add genero', 8, 'add_genero'),
(23, 'Can change genero', 8, 'change_genero'),
(24, 'Can delete genero', 8, 'delete_genero'),
(25, 'Can add pelicula', 9, 'add_pelicula'),
(26, 'Can change pelicula', 9, 'change_pelicula'),
(27, 'Can delete pelicula', 9, 'delete_pelicula'),
(28, 'Can add perfil', 10, 'add_perfil'),
(29, 'Can change perfil', 10, 'change_perfil'),
(30, 'Can delete perfil', 10, 'delete_perfil'),
(31, 'Can add association', 11, 'add_association'),
(32, 'Can change association', 11, 'change_association'),
(33, 'Can delete association', 11, 'delete_association'),
(34, 'Can add code', 12, 'add_code'),
(35, 'Can change code', 12, 'change_code'),
(36, 'Can delete code', 12, 'delete_code'),
(37, 'Can add nonce', 13, 'add_nonce'),
(38, 'Can change nonce', 13, 'change_nonce'),
(39, 'Can delete nonce', 13, 'delete_nonce'),
(40, 'Can add user social auth', 14, 'add_usersocialauth'),
(41, 'Can change user social auth', 14, 'change_usersocialauth'),
(42, 'Can delete user social auth', 14, 'delete_usersocialauth'),
(43, 'Can add partial', 15, 'add_partial'),
(44, 'Can change partial', 15, 'change_partial'),
(45, 'Can delete partial', 15, 'delete_partial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$XV3QT3q3uIZP$fnKAJgQsXYOkz1rx7OZAzLInDWqx0mM1j1qk8HK0Gbw=', '2019-02-24 23:55:27.020617', 1, 'admin', 'Kelly', 'Tobar', 'kellytobar@unicauca.edu.co', 1, 1, '2018-09-01 16:46:01.972713'),
(2, 'pbkdf2_sha256$100000$44z3bppRisWR$dAbEFt8WyJacC5XWKc+SKTE/VkfA/qbP6q7O7D+lBtA=', '2018-09-25 04:40:34.821628', 0, 'usuario1', '', '', 'miguel_tobar02@hotmail.com', 0, 1, '2018-09-04 20:23:32.397586'),
(3, 'pbkdf2_sha256$100000$J10xBR9eduXH$UygqkRLU0ugfWJVTZ15NFSlYQBOOPWwv3tj35v/5l3w=', '2018-10-04 17:39:51.721630', 0, 'gmcruz', '', '', 'gmcruz@unicauca.edu.co', 0, 1, '2018-09-10 02:46:03.654061'),
(5, '!kkh2B8xqzSdgIGueWF5VAX3bMdTogDS6bOhsYIhX', '2018-09-30 19:05:05.878000', 0, 'faibera', 'Faiber', 'BOTINA ANACONA', 'faibera@unicauca.edu.co', 0, 1, '2018-09-27 22:39:29.873183'),
(6, '!woeuRIo7IOzTvnvQdoawMAfmhvvLRxkY07cXhHZc', '2018-09-30 16:19:16.876487', 0, 'kellytobar7', 'Kelly', 'Tobar', 'kellytobar7@gmail.com', 0, 1, '2018-09-30 16:09:18.815859'),
(19, '!4oHANU757OLOMpNxQFS1ErujrpTLXeNE1DlKnxbG', '2018-10-01 16:20:12.210598', 0, 'KellyTobar', 'Kelly', 'Tobar', '', 0, 1, '2018-09-30 19:49:11.645002'),
(23, '!bmn4bdAMin0LQl2AASAhC9PWnANVu6RTv2q9CvjP', '2018-10-01 23:33:12.287255', 0, 'StageMeta', 'MetaStageDevelopers', '', 'metastaged@gmail.com', 0, 1, '2018-10-01 15:22:36.162252'),
(24, '!jLFWdaTxreOzT4gOYKRkNZ1vUAjpLscNrqug58or', '2019-02-24 23:46:16.551429', 0, 'kellytobar178c54baa44246d1', 'KELLY TATIANA', 'TOBAR ORTEGA', 'kellytobar@unicauca.edu.co', 0, 1, '2018-10-01 16:16:10.744557'),
(25, 'pbkdf2_sha256$100000$SuBIXzRJjlsI$FndCAsmw1qjx+huWeIixQeunNpV0ZlllUBO03GwuGhE=', NULL, 0, 'leidy', '', '', 'kellytobar@unicauca.edu.co', 0, 1, '2018-10-02 23:32:07.163749'),
(26, 'pbkdf2_sha256$100000$3scYgIgilwEM$1BKKzlLt8F7bKTTAOgRrdpdbBB2knJEwOB0UlhITyXk=', '2018-10-04 17:43:03.722847', 0, 'estefania', '', '', 'estefani@uni.com', 0, 1, '2018-10-04 17:42:52.070416');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-09-01 17:13:45.229284', '1', 'Accion', 1, '[{\"added\": {}}]', 8, 1),
(2, '2018-09-01 17:14:08.937382', '2', 'Animada', 1, '[{\"added\": {}}]', 8, 1),
(3, '2018-09-01 17:14:23.401997', '3', 'Comedia', 1, '[{\"added\": {}}]', 8, 1),
(4, '2018-09-01 17:14:28.980742', '4', 'Romance', 1, '[{\"added\": {}}]', 8, 1),
(5, '2018-09-01 17:14:34.247006', '5', 'Terror', 1, '[{\"added\": {}}]', 8, 1),
(6, '2018-09-01 17:14:52.993557', '6', 'Suspenso', 1, '[{\"added\": {}}]', 8, 1),
(7, '2018-09-01 18:13:39.480315', '1', 'Eugenio Derbez', 1, '[{\"added\": {}}]', 7, 1),
(8, '2018-09-01 18:15:36.211448', '2', 'Anna Faris', 1, '[{\"added\": {}}]', 7, 1),
(9, '2018-09-01 18:22:05.966175', '1', 'A la deriva', 1, '[{\"added\": {}}]', 9, 1),
(10, '2018-09-01 18:22:23.045351', '1', 'A la deriva', 2, '[]', 9, 1),
(11, '2018-09-02 15:33:22.985250', '3', 'Selena Gomez', 1, '[{\"added\": {}}]', 7, 1),
(12, '2018-09-02 15:34:15.126453', '4', 'Adam Sandler', 1, '[{\"added\": {}}]', 7, 1),
(13, '2018-09-02 15:34:25.275017', '2', 'Hotel transylvania 3', 1, '[{\"added\": {}}]', 9, 1),
(14, '2018-09-02 18:55:14.946758', '5', 'James McAvoy', 1, '[{\"added\": {}}]', 7, 1),
(15, '2018-09-02 18:57:02.583738', '3', 'Fragmentado', 2, '[{\"changed\": {\"fields\": [\"foto\"]}}]', 9, 1),
(16, '2018-09-02 21:24:14.698588', '3', 'Fragmentado', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 9, 1),
(17, '2018-09-05 16:34:50.383443', '1', 'usuario1 , 100200721', 1, '[{\"added\": {}}]', 10, 1),
(18, '2018-09-05 17:11:17.396863', '6', 'Ryan Reynolds', 1, '[{\"added\": {}}]', 7, 1),
(19, '2018-09-05 17:14:33.608518', '4', 'Deadpool 2', 1, '[{\"added\": {}}]', 9, 1),
(20, '2018-09-09 22:09:35.654955', '4', 'Deadpool 2', 2, '[{\"changed\": {\"fields\": [\"foto_horizontal\"]}}]', 9, 1),
(21, '2018-09-09 22:09:59.662577', '3', 'Fragmentado', 2, '[{\"changed\": {\"fields\": [\"foto_horizontal\"]}}]', 9, 1),
(22, '2018-09-09 22:10:21.853072', '2', 'Hotel transylvania 3', 2, '[{\"changed\": {\"fields\": [\"foto_horizontal\"]}}]', 9, 1),
(23, '2018-09-09 22:10:46.276110', '1', 'A la deriva', 2, '[{\"changed\": {\"fields\": [\"foto_horizontal\"]}}]', 9, 1),
(24, '2018-09-10 02:48:29.199116', '2', 'gmcruz , 10771373', 2, '[{\"changed\": {\"fields\": [\"image\", \"genero\"]}}]', 10, 1),
(25, '2018-09-10 02:48:59.201687', '2', 'gmcruz , 10771373', 2, '[]', 10, 1),
(26, '2018-09-25 04:30:12.465791', '3', 'admin , 1061775446', 1, '[{\"added\": {}}]', 10, 1),
(27, '2018-09-30 16:00:37.317146', '4', 'KellyTobar', 3, '', 4, 1),
(28, '2018-10-04 17:03:20.354343', '4', 'leidy , 123', 2, '[{\"changed\": {\"fields\": [\"image\", \"genero\"]}}]', 10, 1),
(29, '2018-10-04 17:05:25.147632', '4', 'leidy , 123', 2, '[]', 10, 1),
(30, '2018-10-04 17:44:28.387441', '5', 'estefania , 1000', 2, '[{\"changed\": {\"fields\": [\"genero\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'actor'),
(8, 'home', 'genero'),
(9, 'home', 'pelicula'),
(10, 'home', 'perfil'),
(6, 'sessions', 'session'),
(11, 'social_django', 'association'),
(12, 'social_django', 'code'),
(13, 'social_django', 'nonce'),
(15, 'social_django', 'partial'),
(14, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-09-01 16:40:08.442216'),
(2, 'auth', '0001_initial', '2018-09-01 16:40:16.138905'),
(3, 'admin', '0001_initial', '2018-09-01 16:40:19.952098'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-09-01 16:40:20.181940'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-09-01 16:40:21.299061'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-09-01 16:40:23.941147'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-09-01 16:40:24.851148'),
(8, 'auth', '0004_alter_user_username_opts', '2018-09-01 16:40:24.931865'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-09-01 16:40:26.218966'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-09-01 16:40:26.289032'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-09-01 16:40:26.375466'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-09-01 16:40:27.289089'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-09-01 16:40:28.139163'),
(14, 'home', '0001_initial', '2018-09-01 16:40:41.154085'),
(15, 'sessions', '0001_initial', '2018-09-01 16:40:43.719591'),
(16, 'home', '0002_auto_20180901_1319', '2018-09-01 18:19:24.377021'),
(17, 'home', '0003_auto_20180909_1657', '2018-09-09 21:58:17.017253'),
(18, 'home', '0004_auto_20180924_2058', '2018-09-25 01:58:26.410179'),
(19, 'default', '0001_initial', '2018-09-27 10:20:07.945479'),
(20, 'social_auth', '0001_initial', '2018-09-27 10:20:07.985486'),
(21, 'default', '0002_add_related_name', '2018-09-27 10:20:08.605652'),
(22, 'social_auth', '0002_add_related_name', '2018-09-27 10:20:08.665666'),
(23, 'default', '0003_alter_email_max_length', '2018-09-27 10:20:09.265828'),
(24, 'social_auth', '0003_alter_email_max_length', '2018-09-27 10:20:09.301840'),
(25, 'default', '0004_auto_20160423_0400', '2018-09-27 10:20:09.361851'),
(26, 'social_auth', '0004_auto_20160423_0400', '2018-09-27 10:20:09.413868'),
(27, 'social_auth', '0005_auto_20160727_2333', '2018-09-27 10:20:09.601919'),
(28, 'social_django', '0006_partial', '2018-09-27 10:20:10.064122'),
(29, 'social_django', '0007_code_timestamp', '2018-09-27 10:20:10.743891'),
(30, 'social_django', '0008_partial_timestamp', '2018-09-27 10:20:11.456102'),
(31, 'social_django', '0004_auto_20160423_0400', '2018-09-27 10:20:11.516203'),
(32, 'social_django', '0003_alter_email_max_length', '2018-09-27 10:20:11.556100'),
(33, 'social_django', '0002_add_related_name', '2018-09-27 10:20:11.606441'),
(34, 'social_django', '0001_initial', '2018-09-27 10:20:11.658885'),
(35, 'social_django', '0005_auto_20160727_2333', '2018-09-27 10:20:11.697275');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6o8pzqmrcqbjsj570yz8p2lq2vvgj1fh', 'NTk1YTZmNmE0NjgzNWE2ODZjM2UwZWI2YzBmMjBjN2EwODg1MTY1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OGRhMjA4YjExZDZlYzI2NmU2MzkzYTczZjU4NDI0NDFlZmRiNmFjIn0=', '2018-10-18 17:43:57.889663'),
('8ilbw99b1h8p0nyjvha4ppj4kn5cq6s5', 'MzU0NmE3YjM4ZGY5MDVmOWEwYmFiNGZlZTE4ZTliNDE0ODM4M2UyZjp7ImZhY2Vib29rX3N0YXRlIjoiWkh2U3lMRncwSlIxOWdQWDJvWmVFaEd3VWloeGhzdjYifQ==', '2018-10-15 23:33:26.019298'),
('as30sb4kpz1kbqjwp0i9i95f5begj63y', 'NTk1YTZmNmE0NjgzNWE2ODZjM2UwZWI2YzBmMjBjN2EwODg1MTY1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OGRhMjA4YjExZDZlYzI2NmU2MzkzYTczZjU4NDI0NDFlZmRiNmFjIn0=', '2018-09-24 07:08:03.224820'),
('se48r310bv4r0tmmjozcwb2i28xehs2h', 'NjNiMmNjZmE5Mjk3MTM4N2QzN2Y3Y2M0MDIzYTJmZTRjZjhhNTEzZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MmQ0NjhkOGVmN2VkNGJhNWQxMmY0YjQ3MDBjMGU2MjUyZGE4YjFhIn0=', '2018-10-09 05:14:05.264504'),
('vud99uritdoc61y4iedynxiw3okyfjfr', 'NTk1YTZmNmE0NjgzNWE2ODZjM2UwZWI2YzBmMjBjN2EwODg1MTY1NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OGRhMjA4YjExZDZlYzI2NmU2MzkzYTczZjU4NDI0NDFlZmRiNmFjIn0=', '2018-09-19 16:29:29.630352');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_actor`
--

CREATE TABLE `home_actor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_actor`
--

INSERT INTO `home_actor` (`id`, `nombre`, `nacionalidad`, `fecha_nacimiento`, `foto`) VALUES
(1, 'Eugenio Derbez', 'Mexicano', '1961-09-02', 'fotos_actores/eugenio-derbez.jpg'),
(2, 'Anna Faris', 'Estadunidense', '1976-11-29', 'fotos_actores/anna-faris.jpg'),
(3, 'Selena Gomez', 'Estadunidense', '1992-07-22', 'fotos_actores/selena-gomez.jpg'),
(4, 'Adam Sandler', 'Estadunidense', '1966-09-09', 'fotos_actores/adam-sandler.png'),
(5, 'James McAvoy', '?Escocesa', '1979-04-21', 'fotos_actores/james-mcavoy.jpg'),
(6, 'Ryan Reynolds', 'Canadiense', '1976-10-23', 'fotos_actores/ryan-reynolds.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_genero`
--

CREATE TABLE `home_genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_genero`
--

INSERT INTO `home_genero` (`id`, `nombre`) VALUES
(1, 'Accion'),
(2, 'Animada'),
(3, 'Comedia'),
(4, 'Romance'),
(5, 'Terror'),
(6, 'Suspenso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_pelicula`
--

CREATE TABLE `home_pelicula` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `anio_estreno` int(11) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `duracion_min` int(11) NOT NULL,
  `foto_vertical` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `foto_horizontal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_pelicula`
--

INSERT INTO `home_pelicula` (`id`, `nombre`, `anio_estreno`, `sinopsis`, `duracion_min`, `foto_vertical`, `status`, `foto_horizontal`) VALUES
(1, 'A la deriva', 2018, 'Leonardo, un millonario mexicano egoísta y caprichoso, despide a Kate, una madre soltera sin apenas recursos. Poco después, Leonardo pierde la memoria cuando cae por la borda de su yate y Kate se venga de él haciéndole creer que es su esposo.', 90, 'fotos_peliculas/a-la-deriva.jpg', 1, 'fotos_peliculas/deriva-horizontal.jpg'),
(2, 'Hotel transylvania 3', 2018, 'Nuestra familia de monstruos favorita se embarca en un crucero de lujo para que por fin Drac pueda tomarse un descanso de proveer de vacaciones al resto en el hotel.', 110, 'fotos_peliculas/hotel-transylvania-3.jpg', 1, 'fotos_peliculas/hotel-transilvania-3-horizontal.jpg'),
(3, 'Fragmentado', 2017, 'Kevin, un hombre con 23 personalidades, secuestra a 3 chicas jóvenes y las mantiene retenidas en un sótano. A medida que una de sus personalidades va imponiéndose al resto, la vida de las chicas, y la del propio Kevin, peligra cada vez más.', 100, 'fotos_peliculas/fragmentado.jpg', 1, 'fotos_peliculas/fragmentado-horizontal.jpg'),
(4, 'Deadpool 2', 2018, 'Deadpool debe proteger a Russell, un adolescente mutante, de Cable un soldado del futuro genéticamente modificado.', 180, 'fotos_peliculas/deadpool-2.jpg', 1, 'fotos_peliculas/deadpool2-horizontal.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_pelicula_actor`
--

CREATE TABLE `home_pelicula_actor` (
  `id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_pelicula_actor`
--

INSERT INTO `home_pelicula_actor` (`id`, `pelicula_id`, `actor_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 4, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_pelicula_genero`
--

CREATE TABLE `home_pelicula_genero` (
  `id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_pelicula_genero`
--

INSERT INTO `home_pelicula_genero` (`id`, `pelicula_id`, `genero_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 2),
(4, 2, 3),
(5, 3, 6),
(6, 4, 1),
(7, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_perfil`
--

CREATE TABLE `home_perfil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cedula` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_perfil`
--

INSERT INTO `home_perfil` (`id`, `nombre`, `cedula`, `image`, `user_id`) VALUES
(1, 'Miguel Enrique Tobar', '100200721', 'perfiles_usuarios/perfil-de-hombre.png', 2),
(2, 'Gina Cruz', '10771373', 'perfiles_usuarios/perfil-de-mujer.jpg', 3),
(3, 'Kelly T', '1061775446', 'perfiles_usuarios/perfil-de-mujer_WwtWiPy.jpg', 1),
(4, 'leidy', '123', 'perfiles_usuarios/perfil-de-mujer_q8yKRqE.jpg', 25),
(5, 'este', '1000', 'perfiles_usuarios/perfil-de-mujer_VpAQRMO.jpg', 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_perfil_genero`
--

CREATE TABLE `home_perfil_genero` (
  `id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `home_perfil_genero`
--

INSERT INTO `home_perfil_genero` (`id`, `perfil_id`, `genero_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 6),
(4, 2, 2),
(5, 2, 3),
(6, 3, 3),
(7, 3, 4),
(8, 3, 6),
(9, 4, 3),
(10, 5, 1),
(11, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`) VALUES
(2, 'google-oauth2', 'faibera@unicauca.edu.co', '{\"auth_time\": 1538334305, \"expires\": 3598, \"token_type\": \"Bearer\", \"access_token\": \"ya29.GlwoBsYmP60p6IN6HiYqsjGHCKa5YtByvEE3qF2TPa4h25anFsOIRQ4kSjc83KEZd3TXZrZCeeZ_48thGquhE70r-_xgInAzJo4f8MXO2U--qKoibOSu-aANDloAgg\"}', 5),
(4, 'google-oauth2', 'kellytobar7@gmail.com', '{\"auth_time\": 1538324356, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.GlsoBjMAH-liOpyE1u1LdQFVhiUSK9Xwv4khaLEDBpDWxgsRLK7_NG23mGZlYYb3-8ZheY9pOmgBZlo6EqfLp5RcICtdvYqogOPmxeH81r8a8JLy64Qm7LEC_wgp\"}', 6),
(17, 'facebook', '1501371496630533', '{\"auth_time\": 1538410811, \"id\": \"1501371496630533\", \"expires\": 5105264, \"granted_scopes\": [\"user_birthday\", \"user_likes\", \"email\", \"public_profile\"], \"denied_scopes\": null, \"access_token\": \"EAAbFrD9xICkBAHxc5jr42Qi20YjRFnvbZAfkCsoQjxecdpYpImKHXb6x8hbespNhy73ycLCUetQu3qGK9qwFvwgwMkvIpDTDZARVsxdxSxke9KgJQnibvhIZAHlcqwERu7bER3R7RFO13iQXWTAGHws9ZCBohSZCmwCE6rex0ngZDZD\", \"token_type\": null}', 19),
(21, 'twitter', '1046077162586034176', '{\"auth_time\": 1538436792, \"id\": 1046077162586034176, \"access_token\": {\"oauth_token\": \"1046077162586034176-4hfE7QI9Mr96wSICNUwyTv2inqZmdo\", \"oauth_token_secret\": \"LvXzICEYAOL3tu5TB5CaXf8SM08BvXU9otxugclc3mD5k\", \"user_id\": \"1046077162586034176\", \"screen_name\": \"StageMeta\"}}', 23),
(22, 'google-oauth2', 'kellytobar@unicauca.edu.co', '{\"auth_time\": 1551051976, \"expires\": 3600, \"token_type\": \"Bearer\", \"access_token\": \"ya29.Glu7Bg8YTO4iCnnEF2-Ii-s0UcSVyOj10HauAaEV60TCKscXVR6uB9Iwd3rxjxv-GcvctWRp5wBYG4gHsncnXyva2u8G8p98kjyezRYXCKnO54CeegSc4DFTdsHI\"}', 24);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `home_actor`
--
ALTER TABLE `home_actor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_genero`
--
ALTER TABLE `home_genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_pelicula`
--
ALTER TABLE `home_pelicula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `home_pelicula_actor`
--
ALTER TABLE `home_pelicula_actor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_pelicula_actor_pelicula_id_actor_id_fa3bb11d_uniq` (`pelicula_id`,`actor_id`),
  ADD KEY `home_pelicula_actor_actor_id_3693ed1d_fk_home_actor_id` (`actor_id`);

--
-- Indices de la tabla `home_pelicula_genero`
--
ALTER TABLE `home_pelicula_genero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_pelicula_genero_pelicula_id_genero_id_62b84a27_uniq` (`pelicula_id`,`genero_id`),
  ADD KEY `home_pelicula_genero_genero_id_75b34dfc_fk_home_genero_id` (`genero_id`);

--
-- Indices de la tabla `home_perfil`
--
ALTER TABLE `home_perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `home_perfil_genero`
--
ALTER TABLE `home_perfil_genero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_perfil_genero_perfil_id_genero_id_b163cdba_uniq` (`perfil_id`,`genero_id`),
  ADD KEY `home_perfil_genero_genero_id_5cfe3add_fk_home_genero_id` (`genero_id`);

--
-- Indices de la tabla `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indices de la tabla `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indices de la tabla `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indices de la tabla `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indices de la tabla `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `home_actor`
--
ALTER TABLE `home_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `home_genero`
--
ALTER TABLE `home_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `home_pelicula`
--
ALTER TABLE `home_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `home_pelicula_actor`
--
ALTER TABLE `home_pelicula_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `home_pelicula_genero`
--
ALTER TABLE `home_pelicula_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `home_perfil`
--
ALTER TABLE `home_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `home_perfil_genero`
--
ALTER TABLE `home_perfil_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `home_pelicula_actor`
--
ALTER TABLE `home_pelicula_actor`
  ADD CONSTRAINT `home_pelicula_actor_actor_id_3693ed1d_fk_home_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `home_actor` (`id`),
  ADD CONSTRAINT `home_pelicula_actor_pelicula_id_b67bd1b3_fk_home_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `home_pelicula` (`id`);

--
-- Filtros para la tabla `home_pelicula_genero`
--
ALTER TABLE `home_pelicula_genero`
  ADD CONSTRAINT `home_pelicula_genero_genero_id_75b34dfc_fk_home_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `home_genero` (`id`),
  ADD CONSTRAINT `home_pelicula_genero_pelicula_id_594b23f0_fk_home_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `home_pelicula` (`id`);

--
-- Filtros para la tabla `home_perfil`
--
ALTER TABLE `home_perfil`
  ADD CONSTRAINT `home_perfil_user_id_046b9c19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `home_perfil_genero`
--
ALTER TABLE `home_perfil_genero`
  ADD CONSTRAINT `home_perfil_genero_genero_id_5cfe3add_fk_home_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `home_genero` (`id`),
  ADD CONSTRAINT `home_perfil_genero_perfil_id_96a48db1_fk_home_perfil_id` FOREIGN KEY (`perfil_id`) REFERENCES `home_perfil` (`id`);

--
-- Filtros para la tabla `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
