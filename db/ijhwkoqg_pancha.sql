-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2020 at 10:29 AM
-- Server version: 10.3.23-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ijhwkoqg_pancha`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `titulo`, `descripcion`, `foto`) VALUES
(2, 'QUIÉNES SOMOS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'about_2200331174058.png'),
(3, 'MISIÓN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'about_3200331174149.png'),
(4, 'VISIÓN', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'about_4200331174200.png');

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rol` int(11) NOT NULL DEFAULT 1,
  `access_token` varchar(255) NOT NULL,
  `moto_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_code` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `password_hash`, `password_reset_token`, `email`, `rol`, `access_token`, `moto_id`, `cliente_id`, `player_id`, `auth_key`, `status`, `created_at`, `updated_at`, `verification_code`) VALUES
(522, '$2y$13$GdazTv97Lfz6hyQ3LX4nOO7yaZ5zKws86rO1N6W9b4kRadozP3dDa', NULL, 'chuquimia.d@gmail.com', 1, 'vG3rpV6ZTBOFiT0sB5iiyiTbYUlL2ObC', NULL, 53, 0, NULL, 10, 1595813315, 1595813315, NULL),
(523, '$2y$13$C4gvK5EhLf7mG9T3RrueW.yS17Cp29hd6f/EgXsL0oAAYznnkjg76', NULL, 'gabriel@gmail.com', 1, 'x_BDSID2O65hYKsOwUkJ7Pl9wT8x357a', NULL, 55, 0, NULL, 10, 1595815779, 1595815779, NULL),
(524, '$2y$13$57Bk.x3ACwpszC17h1lpz.l/M2SjfoNCnfxhGzRliKXgZhUKa/0Bq', NULL, 'daniel@gmail.com', 2, '6Q2dhWLpJtLymozwDzLsnWiSt0Io2zyV', 18, NULL, 0, NULL, 10, 1595816080, 1595816080, NULL),
(525, '$2y$13$SPqEpK3hS5YzSP.7Lg2cqupR9vh9UqPKGpe89K37EUzhKHY7RhLLa', NULL, 'iber.fernandez1992@gmail.com', 2, 'a9DXAJhRUNs7cLJ4zVlfNdbkew7_7DH_', 19, NULL, 0, NULL, 10, 1596044644, 1596044644, NULL),
(526, '$2y$13$Bczd/IM/vp9hxpWNQnJsfeJx4d9O5Q7oZJNGel5VmzwEtrgUohX/G', NULL, 'carlos@ferca.com.bo', 1, 'zZkcRtNJIrlw25_tB0z5BKVBHKWc9v82', NULL, 60, 0, NULL, 10, 1596048717, 1596048717, NULL),
(527, '$2y$13$kqHNojAnJGIIgGElrv3l3.V/XkAO/GZ0FXy/ktptQAH5Bb1MeBpY6', NULL, 'iber.fernandez@rnova.net', 2, 'vU2qU8XCOYVWfpjjzWqIOw6xDbjpIq86', 22, NULL, 0, NULL, 10, 1596053192, 1596053192, NULL),
(528, '$2y$13$UDKojOhRJhFSgVh7/bzu1e/1qMcBIzrPKWV3wtCH4NNY0pfOTwbsi', NULL, 'boris.pdfl@rnova.net', 1, 'nvoJAYip6aH8irnnGUaS4b142jOcIo_R', NULL, 61, 0, NULL, 10, 1596127476, 1596127476, NULL),
(529, '$2y$13$aWWjwIq70RbxpZlCb1owN.7HSi1eJNIaNAZlCv1nQUJbTiE50K4.q', NULL, 'faviana@hotmail.com', 1, 'Y2NCpFi9d8QQOzhvjiK8HklDQFY6WqbJ', NULL, 62, 0, NULL, 10, 1596151701, 1596151701, NULL),
(530, '$2y$13$GhO3wRjQpnq.LQx3h4Op4O0i7JUKC4KfRgYET7fZIioUNRZ6J749q', NULL, 'mauricio@ferca.com.bo', 2, 'Cnjnm31UQbkstj9WIXSdIXWuOdIpi_6J', 23, NULL, 0, NULL, 10, 1596378260, 1596378260, NULL),
(531, '$2y$13$rvZa7MsACH8dGPr.MovqmOv25AV2rl7vViM6A02IZE3gZaQmpgS7u', NULL, 'fzvendedor@gmail.com', 2, 'SD6VYbmkKOCMDiWpTHLGqB6voaZutR_p', 25, NULL, 0, NULL, 10, 1596380550, 1596380550, NULL),
(532, '$2y$13$2YpVjQyDGOm/id5OzThGq.2qAnt3Qab.utezI9izhdSrBt3nwFhwu', NULL, 'vargasquirogadennisdavid@gmail.com', 2, 'l7Z6EA8YBbPbnZK-l3roY1OJUUOiQzHx', 26, NULL, 0, NULL, 10, 1596384947, 1596384947, NULL),
(533, '$2y$13$CQteWGo1sZqozA0JfxIpieJ402Ikq4uIKEBArRokmWoTcXvXzlDRO', NULL, 'ibersito123@gmail.com', 1, 'AAhQ6Er8saAjaCYZd_eGabE9JaUnBbbK', NULL, 63, 0, NULL, 10, 1596387371, 1596387371, NULL),
(534, '$2y$13$sktTGr7Idh61v4E78fwrNObTO9758ORvCnFZyTKOq7VK3oXfeu4Ca', NULL, 'fanny@ferca.com.bo', 2, 'yti2ZjGNl3gUTbRaliLAFgGrsGpu3N_-', 27, NULL, 0, NULL, 10, 1596388236, 1596388236, NULL),
(535, '$2y$13$qW65RVjxOpKVe/fBgl0oK.DsaL.NwKPRTJZE06xEZZvezE22O..bO', NULL, 'borisponce@gmail.com', 2, 'hOGypsuJ5ygPj8q9C_zU4rV7owRLkKzk', 28, NULL, 0, NULL, 10, 1596389370, 1596389370, NULL),
(536, '$2y$13$2yDtXqpJa4LnhEIV.2HFD.lTe5ZJSuXGxqrcxmS.XRKXbIrGq1wRe', NULL, 'bechameleventos@hotmail.com', 2, '91Hhue5o2rcNmM8Qn8seQ2GB2wkVY2nC', 29, NULL, NULL, NULL, 10, 1596402733, 1596402733, NULL),
(537, '$2y$13$SlHsP7UD8JoCqJgYl4Htu.Rsirp552T7f2cSw08RePheNgg2ZzGLu', NULL, 'urbanraa@gmail.com', 2, '1eP8Aqa0hEZJKle11RyV_AIlksCvlxUG', 30, NULL, NULL, NULL, 10, 1596402839, 1596402839, NULL),
(538, '$2y$13$tB5mQE5xN2tIG0B5Y9VlH.jgPrA9MCjWq.rIgOH6zOH.xwLa/.a36', NULL, 'turritobandolero55@gmail.com', 2, 'v6kxewHVR7opg8Mnq4xgDSebZjWrgQN3', 31, NULL, NULL, NULL, 10, 1596402930, 1596402930, NULL),
(539, '$2y$13$tkI.wLciIuTE5YfLo58GY.6XxXXC8zVj8uzxq0vE/AbUll8FDFqkS', NULL, 'jimmycamachofernandez10@gmail.com', 2, 's1Ig5dosaBIPMPbiecTGLqVkn-bXYmM_', 32, NULL, NULL, NULL, 10, 1596403000, 1596403000, NULL),
(540, '$2y$13$jZn44xMNFg1AxZXCgv7s4.H.srJnom1STPGhQ9OIDcPzeUgIM0rZ2', NULL, 'ferf3036@gmail.com', 2, 'gLaP-Le4oxrCgZ3pu94_zNoL5LhqJk9b', 33, NULL, NULL, NULL, 10, 1596403116, 1596403116, NULL),
(541, '$2y$13$EmW2jb9dYQOARm1wWfu2a.iewnUM2iCagZxlJd53ZgTRNDMuvdBDG', NULL, 'laer2014@gmail.com', 2, 'OsMj3LoOlhSBEhDtHqxkq9BcQpeFVXmQ', 34, NULL, NULL, NULL, 10, 1596403283, 1596403283, NULL),
(542, '$2y$13$kDxfrm/QKCVHS1xnCnjgJua3iOrCsehQV3y69KDz6oV7ptRYXFJay', NULL, 'paolazambrana481@gmail.com', 2, 'M44tE6A55M_l879LI949_LW4SXCscJI2', 36, NULL, NULL, NULL, 10, 1596462501, 1596462501, NULL),
(543, '$2y$13$RcqD9axFUG98pBPqoFzyBu1LTN/ay4VwMJrcVWOfW6ed7ROTa28l2', NULL, 'perezgareygabriel@gmail.com', 2, 'dwqb3ZrKlL_756WOSHF0Z6cLiecOfi6m', 37, NULL, NULL, NULL, 10, 1596462567, 1596462567, NULL),
(544, '$2y$13$Ir2E4z2o8qBaxZPudh0J8OEzCbU4KBIH.ReZRiiRS9GjV5nh8XrK2', NULL, 'tu_pibe_000@hotmail.com', 2, 'nX3OmQYL6tBbRoS1cMQfNUYo1wMcuwT1', 38, NULL, NULL, NULL, 10, 1596462640, 1596462640, NULL),
(545, '$2y$13$G8i/x5UMs9nmH9O76wFmNOcczU2fKULH3WXfZ.7GBoQS3Nll695ka', NULL, 'devilmen606@hotmail.com', 2, 'OFe1shZfz_AZt8RpDjAjWa9nZr9rbR0h', 39, NULL, NULL, NULL, 10, 1596462722, 1596462722, NULL),
(546, '$2y$13$RM6vI9aNEsYojEh2RiXRaOBspLvgZCtQTQJYlSGBfubwn0UWjZyC.', NULL, 'chavezfelix321@gmail.com', 2, '4EQOtSDL19ddrGekP37rLG7DE79XvC2u', 40, NULL, NULL, NULL, 10, 1596462767, 1596462767, NULL),
(547, '$2y$13$v/6eYHxYzhKN0n4qGx85QuAzXKiXD.k4uH.RdQWVv17Nt7UPKS9xy', NULL, 'arqcordova51@gmail.com', 2, 'ZsDL2FAR7z4alXAkR4wHsMAR3yFi2X39', 41, NULL, NULL, NULL, 10, 1596462833, 1596462833, NULL),
(548, '$2y$13$GqLVb2KDu/K83fgprBmU2uL3.XXlGuudfgBud2i0/Hxdl3ZNcF3YG', NULL, 'eddyandy512@gmail.com', 2, 'y6LkXOuTQ7gw4x8RbPGp1NTCaCPBUQin', 42, NULL, NULL, NULL, 10, 1596462889, 1596462889, NULL),
(549, '$2y$13$VuX/COqJK5f8LEBqbh1VYuuQoXsAYYdim64lfswvXNZPsqAAf7Uti', NULL, 'onofrenoel299@gmail.com', 2, '41fYumlnJPDDZ_FnS5s_vBlpcTz1xvrv', 43, NULL, NULL, NULL, 10, 1596462996, 1596462996, NULL),
(550, '$2y$13$XBN0Moa63LuM3daKS4oB1uXjxon0cRBBw3dYWbUIqI2wN7WEovKtK', NULL, 'floresarauzjhonneil48@Gmail.com', 2, 'vP_kWEL-_mXBcIcvy1hek74QmjLc5PA1', 44, NULL, NULL, NULL, 10, 1596463095, 1596463095, NULL),
(551, '$2y$13$BHvajbdLoOBKq1z8kwHDR.WTFQthTRHtEItvc.yvTY.zmoZlOMlBK', NULL, 'jorgehuasoguzman@gmail.com', 2, 'ydIMeV1aRbY9QT8XpNSooWpwv869B1PQ', 45, NULL, NULL, NULL, 10, 1596463180, 1596463180, NULL),
(552, '$2y$13$Fbj4AzIr2JlIQ9MGd0GYLOO8g40b.y0uImQwcYXhEv8BnqpLF9nD6', NULL, 'juniorbellidoferrufino@gmail.com', 2, 'Q6cu33PFPndCIsWNqC2HKtgiaB_YxuPd', 46, NULL, NULL, NULL, 10, 1596463275, 1596463275, NULL),
(553, '$2y$13$kkxl90BcdzQ.ftAgC5gZrOISbjaSxg49J3siUnZ2FSM.8lwhmKMEu', NULL, '2040stiven2040gmail.com', 2, 'rTZbgIslI51Rkx_g17fi3DWLlHkFdSZk', 47, NULL, NULL, NULL, 10, 1596463328, 1596463328, NULL),
(554, '$2y$13$Ri8J3OvjDrmTRFZ6rKWwn.OYXlVMG3wsZEFMkDnJFAsyrQsJXJere', NULL, 'primitooo93@gmail.com', 2, 'dx1EgbPn6EMr1H8T5IiodIOPmny2wJNx', 48, NULL, NULL, NULL, 10, 1596463364, 1596463364, NULL),
(555, '$2y$13$EKKbLS51uNaWTbQmeFKN1O2pSVW5Pm49hFv8ZCFn/Vc1cQSr3jUQ2', NULL, 'rodrimix_nassis@hotmail.com', 2, 'x9MmyAnBaoXOQsfo4whfA13kNEPGL4gh', 49, NULL, NULL, NULL, 10, 1596463415, 1596463415, NULL),
(556, '$2y$13$1IQRtVm/pfWTVZpZ/ZbfK.uqAhB9UGyNfNkmZsS2ByE37CP9a8Jum', NULL, 'israelcortez123321@gmail.com', 2, 'kg9jFV16b3pXzlcX78DCqtxCeI9VN12C', 50, NULL, NULL, NULL, 10, 1596463458, 1596463458, NULL),
(557, '$2y$13$iW9Lsk8Uu2Hhk/TeM7Pf0.je6HfYHtDuWNRuYYPOQdq9FTgMs2Ztm', NULL, 'willvf98@gmail.com', 2, 'HqwF-UuSI-hUv1Blur6tg681Oy9CZGPI', 51, NULL, NULL, NULL, 10, 1596463490, 1596463490, NULL),
(558, '$2y$13$607ZHdKUEFDlg6WAu.7ro.h9eFkNK4Q.6KzWqIb395MpsFKdRb/Iy', NULL, 'oscar_tu_love@hotmail.com', 2, 'fPHF8hEY_rgLIRnOLri2xhT43C6Qv5Yb', 52, NULL, NULL, NULL, 10, 1596463515, 1596463515, NULL),
(559, '$2y$13$Mc4/PPfJcdpkEq172tT1oePkoUGa82RwfBGamFs5Z31o/uBuK4DcO', NULL, 'laox_rex@hotmail.com', 2, 'OVduyEhM2OTwvn56qWjbYizcIy1xqi9e', 53, NULL, NULL, NULL, 10, 1596463553, 1596463553, NULL),
(560, '$2y$13$DkMj/tgFaef3ezkYioUITOxRxxmM6TdVpBRdUHhlz9SjeaBxVKMCG', NULL, 'srgveizaga@gmail.com', 2, 'tpnJZHMmytcJoGwHcMOd-i5eo9q-sAWy', 54, NULL, NULL, NULL, 10, 1596467965, 1596467965, NULL),
(561, '$2y$13$6RXPLGHyxuaa6CBlgbevK.tJjLUnU5iJZakFEV.xSI0BhwPTrTUnG', NULL, 'castedo@gmail.com', 2, 'LHr7mkWIHaY1NHhctAOmTQj--VF9nbuZ', 55, NULL, NULL, NULL, 10, 1596468022, 1596468022, NULL),
(562, '$2y$13$au6Rp2Rs/aoBiXxhO.jwYep6Khqt2t94MQNKKHgvT9dhDE.Zdba82', NULL, 'mario@ferca.com.bo', 2, 'uYedC_cfPG3RMOCXYwttctk-i3D8Hal6', 56, NULL, NULL, NULL, 10, 1596470362, 1596470362, NULL),
(563, '$2y$13$1wrFnqba4JRwIPaPFujfv.RlpMc4pVUBoycQMNwnSKVpTceC5J8n2', NULL, 'efrain@danubio.com', 2, '_Njq-Uqkjakv0fgmeso2SUaEIgUea3cj', 57, NULL, NULL, NULL, 10, 1596470530, 1596470530, NULL),
(564, '$2y$13$b3P0XCHeZvXLELXB1.bHKeZychgLoe.Jz.6gklCyjpTdsazEFPuVy', NULL, 'josue@danubio.com', 2, 'oJb7IPlzzxRWmGd85GGUXdBXlKchOHBZ', 58, NULL, NULL, NULL, 10, 1596472276, 1596472276, NULL),
(565, '$2y$13$MRZpI7IELcW5mZ.qt.wiG.3BCAPqlGtufZwHLLXZ8wza2E7usOOpW', NULL, 'danielfelipe@danubio.com', 2, 'qcGW7Ut1TkscYca89VBuO1sIEp492bE2', 59, NULL, NULL, NULL, 10, 1596472944, 1596472944, NULL),
(566, '$2y$13$RTSRcReqa69NkLZgnuWu8OfyC8NxUi8jjcX.Wpc8Ymq6O.33ywjvu', NULL, 'carlosrojaspanchita@gmail.com', 2, '0rMH_4vxqLhRtRx7GRTucxQyM_muEmUu', 60, NULL, NULL, NULL, 10, 1596483886, 1596483886, NULL),
(567, '$2y$13$E05DOaNUqhb56CUAb02ayeEpwfmBWYOhkGqJ3j7V8rt/qbRXpmzai', NULL, 'cristianfloresdelgado@gmail.com', 2, 'Niy9uqDSiT11Yevvvr4e8CQK63m5fAKE', 61, NULL, NULL, NULL, 10, 1596551593, 1596551593, NULL),
(568, '$2y$13$Rv2/EdYshpEI1Ayf6CT9Veu9thlfWN4NlDZA1VcM.G84QwoDdFPnG', NULL, 'coje1000@gmail.com', 2, 'PbBJ2jFzxp6TOAWdfBE_M6X--Ne3In5W', 62, NULL, NULL, NULL, 10, 1596551632, 1596551632, NULL),
(569, '$2y$13$PzArBlbU4Y.enzHd3bSMf.wkg35Q2AhSBglDtWQ4gN9xD5tDmK5R2', NULL, 'manolete_mar3@hotmail.com', 2, 'gDX8sFbMkLD6PFX6o9DIzEDyiOt-VABm', 63, NULL, NULL, NULL, 10, 1596551671, 1596551671, NULL),
(570, '$2y$13$I1PctbXL58Br/OMdxS5Zoe2upMn8JXo5coXKXDuWFFQIt8zSJ20nO', NULL, 'skylar6413@gmail.com', 2, 'NJLXhD6-JSq-MFpuPWsd2QDB0jibzis6', 64, NULL, NULL, NULL, 10, 1596551716, 1596551716, NULL),
(571, '$2y$13$qu6Hf30XJR2zrDkSSGPAsOLYqOQtKlVnkXq3ILe5wyIFIffEh.x2W', NULL, 'ricardolm160@gmail.com', 2, 'geduWw68ODNhZxGZF2hwjvc_X8xW7WPw', 65, NULL, NULL, NULL, 10, 1596551779, 1596551779, NULL),
(572, '$2y$13$9CX858y6HX6XcbJVRerdZ./HI2ZlHb9Iwb/5RSdjmqHteb1.F7bUW', NULL, 'javi_metal_Javi@hotmail.com', 2, 'jmiFqySGYBZZE9ThV00wvUP4N1aL05je', 66, NULL, NULL, NULL, 10, 1596551828, 1596551828, NULL),
(573, '$2y$13$OI1A4lDTmcy4X28xNqEwLOIjrb35cKz5b3WouKVD0rq6M4zD7pibS', NULL, 'wilson@danubio.com', 2, 'AZ0RcH2wZzFX_zy8bXqKPykBnBRSaGdJ', 67, NULL, NULL, NULL, 10, 1596551880, 1596551880, NULL),
(574, '$2y$13$CCogU6OMEzTbMU9YqVNL7Oxnv0SeVPQyZq5cb2jktFcaSArziGiru', NULL, 'erland1mirko@gmail.com', 2, 'BRNdAwIieDCgO1SfrM7wEF1rxBHye8yr', 68, NULL, NULL, NULL, 10, 1596551918, 1596551918, NULL),
(575, '$2y$13$mVybzMnYZlaTvDRKtAyE5.Bhk.8hpeVEpIaO/uAi78bcAvghivE3m', NULL, 'moisesmiranda1313@gmail.com', 2, 'Wfs7PC6wBonsxBIWQXIftgkUmwy89LcO', 69, NULL, NULL, NULL, 10, 1596551997, 1596551997, NULL),
(576, '$2y$13$JCveEaUfiQdqTd9AFtnIv.38e7STf5tsFvylpkompR2XEe7iDvqLi', NULL, 'paredesoroscoj@gmail.com', 2, 'HNKmlZgxTiyWffj1dQschwRN0RHE46ee', 70, NULL, NULL, NULL, 10, 1596552042, 1596552042, NULL),
(577, '$2y$13$TzsJgqWm1UU6Nbe6t1tIL.ROOWCFAFp2r/sGquU.8j2.qkxfbWNLq', NULL, 'Ir615888@gmail.com', 2, 'GrcqiqUnqqtVN0I7-Hr0BGWlDURBNPz1', 71, NULL, NULL, NULL, 10, 1596552096, 1596552096, NULL),
(578, '$2y$13$3SerZE6hFDhJplc5GsTzVuTf9ZXQ6GS4bFcb/tNT5.5ZIQ0EobdCe', NULL, 'yeferson@danubio.com', 2, 'f-I2HxcVD7y3wUnbp2QBgKICdhQ4jOSh', 72, NULL, NULL, NULL, 10, 1596552155, 1596552155, NULL),
(579, '$2y$13$Qyz42ZVymnjgV20835wKruy1/rkuduMG7hCdJfjC1JM8c.kBav51G', NULL, 'silviaerodriguezescobar@gmail.com', 2, '7wk5MStbpxsCvFAELWG7ZXpuredvYdY5', 73, NULL, NULL, NULL, 10, 1596552359, 1596552359, NULL),
(580, '$2y$13$pmVkj99UtxVpoZujnakSYuV/wNV3YDfe2q.vdlTQfEuZYyvFNX3XG', NULL, 'j.ramos.198368@gmail.com', 2, 'yUTGb2fsxIeFujPoHNiBjn45YtGGCYnK', 74, NULL, NULL, NULL, 10, 1596557983, 1596557983, NULL),
(581, '$2y$13$dTxDrlkHFruyZN5OUdzGV.jGfXaJM3fg76h5IQhfeGnoZGIjoDfpq', NULL, '73782221DANUBIO', 2, 'pyU2YQtFsbK5VWLJP5oshPT8Ug2qedC6', 75, NULL, NULL, NULL, 10, 1596566976, 1596566976, NULL),
(582, '$2y$13$rAkFXRVOCKAno4IQNv93b.c4nveETDOYBnQCr4QIm8BQK7SP4KZlu', NULL, 'bcamacho.bcm@gmail.com', 2, 'NHgV6fM3K-5K9CZE3-JoUguuJTSROcU9', 76, NULL, NULL, NULL, 10, 1596568184, 1596568184, NULL),
(583, '$2y$13$3V.m/GGY01p8lrwphTZGJ.2fEWim40Rz2MvVX7DWkqE6ledpvI5T6', NULL, 'franklin@danubio.com', 2, 'Aje2Cb3WZlR7lYwu4QSPBVBTszLGX1LP', 77, NULL, NULL, NULL, 10, 1596569444, 1596569444, NULL),
(584, '$2y$13$BFDeV/nEWvLHjyfjDy34QeUEADVuQZOISHJCVL7d0AfmcACAYrb5O', NULL, 'bryanpaola38@gmail.com', 2, 'n_Ci7g1fTIibAC_CMYW5J_0BnS5Vqxgv', 78, NULL, NULL, NULL, 10, 1596571087, 1596571087, NULL),
(585, '$2y$13$FwPUNS/iCbgeu2c3aeblQu/iqnTqSHeCmq.2EfrnZERRH/Cw3r0Ny', NULL, 'Isaiflowers092@gmail.com', 2, '4QTcV8htLxa8-Rk0z3zUlLIXj28Hyfuz', 79, NULL, NULL, NULL, 10, 1596571732, 1596571732, NULL),
(586, '$2y$13$EwhndWXwYMrCqGin1nTMeeuWo..Sp95wuB6aiLR313lBLnZaW01ZW', NULL, 'Romariog64@gmail.com', 2, 'RxDryRHxrMRIrFVhUndwe3qahKeYIaia', 81, NULL, NULL, NULL, 10, 1596571916, 1596571916, NULL),
(587, '$2y$13$hGi/tIpFW62ESFCxBRmfDeME/yN/35I4hmst9eveOoRqImVuIYTyG', NULL, 'mariscalmarvin5@gmail.com', 2, 'UHKa0IGzdlx37j561S-nWi5SSk1RhZKv', 82, NULL, NULL, NULL, 10, 1596572112, 1596572112, NULL),
(588, '$2y$13$2JI.GlUXZoCKobpwaz/P1u/4yZ2ULk10O2ys7ZS/YHglO1xsycFVq', NULL, 'Marcocayo2116@gmail.com', 2, '9LDMLbgGyqeoqJeNmLBEDCpALaDnfikT', 83, NULL, NULL, NULL, 10, 1596572325, 1596572325, NULL),
(589, '$2y$13$NglFFVE61eBANUbRp2ruZ.Bkff.Bvh7yhND.X5iFJfCcuvgmbrkva', NULL, 'jobebrandon239@gmail.com', 2, 'eK8fdDhUzrDtNZDyOc5G6yfJdnAGkcjg', 84, NULL, NULL, NULL, 10, 1596572390, 1596572390, NULL),
(590, '$2y$13$Zm.fwSzzKSsr6W49y96GJOHHaubrnU55fQCih5ATBUdOtJ0uKeSoy', NULL, 'Catariroberth254@gmail.com', 2, 'gW1cl1VehHDadTq1EPBWEolKlGPwDdJJ', 85, NULL, NULL, NULL, 10, 1596572433, 1596572433, NULL),
(591, '$2y$13$pdvSSVXlgDpAx.bSEBypUev5OxuvQ6pLH.QXWWflYV3.CJGe44P76', NULL, 'aguilarstiven31@gmail.com', 2, 'TeqIex6Ki7Y92chbcKy-KT2Wseuwk4wL', 86, NULL, NULL, NULL, 10, 1596572489, 1596572489, NULL),
(592, '$2y$13$2VE0LygznCIXq7mZ.iWIJ.LAHTt2zlb08gzIdSGwkPEf2tIHZTqwG', NULL, 'mrocabado10@gmail.com', 2, 'GCxL697jpXsM5fnsleV7gZxNIZAmwUMs', 87, NULL, NULL, NULL, 10, 1596572551, 1596572551, NULL),
(593, '$2y$13$L0V/jKpfivFikNmGultX3eFTCye6vDzw2HWZB4y2j57wdBXULQv26', NULL, 'fergym24@gmail.com', 2, 'CnrL4UQ8kEQPHw_J4hNW8_dPgSfgrIjX', 88, NULL, NULL, NULL, 10, 1596572916, 1596572916, NULL),
(594, '$2y$13$EvxQp4if7lVZrt6pUMu6n.ceKSk2mX6NJfX1hzV9DJNS0zZW2BYDq', NULL, 'Andruxsg6@gmail.com', 2, '1_wN7Diz3y7YOBfPjPlycyW4j3Qxhkqp', 89, NULL, NULL, NULL, 10, 1596573072, 1596573072, NULL),
(595, '$2y$13$9c6fIipHjFJSlQiDI1CxGORBMdRDrX8Jy81TVgXucXv76USVphaJe', NULL, 'Jhonyjaf57@gmail.com', 2, 'Dx97VGXpgod1Om7mZ-Je1OB-yRA4soJv', 90, NULL, NULL, NULL, 10, 1596573124, 1596573124, NULL),
(596, '$2y$13$VNAPZpOX5tSUXVD1ZFc9c.wdN.Doj/SLutwliVdKqEYcxxTnvKjzm', NULL, '74566131DANUBIO', 2, '4r-JFhEldxIDIzbOlE4G_UMLcHcFQDqR', 91, NULL, NULL, NULL, 10, 1596580558, 1596580558, NULL),
(597, '$2y$13$itDtRip/8LFCfMbxbwiLvO0BUuZ0XVUbLJwmEuZI33ykqp9ruXY5G', NULL, '65308155DANUBIO', 2, 'CwulUunu9MUrvFR8wU3vDy3HvWEttXAC', 92, NULL, NULL, NULL, 10, 1596580957, 1596580957, NULL),
(598, '$2y$13$hxD/0WmoQzLm1Wk62ps03.e6agNEGqI8ljyLtUtxoLYzsge/T0LO2', NULL, 'laca@hotmail.com', 1, 'L_PtmBn7mTX-IwYahaaJ19my6AO8hwuQ', NULL, 285, NULL, NULL, 10, 1596636303, 1596636303, NULL),
(599, '$2y$13$UwQeBqevmwePwEFjJJ6wY.oTGVgtni.Br0AOE0KLy0ZwqiItT8bOe', NULL, 'silvitaerodriguezescobar@gmail.com', 2, 'hSDpV4nb-fAN2C0VMEDZCfguPybnCKHf', 96, NULL, NULL, NULL, 10, 1596650891, 1596650891, NULL),
(600, '$2y$13$9hXfZ0rLKalMSjk0e8TDq.xJEDPSWcNE7TVScARqgk3HdslT7.P6q', NULL, 'marcelogutierrez@danubio.com', 2, 'XuGbpuUk9YlelRCgj0aU0V7TlZqVtIGT', 97, NULL, NULL, NULL, 10, 1596651029, 1596651029, NULL),
(601, '$2y$13$Klk4g0g1aifmrnreri03L.jk9DHt1J/dV0l2iu/gDkuKCiGrPXTUK', NULL, 'edwinpatiño@danubio.com', 2, '6jLwRUktAbchrdF6E5bChamnosi-wWWL', 98, NULL, NULL, NULL, 10, 1596654026, 1596654026, NULL),
(602, '$2y$13$oZV2OFlGKmILNUV84jCgy.Tj3/LbYdRHj4x2kZ.RFc4U.Ivj49.5C', NULL, 'borisponcedeleo@gmail.com', 1, 'ZVjaYDQs52ybXU7Rmqj9SrJ0gSJH2yGa', NULL, 461, NULL, NULL, 10, 1596678332, 1596678332, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asignacion_moto`
--

CREATE TABLE `asignacion_moto` (
  `id` int(11) NOT NULL,
  `moto_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `fecha_despacho` date DEFAULT NULL,
  `hora_despacho` time DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `hora_entrega` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asignacion_moto`
--

INSERT INTO `asignacion_moto` (`id`, `moto_id`, `pedido_id`, `fecha`, `hora`, `fecha_despacho`, `hora_despacho`, `fecha_entrega`, `hora_entrega`) VALUES
(48, 18, 85, '2020-07-26', '23:20:56', '2020-07-26', '23:20:00', NULL, NULL),
(49, 17, 84, '2020-07-28', '18:08:09', '2020-07-28', '18:07:00', NULL, NULL),
(50, 17, 88, '2020-07-29', '12:25:28', '2020-07-29', '12:25:00', NULL, NULL),
(51, 17, 86, '2020-07-29', '12:27:41', '2020-07-29', '12:27:00', NULL, NULL),
(52, 17, 95, '2020-07-29', '12:27:58', '2020-07-29', '12:27:00', NULL, NULL),
(53, 17, 89, '2020-07-29', '12:28:28', '2020-07-29', '12:28:00', NULL, NULL),
(54, 17, 90, '2020-07-29', '12:28:56', '2020-07-29', '12:28:00', NULL, NULL),
(55, 17, 93, '2020-07-29', '12:31:04', '2020-07-29', '12:29:00', NULL, NULL),
(56, 17, 96, '2020-07-29', '12:31:38', '2020-07-29', '12:31:00', NULL, NULL),
(57, 17, 97, '2020-07-29', '12:32:27', '2020-07-29', '12:32:00', NULL, NULL),
(58, 17, 98, '2020-07-29', '13:09:34', '2020-07-29', '13:09:00', NULL, NULL),
(59, 18, 99, '2020-07-29', '14:24:21', '2020-07-29', '14:23:00', NULL, NULL),
(60, 22, 103, '2020-07-30', '12:40:57', '2020-07-30', '12:40:00', '2020-08-02', '01:08:00'),
(61, 22, 106, '2020-07-30', '21:06:42', '2020-07-30', '21:06:00', '2020-08-02', '01:08:00'),
(62, 23, 110, '2020-08-02', '10:33:33', '2020-08-02', '10:33:00', '2020-08-02', '10:35:00'),
(63, 25, 111, '2020-08-02', '11:04:14', '2020-08-02', '11:04:00', '2020-08-02', '11:42:00'),
(64, 25, 112, '2020-08-02', '11:07:11', '2020-08-02', '11:07:00', '2020-08-02', '11:42:00'),
(65, 23, 113, '2020-08-02', '11:14:39', '2020-08-02', '11:14:00', '2020-08-02', '21:15:00'),
(66, 25, 114, '2020-08-02', '11:38:51', '2020-08-02', '11:38:00', '2020-08-02', '11:42:00'),
(67, 26, 115, '2020-08-02', '12:45:02', '2020-08-02', '12:44:00', '2020-08-02', '12:47:00'),
(68, 22, 119, '2020-08-02', '13:12:59', '2020-08-02', '15:00:00', NULL, NULL),
(69, 27, 120, '2020-08-02', '13:13:12', '2020-08-02', '13:13:00', '2020-08-02', '13:15:00'),
(70, 28, 121, '2020-08-02', '13:42:34', '2020-08-02', '13:50:00', '2020-08-02', '13:45:00'),
(71, 22, 122, '2020-08-02', '13:46:55', '2020-08-02', '13:46:00', NULL, NULL),
(72, 22, 123, '2020-08-02', '13:49:59', '2020-08-02', '13:49:00', NULL, NULL),
(73, 22, 124, '2020-08-02', '16:23:15', '2020-08-02', '16:23:00', NULL, NULL),
(74, 29, 125, '2020-08-02', '17:23:00', '2020-08-02', '17:22:00', '2020-08-02', '17:24:00'),
(75, 30, 126, '2020-08-02', '17:26:10', '2020-08-02', '17:26:00', '2020-08-02', '17:27:00'),
(76, 32, 127, '2020-08-02', '17:28:34', '2020-08-02', '17:28:00', '2020-08-03', '11:23:00'),
(77, 34, 128, '2020-08-02', '17:30:59', '2020-08-02', '17:30:00', '2020-08-02', '17:31:00'),
(78, 29, 129, '2020-08-02', '17:33:40', '2020-08-02', '17:33:00', '2020-08-04', '14:29:00'),
(79, 29, 130, '2020-08-02', '17:33:55', '2020-08-02', '17:33:00', '2020-08-04', '14:30:00'),
(80, 33, 131, '2020-08-02', '17:59:11', '2020-08-02', '17:59:00', '2020-08-02', '18:00:00'),
(81, 22, 132, '2020-08-02', '20:12:00', '2020-08-02', '20:11:00', NULL, NULL),
(82, 27, 136, '2020-08-02', '21:01:13', '2020-08-02', '21:00:00', NULL, NULL),
(83, 27, 137, '2020-08-02', '21:01:57', '2020-08-02', '21:01:00', NULL, NULL),
(84, 27, 138, '2020-08-02', '21:05:20', '2020-08-02', '21:04:00', NULL, NULL),
(85, 27, 138, '2020-08-02', '21:05:27', '2020-08-02', '21:04:00', NULL, NULL),
(86, 27, 138, '2020-08-02', '21:05:28', '2020-08-02', '21:04:00', NULL, NULL),
(87, 27, 140, '2020-08-02', '21:06:14', '2020-08-02', '21:06:00', NULL, NULL),
(88, 27, 139, '2020-08-02', '21:07:07', '2020-08-02', '21:06:00', NULL, NULL),
(89, 18, 141, '2020-08-02', '21:14:33', '2020-08-02', '21:14:00', NULL, NULL),
(90, 23, 144, '2020-08-02', '21:15:19', '2020-08-02', '21:15:00', '2020-08-02', '21:16:00'),
(91, 23, 144, '2020-08-02', '21:15:49', '2020-08-02', '21:15:00', NULL, NULL),
(92, 23, 146, '2020-08-02', '21:16:54', '2020-08-02', '21:16:00', '2020-08-02', '21:17:00'),
(93, 43, 152, '2020-08-03', '10:33:29', '2020-08-03', '10:33:00', '2020-08-03', '10:44:00'),
(94, 49, 157, '2020-08-03', '11:38:10', '2020-08-03', '11:36:00', '2020-08-03', '12:25:00'),
(95, 55, 151, '2020-08-03', '11:45:09', '2020-08-03', '11:44:00', '2020-08-04', '18:24:00'),
(96, 31, 154, '2020-08-03', '11:57:44', '2020-08-03', '11:57:00', '2020-08-03', '12:10:00'),
(97, 57, 153, '2020-08-03', '12:11:59', '2020-08-03', '12:11:00', '2020-08-03', '12:12:00'),
(98, 57, 158, '2020-08-03', '12:13:16', '2020-08-03', '12:13:00', '2020-08-03', '12:13:00'),
(99, 57, 163, '2020-08-03', '12:14:11', '2020-08-03', '12:14:00', '2020-08-03', '12:27:00'),
(100, 33, 167, '2020-08-03', '12:26:27', '2020-08-03', '12:26:00', '2020-08-03', '12:46:00'),
(101, 58, 166, '2020-08-03', '12:33:56', '2020-08-03', '12:33:00', '2020-08-03', '13:23:00'),
(102, 32, 169, '2020-08-03', '12:35:07', '2020-08-03', '12:35:00', '2020-08-03', '12:50:00'),
(103, 54, 172, '2020-08-03', '12:51:14', '2020-08-03', '12:51:00', '2020-08-03', '13:02:00'),
(104, 51, 174, '2020-08-03', '12:56:15', '2020-08-03', '12:55:00', '2020-08-03', '15:59:00'),
(105, 57, 175, '2020-08-03', '13:06:51', '2020-08-03', '13:06:00', '2020-08-03', '13:28:00'),
(106, 58, 173, '2020-08-03', '13:23:26', '2020-08-03', '13:23:00', '2020-08-03', '13:24:00'),
(107, 60, 162, '2020-08-03', '15:49:35', '2020-08-03', '15:49:00', '2020-08-03', '15:50:00'),
(108, 60, 168, '2020-08-03', '15:51:17', '2020-08-03', '15:51:00', '2020-08-03', '15:52:00'),
(109, 60, 170, '2020-08-03', '15:51:45', '2020-08-03', '15:51:00', '2020-08-03', '15:52:00'),
(110, 60, 176, '2020-08-03', '15:52:04', '2020-08-03', '15:52:00', '2020-08-03', '16:05:00'),
(111, 40, 177, '2020-08-03', '16:39:48', '2020-08-03', '16:39:00', '2020-08-03', '16:56:00'),
(112, 31, 180, '2020-08-03', '17:36:16', '2020-08-03', '17:36:00', '2020-08-03', '17:51:00'),
(113, 33, 182, '2020-08-03', '17:48:04', '2020-08-03', '17:47:00', '2020-08-03', '18:02:00'),
(114, 32, 183, '2020-08-03', '17:50:47', '2020-08-03', '17:50:00', '2020-08-03', '18:03:00'),
(115, 54, 185, '2020-08-03', '18:13:55', '2020-08-03', '18:13:00', '2020-08-03', '18:28:00'),
(116, 55, 187, '2020-08-03', '18:25:56', '2020-08-03', '18:25:00', '2020-08-04', '18:24:00'),
(117, 31, 189, '2020-08-03', '18:48:36', '2020-08-03', '18:48:00', '2020-08-03', '19:01:00'),
(118, 33, 190, '2020-08-03', '19:17:28', '2020-08-03', '19:17:00', '2020-08-03', '19:30:00'),
(119, 32, 191, '2020-08-03', '19:27:17', '2020-08-03', '19:27:00', '2020-08-03', '19:40:00'),
(120, 31, 192, '2020-08-03', '19:32:34', '2020-08-03', '19:32:00', '2020-08-03', '19:46:00'),
(121, 54, 193, '2020-08-03', '20:03:44', '2020-08-03', '20:03:00', '2020-08-04', '12:48:00'),
(122, 55, 194, '2020-08-04', '11:45:04', '2020-08-04', '11:44:00', '2020-08-04', '18:24:00'),
(123, 34, 206, '2020-08-04', '12:06:35', '2020-08-04', '12:06:00', '2020-08-04', '13:04:00'),
(124, 22, 196, '2020-08-04', '12:17:09', '2020-08-04', '12:16:00', NULL, NULL),
(125, 43, 220, '2020-08-04', '12:38:52', '2020-08-04', '12:38:00', '2020-08-04', '13:32:00'),
(126, 54, 215, '2020-08-04', '12:43:21', '2020-08-04', '12:43:00', '2020-08-04', '12:56:00'),
(127, 57, 222, '2020-08-04', '12:45:43', '2020-08-04', '12:45:00', '2020-08-04', '13:06:00'),
(128, 66, 223, '2020-08-04', '12:50:09', '2020-08-04', '12:49:00', '2020-08-04', '13:10:00'),
(129, 22, 209, '2020-08-04', '12:58:56', '2020-08-04', '12:58:00', NULL, NULL),
(130, 34, 211, '2020-08-04', '13:03:38', '2020-08-04', '13:03:00', '2020-08-04', '17:03:00'),
(131, 59, 228, '2020-08-04', '13:08:20', '2020-08-04', '13:08:00', '2020-08-05', '12:59:00'),
(132, 54, 226, '2020-08-04', '13:19:52', '2020-08-04', '13:19:00', '2020-08-04', '13:48:00'),
(133, 55, 233, '2020-08-04', '13:35:28', '2020-08-04', '13:35:00', '2020-08-04', '18:24:00'),
(134, 66, 234, '2020-08-04', '13:39:44', '2020-08-04', '13:39:00', '2020-08-04', '14:04:00'),
(135, 54, 239, '2020-08-04', '13:48:16', '2020-08-04', '13:48:00', '2020-08-04', '14:15:00'),
(136, 29, 231, '2020-08-04', '13:49:04', '2020-08-04', '13:48:00', '2020-08-04', '14:30:00'),
(137, 55, 241, '2020-08-04', '14:00:43', '2020-08-04', '14:00:00', '2020-08-04', '18:24:00'),
(138, 71, 237, '2020-08-04', '14:02:55', '2020-08-04', '14:02:00', '2020-08-04', '14:21:00'),
(139, 29, 240, '2020-08-04', '14:04:16', '2020-08-04', '14:04:00', '2020-08-04', '14:30:00'),
(140, 29, 240, '2020-08-04', '14:04:28', '2020-08-04', '14:04:00', NULL, NULL),
(141, 68, 242, '2020-08-04', '14:10:37', '2020-08-04', '14:10:00', '2020-08-04', '14:40:00'),
(142, 54, 249, '2020-08-04', '14:16:31', '2020-08-04', '14:16:00', '2020-08-04', '15:26:00'),
(143, 66, 252, '2020-08-04', '14:18:10', '2020-08-04', '14:17:00', '2020-08-04', '14:32:00'),
(144, 55, 250, '2020-08-04', '14:18:39', '2020-08-04', '14:18:00', '2020-08-04', '18:24:00'),
(145, 55, 250, '2020-08-04', '14:18:44', '2020-08-04', '14:18:00', NULL, NULL),
(146, 74, 251, '2020-08-04', '14:21:29', '2020-08-04', '14:21:00', '2020-08-04', '15:16:00'),
(147, 47, 257, '2020-08-04', '14:31:53', '2020-08-04', '14:31:00', '2020-08-04', '15:17:00'),
(148, 71, 244, '2020-08-04', '14:33:58', '2020-08-04', '14:33:00', '2020-08-04', '14:42:00'),
(149, 68, 253, '2020-08-04', '14:40:22', '2020-08-04', '14:40:00', '2020-08-04', '14:51:00'),
(150, 62, 254, '2020-08-04', '14:43:36', '2020-08-04', '14:43:00', '2020-08-04', '18:21:00'),
(151, 75, 258, '2020-08-04', '14:50:08', '2020-08-04', '14:49:00', NULL, NULL),
(152, 71, 256, '2020-08-04', '14:51:34', '2020-08-04', '14:51:00', '2020-08-04', '15:05:00'),
(153, 60, 259, '2020-08-04', '14:57:01', '2020-08-04', '14:56:00', '2020-08-04', '15:00:00'),
(154, 68, 261, '2020-08-04', '15:01:01', '2020-08-04', '15:00:00', '2020-08-04', '15:23:00'),
(155, 40, 263, '2020-08-04', '15:05:27', '2020-08-04', '15:05:00', '2020-08-04', '15:22:00'),
(156, 72, 262, '2020-08-04', '15:05:58', '2020-08-04', '15:05:00', '2020-08-04', '15:34:00'),
(157, 66, 260, '2020-08-04', '15:20:34', '2020-08-04', '15:20:00', '2020-08-04', '15:53:00'),
(158, 64, 267, '2020-08-04', '15:25:02', '2020-08-04', '15:24:00', '2020-08-04', '15:53:00'),
(159, 64, 267, '2020-08-04', '15:25:07', '2020-08-04', '15:24:00', NULL, NULL),
(160, 54, 266, '2020-08-04', '15:25:49', '2020-08-04', '15:25:00', '2020-08-04', '16:43:00'),
(161, 72, 268, '2020-08-04', '15:34:22', '2020-08-04', '15:34:00', '2020-08-04', '15:54:00'),
(162, 72, 268, '2020-08-04', '15:34:22', '2020-08-04', '15:34:00', NULL, NULL),
(163, 51, 270, '2020-08-04', '15:41:03', '2020-08-04', '15:40:00', '2020-08-04', '16:17:00'),
(164, 22, 272, '2020-08-04', '16:29:59', '2020-08-04', '16:29:00', NULL, NULL),
(165, 49, 274, '2020-08-04', '16:38:55', '2020-08-04', '16:38:00', '2020-08-04', '16:54:00'),
(166, 55, 273, '2020-08-04', '16:41:12', '2020-08-04', '16:41:00', '2020-08-04', '18:24:00'),
(167, 66, 275, '2020-08-04', '16:42:54', '2020-08-04', '16:42:00', '2020-08-04', '17:08:00'),
(168, 34, 277, '2020-08-04', '17:03:12', '2020-08-04', '17:03:00', '2020-08-04', '17:45:00'),
(169, 54, 280, '2020-08-04', '17:20:47', '2020-08-04', '17:20:00', '2020-08-04', '18:23:00'),
(170, 46, 283, '2020-08-04', '17:24:31', '2020-08-04', '17:24:00', '2020-08-04', '17:34:00'),
(171, 74, 279, '2020-08-04', '17:27:34', '2020-08-04', '17:27:00', '2020-08-04', '17:42:00'),
(172, 22, 282, '2020-08-04', '17:29:09', '2020-08-04', '17:29:00', NULL, NULL),
(173, 55, 285, '2020-08-04', '17:33:32', '2020-08-04', '17:33:00', '2020-08-04', '18:24:00'),
(174, 29, 281, '2020-08-04', '17:38:02', '2020-08-04', '17:37:00', '2020-08-04', '18:09:00'),
(175, 34, 287, '2020-08-04', '17:45:18', '2020-08-04', '17:45:00', '2020-08-04', '18:09:00'),
(176, 22, 292, '2020-08-04', '17:59:59', '2020-08-04', '17:59:00', NULL, NULL),
(177, 61, 288, '2020-08-04', '18:01:26', '2020-08-04', '18:01:00', '2020-08-04', '18:09:00'),
(178, 76, 235, '2020-08-04', '18:07:45', '2020-08-04', '18:02:00', NULL, NULL),
(179, 34, 295, '2020-08-04', '18:14:19', '2020-08-04', '18:14:00', '2020-08-04', '19:16:00'),
(180, 62, 297, '2020-08-04', '18:20:03', '2020-08-04', '18:19:00', '2020-08-04', '19:26:00'),
(181, 74, 286, '2020-08-04', '18:20:51', '2020-08-04', '18:20:00', '2020-08-04', '18:33:00'),
(182, 74, 286, '2020-08-04', '18:20:52', '2020-08-04', '18:20:00', NULL, NULL),
(183, 70, 298, '2020-08-04', '18:31:22', '2020-08-04', '18:31:00', NULL, NULL),
(184, 57, 299, '2020-08-04', '18:33:08', '2020-08-04', '18:32:00', '2020-08-04', '18:46:00'),
(185, 91, 300, '2020-08-04', '18:36:26', '2020-08-04', '18:36:00', NULL, NULL),
(186, 29, 303, '2020-08-04', '18:38:26', '2020-08-04', '18:38:00', '2020-08-04', '18:50:00'),
(187, 72, 296, '2020-08-04', '18:38:28', '2020-08-04', '18:38:00', '2020-08-05', '12:54:00'),
(188, 92, 302, '2020-08-04', '18:42:56', '2020-08-04', '18:42:00', NULL, NULL),
(189, 54, 306, '2020-08-04', '18:54:22', '2020-08-04', '18:54:00', '2020-08-04', '20:20:00'),
(190, 55, 311, '2020-08-04', '18:56:43', '2020-08-04', '18:56:00', NULL, NULL),
(191, 22, 313, '2020-08-04', '19:00:47', '2020-08-04', '19:00:00', NULL, NULL),
(192, 74, 307, '2020-08-04', '19:02:55', '2020-08-04', '19:02:00', '2020-08-04', '20:09:00'),
(193, 61, 310, '2020-08-04', '19:07:21', '2020-08-04', '19:07:00', '2020-08-04', '19:24:00'),
(194, 34, 314, '2020-08-04', '19:15:54', '2020-08-04', '19:15:00', '2020-08-04', '19:33:00'),
(195, 29, 316, '2020-08-04', '19:20:36', '2020-08-04', '19:20:00', '2020-08-04', '19:42:00'),
(196, 71, 318, '2020-08-04', '19:20:42', '2020-08-04', '19:20:00', '2020-08-04', '19:38:00'),
(197, 22, 315, '2020-08-04', '19:20:53', '2020-08-04', '19:20:00', NULL, NULL),
(198, 55, 317, '2020-08-04', '19:26:16', '2020-08-04', '19:26:00', NULL, NULL),
(199, 34, 319, '2020-08-04', '19:31:25', '2020-08-04', '19:31:00', NULL, NULL),
(200, 34, 322, '2020-08-04', '19:32:28', '2020-08-04', '19:32:00', '2020-08-04', '19:43:00'),
(201, 54, 327, '2020-08-04', '19:47:08', '2020-08-04', '19:47:00', '2020-08-04', '20:20:00'),
(202, 74, 320, '2020-08-04', '19:49:53', '2020-08-04', '19:49:00', '2020-08-04', '20:25:00'),
(203, 61, 323, '2020-08-04', '19:54:17', '2020-08-04', '19:54:00', '2020-08-04', '20:04:00'),
(204, 29, 324, '2020-08-04', '19:56:22', '2020-08-04', '19:56:00', '2020-08-04', '20:21:00'),
(205, 64, 335, '2020-08-04', '19:56:49', '2020-08-04', '19:56:00', '2020-08-04', '20:12:00'),
(206, 55, 326, '2020-08-04', '19:58:17', '2020-08-04', '19:58:00', NULL, NULL),
(207, 77, 325, '2020-08-04', '20:00:10', '2020-08-04', '20:00:00', '2020-08-05', '15:03:00'),
(208, 22, 330, '2020-08-04', '20:02:14', '2020-08-04', '20:02:00', NULL, NULL),
(209, 22, 332, '2020-08-04', '20:12:03', '2020-08-04', '20:11:00', NULL, NULL),
(210, 71, 329, '2020-08-04', '20:13:50', '2020-08-04', '20:13:00', '2020-08-04', '20:35:00'),
(211, 71, 329, '2020-08-04', '20:13:50', '2020-08-04', '20:13:00', NULL, NULL),
(212, 61, 343, '2020-08-04', '20:16:31', '2020-08-04', '20:16:00', '2020-08-04', '20:25:00'),
(213, 29, 336, '2020-08-04', '20:22:57', '2020-08-04', '20:22:00', '2020-08-04', '21:04:00'),
(214, 55, 340, '2020-08-04', '20:26:14', '2020-08-04', '20:26:00', NULL, NULL),
(215, 74, 354, '2020-08-04', '20:26:17', '2020-08-04', '20:26:00', '2020-08-05', '09:58:00'),
(216, 70, 351, '2020-08-04', '20:27:04', '2020-08-04', '20:26:00', NULL, NULL),
(217, 62, 347, '2020-08-04', '20:29:58', '2020-08-04', '20:29:00', '2020-08-04', '21:15:00'),
(218, 54, 337, '2020-08-04', '20:35:05', '2020-08-04', '20:35:00', '2020-08-04', '20:55:00'),
(219, 64, 353, '2020-08-04', '20:40:26', '2020-08-04', '20:39:00', '2020-08-04', '21:14:00'),
(220, 61, 360, '2020-08-04', '20:44:35', '2020-08-04', '20:44:00', '2020-08-04', '20:55:00'),
(221, 61, 360, '2020-08-04', '20:44:35', '2020-08-04', '20:44:00', NULL, NULL),
(222, 55, 352, '2020-08-04', '20:50:44', '2020-08-04', '20:50:00', NULL, NULL),
(223, 54, 350, '2020-08-04', '20:51:05', '2020-08-04', '20:50:00', '2020-08-05', '12:47:00'),
(224, 22, 359, '2020-08-04', '20:53:17', '2020-08-04', '20:53:00', NULL, NULL),
(225, 58, 349, '2020-08-04', '20:57:08', '2020-08-04', '20:56:00', '2020-08-04', '21:24:00'),
(226, 58, 349, '2020-08-04', '20:57:10', '2020-08-04', '20:56:00', NULL, NULL),
(227, 77, 365, '2020-08-05', '11:37:23', '2020-08-05', '11:37:00', '2020-08-05', '15:03:00'),
(228, 60, 377, '2020-08-05', '11:47:19', '2020-08-05', '11:47:00', '2020-08-05', '11:48:00'),
(229, 64, 362, '2020-08-05', '11:51:17', '2020-08-05', '11:51:00', '2020-08-05', '11:57:00'),
(230, 54, 369, '2020-08-05', '11:55:59', '2020-08-05', '11:55:00', '2020-08-05', '12:47:00'),
(231, 74, 366, '2020-08-05', '12:00:21', '2020-08-05', '12:00:00', '2020-08-05', '12:23:00'),
(232, 26, 375, '2020-08-05', '12:05:10', '2020-08-05', '12:05:00', '2020-08-05', '12:17:00'),
(233, 65, 374, '2020-08-05', '12:08:32', '2020-08-05', '12:08:00', '2020-08-05', '13:02:00'),
(234, 71, 368, '2020-08-05', '12:09:49', '2020-08-05', '12:09:00', '2020-08-05', '12:26:00'),
(235, 62, 370, '2020-08-05', '12:19:05', '2020-08-05', '12:18:00', '2020-08-05', '12:41:00'),
(236, 62, 370, '2020-08-05', '12:19:18', '2020-08-05', '12:18:00', NULL, NULL),
(237, 22, 379, '2020-08-05', '12:19:22', '2020-08-05', '12:19:00', NULL, NULL),
(238, 78, 383, '2020-08-05', '12:25:20', '2020-08-05', '12:23:00', '2020-08-05', '12:48:00'),
(239, 26, 384, '2020-08-05', '12:31:59', '2020-08-05', '12:31:00', '2020-08-05', '12:50:00'),
(240, 59, 393, '2020-08-05', '12:37:24', '2020-08-05', '12:37:00', '2020-08-05', '12:59:00'),
(241, 54, 394, '2020-08-05', '12:38:45', '2020-08-05', '12:38:00', '2020-08-05', '12:56:00'),
(242, 49, 381, '2020-08-05', '12:40:55', '2020-08-05', '12:38:00', '2020-08-05', '12:48:00'),
(243, 81, 386, '2020-08-05', '12:49:50', '2020-08-05', '12:49:00', '2020-08-05', '13:28:00'),
(244, 81, 386, '2020-08-05', '12:49:50', '2020-08-05', '12:49:00', NULL, NULL),
(245, 72, 380, '2020-08-05', '12:52:19', '2020-08-05', '12:52:00', '2020-08-05', '13:09:00'),
(246, 74, 387, '2020-08-05', '12:56:23', '2020-08-05', '12:56:00', '2020-08-05', '13:14:00'),
(247, 70, 395, '2020-08-05', '13:01:03', '2020-08-05', '13:00:00', NULL, NULL),
(248, 78, 396, '2020-08-05', '13:04:17', '2020-08-05', '13:04:00', '2020-08-05', '13:50:00'),
(249, 65, 399, '2020-08-05', '13:05:07', '2020-08-05', '13:04:00', '2020-08-05', '13:41:00'),
(250, 59, 412, '2020-08-05', '13:07:26', '2020-08-05', '13:06:00', '2020-08-05', '13:48:00'),
(251, 81, 403, '2020-08-05', '13:09:44', '2020-08-05', '13:09:00', '2020-08-05', '13:28:00'),
(252, 62, 397, '2020-08-05', '13:12:43', '2020-08-05', '13:12:00', NULL, NULL),
(253, 29, 392, '2020-08-05', '13:12:59', '2020-08-05', '13:12:00', '2020-08-05', '13:37:00'),
(254, 22, 385, '2020-08-05', '13:14:42', '2020-08-05', '13:14:00', NULL, NULL),
(255, 54, 407, '2020-08-05', '13:20:00', '2020-08-05', '13:19:00', '2020-08-05', '16:04:00'),
(256, 49, 402, '2020-08-05', '13:24:06', '2020-08-05', '13:23:00', '2020-08-05', '13:32:00'),
(257, 64, 408, '2020-08-05', '13:24:43', '2020-08-05', '13:24:00', '2020-08-05', '13:50:00'),
(258, 40, 415, '2020-08-05', '13:25:40', '2020-08-05', '13:21:00', '2020-08-05', '13:41:00'),
(259, 74, 401, '2020-08-05', '13:30:39', '2020-08-05', '13:30:00', '2020-08-05', '13:47:00'),
(260, 72, 410, '2020-08-05', '13:33:17', '2020-08-05', '13:33:00', '2020-08-05', '14:09:00'),
(261, 70, 409, '2020-08-05', '13:35:24', '2020-08-05', '13:35:00', NULL, NULL),
(262, 71, 413, '2020-08-05', '13:35:44', '2020-08-05', '13:35:00', '2020-08-05', '13:50:00'),
(263, 49, 420, '2020-08-05', '13:38:55', '2020-08-05', '13:38:00', '2020-08-05', '13:54:00'),
(264, 65, 418, '2020-08-05', '13:39:43', '2020-08-05', '13:39:00', '2020-08-05', '14:03:00'),
(265, 65, 418, '2020-08-05', '13:39:44', '2020-08-05', '13:39:00', NULL, NULL),
(266, 77, 417, '2020-08-05', '13:45:03', '2020-08-05', '13:44:00', '2020-08-05', '15:02:00'),
(267, 64, 423, '2020-08-05', '13:46:33', '2020-08-05', '13:46:00', '2020-08-05', '14:03:00'),
(268, 78, 421, '2020-08-05', '13:49:03', '2020-08-05', '13:48:00', '2020-08-05', '14:13:00'),
(269, 74, 425, '2020-08-05', '13:51:18', '2020-08-05', '13:51:00', '2020-08-05', '14:19:00'),
(270, 36, 427, '2020-08-05', '13:51:46', '2020-08-05', '13:51:00', '2020-08-05', '14:05:00'),
(271, 56, 432, '2020-08-05', '14:01:33', '2020-08-05', '14:01:00', '2020-08-05', '14:49:00'),
(272, 96, 424, '2020-08-05', '14:09:33', '2020-08-05', '14:09:00', NULL, NULL),
(273, 29, 435, '2020-08-05', '14:10:46', '2020-08-05', '14:10:00', '2020-08-05', '14:18:00'),
(274, 87, 440, '2020-08-05', '14:20:12', '2020-08-05', '14:18:00', '2020-08-05', '14:53:00'),
(275, 97, 438, '2020-08-05', '14:22:17', '2020-08-05', '14:22:00', '2020-08-05', '14:39:00'),
(276, 49, 426, '2020-08-05', '14:26:47', '2020-08-05', '14:26:00', '2020-08-05', '14:37:00'),
(277, 70, 428, '2020-08-05', '14:30:42', '2020-08-05', '14:30:00', NULL, NULL),
(278, 74, 442, '2020-08-05', '14:33:05', '2020-08-05', '14:32:00', '2020-08-05', '14:47:00'),
(279, 79, 443, '2020-08-05', '14:53:16', '2020-08-05', '14:53:00', '2020-08-05', '15:10:00'),
(280, 29, 446, '2020-08-05', '14:58:36', '2020-08-05', '14:58:00', '2020-08-05', '16:01:00'),
(281, 56, 436, '2020-08-05', '15:19:54', '2020-08-05', '15:19:00', '2020-08-05', '15:36:00'),
(282, 98, 448, '2020-08-05', '15:21:32', '2020-08-05', '15:21:00', '2020-08-05', '15:32:00'),
(283, 97, 451, '2020-08-05', '15:48:44', '2020-08-05', '15:48:00', '2020-08-05', '15:58:00'),
(284, 22, 454, '2020-08-05', '16:11:59', '2020-08-05', '16:11:00', NULL, NULL),
(285, 56, 452, '2020-08-05', '16:25:46', '2020-08-05', '16:25:00', '2020-08-05', '16:57:00'),
(286, 98, 456, '2020-08-05', '16:30:45', '2020-08-05', '16:30:00', '2020-08-05', '16:43:00'),
(287, 48, 455, '2020-08-05', '16:34:04', '2020-08-05', '16:33:00', '2020-08-05', '16:58:00'),
(288, 26, 457, '2020-08-05', '16:44:18', '2020-08-05', '16:44:00', '2020-08-05', '17:01:00'),
(289, 54, 460, '2020-08-05', '17:04:08', '2020-08-05', '17:04:00', '2020-08-05', '17:31:00'),
(290, 54, 458, '2020-08-05', '17:04:23', '2020-08-05', '17:04:00', '2020-08-05', '17:31:00'),
(291, 26, 469, '2020-08-05', '18:08:53', '2020-08-05', '18:08:00', '2020-08-05', '18:28:00'),
(292, 74, 468, '2020-08-05', '18:22:49', '2020-08-05', '18:22:00', '2020-08-05', '19:35:00'),
(293, 98, 474, '2020-08-05', '18:31:30', '2020-08-05', '18:30:00', '2020-08-05', '18:45:00'),
(294, 98, 474, '2020-08-05', '18:31:32', '2020-08-05', '18:30:00', NULL, NULL),
(295, 98, 474, '2020-08-05', '18:31:39', '2020-08-05', '18:30:00', NULL, NULL),
(296, 98, 474, '2020-08-05', '18:31:42', '2020-08-05', '18:30:00', NULL, NULL),
(297, 71, 478, '2020-08-05', '18:33:39', '2020-08-05', '18:33:00', '2020-08-05', '18:43:00'),
(298, 54, 480, '2020-08-05', '18:43:15', '2020-08-05', '18:43:00', '2020-08-05', '21:39:00'),
(299, 81, 477, '2020-08-05', '18:43:37', '2020-08-05', '18:42:00', '2020-08-05', '19:17:00'),
(300, 31, 475, '2020-08-05', '18:43:44', '2020-08-05', '18:43:00', '2020-08-05', '18:51:00'),
(301, 98, 489, '2020-08-05', '18:44:53', '2020-08-05', '18:44:00', '2020-08-05', '19:06:00'),
(302, 78, 482, '2020-08-05', '18:45:25', '2020-08-05', '18:45:00', '2020-08-05', '19:16:00'),
(303, 22, 488, '2020-08-05', '18:47:28', '2020-08-05', '18:47:00', NULL, NULL),
(304, 71, 492, '2020-08-05', '18:51:42', '2020-08-05', '18:51:00', '2020-08-05', '19:01:00'),
(305, 89, 485, '2020-08-05', '18:55:36', '2020-08-05', '18:55:00', '2020-08-05', '20:04:00'),
(306, 29, 486, '2020-08-05', '18:58:31', '2020-08-05', '18:58:00', '2020-08-05', '20:30:00'),
(307, 98, 490, '2020-08-05', '19:06:05', '2020-08-05', '19:05:00', '2020-08-05', '19:20:00'),
(308, 71, 491, '2020-08-05', '19:13:39', '2020-08-05', '19:13:00', '2020-08-05', '19:21:00'),
(309, 71, 491, '2020-08-05', '19:13:43', '2020-08-05', '19:13:00', NULL, NULL),
(310, 71, 491, '2020-08-05', '19:13:43', '2020-08-05', '19:13:00', NULL, NULL),
(311, 71, 491, '2020-08-05', '19:13:43', '2020-08-05', '19:13:00', NULL, NULL),
(312, 71, 491, '2020-08-05', '19:13:43', '2020-08-05', '19:13:00', NULL, NULL),
(313, 71, 491, '2020-08-05', '19:13:44', '2020-08-05', '19:13:00', NULL, NULL),
(314, 26, 498, '2020-08-05', '19:21:26', '2020-08-05', '19:21:00', '2020-08-05', '20:24:00'),
(315, 74, 496, '2020-08-05', '19:22:37', '2020-08-05', '19:22:00', '2020-08-05', '19:35:00'),
(316, 56, 494, '2020-08-05', '19:23:07', '2020-08-05', '19:22:00', NULL, NULL),
(317, 56, 499, '2020-08-05', '19:23:44', '2020-08-05', '19:23:00', NULL, NULL),
(318, 85, 504, '2020-08-05', '19:38:42', '2020-08-05', '19:38:00', '2020-08-05', '21:10:00'),
(319, 71, 506, '2020-08-05', '19:41:16', '2020-08-05', '19:41:00', '2020-08-05', '19:47:00'),
(320, 71, 506, '2020-08-05', '19:41:22', '2020-08-05', '19:41:00', NULL, NULL),
(321, 71, 506, '2020-08-05', '19:41:23', '2020-08-05', '19:41:00', NULL, NULL),
(322, 29, 509, '2020-08-05', '19:46:27', '2020-08-05', '19:46:00', '2020-08-05', '20:30:00'),
(323, 74, 512, '2020-08-05', '19:57:48', '2020-08-05', '19:57:00', '2020-08-05', '21:46:00'),
(324, 98, 511, '2020-08-05', '19:59:01', '2020-08-05', '19:58:00', '2020-08-05', '20:22:00'),
(325, 78, 508, '2020-08-05', '20:14:40', '2020-08-05', '20:14:00', '2020-08-05', '21:16:00'),
(326, 26, 518, '2020-08-05', '20:22:34', '2020-08-05', '20:22:00', '2020-08-05', '22:12:00'),
(327, 71, 520, '2020-08-05', '20:24:40', '2020-08-05', '20:24:00', NULL, NULL),
(328, 81, 513, '2020-08-05', '20:27:12', '2020-08-05', '20:27:00', '2020-08-05', '20:48:00'),
(329, 85, 521, '2020-08-05', '20:42:03', '2020-08-05', '20:41:00', '2020-08-05', '21:10:00'),
(330, 90, 522, '2020-08-05', '20:52:26', '2020-08-05', '20:52:00', '2020-08-05', '21:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1592845202),
('administrador', '1', 1575585406),
('administrador', '11', 1592701005),
('administrador', '12', 1592702843),
('administrador', '13', 1592750903),
('administrador', '15', 1592876827),
('administrador', '2', 1590534081),
('administrador', '3', 1590534687),
('administrador', '35', 1596379314),
('administrador', '4', 1590535279),
('administrador', '5', 1590591785),
('administrador', '6', 1590592131),
('administrador', '7', 1590592159),
('administrador', '8', 1590592197),
('call_center', '1', 1592845205),
('call_center', '16', 1592876849),
('call_center', '18', 1593114606),
('call_center', '20', 1595024567),
('call_center', '22', 1595276325),
('call_center', '29', 1595803286),
('call_center', '30', 1595812740),
('call_center', '32', 1595891178),
('call_center', '33', 1595891252),
('call_center', '34', 1595891341),
('call_center', '36', 1596379380),
('sucursal', '1', 1592845205),
('sucursal', '14', 1592845037),
('sucursal', '17', 1592876875),
('sucursal', '19', 1594746760),
('sucursal', '21', 1595025135),
('sucursal', '23', 1595610266),
('sucursal', '24', 1595803073),
('sucursal', '25', 1595803129),
('sucursal', '26', 1595803161),
('sucursal', '27', 1595803206),
('sucursal', '28', 1595803243),
('sucursal', '31', 1595814565),
('sucursal', '37', 1596379570),
('sucursal', '38', 1596379800),
('sucursal', '39', 1596388154),
('sucursal', '40', 1596403178),
('sucursal', '41', 1596415020),
('sucursal', '42', 1596484030);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1575585377, 1575585377),
('/about/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/about/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/about/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/about/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/about/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/about/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/assign', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/remove', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/role/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/route/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/route/assign', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/route/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/route/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/route/remove', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/activate', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/login', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/logout', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/signup', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/admin/user/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/asignacion-moto/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/asignacion-moto/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/asignacion-moto/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/asignacion-moto/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/asignacion-moto/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/asignacion-moto/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/assignment/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/assignment/assign', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/assignment/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/assignment/revoke', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/assignment/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/beneficio/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/beneficio/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/beneficio/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/beneficio/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/beneficio/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/beneficio/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoria/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoria/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoria/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoria/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoria/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoria/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoriaproducto/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoriaproducto/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoriaproducto/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoriaproducto/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoriaproducto/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/categoriaproducto/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/cliente/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/cliente/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/cliente/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/cliente/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/cliente/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/cliente/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/contacto/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/contacto/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/contacto/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/contacto/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/contacto/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/contacto/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/delete-all', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/download', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/restore', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/db-manager/default/storage', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/default/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/default/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/default/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/user/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/galeria/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/galeria/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/galeria/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/galeria/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/galeria/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/galeria/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/default/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/default/action', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/default/diff', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/default/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/default/preview', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gii/default/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gridview/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gridview/export/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/gridview/export/download', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historia/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historia/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historia/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historia/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historia/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historia/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historiaimg/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historiaimg/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historiaimg/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historiaimg/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historiaimg/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/historiaimg/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/moto/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/moto/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/moto/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/moto/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/moto/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/moto/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/imagenes', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/quitarimagen', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/paquete/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/asignar-sucursalprecio', 2, NULL, NULL, NULL, 1595024956, 1595024956),
('/pedidodelivery/cambiar-estado', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/facturado', 2, NULL, NULL, NULL, 1596305978, 1596305978),
('/pedidodelivery/get-cliente', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/get-cordenadas', 2, NULL, NULL, NULL, 1595024906, 1595024906),
('/pedidodelivery/get-precio-delivery', 2, NULL, NULL, NULL, 1595278769, 1595278769),
('/pedidodelivery/get-producto', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/pedidodelivery/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/preciodelivery/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/preciodelivery/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/preciodelivery/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/preciodelivery/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/preciodelivery/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/preciodelivery/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/producto/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/producto/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/producto/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/producto/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/producto/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/producto/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/reporte-asignados/*', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-asignados/index', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-cliente/*', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-cliente/index', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-entregados/*', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-entregados/index', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-espera/*', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reporte-espera/index', 2, NULL, NULL, NULL, 1593009686, 1593009686),
('/reserva/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/reserva/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/reserva/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/reserva/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/reserva/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/reserva/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/assign', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/remove', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/role/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/route/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/route/assign', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/route/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/route/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/route/refresh', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/route/remove', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/rule/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/rule/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/rule/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/rule/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/rule/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/rule/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/ruta/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/ruta/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/ruta/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/ruta/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/ruta/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/ruta/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/servicio/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/servicio/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/servicio/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/servicio/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/servicio/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/servicio/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/site/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/site/captcha', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/site/error', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/site/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/slider/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/slider/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/slider/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/slider/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/slider/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/slider/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/sucursaldelivery/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/sucursaldelivery/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/sucursaldelivery/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/sucursaldelivery/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/sucursaldelivery/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/sucursaldelivery/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/testimonio/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/testimonio/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/testimonio/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/testimonio/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/testimonio/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/testimonio/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/tipopedido/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/tipopedido/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/tipopedido/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/tipopedido/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/tipopedido/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/tipopedido/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/bulk-delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/create', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/update', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trailslog/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trash/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trash/deleteforever', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trash/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/trash/validarusuario', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/*', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/activate', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/change-password', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/delete', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/index', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/login', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/logout', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/request-password-reset', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/reset-password', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/signup', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('/user/view', 2, NULL, NULL, NULL, 1592844673, 1592844673),
('admin', 1, NULL, NULL, NULL, 1592844536, 1592844536),
('administrador', 1, NULL, NULL, NULL, 1575585392, 1575585392),
('call_center', 1, NULL, NULL, NULL, 1592844592, 1592844592),
('sucursal', 1, NULL, NULL, NULL, 1592844604, 1592844604);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/*'),
('admin', '/about/*'),
('admin', '/about/create'),
('admin', '/about/delete'),
('admin', '/about/index'),
('admin', '/about/update'),
('admin', '/about/view'),
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/asignacion-moto/*'),
('admin', '/asignacion-moto/create'),
('admin', '/asignacion-moto/delete'),
('admin', '/asignacion-moto/index'),
('admin', '/asignacion-moto/update'),
('admin', '/asignacion-moto/view'),
('admin', '/assignment/*'),
('admin', '/assignment/assign'),
('admin', '/assignment/index'),
('admin', '/assignment/revoke'),
('admin', '/assignment/view'),
('admin', '/beneficio/*'),
('admin', '/beneficio/create'),
('admin', '/beneficio/delete'),
('admin', '/beneficio/index'),
('admin', '/beneficio/update'),
('admin', '/beneficio/view'),
('admin', '/categoria/*'),
('admin', '/categoria/create'),
('admin', '/categoria/delete'),
('admin', '/categoria/index'),
('admin', '/categoria/update'),
('admin', '/categoria/view'),
('admin', '/categoriaproducto/*'),
('admin', '/categoriaproducto/create'),
('admin', '/categoriaproducto/delete'),
('admin', '/categoriaproducto/index'),
('admin', '/categoriaproducto/update'),
('admin', '/categoriaproducto/view'),
('admin', '/cliente/*'),
('admin', '/cliente/create'),
('admin', '/cliente/delete'),
('admin', '/cliente/index'),
('admin', '/cliente/update'),
('admin', '/cliente/view'),
('admin', '/contacto/*'),
('admin', '/contacto/create'),
('admin', '/contacto/delete'),
('admin', '/contacto/index'),
('admin', '/contacto/update'),
('admin', '/contacto/view'),
('admin', '/db-manager/*'),
('admin', '/db-manager/default/*'),
('admin', '/db-manager/default/create'),
('admin', '/db-manager/default/delete'),
('admin', '/db-manager/default/delete-all'),
('admin', '/db-manager/default/download'),
('admin', '/db-manager/default/index'),
('admin', '/db-manager/default/restore'),
('admin', '/db-manager/default/storage'),
('admin', '/debug/*'),
('admin', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('admin', '/debug/user/*'),
('admin', '/debug/user/reset-identity'),
('admin', '/debug/user/set-identity'),
('admin', '/galeria/*'),
('admin', '/galeria/create'),
('admin', '/galeria/delete'),
('admin', '/galeria/index'),
('admin', '/galeria/update'),
('admin', '/galeria/view'),
('admin', '/gii/*'),
('admin', '/gii/default/*'),
('admin', '/gii/default/action'),
('admin', '/gii/default/diff'),
('admin', '/gii/default/index'),
('admin', '/gii/default/preview'),
('admin', '/gii/default/view'),
('admin', '/gridview/*'),
('admin', '/gridview/export/*'),
('admin', '/gridview/export/download'),
('admin', '/historia/*'),
('admin', '/historia/create'),
('admin', '/historia/delete'),
('admin', '/historia/index'),
('admin', '/historia/update'),
('admin', '/historia/view'),
('admin', '/historiaimg/*'),
('admin', '/historiaimg/create'),
('admin', '/historiaimg/delete'),
('admin', '/historiaimg/index'),
('admin', '/historiaimg/update'),
('admin', '/historiaimg/view'),
('admin', '/moto/*'),
('admin', '/moto/create'),
('admin', '/moto/delete'),
('admin', '/moto/index'),
('admin', '/moto/update'),
('admin', '/moto/view'),
('admin', '/paquete/*'),
('admin', '/paquete/create'),
('admin', '/paquete/delete'),
('admin', '/paquete/imagenes'),
('admin', '/paquete/index'),
('admin', '/paquete/quitarimagen'),
('admin', '/paquete/update'),
('admin', '/paquete/view'),
('admin', '/pedidodelivery/*'),
('admin', '/pedidodelivery/cambiar-estado'),
('admin', '/pedidodelivery/create'),
('admin', '/pedidodelivery/delete'),
('admin', '/pedidodelivery/get-cliente'),
('admin', '/pedidodelivery/get-producto'),
('admin', '/pedidodelivery/index'),
('admin', '/pedidodelivery/update'),
('admin', '/pedidodelivery/view'),
('admin', '/preciodelivery/*'),
('admin', '/preciodelivery/create'),
('admin', '/preciodelivery/delete'),
('admin', '/preciodelivery/index'),
('admin', '/preciodelivery/update'),
('admin', '/preciodelivery/view'),
('admin', '/producto/*'),
('admin', '/producto/create'),
('admin', '/producto/delete'),
('admin', '/producto/index'),
('admin', '/producto/update'),
('admin', '/producto/view'),
('admin', '/reserva/*'),
('admin', '/reserva/create'),
('admin', '/reserva/delete'),
('admin', '/reserva/index'),
('admin', '/reserva/update'),
('admin', '/reserva/view'),
('admin', '/role/*'),
('admin', '/role/assign'),
('admin', '/role/create'),
('admin', '/role/delete'),
('admin', '/role/index'),
('admin', '/role/remove'),
('admin', '/role/update'),
('admin', '/role/view'),
('admin', '/route/*'),
('admin', '/route/assign'),
('admin', '/route/create'),
('admin', '/route/index'),
('admin', '/route/refresh'),
('admin', '/route/remove'),
('admin', '/rule/*'),
('admin', '/rule/create'),
('admin', '/rule/delete'),
('admin', '/rule/index'),
('admin', '/rule/update'),
('admin', '/rule/view'),
('admin', '/ruta/*'),
('admin', '/ruta/create'),
('admin', '/ruta/delete'),
('admin', '/ruta/index'),
('admin', '/ruta/update'),
('admin', '/ruta/view'),
('admin', '/servicio/*'),
('admin', '/servicio/create'),
('admin', '/servicio/delete'),
('admin', '/servicio/index'),
('admin', '/servicio/update'),
('admin', '/servicio/view'),
('admin', '/site/*'),
('admin', '/site/captcha'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/slider/*'),
('admin', '/slider/create'),
('admin', '/slider/delete'),
('admin', '/slider/index'),
('admin', '/slider/update'),
('admin', '/slider/view'),
('admin', '/sucursaldelivery/*'),
('admin', '/sucursaldelivery/create'),
('admin', '/sucursaldelivery/delete'),
('admin', '/sucursaldelivery/index'),
('admin', '/sucursaldelivery/update'),
('admin', '/sucursaldelivery/view'),
('admin', '/testimonio/*'),
('admin', '/testimonio/create'),
('admin', '/testimonio/delete'),
('admin', '/testimonio/index'),
('admin', '/testimonio/update'),
('admin', '/testimonio/view'),
('admin', '/tipopedido/*'),
('admin', '/tipopedido/create'),
('admin', '/tipopedido/delete'),
('admin', '/tipopedido/index'),
('admin', '/tipopedido/update'),
('admin', '/tipopedido/view'),
('admin', '/trailslog/*'),
('admin', '/trailslog/bulk-delete'),
('admin', '/trailslog/create'),
('admin', '/trailslog/delete'),
('admin', '/trailslog/index'),
('admin', '/trailslog/update'),
('admin', '/trailslog/view'),
('admin', '/trash/*'),
('admin', '/trash/deleteforever'),
('admin', '/trash/index'),
('admin', '/trash/validarusuario'),
('admin', '/user/*'),
('admin', '/user/activate'),
('admin', '/user/change-password'),
('admin', '/user/delete'),
('admin', '/user/index'),
('admin', '/user/login'),
('admin', '/user/logout'),
('admin', '/user/request-password-reset'),
('admin', '/user/reset-password'),
('admin', '/user/signup'),
('admin', '/user/view'),
('admin', 'administrador'),
('admin', 'call_center'),
('admin', 'sucursal'),
('administrador', '/admin/user/index'),
('administrador', '/admin/user/signup'),
('administrador', '/admin/user/view'),
('administrador', '/asignacion-moto/*'),
('administrador', '/asignacion-moto/create'),
('administrador', '/asignacion-moto/delete'),
('administrador', '/asignacion-moto/index'),
('administrador', '/asignacion-moto/update'),
('administrador', '/asignacion-moto/view'),
('administrador', '/categoriaproducto/*'),
('administrador', '/categoriaproducto/create'),
('administrador', '/categoriaproducto/delete'),
('administrador', '/categoriaproducto/index'),
('administrador', '/categoriaproducto/update'),
('administrador', '/categoriaproducto/view'),
('administrador', '/cliente/*'),
('administrador', '/cliente/create'),
('administrador', '/cliente/delete'),
('administrador', '/cliente/index'),
('administrador', '/cliente/update'),
('administrador', '/cliente/view'),
('administrador', '/gridview/export/*'),
('administrador', '/gridview/export/download'),
('administrador', '/moto/*'),
('administrador', '/moto/create'),
('administrador', '/moto/delete'),
('administrador', '/moto/index'),
('administrador', '/moto/update'),
('administrador', '/moto/view'),
('administrador', '/pedidodelivery/*'),
('administrador', '/pedidodelivery/cambiar-estado'),
('administrador', '/pedidodelivery/create'),
('administrador', '/pedidodelivery/delete'),
('administrador', '/pedidodelivery/get-cliente'),
('administrador', '/pedidodelivery/get-producto'),
('administrador', '/pedidodelivery/index'),
('administrador', '/pedidodelivery/update'),
('administrador', '/pedidodelivery/view'),
('administrador', '/preciodelivery/*'),
('administrador', '/preciodelivery/create'),
('administrador', '/preciodelivery/delete'),
('administrador', '/preciodelivery/index'),
('administrador', '/preciodelivery/update'),
('administrador', '/preciodelivery/view'),
('administrador', '/producto/*'),
('administrador', '/producto/create'),
('administrador', '/producto/delete'),
('administrador', '/producto/index'),
('administrador', '/producto/update'),
('administrador', '/producto/view'),
('administrador', '/reporte-asignados/*'),
('administrador', '/reporte-asignados/index'),
('administrador', '/reporte-cliente/*'),
('administrador', '/reporte-cliente/index'),
('administrador', '/reporte-entregados/*'),
('administrador', '/reporte-entregados/index'),
('administrador', '/reporte-espera/*'),
('administrador', '/reporte-espera/index'),
('administrador', '/sucursaldelivery/*'),
('administrador', '/sucursaldelivery/create'),
('administrador', '/sucursaldelivery/delete'),
('administrador', '/sucursaldelivery/index'),
('administrador', '/sucursaldelivery/update'),
('administrador', '/sucursaldelivery/view'),
('administrador', '/tipopedido/*'),
('administrador', '/tipopedido/create'),
('administrador', '/tipopedido/delete'),
('administrador', '/tipopedido/index'),
('administrador', '/tipopedido/update'),
('administrador', '/tipopedido/view'),
('administrador', '/user/view'),
('administrador', 'call_center'),
('administrador', 'sucursal'),
('call_center', '/asignacion-moto/view'),
('call_center', '/cliente/create'),
('call_center', '/cliente/index'),
('call_center', '/cliente/update'),
('call_center', '/cliente/view'),
('call_center', '/pedidodelivery/asignar-sucursalprecio'),
('call_center', '/pedidodelivery/cambiar-estado'),
('call_center', '/pedidodelivery/create'),
('call_center', '/pedidodelivery/facturado'),
('call_center', '/pedidodelivery/get-cliente'),
('call_center', '/pedidodelivery/get-cordenadas'),
('call_center', '/pedidodelivery/get-precio-delivery'),
('call_center', '/pedidodelivery/get-producto'),
('call_center', '/pedidodelivery/index'),
('call_center', '/pedidodelivery/view'),
('sucursal', '/asignacion-moto/create'),
('sucursal', '/asignacion-moto/index'),
('sucursal', '/asignacion-moto/view'),
('sucursal', '/moto/*'),
('sucursal', '/moto/create'),
('sucursal', '/moto/delete'),
('sucursal', '/moto/index'),
('sucursal', '/moto/update'),
('sucursal', '/moto/view'),
('sucursal', '/pedidodelivery/index'),
('sucursal', '/pedidodelivery/view');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficio`
--

CREATE TABLE `beneficio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficio`
--

INSERT INTO `beneficio` (`id`, `titulo`, `descripcion`, `foto`) VALUES
(7, 'TRANSPORTE', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'beneficio_7200331161407.png'),
(8, 'ATENCIÓN AL CLIENTE', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'beneficio_8200331161421.png'),
(9, 'DESTINOS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'beneficio_9200331161451.png'),
(10, 'COMODIDAD', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'beneficio_10200331161653.png');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` char(128) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `expire`, `data`) VALUES
('00d716905c8ed414aa0103ba17815795', 0, 0x613a323a7b693a303b613a333a7b693a303b4f3a31353a227969695c7765625c55726c52756c65223a31363a7b733a343a226e616d65223b733a333a22676969223b733a373a227061747465726e223b733a383a22235e676969242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31373a226769692f64656661756c742f696e646578223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31303a226e6f726d616c697a6572223b4e3b733a31353a22002a00637265617465537461747573223b4e3b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a353a222f6769692f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a313b4f3a31353a227969695c7765625c55726c52756c65223a31363a7b733a343a226e616d65223b733a31323a226769692f3c69643a5c772b3e223b733a373a227061747465726e223b733a32373a22235e6769692f283f503c6162663339363735303e5c772b29242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31363a226769692f64656661756c742f76696577223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31303a226e6f726d616c697a6572223b4e3b733a31353a22002a00637265617465537461747573223b4e3b733a31353a22002a00706c616365686f6c64657273223b613a313a7b733a393a22616266333936373530223b733a323a226964223b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a31303a222f6769692f3c69643e2f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a313a7b733a323a226964223b733a383a22235e5c772b242375223b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a323b4f3a31353a227969695c7765625c55726c52756c65223a31363a7b733a343a226e616d65223b733a34313a226769692f3c636f6e74726f6c6c65723a5b5c775c2d5d2b3e2f3c616374696f6e3a5b5c775c2d5d2b3e223b733a373a227061747465726e223b733a35343a22235e6769692f283f503c6134636632363639613e5b5c775c2d5d2b292f283f503c6134376363386339323e5b5c775c2d5d2b29242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a32353a226769692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31303a226e6f726d616c697a6572223b4e3b733a31353a22002a00637265617465537461747573223b4e3b733a31353a22002a00706c616365686f6c64657273223b613a323a7b733a393a22613463663236363961223b733a31303a22636f6e74726f6c6c6572223b733a393a22613437636338633932223b733a363a22616374696f6e223b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a32373a222f6769692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e2f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b733a35343a22235e6769692f283f503c6134636632363639613e5b5c775c2d5d2b292f283f503c6134376363386339323e5b5c775c2d5d2b29242375223b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d7d7d693a313b4e3b7d),
('08155d915b922f2211519eb466ffd5e9', 0, 0x613a323a7b693a303b733a32313a22302e38373130313330302031353936333036313735223b693a313b4e3b7d),
('0a24d26b59b30137a5b23e473aff34e2', 1596675082, 0x613a323a7b693a303b733a32333a225f5f666c6173687c613a303a7b7d5f5f69647c693a313b223b693a313b4e3b7d),
('0c029cb9d00c01a3e6e0091555151847', 1596724792, 0x613a323a7b693a303b733a32333a225f5f666c6173687c613a303a7b7d5f5f69647c693a313b223b693a313b4e3b7d),
('0d9ac57082a43e872236c772b51646f2', 1596674795, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33313b223b693a313b4e3b7d),
('0fc1aa82fba430696be30b588fa39bb5', 1596670900, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a34303b223b693a313b4e3b7d),
('10be32b2ae2ca133e58a7a49c7919d3b', 1596724556, 0x613a323a7b693a303b733a32333a225f5f666c6173687c613a303a7b7d5f5f69647c693a313b223b693a313b4e3b7d),
('1110990d2be96c98a4286bf7a81b8217', 1596666097, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('1b1b461ea80b06829a1b4f07a3cafe6f', 1596681196, 0x613a323a7b693a303b733a33343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b223b693a313b4e3b7d),
('2252fdd1c5e7874808da8bc6d83e859f', 1596681199, 0x613a323a7b693a303b733a31343a225f5f666c6173687c613a303a7b7d223b693a313b4e3b7d),
('24f3ff2923dd7b16bceb4f738c2c802d', 1596675180, 0x613a323a7b693a303b733a32333a225f5f666c6173687c613a303a7b7d5f5f69647c693a313b223b693a313b4e3b7d),
('27028cd3c4e5cdd122832435768537a7', 1596678112, 0x613a323a7b693a303b733a31343a225f5f666c6173687c613a303a7b7d223b693a313b4e3b7d),
('2c94d0f4b4921874b6714b66f9894722', 1596669726, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33383b223b693a313b4e3b7d),
('34f7f39d48ee3b99dc4b773d0ab2895f', 1596669111, 0x613a323a7b693a303b733a32333a225f5f666c6173687c613a303a7b7d5f5f69647c693a313b223b693a313b4e3b7d),
('358c789d4ea52a4fb0f1887494f884d0', 0, 0x613a323a7b693a303b613a313a7b693a303b4f3a31353a227969695c7765625c55726c52756c65223a31363a7b733a343a226e616d65223b733a31333a227a6f6e612f3c69643a5c642b3e223b733a373a227061747465726e223b733a32383a22235e7a6f6e612f283f503c6162663339363735303e5c642b29242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31303a22736974652f696e646578223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31303a226e6f726d616c697a6572223b4e3b733a31353a22002a00637265617465537461747573223b4e3b733a31353a22002a00706c616365686f6c64657273223b613a313a7b733a393a22616266333936373530223b733a323a226964223b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a31313a222f7a6f6e612f3c69643e2f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a313a7b733a323a226964223b733a383a22235e5c642b242375223b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d7d693a313b4e3b7d),
('36937fb9e0fd10dec07989b776f744e4', 1596724167, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a373a22636c69656e7465223b733a383a2266756c6c4e616d65223b733a373a22636c69656e7465223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a31303a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a333a226e6974223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a333a226e6974223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2274656c65666f6e6f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2274656c65666f6e6f223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228313529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31353b733a393a22707265636973696f6e223b693a31353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a227a6f6e61223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a227a6f6e61223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722831303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3130303b733a393a22707265636973696f6e223b693a3130303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a22646972656363696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a22646972656363696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722835303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3530303b733a393a22707265636973696f6e223b693a3530303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31323a2272617a6f6e5f736f6369616c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31323a2272617a6f6e5f736f6369616c223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a227a6f6f6d223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a227a6f6f6d223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a22666f746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a22666f746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a226c61746974756465223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a226c61746974756465223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a226c6f6e676974756465223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a226c6f6e676974756465223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('36c20d64887b00fb41c16f573d1697ef', 1596723973, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('3fcdb37f8867a1274c5c53aa70c988e3', 1596678315, 0x613a323a7b693a303b733a32333a225f5f666c6173687c613a303a7b7d5f5f69647c693a313b223b693a313b4e3b7d),
('42b656712ae337422d96b330deeb2727', 1596675378, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33333b223b693a313b4e3b7d),
('43a47065570fb33d96d0d26792b81c33', 1596725581, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33343b223b693a313b4e3b7d),
('44e6e0616212a38e35b21a4a120058be', 1596671872, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33323b223b693a313b4e3b7d),
('490d858b1d8472ae49348ac1b8e3965f', 1596667482, 0x613a323a7b693a303b733a33343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b223b693a313b4e3b7d),
('4db063761969d97cc59e46688ef6f8e1', 1596667046, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('4e18e7e3c09735f2a07884d83e8b27ac', 1596675651, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33303b223b693a313b4e3b7d),
('509f2bb49eec172ecc5bcb02274076fe', 1596722481, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31353a22617369676e6163696f6e5f6d6f746f223b733a383a2266756c6c4e616d65223b733a31353a22617369676e6163696f6e5f6d6f746f223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a393a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a373a226d6f746f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a373a226d6f746f5f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a2270656469646f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a2270656469646f5f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a353a226665636861223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a353a226665636861223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a343a2264617465223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2264617465223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a22686f7261223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a22686f7261223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a343a2274696d65223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2274696d65223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31343a2266656368615f646573706163686f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31343a2266656368615f646573706163686f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a343a2264617465223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2264617465223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a22686f72615f646573706163686f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a22686f72615f646573706163686f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a343a2274696d65223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2274696d65223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a2266656368615f656e7472656761223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a2266656368615f656e7472656761223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a343a2264617465223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2264617465223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31323a22686f72615f656e7472656761223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31323a22686f72615f656e7472656761223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a343a2274696d65223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2274696d65223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('550fb6be441c640419c6197b30ab98d9', 1596725592, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33333b223b693a313b4e3b7d),
('571ba49feab112c2e3932a6db516b795', 1596680280, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31303a22747261696c735f6c6f67223b733a383a2266756c6c4e616d65223b733a31303a22747261696c735f6c6f67223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a383a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a226465736372697074696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22616374696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22616374696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228323029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a32303b733a393a22707265636973696f6e223b693a32303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a353a226d6f64656c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a353a226d6f64656c223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2269645f6d6f64656c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2269645f6d6f64656c223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a323a226970223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226970223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a226372656174696f6e5f64617465223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a226372656174696f6e5f64617465223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a373a22757365725f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a373a22757365725f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('5cfef9a474a3659e15b8a63369b56096', 1596673794, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a383a226170705f75736572223b733a383a2266756c6c4e616d65223b733a383a226170705f75736572223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a31343a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a2270617373776f72645f68617368223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a2270617373776f72645f68617368223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a32303a2270617373776f72645f72657365745f746f6b656e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a32303a2270617373776f72645f72657365745f746f6b656e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a353a22656d61696c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a353a22656d61696c223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a333a22726f6c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a333a22726f6c223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b693a313b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31323a226163636573735f746f6b656e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31323a226163636573735f746f6b656e223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a373a226d6f746f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a373a226d6f746f5f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22636c69656e74655f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22636c69656e74655f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a22706c617965725f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a22706c617965725f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a22617574685f6b6579223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a22617574685f6b6579223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22737461747573223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22737461747573223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a383a22736d616c6c696e74223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a31313a22736d616c6c696e74283629223b733a31323a2264656661756c7456616c7565223b693a31303b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a363b733a393a22707265636973696f6e223b693a363b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22637265617465645f6174223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22637265617465645f6174223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22757064617465645f6174223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22757064617465645f6174223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31373a22766572696669636174696f6e5f636f6465223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31373a22766572696669636174696f6e5f636f6465223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235303b733a393a22707265636973696f6e223b693a3235303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d);
INSERT INTO `cache` (`id`, `expire`, `data`) VALUES
('5d0b8a99981db665adf6e38458135f11', 1596724167, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a343a2275736572223b733a383a2266756c6c4e616d65223b733a343a2275736572223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a31313a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a22757365726e616d65223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a22757365726e616d65223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228333229223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a33323b733a393a22707265636973696f6e223b693a33323b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a22617574685f6b6579223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a22617574685f6b6579223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228333229223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a33323b733a393a22707265636973696f6e223b693a33323b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a2270617373776f72645f68617368223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a2270617373776f72645f68617368223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a32303a2270617373776f72645f72657365745f746f6b656e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a32303a2270617373776f72645f72657365745f746f6b656e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a353a22656d61696c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a353a22656d61696c223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a333a22726f6c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a333a22726f6c223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22737461747573223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22737461747573223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a383a22736d616c6c696e74223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a31313a22736d616c6c696e74283629223b733a31323a2264656661756c7456616c7565223b693a31303b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a363b733a393a22707265636973696f6e223b693a363b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22637265617465645f6174223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22637265617465645f6174223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22757064617465645f6174223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22757064617465645f6174223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a22737563757273616c5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a22737563757273616c5f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b693a313b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('601079a39dd4491fa73278379f0def2b', 1596673382, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('60c69796c9cdfd66af3195782c1d16d7', 0, 0x613a323a7b693a303b613a323a7b693a303b4f3a31353a227969695c7765625c55726c52756c65223a31363a7b733a343a226e616d65223b733a353a226465627567223b733a373a227061747465726e223b733a31303a22235e6465627567242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a353a226465627567223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b623a303b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31303a226e6f726d616c697a6572223b4e3b733a31353a22002a00637265617465537461747573223b4e3b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a373a222f64656275672f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a313b4f3a31353a227969695c7765625c55726c52756c65223a31363a7b733a343a226e616d65223b733a34333a2264656275672f3c636f6e74726f6c6c65723a5b5c775c2d5d2b3e2f3c616374696f6e3a5b5c775c2d5d2b3e223b733a373a227061747465726e223b733a35363a22235e64656275672f283f503c6134636632363639613e5b5c775c2d5d2b292f283f503c6134376363386339323e5b5c775c2d5d2b29242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a32373a2264656275672f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b623a303b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31303a226e6f726d616c697a6572223b4e3b733a31353a22002a00637265617465537461747573223b4e3b733a31353a22002a00706c616365686f6c64657273223b613a323a7b733a393a22613463663236363961223b733a31303a22636f6e74726f6c6c6572223b733a393a22613437636338633932223b733a363a22616374696f6e223b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a32393a222f64656275672f3c636f6e74726f6c6c65723e2f3c616374696f6e3e2f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b733a35363a22235e64656275672f283f503c6134636632363639613e5b5c775c2d5d2b292f283f503c6134376363386339323e5b5c775c2d5d2b29242375223b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d7d7d693a313b4e3b7d),
('60c764a3e19ed5a6d962293cfa2450c3', 1596674671, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33323b223b693a313b4e3b7d),
('67ced1e9cb183ddbdea1de97fd8b3b92', 1596681661, 0x613a323a7b693a303b733a33343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b223b693a313b4e3b7d),
('6c35fd82889fbdbc6c62f5e60a147926', 1596677028, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33383b223b693a313b4e3b7d),
('7401a06fe66842dc7bc72856b03acca0', 1596666960, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('7889c4825a047dfcf9b97e046ac48693', 1596724211, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31333a2270636f756e7465725f73617665223b733a383a2266756c6c4e616d65223b733a31333a2270636f756e7465725f73617665223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a393a22736176655f6e616d65223b7d733a31323a2273657175656e63654e616d65223b4e3b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a323a7b733a393a22736176655f6e616d65223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a22736176655f6e616d65223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228313029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31303b733a393a22707265636973696f6e223b693a31303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22736176655f76616c7565223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22736176655f76616c7565223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a31363a22696e742831302920756e7369676e6564223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31303b733a393a22707265636973696f6e223b693a31303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a313b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('79dde3997fe68d5ebb035924bdf93b98', 0, 0x613a323a7b693a303b733a32313a22302e34363337313230302031353935383130343831223b693a313b4e3b7d),
('7c50f4818a2c455ff877daedc1fc54b3', 0, 0x613a323a7b693a303b733a32313a22302e35303534333730302031353935303234373734223b693a313b4e3b7d),
('7d62bc1ef0988c42b0c2836bf32b3532', 1596672627, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33313b223b693a313b4e3b7d),
('8497f4132a0269aa7c8b746c57ce788a', 1596666092, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('96b02fd1d62e954437607326738b9a00', 1596674477, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33343b223b693a313b4e3b7d),
('982d9b64a678ea5ca8d5ce647669c64d', 1596687382, 0x613a323a7b693a303b733a33343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b223b693a313b4e3b7d),
('9926d985d9ee603a661c9c073a20a7b9', 1596678111, 0x613a323a7b693a303b733a33343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b223b693a313b4e3b7d),
('9ca2ba9dd431810387fee6ffbacf4459', 1596677715, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33303b223b693a313b4e3b7d),
('9d889354896fac37165c91ecf53e7030', 1596666092, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('9dcabfba3048fb948176ffee0ad037b8', 1596724169, 0x613a323a7b693a303b613a363a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a353a226361636865223b733a383a2266756c6c4e616d65223b733a353a226361636865223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b4e3b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a333a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a343a2263686172223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a393a22636861722831323829223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3132383b733a393a22707265636973696f6e223b693a3132383b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22657870697265223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22657870697265223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a2264617461223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a2264617461223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a2262696e617279223b733a373a2270687054797065223b733a383a227265736f75726365223b733a363a22646254797065223b733a343a22626c6f62223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31303a227072696d6172794b6579223b4f3a31373a227969695c64625c436f6e73747261696e74223a323a7b733a31313a22636f6c756d6e4e616d6573223b613a313a7b693a303b733a323a226964223b7d733a343a226e616d65223b4e3b7d733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22756e6971756573223b613a303a7b7d733a373a22696e6465786573223b613a313a7b693a303b4f3a32323a227969695c64625c496e646578436f6e73747261696e74223a343a7b733a383a226973556e69717565223b623a313b733a393a2269735072696d617279223b623a313b733a31313a22636f6c756d6e4e616d6573223b613a313a7b693a303b733a323a226964223b7d733a343a226e616d65223b4e3b7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('a16073434b0873eaf81a0aa41019e294', 1596724167, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31353a2270656469646f5f64656c6976657279223b733a383a2266756c6c4e616d65223b733a31353a2270656469646f5f64656c6976657279223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a343a7b733a33353a22666b5f70656469646f5f64656c69766572795f70726563696f5f64656c697665727931223b613a323a7b693a303b733a31353a2270726563696f5f64656c6976657279223b733a31383a2270726563696f5f64656c69766572795f6964223b733a323a226964223b7d733a32383a22666b5f70656469646f5f64656c69766572795f70726f647563746f31223b613a323a7b693a303b733a383a2270726f647563746f223b733a31313a2270726f647563746f5f6964223b733a323a226964223b7d733a33373a22666b5f70656469646f5f64656c69766572795f737563757273616c5f64656c697665727931223b613a323a7b693a303b733a31373a22737563757273616c5f64656c6976657279223b733a32303a22737563757273616c5f64656c69766572795f6964223b733a323a226964223b7d733a33313a22666b5f70656469646f5f64656c69766572795f7469706f5f70656469646f31223b613a323a7b693a303b733a31313a227469706f5f70656469646f223b733a31343a227469706f5f70656469646f5f6964223b733a323a226964223b7d7d733a373a22636f6c756d6e73223b613a32303a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31303a22636c69656e74655f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31303a22636c69656e74655f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31323a2272617a6f6e5f736f6369616c223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31323a2272617a6f6e5f736f6369616c223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a333a226e6974223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a333a226e6974223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2274656c65666f6e6f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2274656c65666f6e6f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a227a6f6e61223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a227a6f6e61223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a22646972656363696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a22646972656363696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a226c61746974756465223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a226c61746974756465223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a226c6f6e676974756465223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a226c6f6e676974756465223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a227a6f6f6d223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a227a6f6f6d223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a22696e737472756363696f6e6573223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a22696e737472756363696f6e6573223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a2270726f647563746f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a2270726f647563746f5f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31383a2270726563696f5f64656c69766572795f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31383a2270726563696f5f64656c69766572795f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a32303a22737563757273616c5f64656c69766572795f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a32303a22737563757273616c5f64656c69766572795f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31343a227469706f5f70656469646f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31343a227469706f5f70656469646f5f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31333a2266656368615f656e7472656761223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31333a2266656368615f656e7472656761223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a343a2264617465223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2264617465223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31323a22686f72615f656e7472656761223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31323a22686f72615f656e7472656761223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a343a2274696d65223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a343a2274696d65223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b693a303b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2275726c5f6d617061223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2275726c5f6d617061223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722834303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3430303b733a393a22707265636973696f6e223b693a3430303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a2266616374757261646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a2266616374757261646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b693a303b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('a25ad7ee9702d427166ad6bc84f03642', 1596724167, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31313a227469706f5f70656469646f223b733a383a2266756c6c4e616d65223b733a31313a227469706f5f70656469646f223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a343a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a226e6f6d627265223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a226e6f6d627265223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a226465736372697063696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a226465736372697063696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722836303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3630303b733a393a22707265636973696f6e223b693a3630303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a32353a22656e756d282741637469766f272c27496e61637469766f2729223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b613a323a7b693a303b733a363a2241637469766f223b693a313b733a383a22496e61637469766f223b7d733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('a4007c81c9895e10a5c0d0d5b14fd124', 1596680142, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4e3b733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('a60c81d8b42c4279df11a12219217e50', 1596723710, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33333b223b693a313b4e3b7d),
('a7b34e59af0ffece731f40d60df0f858', 1596724097, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a32333a2270656469646f5f64656c69766572795f646574616c6c65223b733a383a2266756c6c4e616d65223b733a32333a2270656469646f5f64656c69766572795f646574616c6c65223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a353a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31383a2270656469646f5f64656c69766572795f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31383a2270656469646f5f64656c69766572795f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a2270726f647563746f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a2270726f647563746f5f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2263616e7469646164223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2263616e7469646164223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a226f62736572766163696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a226f62736572766163696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('a841d5307e2fd30f7639d864f7b360a8', 1596667519, 0x613a323a7b693a303b733a31343a225f5f666c6173687c613a303a7b7d223b693a313b4e3b7d),
('ab6c99e814a59cc9d52c27c3de449636', 1596666774, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33313b223b693a313b4e3b7d);
INSERT INTO `cache` (`id`, `expire`, `data`) VALUES
('ac615a54b85ca560a6005e5e8cbaadd0', 1596724167, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a383a2270726f647563746f223b733a383a2266756c6c4e616d65223b733a383a2270726f647563746f223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a313a7b733a33313a22666b5f70726f647563746f5f63617465676f7269615f70726f647563746f31223b613a323a7b693a303b733a31383a2263617465676f7269615f70726f647563746f223b733a32313a2263617465676f7269615f70726f647563746f5f6964223b733a323a226964223b7d7d733a373a22636f6c756d6e73223b613a373a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2270726f647563746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2270726f647563746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a373a22646574616c6c65223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a373a22646574616c6c65223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31333a2276617263686172283330303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a333030303b733a393a22707265636973696f6e223b693a333030303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a353a22636f73746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a353a22636f73746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a32353a22656e756d282741637469766f272c27496e61637469766f2729223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b613a323a7b693a303b733a363a2241637469766f223b693a313b733a383a22496e61637469766f223b7d733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a32313a2263617465676f7269615f70726f647563746f5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a32313a2263617465676f7269615f70726f647563746f5f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a22666f746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a22666f746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('ae3da50dd18f7e18fd637eb010537630', 1596680068, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a363a22736c69646572223b733a383a2266756c6c4e616d65223b733a363a22736c69646572223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a353a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22746974756c6f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22746974756c6f223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722831303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3130303b733a393a22707265636973696f6e223b693a3130303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a226465736372697063696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a226465736372697063696f6e223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a22666f746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a22666f746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722831303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3130303b733a393a22707265636973696f6e223b693a3130303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a33343a22656e756d2827486162696c697461646f272c27446573686162696c697461646f2729223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b613a323a7b693a303b733a31303a22486162696c697461646f223b693a313b733a31333a22446573686162696c697461646f223b7d733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('b0d3f3921e9a9616cdc4c2ce9bd4fc43', 1596724167, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31373a22737563757273616c5f64656c6976657279223b733a383a2266756c6c4e616d65223b733a31373a22737563757273616c5f64656c6976657279223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a353a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a226e6f6d627265223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a226e6f6d627265223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22636975646164223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22636975646164223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228343529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a34353b733a393a22707265636973696f6e223b693a34353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a373a22646574616c6c65223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a373a22646574616c6c65223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31333a2276617263686172283330303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a333030303b733a393a22707265636973696f6e223b693a333030303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a32353a22656e756d282741637469766f272c27496e61637469766f2729223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b613a323a7b693a303b733a363a2241637469766f223b693a313b733a383a22496e61637469766f223b7d733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('b71691b1de58c8d87a66fe3d39027f33', 1596668257, 0x613a323a7b693a303b733a34343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b5f5f69647c693a33343b223b693a313b4e3b7d),
('bb16ff6e5cbb201f6c6cd80c3df64efa', 1596666099, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('bd54534aee003aeff1ea48391eaa9c93', 1596724094, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31383a2263617465676f7269615f70726f647563746f223b733a383a2266756c6c4e616d65223b733a31383a2263617465676f7269615f70726f647563746f223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a343a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a226e6f6d627265223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a226e6f6d627265223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2270726f647563746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2270726f647563746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a32353a22656e756d282741637469766f272c27496e61637469766f2729223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b613a323a7b693a303b733a363a2241637469766f223b693a313b733a383a22496e61637469766f223b7d733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('c356c63a8d5c318bb5903ccf89e4073b', 1596666090, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('d249b9112f987cdeaca80cc6eb7e2bc6', 1596668584, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a34303b223b693a313b4e3b7d),
('d35597f9fb410baf773db450df28f93c', 1596667482, 0x613a323a7b693a303b733a31343a225f5f666c6173687c613a303a7b7d223b693a313b4e3b7d),
('d52a1f9bc6d0963931d37ae10d9efdfc', 1596674920, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d),
('d7f6fbbd7f8badc832539cc7aa2e0895', 1596724169, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31353a2270726563696f5f64656c6976657279223b733a383a2266756c6c4e616d65223b733a31353a2270726563696f5f64656c6976657279223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a353a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a226e6f6d627265223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a226e6f6d627265223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a226465736372697063696f6e223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a226465736372697063696f6e223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31333a2276617263686172283330303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a333030303b733a393a22707265636973696f6e223b693a333030303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2270726563696f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2270726563696f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a32353a22656e756d282741637469766f272c27496e61637469766f2729223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b613a323a7b693a303b733a363a2241637469766f223b693a313b733a383a22496e61637469766f223b7d733a343a2273697a65223b4e3b733a393a22707265636973696f6e223b4e3b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('d9448b585e9a5fe042803f0294185d1f', 0, 0x613a323a7b693a303b733a32313a22302e31313630393030302031353935363132373035223b693a313b4e3b7d),
('e01ca52e0a94b449de4b1221b7fa3ce4', 1596676587, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33383b223b693a313b4e3b7d),
('e19c1ce5b9a46b27513f3d4d34080ad1', 1596667539, 0x613a323a7b693a303b733a33343a225f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a313a222f223b223b693a313b4e3b7d),
('e2490a53363938d0f8b2a76ff20190a1', 1596724211, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31343a2270636f756e7465725f7573657273223b733a383a2266756c6c4e616d65223b733a31343a2270636f756e7465725f7573657273223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a373a22757365725f6970223b7d733a31323a2273657175656e63654e616d65223b4e3b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a323a7b733a373a22757365725f6970223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a373a22757365725f6970223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832353529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3235353b733a393a22707265636973696f6e223b693a3235353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a22757365725f74696d65223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a22757365725f74696d65223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a31363a22696e742831302920756e7369676e6564223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31303b733a393a22707265636973696f6e223b693a31303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a313b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('e276e00b8f6bbd9cffa3d7d5afeec7f7', 1596667493, 0x613a323a7b693a303b733a31343a225f5f666c6173687c613a303a7b7d223b693a313b4e3b7d),
('eae3d40c57dc54ef88fbf9b3b7df042a', 1596667539, 0x613a323a7b693a303b733a31343a225f5f666c6173687c613a303a7b7d223b693a313b4e3b7d),
('ec1096a1e98298257b54cc109c495b65', 1596723188, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a343a226d6f746f223b733a383a2266756c6c4e616d65223b733a343a226d6f746f223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a383a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a226e6f6d627265223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a226e6f6d627265223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a22636975646164223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a22636975646164223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31313a22737563757273616c5f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31313a22737563757273616c5f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a383a2274656c65666f6e6f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a383a2274656c65666f6e6f223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228313529223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31353b733a393a22707265636973696f6e223b693a31353b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a343a22666f746f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a343a22666f746f223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722832303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3230303b733a393a22707265636973696f6e223b693a3230303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a393a22706c617965725f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a393a22706c617965725f6964223b733a393a22616c6c6f774e756c6c223b623a313b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31323a22766172636861722835303029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a3530303b733a393a22707265636973696f6e223b693a3530303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a363a2265737461646f223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a363a2265737461646f223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b693a303b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('eeb3f28798987d721a4d8eb56731128d', 1596724993, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a34303b223b693a313b4e3b7d),
('f00b74a7eeb48a4c5e9cd3a0aa1e29c3', 1596724169, 0x613a323a7b693a303b613a323a7b733a363a22736368656d61223b4f3a31383a227969695c64625c5461626c65536368656d61223a373a7b733a31303a22736368656d614e616d65223b4e3b733a343a226e616d65223b733a31383a2270726563696f5f636f6f7264696e61746573223b733a383a2266756c6c4e616d65223b733a31383a2270726563696f5f636f6f7264696e61746573223b733a31303a227072696d6172794b6579223b613a313a7b693a303b733a323a226964223b7d733a31323a2273657175656e63654e616d65223b733a303a22223b733a31313a22666f726569676e4b657973223b613a303a7b7d733a373a22636f6c756d6e73223b613a343a7b733a323a226964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a323a226964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a313b733a31333a226175746f496e6372656d656e74223b623a313b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a31383a2270726563696f5f64656c69766572795f6964223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a31383a2270726563696f5f64656c69766572795f6964223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a373a22696e7465676572223b733a373a2270687054797065223b733a373a22696e7465676572223b733a363a22646254797065223b733a373a22696e7428313129223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a31313b733a393a22707265636973696f6e223b693a31313b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a333a226c6174223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a333a226c6174223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d733a333a226c6e67223b4f3a32353a227969695c64625c6d7973716c5c436f6c756d6e536368656d61223a31353a7b733a31383a2264697361626c654a736f6e537570706f7274223b623a303b733a343a226e616d65223b733a333a226c6e67223b733a393a22616c6c6f774e756c6c223b623a303b733a343a2274797065223b733a363a22737472696e67223b733a373a2270687054797065223b733a363a22737472696e67223b733a363a22646254797065223b733a31313a227661726368617228353029223b733a31323a2264656661756c7456616c7565223b4e3b733a31303a22656e756d56616c756573223b4e3b733a343a2273697a65223b693a35303b733a393a22707265636973696f6e223b693a35303b733a353a227363616c65223b4e3b733a31323a2269735072696d6172794b6579223b623a303b733a31333a226175746f496e6372656d656e74223b623a303b733a383a22756e7369676e6564223b623a303b733a373a22636f6d6d656e74223b733a303a22223b7d7d7d733a31323a22636163686556657273696f6e223b693a313b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a33323a223837393434363963343939646230363633653765613035356535393534636565223b733a343a2264617461223b613a313a7b733a33323a223739646465333939376665363864356562623033353932346264663933623938223b733a32313a22302e34363337313230302031353935383130343831223b7d733a383a227265757361626c65223b623a303b7d7d),
('f63a89d1642c7c6e6f2623e1b5d3d7f9', 1596674449, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a34303b223b693a313b4e3b7d),
('f72ed2292e812977f7bfd4f6196fc4ee', 1596666100, 0x613a323a7b693a303b733a32343a225f5f666c6173687c613a303a7b7d5f5f69647c693a33373b223b693a313b4e3b7d);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`, `foto`) VALUES
(5, 'Bolivia', 'destinos de bolivia', 'categoria_5200401110650.jpg'),
(6, 'España', 'destinos de españa', 'categoria_6200401110715.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `producto` varchar(200) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria_producto`
--

INSERT INTO `categoria_producto` (`id`, `nombre`, `producto`, `estado`) VALUES
(3, 'Pollo', 'Pollo', 'Activo'),
(4, 'Alitas', 'Alitas', 'Activo'),
(10, 'Combo', 'Combo', 'Activo'),
(11, 'Combos  ahorradores', 'Combos  ahorradores', 'Activo'),
(12, 'Guarniciones', 'Guarniciones', 'Activo'),
(13, 'Bebidas', 'Bebidas', 'Activo'),
(14, 'Broaster', 'Broaster', 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `categoria_souvenir`
--

CREATE TABLE `categoria_souvenir` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nit` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `zona` varchar(100) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `razon_social` varchar(50) NOT NULL,
  `zoom` varchar(45) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id`, `nit`, `telefono`, `zona`, `direccion`, `razon_social`, `zoom`, `foto`, `latitude`, `longitude`) VALUES
(53, '3432006', '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', 'Chuquimia ', '12', NULL, '-17.39657921894811', '-66.10522892075197'),
(54, '8047939', '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado paraque se muestre', 'Rosales', '12', NULL, '-17.406343314331206', '-66.05467272412109'),
(55, '4345668', '777848484', 'Surco', 'Tadeo haenke', 'OVANDO', '12', NULL, '-17.4368218', '-66.160426'),
(56, '9334376', '72770506', 'el abral', '3semaforo pasando el tunel del abra', 'mauricio rocha lobo', '12', NULL, '-17.39160067270271', '-66.20058489453125'),
(57, '11362317', '79396328', 'SUD', '1ERO DE MAYO ZONA 5', 'CRISTHIAN EDUARDO MARIACA ANDIA', '12', NULL, '-17.39389405057778', '-66.23903704296875'),
(58, '8044754', '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', 'JIMENA CALDERON', '12', NULL, '-17.43382383346527', '-66.12178612083149'),
(59, '34232121', '6666666', 'galindo', 'casa blanca', 'paz srl', '12', NULL, '-17.3974397', '-66.2208658'),
(60, '3333333', '69829976', 'dadas', '', 'puro gusto', '12', NULL, '-17.365964800145864', '-66.17749836044923'),
(61, '700000000', '77441044', '', '', 'Boris ponce', '12', NULL, '-17.37700276763712', '-66.1696194374367'),
(62, '78676677', '76877665', 'Zona sud ', 'Avenida 17 de octubre entre pasaje 6', 'Faviana Condori soto', '12', NULL, '-17.424333143111227', '-66.14829128068965'),
(63, '8035038013', '76904504', 'Zona Este', 'Sacaba', 'Iber Arnol Fernandez Mercado', '12', NULL, '-17.372190487945073', '-66.16874363022463'),
(64, '986013012', '60747219', 'SUD', 'Zona Mayorazgo C.BAPTISTA', 'Álvaro Céspedes ', '12', NULL, '-17.3633874', '-66.1747872'),
(65, '8044754', '60770183', 'SUD', 'AV. LOS ANGELES FRENTE AL COLEGIO SIGLO XX', 'JMENA CALDERON FERNANDEZ', '12', NULL, '-17.433949111629826', '-66.12205248288603'),
(66, '0', '79350158', 'Sarcobamba', 'Calle Uru ', 'Alejandra Gomez', '12', NULL, '-17.3833942', '-66.1873526'),
(67, '7620697', '76876283', 'villazon', 'Z. MUYURINA C. LUIS CASTEL QUIROGA Y J. ANTEZANA ', 'CARLOS GABRIEL MENDEZ VELARDE ', '12', NULL, '-17.3647249', '-66.1712569'),
(68, '6474243', '71413683', 'sarco', 'Zona.- Sarcobamb', 'Nicole Baldivieso', '12', NULL, '-17.3771696', '-66.1956165'),
(69, '8040831', '71496230', 'Z. SANTA ROSA', 'Blanco galindo km 6 calle Gabriel Garcia Márquez y Simón Bolívar', 'Dafne Trujillo Olivera ', '12', NULL, '-17.3953365', '-66.2121644'),
(70, '666666', '6555666', 'Petrolera', 'Prueba', 'Prueba', '12', NULL, '-17.449361478185864', '-66.15629625927734'),
(71, '0', '70701730', 'SANTA CRUZ', '', 'Marco vargas garcia ', NULL, NULL, NULL, NULL),
(72, '7961849', '79958229', 'AMANCAYAS', 'Av Villazón km 6 1/2 (lado botella de pepsi)', 'Joel Yerland Rivera Lafuente', '12', NULL, '-17.3881825', '-66.086186'),
(73, '7909927018', '71788479', 'zarco', 'villa granadoCalle: yuracare entre thunupa y azanaque', 'RAMOS', '12', NULL, '-17.374285', '-66.1866868'),
(74, '', '69447888', 'sarco', '', ' NOGALES', '12', NULL, '-17.388652001757308', '-66.19886828076172'),
(75, '5153242013', '69524075', 'centro', 'Ayacucho esq la paz El Prado ', 'Maria Linda Roselin Arnez Montaño', '12', NULL, '-17.386043827943677', '-66.16024610625985'),
(76, '8754462', '67442066', 'Zona Villa pagador.', 'Psje. Loayza entre silala y paria', 'Danae Román', '12', NULL, '-17.4514624', '-66.1150411'),
(77, '829358', '70306678', 'Zona: Mayorazgo', 'Direccion: C/ Ushka Paugar #100 entre Libertad y Antawara ', 'EMMA RÍOS DEL CASTILLO ', NULL, NULL, NULL, NULL),
(78, '0', '60342350', 'PACATA', 'De la Calle Vaticano y Av. Papa Inocencio III, 1 cuadra al Este > y 1 al sud, luego a la mano izquierda cómo yendo a Quillacollo entrando en el pasaje, es pasaje innominado', 'MEJIA', '12', NULL, '-17.3683944', '-66.1297881'),
(79, '', '78376868', 'centro ', 'Salamanca esq Pedro Borda', 'Rubén Darío Zárate Pérez', '12', NULL, '-17.3842403', '-66.1529097'),
(80, '829358', '70306678', 'Mayorazgo', 'Direccion: C/ Ushka Paugar ', 'EMMA RÍOS DEL CASTILLO ', '12', NULL, '-17.3589065', '-66.1703667'),
(81, '0', '79448086', 'sarco', 'Dirección Av beijing casi Av américa', 'Jessica Gabriela Cabrera', '12', NULL, '-17.3721403', '-66.1807621'),
(82, '5199254', '79967889', 'TURUPAYA ', 'gral. Galindo 1152 una ncasa antes de llegar a la piscina Victoria', 'Sanchez ', '12', NULL, '-17.3757402', '-66.1425156'),
(83, '', '69456421', 'norte', 'calle emilio  amoretti 195 detras del mercado 10 de febrero av simon lopez', 'maya azuga fernandez', '12', NULL, '-17.3610473', '-66.1824362'),
(84, '0', '76914377', 'tupuraya', 'av América y calle quijarro', 'Joaquín Felipe Dávila Camacho', '12', NULL, '-17.3730519', '-66.1458888'),
(85, '5163793', '65366369', 'PACATA ALTA OTB SENAC', 'C.INNOMINADAS', 'Viviana Bustillo Morato', '12', NULL, '-17.3672958', '-66.1106309'),
(86, '', '68507074', 'km7 galindo', 'Av. Cap. Ustariz km 7 lado aduana', 'Silvia Kathy Reboso Román', '12', NULL, '-17.3966124', '-66.2235449'),
(87, '5301734014', '65336966', 'NORTE ', 'IC NORTE HIPODROMO', 'Daniela Imaña ', '12', NULL, '-17.38406508582903', '-66.14771050822067'),
(88, '4483804', '72748009', 'CHIMBA ', 'Calle Manuel Liendo entre grover Suárez y beigin 386 la única casa blanca con negro', 'Munguia', '12', NULL, '-17.3945206', '-66.1858577'),
(89, '5273569', '79371050', 'zarco ', '234 de enero cerca de la beijing', 'Nelson Revollo', '12', NULL, '-17.3768782', '-66.1828356'),
(90, '', '72261118', 'centro ', ' edificio de capresso. A lado del café está la puerta del edificio.', 'Sergio Soliz', '12', NULL, '-17.3704533', '-66.1707638'),
(91, '7923674', '71483378', 'AMANCAYAS', 'urvanizacion Amancayas calle los molles', 'Felipez', '12', NULL, '-17.3780567', '-66.0891506'),
(92, '672693', '79964421', 'sarco ', 'tadeo haenke y claure ', 'Aranibar', '12', NULL, '-17.380625', '-66.1935333'),
(93, '3078543', '79368802', ' zan Pedro', 'calle José Pol No. 322 entre Carlos Davis y pasaje Henry Matebi', 'Arratia', '12', NULL, '-17.3877897', '-66.1452974'),
(94, ' 5909976', '79708947', 'Villa loreto', 'Calle moto mendez esq. Calle Kami s2604', 'Paola Rocabado', '12', NULL, '-17.4206302', '-66.1604959'),
(95, '7944697', '67468531', 'SUD', 'POR EL TEMPLO SAN CARLOS - Zona sud Calle colquiri y guayaramerin', 'Percy Moya Camacho', '12', NULL, '-17.4072471', '-66.1513899'),
(96, '3140012', '76432238 ', 'SUD', 'PICK UP', 'Zubieta', '12', NULL, '-17.40334532187994', '-66.15526951524798'),
(97, '', '79789961', 'GALINDO', 'KM 7 Y MEDIO BLANCO GALINDO', 'Fernando Santivañez Navia', '12', NULL, '-17.3839218', '-66.2275233'),
(98, '3130462 ', '70745957', 'GALINDO', '', ' Lafuente', '12', NULL, '-17.391928299873907', '-66.20058489453125'),
(99, '7887798015', '76902265', 'GALINDO', 'Av. Blanco Galindo km 7 y medio una cuadra al norte', 'Nelson Copali', '12', NULL, '-17.3900147', '-66.2269532'),
(100, '0', '60343953', 'sarco ', 'Movima entre tunupa y chiriguano', 'Fabiola Laura perez', '12', NULL, '-17.3725376', '-66.1885757'),
(101, '8846801', '75466230', 'GALINDO', ' blanco galindo km 8\'5 entrada concretec 1 cuadra hacia el sur calle bolivar', 'leyla cespedes', '12', NULL, '-17.3925343', '-66.2362795'),
(102, '3773439', '77942343', 'CENTRO ', 'Calle Lanza 923 entre Ramón Rivero y Oruro. Edificio Torres del Prado dpto 23', 'Adriana Iriarte', '12', NULL, '-17.3828354', '-66.1577835'),
(103, '', '65747515', 'SUD', 'AV.INDEPENDENCIA ENTRE PASAJE TEJADA Y AV. COPACABANA - ', 'ALEJANDRO DE LA FUENTE ', '12', NULL, '-17.4252581', '-66.154347'),
(104, ' 4520883', ' 79795995', 'ORB SENAC ', 'sumunpaya norte km 8 blanco galindo', 'carla balderrama', '12', NULL, '-17.384720366572576', '-66.15698290478515'),
(105, '6454712', '60358205', 'SANTA ROSA', 'Blanco galindo km. 6.5, por farmacorp al norte 2 cuadras', 'Laura', '12', NULL, '-17.3900389', '-66.2187109'),
(106, '', '65765060', 'Z. SARCO ', 'Calle Eduardo ocampo Moscoso casi América y Beijing', 'Ingridt heberle', '12', NULL, '-17.3724926', '-66.1792123'),
(107, '0', '76485299', 'CENTRO ', 'Jordan entre Tarapacá y suipacha ', 'Marco Antonio Rocha Sejas ', '12', NULL, '-17.3964367', '-66.1632333'),
(108, '0', '60715189', '', 'Calle mamaocllo entre tiahuanaco  n°550 detras de la cooperativa pio x', 'Mayra apaza Villarroel', '12', NULL, '-17.4020235', '-66.1674583'),
(109, '9401973', '65326935', 'Villa granado', 'Avenida THUNUPA esquina tadeo ahenke', 'Brandon Ayllon soto', '12', NULL, '-17.3830913', '-66.1889713'),
(110, '0', '61604528', 'sarco', 'Calle Héctor Quiroga pasaje Jiménez', 'René Ariel Soliz Ferrufino', NULL, NULL, NULL, NULL),
(111, '', '78350030', 'Zona coÑa coña', 'Calle José Yañez ', 'Juan Alberto Maldonado Meneses', '12', NULL, '-17.3841585', '-66.1983175'),
(112, '0', '70380473', '-Zona Villa Coronilla', 'Av. Manco Kapac # 1089 esq. C/ Los comuneros, esquina noreste con grafiti en la pared.', 'Herberth Cristihan Rojas Rojas', NULL, NULL, NULL, NULL),
(113, ' 3753307', '70380473', '-Zona Villa Coronilla', 'v. Manco Kapac', 'PARIENTE ', '12', NULL, '-17.4043577', '-66.1666261'),
(114, '0', ' 65731188', 'sarco', 'Av Dorbygni entre Francisco Pizarro y Diego de Almagro ( Edificio 6 cielos)', 'Aracely Villarroel Mercado', NULL, NULL, NULL, NULL),
(115, '13192562', '75931649', 'norte', 'Calle Francisco de Quevedo ', 'Brandon andre carvallo zurita', '12', NULL, '-17.3634284', '-66.1574364'),
(116, '7908346', '65506953', 'centro', '', 'Grovert Vasquez', '12', NULL, '-17.3771844963789', '-66.12608385693359'),
(117, '5297325', '60403434', '0', '0', ' amaya', '12', NULL, '-17.392090454159614', '-66.19733953461854'),
(118, '', '70305695', '', '', 'Merklin Burgos', '12', NULL, '-17.38734146608226', '-66.11372423779297'),
(119, '0', '70784672', 'norte', ' Av. POTOSI ', 'Jimmy Carrasco de la Riva ', '12', NULL, '-17.376093', '-66.1536043'),
(120, '3601088,', '70735311', '0', ' edificio Colón piso 8, av. Ballivian esquina plaza Colón', 'Alejandro López videla', '12', NULL, '-17.3941306', '-66.1573282'),
(121, '7883977012', ' 70735591', 'norte', '', 'FarmaStar ', '12', NULL, '-17.385048006064462', '-66.15835619580078'),
(122, '3912878011', '74578400', 'norte', 'Calle Manchaypuito', 'Yubiabril Lenin Padilla Camacho', '12', NULL, '-17.3691601', '-66.1725665'),
(123, '3026320', ' 79755520', '0', '0', 'JORGE VÁSQUEZ', '12', NULL, '-17.39225199722979', '-66.19752513717732'),
(124, '3757088', ' 70359357', '0', 'Alfredo Domínguez ', ' Céspedez', '12', NULL, '-17.3910182', '-66.1899458'),
(125, '3605820', '60377634', 'vinto', 'calle tupac katari antes de la zenon Crespo del mercado central', 'Rosmery Lopez Cuellar', '12', NULL, '-17.3985168', '-66.3161181'),
(126, '7895799', '76917698', 'alto queru queru ', ': 2 circunvalación y wara wara', 'Fernando Robles Torrico', '12', NULL, '-17.3568373', '-66.152064'),
(127, '0', '60719712', '0', '0', 'Claros Luis', '12', NULL, '-17.37690657536737', '-66.15679379465128'),
(128, '', ' 77421120', 'centro ', 'Av. Ramon Rivero  #672 frente al colegio Laredo ', 'Daniela Ledezma', NULL, NULL, NULL, NULL),
(129, '0', '79712902', '0', 'Calle Avaroa Casi Heroinas', 'Pablo Magariños ', '12', NULL, '-17.3940427', '-66.1659118'),
(130, '6452248010', '79722131', 'SUD', 'Av. Capitán ustaris ente av. Sexta Zona Pampa grande', 'Edson Angulo zurita', '12', NULL, '-17.396991', '-66.2102418'),
(131, ' 6509782', ' 68497125', 'TEMPORAL', 'calle jose Mostajo y errique arce', ' ARNEZ', '12', NULL, '-17.3609269', '-66.1630236'),
(132, '5251454', '77957097', 'Queru queru alto', 'Crisantemos casi trinitaria s/n', 'Roxana Quiroga', '12', NULL, '-17.3649655', '-66.1497433'),
(133, '8022989', '79728330', '0', '0', 'Judith Villanueva ', '12', NULL, '-17.3920897206267', '-66.19653724100765'),
(134, '2886468', '78311150', 'GALINDO', 'blanco galindo', 'Mery vargas ', NULL, NULL, NULL, NULL),
(135, '0', '72248002', '0', 'parque la Torre entre Heroinas y Pasaje F. Prada', 'Geika Mejía', '12', NULL, '-17.3899403', '-66.1459274'),
(136, '77992443 - 76477708 - 70309713', '77992443', 'sud', 'av. Panamericana esquina arenales (una cuadra al sud de la 6 de agosto)', 'José Gabriel Heredia Reyes', '12', NULL, '-17.4144688', '-66.156929'),
(137, ' 2886468', '78311150', '0', '0', 'Mery vargas ', '12', NULL, '-17.3920555923415', '-66.19679074411995'),
(138, '4534056', ' 72764474', 'temporal', 'Felix Lope de Vega entre Francisco de Quevedo', 'Freddy Ariel Angulo Sarabia', '12', NULL, '-17.3617611', '-66.15728'),
(139, '5109340', '72281451', '0', 'Calle Villalobos Casi Circunvalación, Condominio Vista Verde', 'Jesús Chalar', '12', NULL, '-17.3718258', '-66.1411898'),
(140, '', '76400351', 'villazon', ' av chapare parada micro H dos cuadras al norte  ', 'Kevin Rueda Torrez', '12', NULL, '-17.3911752', '-66.0946101'),
(141, '815128', '60347821', 'villazon', 'villazon', 'villarroel', '12', NULL, '-17.39719937549647', '-66.06071774831969'),
(142, '0', '74301238', '0', 'Parque Lincoln casi Washington', 'Julia Gutierrez', '12', NULL, '-17.3707564', '-66.1672843'),
(143, '5310331', ' 60738390', 'norte', 'edificio Washington entre obispo Anaya y Teófilo Vargas zona Sarco x el colegio maryknoll Juan de la Rosa', 'Gustavo Puente', '12', NULL, '-17.3766289', '-66.1673621'),
(144, '0', ' 79956203 79956', 'norte ', 'FMILIO AMORETI', 'Álvaro Enriquez Mancilla ', '12', NULL, '-17.3623842', '-66.1831183'),
(145, 'Arcienega', 'Arcienega', 'BLANCO GALINDO ', 'Condominio Juan Pablo IIA dos cuadras de la sucursal blanco Galindo', 'Arcienega', '12', NULL, '-17.412766136918663', '-66.14219120676448'),
(146, '3001079', '72736303', '0', ' Pacata baja - pedregal', ' Merino', '12', NULL, '-17.3713068', '-66.1122552'),
(147, '8721936 ', '79716736', 'sud', 'AV. BLANCO GALINDO KM 8 CALLE 1RO DE MAYO ENTRE 10 DE NOVIEMBRE Y 27 DE MAYO', ' GABRIELA CRESPO', '12', NULL, '-17.3925161', '-66.2282464'),
(148, '0', '4420583 - 78307', 'norte', 'Av Juan de la Rosa entre Beijing y América', ' Juan Leonardo Vasquez Vidal ', '12', NULL, '-17.3725699', '-66.1823686'),
(149, '2757967010', '65300088', '', '', 'EDGAR OROS', '12', NULL, '-17.383409802739198', '-66.11784142863083'),
(150, '0', '77421120', 'norte', 'Av. Ramon Rivero  ', 'Daniela Ledezma', '12', NULL, '-17.3811468', '-66.1525459'),
(151, '0', ' 65771952', '0', 'avenida sexta entre Manuel angel anaya', 'fabian rodriguez siñani', '12', NULL, '-17.3910557', '-66.2065081'),
(152, '0', '69497852', 'PACATA BAJA', 'BANCO SOL ATM', 'RODRIGO PAZ', '12', NULL, '-17.372673', '-66.1270369'),
(153, '0', '65752510', 'centro', 'Calle Ladislao Cabrera casi tumusla', 'Patricia claros', '12', NULL, '-17.3983862', '-66.1610296'),
(154, ' 846890', '70355635', '0', 'Av reducto #386 casi pasaje cullavi (frente a la escuela Simon Bolívar) la casa esta pintada con el logo de monopol ', ' Daniela Albarracín', NULL, NULL, NULL, NULL),
(155, '846890', '70355635', '0', ' Av reducto ', ' Zambrana', '12', NULL, '-17.3358312', '-66.2204759'),
(156, '116699 ', '77439009', 'COLQUIRI ', 'PLAZUELA SAN FRANCISCO DE ASÍS', 'nicol Valverde ', '12', NULL, '-17.3620523', '-66.1850686'),
(157, '0', '65337808', '0', '0', 'ELIAS ROJAS', '12', NULL, '-17.376138442743667', '-66.15704858995304'),
(158, '6428406', '72741117', 'centro', 'blanco galindo ', 'Nelson flores peralta', NULL, NULL, NULL, NULL),
(159, '8014155013', '60362086', '0', 'Av. Blanco Galindo y Cap. Víctor Ustariz km 5,5, puerta color mostaza  detrás del Restobar Mariachi', 'Vanesa Pacosillo Calustro', '12', NULL, '-17.3959358', '-66.2113536'),
(160, '0', '77986516', 'Zona autoventa ', 'Humawaka casi beijing', 'Raquel torrez ', '12', NULL, '-17.4019861', '-66.1862254'),
(161, '', '76905305', 'LAGUNA COÑACOÑA ', 'AV COPERMICO', 'JOSE SANTOS ', '12', NULL, '-17.3775064', '-66.2025746'),
(162, '0', '75882872', '0', ' av América calle Antonio zegada edificio ebeneser', 'Paola carpio', '12', NULL, '-17.3728266', '-66.1777427'),
(163, '3028392', '68450897', '0', '0', 'QUIROGA', '12', NULL, '-17.373313290068378', '-66.13177544762915'),
(164, '8037166', ' 70736633', 'NORTE ', 'Simon lopez y cala cala alado de la iglesia acera norte', 'Garey ', '12', NULL, '-17.3683563', '-66.1641848'),
(165, '0', '65325078', '0', '0', ' Janaina', '12', NULL, '-17.375391705698338', '-66.15673449098963'),
(166, '1598669', ' 72044604', '', '', 'Alberto Peña Salvatierra', '12', NULL, '-17.373252614871557', '-66.14462060343551'),
(167, '833773016', '72755915', '', '', 'Carlos Torrejon', '12', NULL, '-17.373907934319124', '-66.1439339579277'),
(168, '8037299', '79982292', '/San pedro ', 'Carlos davis #1439 entre jose pol y parque la torre ', ' CLAROS', NULL, NULL, NULL, NULL),
(169, '6428406', '72741117', '0', 'avenida blanco galindo - calle w ceballoos', 'Nelson flores peralta', '12', NULL, '-17.3933974', '-66.1884767'),
(170, '9373186', ' 70737830', 'CENTRO ', 'Freddy Mauricio Zelada RocabadoAv. Salamanca entre antezana y lanza', 'Freddy Mauricio Zelada Rocabado', '12', NULL, '-17.3862464', '-66.1542337'),
(171, '3610787', '71882950', '0', 'Cerca de Mons J.Ramallo 104', 'Danilo Tapia', '12', NULL, '-17.3828907', '-66.2008888'),
(172, '12682716', '63972517', 'sacaba ', 'Av. Circunvalación km 7/5 calle Pujllay Esmeralda Norte', 'Caludia Vargas ', '12', NULL, '-17.37643', '-66.073662'),
(173, '8037299', ' 79982292', '0', 'Carlos davis ', 'CLAROS', '12', NULL, '-17.3880562', '-66.1454766'),
(174, '8032770', '77423019', 'sud', 'Av.petrolera km4 calle Mariano moreno y gualberto Vega Zona sud', 'Mikaela Camila Montaño Medina ', '12', NULL, '-17.4417215', '-66.1404274'),
(175, '9517142', '60399251', 'Muyurina', 'Av Ramon rivero lado bloques militares', 'Rodrigo Huanca', '12', NULL, '-17.3805376', '-66.1487453'),
(176, '6498478', '77982322', 'pacata ', 'Ma. Manuela Rocha 207 entre Iriarte y Torres', 'Ingrid Quiroga Fernández', NULL, NULL, NULL, NULL),
(177, '9508198', '76410322', '', '', 'Andy Guzman', '12', NULL, '-17.377118368808283', '-66.171937099023'),
(178, '', '68834259', 'norte ', 'Calle Los Alelies S/N, Cochabamba, Bolivia', 'Ligia Loras', '12', NULL, '-17.3673478', '-66.1413144'),
(179, '0', '79962228', '0', 'Av Villazon km 6 1/2', 'Ilia Lujan ', '12', NULL, '-17.3832186', '-66.0867416'),
(180, '', '77480850', 'blango galindo ', 'sbtte Jose Kanaudt esq. Pasaje', 'alejandro ', '12', NULL, '-17.4028166', '-66.1705791'),
(181, '6498478', '77989300', 'Pacata baja', 'Ma. Manuela Rocha 207 entre Iriarte y Torres', 'Ingrid Quiroga Fernández', '12', NULL, '-17.3704776', '-66.1156349'),
(182, '1017215021', '70921348', '0', 'Av. Villarroel ', 'Laboratorios Crespal S.A.', '12', NULL, '-17.376506', '-66.1597323'),
(183, '', '60780876', 'centro ', 'Es al medio de atb y univida en una casa roja con rejas dice repostería', 'Kevin Pozo Flores', '12', NULL, '-17.3776397', '-66.1510707'),
(184, '0', '77951490', 'ESMERALDA NORTE ', 'CALLE CHACARRERA Y KULLAHUADA', 'LIZBETH MOYA', NULL, NULL, NULL, NULL),
(185, '5258209', '79933989', 'SUD', 'cerca hospital univalle', 'Raul Chavez Antezana', '12', NULL, '-17.4210167', '-66.1349716'),
(186, '13937038', '75797547', '0', '0', 'Luis Reynaldo Romero Rocha', '12', NULL, '-17.39133534386301', '-66.19940494885164'),
(187, '12745489', '71772094', 'sacaba ', 'Sacaba mercado morro  final independencia en innominada', 'Lizeth espíritu vargas ', '12', NULL, '-17.399282', '-66.0345529'),
(188, '5203557', ' 76905910', '0', 'DANIEL SALINAS Y AV. Sexta', 'ROCA', '12', NULL, '-17.3876072', '-66.209974'),
(189, '3025296', '75994374', 'Pacata Alta', 'C/Papa Alejandro jandro VI', 'Luis Lujan Soliz', '12', NULL, '-17.3668872', '-66.130307'),
(190, '8731080', '65736472', 'recoleta', 'Canal Atb. Av. Pando. Pje tupiza', 'Guillermo Molina', '12', NULL, '-17.3779076', '-66.1509956'),
(191, '6474963', '70717798', '0', '0', 'Mauricio Beltran', '12', NULL, '-17.392011186590192', '-66.19965562800017'),
(192, '13749833', '69472123', 'centro', 'Av. Oquendo y Guatemala', 'Elvis César Chambi Blanco ', '12', NULL, '-17.3996653', '-66.1485909'),
(193, '8012742', '65378331', 'colcapirua ', 'av. blanco Galindo km 5.5 entre av. sexta y calle doc. Saracho', 'Anthony Denis Saenz Castillo', '12', NULL, '-17.3937709', '-66.2088392'),
(194, ' 9428462', '77950100', '', '', 'nery ', '12', NULL, '-17.387996735093157', '-66.15698290478515'),
(195, '0', '69543403', '0', 'Cruce taquiña', 'Franz Maldonado', '12', NULL, '-17.357114', '-66.1898847'),
(196, '13226949', ' 77960577', 'las cuadras ', 'Final 9 de Abril y Rubén Dario', 'Riky Brandon Arteaga Zamorano', '12', NULL, '-17.3975582', '-66.1362381'),
(197, '', '69521235', 'pacata ', 'cirunvalacion pacata baja 213', 'karen nuñezz ', '12', NULL, '-17.3736044', '-66.1274692'),
(198, '9435966', ' 77937706', 'SUD', 'av. panamericana y manuela rodriguez', 'Yessica villarroel', '12', NULL, '-17.4165876', '-66.1568893'),
(199, '0', ' 67553865', 'Florida Norte', 'AV Blanco Galindo km 7 y medio', 'Jefferson Danny Vargas Hidalgo', '12', NULL, '-17.3872069', '-66.2242052'),
(200, '9393992', '60366554', '0', '0', 'WENDY ALANES AGUILA', '12', NULL, '-17.392224791877638', '-66.19684223450693'),
(201, '0', '65729006', 'Zona seminario', 'Gurnnar mendoza', 'Jhasmani Yañez', '12', NULL, '-17.3837722', '-66.1943734'),
(202, '', ' 77941502', 'CALA CALA', 'Por la subida de José Mendoza, En el segundo parque lincon', 'Beel gutierrez', '12', NULL, '-17.3708508', '-66.1672556'),
(203, '[17:04, 4/8/2020] Terceros:  terceros [17:04, 4/8/', 'Terceros', 'COLCAPIRHUA', 'Km 8 cap ustariz', 'Terceros ', NULL, NULL, NULL, NULL),
(204, '8690383013', '76956700', 'COLCAPIRHUA', 'Km 8 cap ustariz', 'terceros', '12', NULL, '-17.3937681', '-66.2297409'),
(205, '0', '78332736', '0', ' Direccion.- 4 y medio de la blanco galindo calle gastón moscoso', ' Amy Liao', '12', NULL, '-17.3945708', '-66.1992181'),
(206, '0', ' 69433436', 'Zona Coronilla', 'Bartolome Guzman entre Huaskar y Tiwanaku', 'Alejandro Viscarra', '12', NULL, '-17.4034278', '-66.1625337'),
(207, '6403263010', '75490904', 'CALA CALA', 'av carlos medinacelli calle batallon colorados edificio america 2 planta baja - Es un centro de fisioterapia', 'Ledezma', NULL, NULL, NULL, NULL),
(208, '5279810', '60710065', 'GALINDO', 'Av Victor Ustariz Km 6 1/2  sobre la avenida Zona Santa Rosa', 'Carrillo ', '12', NULL, '-17.3969346', '-66.2171005'),
(209, '4534915019', ' 77938744', '0', '0', 'Santivañez', '12', NULL, '-17.392007270875702', '-66.19697951943455'),
(210, '2706341', '77434692', 'CALA CALA', 'enrique arce entre simon lopez y ciclovia', 'Morales', '12', NULL, '-17.3663635', '-66.1648941'),
(211, '0', ' 69434434', '0', 'Zona autoventa barrio Marevi.', ' Kenny Jorge Pairo Veliz ', '12', NULL, '-17.4014645', '-66.1929446'),
(212, '6403263010', '75490904', 'CENTRO', 'A av carlos medinacelli calle batallon colorados edificio america 2 planta baja', 'Ledezma ', '12', NULL, '-17.378499', '-66.1689709'),
(213, ' 5608441018 ', ' 76917472', 'GALINDO', 'Calle 21 de enero ibuen RetiroSona Sumunpaya', 'José Pedro Rojas Guataica ', '12', NULL, '-17.4030864', '-66.2295663'),
(214, '1646357010', '76906136', '0', 'calle 16 de julio n. 719 a entre calle la paz', 'richter', '12', NULL, '-17.3844271', '-66.1541101'),
(215, '3002051', '77902672', '', '', 'Maria teran', '12', NULL, '-17.383737444577392', '-66.1161248148613'),
(216, ' 6514580', ' 60784407', '0', '0', 'Quiroga Diego', '12', NULL, '-17.37579612173888', '-66.12712970071225'),
(217, '1420661', '75997533', '0', '0', 'Aguilar', '12', NULL, '-17.376870193183304', '-66.15619313337416'),
(218, '', ' 76445276', 'FLORIDA', 'km7.5 Florida norte entrando una cuadra depues mano derecha', 'melany Fuentes', '12', NULL, '-17.3899031', '-66.2241404'),
(219, '', '63960287', 'SACABA', 'Calle sucre Colegio inti muju', 'Maria nancy frauz camacho', '12', NULL, '-17.422614', '-66.0087482'),
(220, '0', '70303087', '0', 'Calle Bolivar Nro. 876 entre Oquendo y 16 de Julio edif. Montero', 'Laura Rodriguez ', '12', NULL, '-17.392149', '-66.1497955'),
(221, '4467394018', '76934670', 'PACATA', 'JACINTO ANAYA Y A URQUIDI', 'LEON', '12', NULL, '-17.37065', '-66.1377848'),
(222, '7611933', '76986394', 'Zona Huayllani', ' Villazón Km 9, subiendo 3 cuadras al norte de la rotonda que está pasando LA UDABOL. Calle innominada, Pasaje Cobol. Frente Condominio Santa Rita', 'Jorge Alberto Vargas Negrete', '12', NULL, '-17.3900054', '-66.0611706'),
(223, '5908627', ' 70785515', 'Zona quintanilla', 'Calle Maldonado esquina PanamáZona quintanilla', 'Edwin ledezma', '12', NULL, '-17.3899776', '-66.1137859'),
(224, '', '75401827', 'CENTRO', 'Punata y republicaLa cancha', 'Ximena bautista', '12', NULL, '-17.4025799', '-66.1515424'),
(225, '', ' 65723444', 'CENTRO', ' Baptista entre mayor Rocha y México', 'Zaida elizabeth Arnez Rojas ', '12', NULL, '-17.38867', '-66.1583599'),
(226, '0', ' 77916648', '0', 'Cae linares entre general Roman y aspiazu', 'Liz america pedriel', '12', NULL, '-17.3970156', '-66.1426628'),
(227, '3739139', '.77921772', 'LA CHIMBA ', 'MARZANA Y STTE JONTA', 'Zurita de Garcia Rosa Laura', '12', NULL, '-17.4041367', '-66.1714942'),
(228, '0', '70752494', '0', 'Sumumpaya norte ( km 8 Av blanco Galind', 'Roxana Condoretty', '12', NULL, '-17.3876674', '-66.2303036'),
(229, '0', '70719311', '0', 'San Antonio de patdua y nicaragua', 'Nadir Rodríguez Lara', '12', NULL, '-17.3921541', '-66.1101843'),
(230, '5269681', ' 70730398', 'CHIMBA', 'av. Chaco 2419', 'Sejas ', '12', NULL, '-17.3998527', '-66.1818854'),
(231, '3019847', ' 79796580', 'PRADO', 'C. Lanza esquina La Paz', 'José Burgulla', '12', NULL, '-17.3839744', '-66.1566434'),
(232, '8779624', '69508666', 'Zona Turupaya', 'calle Jarkas #80 entre olivos y melocotonero', 'Nicole Coelho Rocabado', NULL, NULL, NULL, NULL),
(233, '0', ' 71706577', 'MUYURINA', 'Ricardo Martínez ', 'Sebastian Medina Joffre', '12', NULL, '-17.3840094', '-66.1429393'),
(234, '0', ' 77423395', 'CENTRAL', 'Final ayacucho detras del surtidor de la terminal', 'Wilma Quiroga', '12', NULL, '-17.4038997', '-66.1587685'),
(235, '', ' 75906819', 'NORTE ', 'urbanización padre Berta zona chilimarca distrito 5', 'marianela ali Pacheco ', '12', NULL, '-17.3402131', '-66.1923265'),
(236, '', '70262222', 'MAYORAZGO', 'BEIGIN Y PUENTE PINTO 1 CUADRA LARGA AL NORTE ', 'EDSON CAVIADES SEJAS', '12', NULL, '-17.3542532', '-66.1738744'),
(237, '0', ' 70395505', 'hipodromo', 'Calle Fernando de Magallanes ', 'Carolina Trigo Aranibar ', '12', NULL, '-17.3884792', '-66.17458'),
(238, '.7911519', '77661995', 'GALINDO', 'Ave.Blanco Galindo km 5 1/2 frente Al surtidos Las Islas edificio amarillo', 'Glendy Hermosilla', '12', NULL, '-17.3925582', '-66.2092057'),
(239, '0', ' 72744456', 'Villa Buchs', 'Víctor Ustaroz km 3 1/2', 'Elizabeth Antezana ', '12', NULL, '-17.3945921', '-66.1908342'),
(240, '6424511', '77454599', 'SUD', 'Av. Cabildo ', 'Rodrigo Guachalla ', '12', NULL, '-17.4142437', '-66.161499'),
(241, '1689560 ', '61612445', 'Villa buch norte', 'Av Blanco galindo km 3y medio, pasando el surtidor los alamos se entrra por una pasarela 4 cuadras hacia el norte', 'Benavides ', '12', NULL, '-17.3883924', '-66.1898339'),
(242, '', '76473704', 'VILLA CORONILLA ', 'Calle comunerosVilla coronilla', 'Dorian Alcocer', '12', NULL, '-17.4047113', '-66.1663204'),
(243, '3570379', '74303770', 'VILLA BUSH', 'Pj. 12 de Junio entre abrían PatiñoTras el colegio Albert Existen', 'SANDRA Trujillo', '12', NULL, '-17.3867689', '-66.1871852'),
(244, '0', '60713578', 'COLCAPIRHUA', 'Final tadeo Haenke Barrio Martín Cárdenas esquina puente guillen', '.Nancy  Saavedra', '12', NULL, '-17.3786706', '-66.2138659'),
(245, '8041834', '75941534', 'BLANCO GALINDO ', ' Av Segunda circunvalación, calle José Rosendo Gutierrez', 'Belen Nuñez Heredia', '12', NULL, '-17.3526931', '-66.1590285'),
(246, '0', '70746084', '0', 'JOSE ANTONIO ZEGADA N. 1883', 'ALBERTO STEVE SALAZAR', '12', NULL, '-17.3721674', '-66.1778074'),
(247, '0', '72738035', 'VILLA BUSH', 'calle 23 de marzo lado surtidor beigin ', 'Mauricio ', NULL, NULL, NULL, NULL),
(248, '0', ' 72738035', 'VILLA BUSH', 'Calle 23 de marzo frente a SERVECO', 'Mauricio ', '12', NULL, '-17.3896525', '-66.1838714'),
(249, '0', '76964955', 'SARCO', ' villa granado av. Vilmavivencio calle apurimack', ' Evelyn Guzmán Olivera', '12', NULL, '-17.3774858', '-66.1895256'),
(250, '3388503', '70563309', 'ZONA CHIMBA ', ' Avenida final beijing sur, esquina pasaja D.', 'Marcela Caceres ', '12', NULL, '-17.4055786', '-66.1874355'),
(251, '', ' 79972669', 'NORTE ', 'Final América Oeste entre thunupa y tapiete', 'Luis terceros', '12', NULL, '-17.373756', '-66.1869469'),
(252, '6111854', '75906819', 'CIUDAD DEL NIÑO', 'urbanización padre Berta zona chilimarca distrito 5', 'marianela ali Pacheco ', '12', NULL, '-17.3402131', '-66.1923265'),
(253, '0', '69528650', 'COLCAPIRHUA', 'Yendo hacia el cementerio de la concordia una cuadra entes de llegar al cementerio hay que entrar a la derecha', 'Jacqueline Alvis Castro', '12', NULL, '-17.3813337', '-66.2186352'),
(254, '', ' 60369116', 'CENTRO ', 'calle Garcilaso de la Vega plaza virrey Toledo , villa GALINDO', 'Flora vallejos', '12', NULL, '-17.3910769', '-66.167381'),
(255, '0', '77929717', 'CENTRAL', 'Republica 16 de julio', 'Edson montaño aldana', '12', NULL, '-17.4001661', '-66.1494938'),
(256, '2735011', '72233444', 'norte alto queru queru', 'Pasaje la sevillana esquina durazneros', 'Boris Muñoz Arce', '12', NULL, '-17.3614971', '-66.1487178'),
(257, '', '60410561', 'CENTRO ', 'AV 6 DE AGOSTO AVION', 'Wilver Rodriguez Cauna', '12', NULL, '-17.4086756', '-66.1699165'),
(258, '0', '67199730', 'MUYURINA', 'AV. RAMON RIVERO VILLA MILITAR BLOQUE B PISO 4, NRO 32  ', 'JOSE TORO IBAÑEZ', NULL, NULL, NULL, NULL),
(259, '0', '67199730', 'ZONA MUYURINA', 'AV. RAMON RIVERO VILLA MILITAR BLOQUE B PISO 4, NRO 32', 'JOSE TORO IBAÑEZ', '12', NULL, '-17.3780914', '-66.144554'),
(260, '', '76926693', 'ZONA CHIMBA ', 'ALIHUATA ES CHACO', 'Eric Crespo ', '12', NULL, '-17.4037255', '-66.1731067'),
(261, '', '71497002', 'VILLAZON', 'Av Villazón km 3.6 a sacaba subir 1 cuadra al norte(calle Aniceto medina) y a la mano izquierda en el callejón Ricardo jairo', 'Ana Gabriela Vargas Fernández', '12', NULL, '-17.3815042', '-66.1127553'),
(262, '', '76177548', 'Sud', 'Av. Cabildo n° 2860, porton cafe oscuro con cortina de metal (tipo tienda) tinglado grande sobre los dos , cercado', 'david terrazas', '12', NULL, '-17.4181428', '-66.1664281'),
(263, '', '65242759', 'SACABA ', 'VILLAZON FORESTAL', 'Mayli Rojas', '12', NULL, '-17.3835047', '-66.0946436'),
(264, '3724761', ' 70387826', 'COÑA COÑA', 'Frente el puente guillen la paralela a la calle Martín Cárdenas', ' Saavedra', '12', NULL, '-17.3783638', '-66.2136738'),
(265, '', '76997175', 'America y Beguin', 'Óscar Cerruto 22, Edificio Inti 2, depto 4B', 'Jonathan Pero', '12', NULL, '-17.3747791', '-66.1792397'),
(266, '0', '75481996', '0', '0', 'Deysi ALEJandra Perez Zurita', '12', NULL, '-17.391829803413856', '-66.19724396781587'),
(267, '', '61602377', 'COLCAPIRHUA', 'Barrio ferroviario', 'Evelin sanchez herbas', '12', NULL, '-17.394656', '-66.2320815'),
(268, '3573849017', '76462741', 'VILLA GALINDO', '', 'Cabrera ', '12', NULL, '-17.3886448', '-66.1686042'),
(269, '0', '65778878', '0', '0', 'Anahi Siñani', '12', NULL, '-17.391027323741156', '-66.19620484720993'),
(270, '0', '72710385', 'CALA CALA', 'pasaje Eterovic n°500, calle Milivoy Eterovic entre calle zoológico y Av Martín de', ' Oscar Pallares', '12', NULL, '-17.3832241', '-66.1672419'),
(271, '', '75701489', 'GALINDO', 'BLANCO GALINDO AL FRENTE DE LA CAJA NACIONAL', ': JOSE LUIS RENGEL CÁCERES', '12', NULL, '-17.3919715', '-66.2061649'),
(272, '0', '68485263', 'URBANIZACION LAB', 'Guadalupe final circunvalación este', 'Alejandro Galarza', '12', NULL, '-17.380368', '-66.0714196'),
(273, '2874234014', '71726288', 'NORTE ', 'Zona bajo aranjuez', 'corrales', '12', NULL, '-17.3752813', '-66.1464175'),
(274, '5198457012', ' 70790434', 'Zona Miraflores', 'Mariano borda esquina papa Clemente', 'Carlos Nallar', '12', NULL, '-17.3675937', '-66.1347177'),
(275, '', '60353177', 'QUINTANILLA ', 'Av Chapare y los ángeles', 'Lorena Rojas', '12', NULL, '-17.3827914', '-66.1126175'),
(276, '0', ' 65363982', 'LINDE', 'Calle innominada', 'Patricia Camacho Alborta', '12', NULL, '-17.3563509', '-66.1980494'),
(277, '5369233014', ' 72774720', 'colcapirua ', 'Blanco Galindo km 4 1/2', 'Ramiro Montaño Rea', '12', NULL, '-17.3928106', '-66.2264907'),
(278, '0', ' 77155555', 'Queru queru', ' Pedro blanco trinidad y villarroel', 'Fabrizio Zamora', '12', NULL, '-17.3760146', '-66.158379'),
(279, '6406136', ' 70708128', 'VILLAZON', 'Maximiliano Kolbe y tercera calle', 'Alvaro Fernando Torrico Castillo', '12', NULL, '-17.3786534', '-66.109528'),
(280, '0', ' 69509564', 'COLCAPIRHUA', 'Avenida Blanco galindo km 8', 'Rosenda Alavi de Mamani', '12', NULL, '-17.3909241', '-66.2299536'),
(281, '', '69107970', 'Chimba', 'CALLE TROJES Y INNOMINADA', 'Rodrigo terrazas', '12', NULL, '-17.4057476', '-66.1895661'),
(282, '6436036', ' 70358080', 'COÑA COÑA', 'pedro  nolasco ', '- paula jhiobana  gutierrez delgadillo', '12', NULL, '-17.3878101', '-66.2039642'),
(283, '0', '65739369', 'TEMPORAL', 'Francisco de Quevedo entre mostajo y Lope de Veg', ' Elizabeth Nancy Zurita Bolaños ', '12', NULL, '-17.3623581', '-66.1580658'),
(285, '8990', '889808', NULL, NULL, 'laca', NULL, NULL, NULL, NULL),
(286, '1104764', '76463764', 'Pacata', 'Av.Papada Damaso n 421', 'Carlos Vera', NULL, NULL, NULL, NULL),
(287, '6477350', '69516203', 'NORTE ', 'America oeste entre azanaque y baure calle yaminawa', 'Fabiola Bustamante Quiroz', '12', NULL, '-17.3719044', '-66.1864285'),
(288, '7898671', '70773707', 'QUERU QUERU', 'av Villarroel esquina Pedro Blanco, edificio San Marcos III, dpto 2-A', 'Fernando Pereira ', '12', NULL, '-17.3766785', '-66.1590729'),
(289, '3036248', '60375915', 'COÑA COÑA', 'GALINDO KM 4 ESQ. AV SEGUNDA ', 'Alberto hermosa', '12', NULL, '-17.38870534322221', '-66.19719484259389'),
(290, '7777930', '70721400', '', '', 'JOSE TORRES', '12', NULL, '-17.374481333384697', '-66.13745373628205'),
(291, '3111139', '63932018', 'CONDEBAMBA', 'C. PACHACUTEC Y ASARPAYA', 'Lourdes Challapa', '12', NULL, '-17.3540977', '-66.1836756'),
(292, '356846028', '62623901', 'QUERU QUERU', 'AV. AMERICA Y SANTA CRUZ', 'C.E.O LEVANTE DENTAL S.R.L.', '12', NULL, '-17.3729122', '-66.157569'),
(293, '5258161017', '76903779', 'norte ', ' Atahuallpa y mostajo ', 'Miguel angel bustamente ', NULL, NULL, NULL, NULL),
(294, '6545014', '75992370', 'COLQUIRI NORTE', 'AV. CENTENARIO', 'CRISTIAN FERNANDEZ CASTELLON', '12', NULL, '-17.3487417', '-66.1830421'),
(295, '0', '77411959', 'villa bush', ' Av blanco Galindo km 3 y 1/2', 'Triveño Pozo Jhoselin', '12', NULL, '-17.3953705', '-66.1915158'),
(296, '983433', '70750730', 'kami', 'av la paz y reducto', 'mario ferrufino ', '12', NULL, '-17.390799311557586', '-66.23363319902043'),
(297, '0', '61623965', 'siglo xx', ' Km 10 detras de la coca cola  calle Catavi.', 'Susan Maeiel Ramos', '12', NULL, '-17.3884991', '-66.2517111'),
(298, '1104764', '76463764', 'Pacata Alta', 'Av Papa Damaso I N°421', 'Carlos Vera', '12', NULL, '-17.3685013', '-66.1268018'),
(299, '2891667', '79331504 ', 'temporal ', ' (CALLE MACEDONIO URQUIDI Y RICARDO MUJIA )LADO DIPROVE EN LA PUERTA DE LA ESCUELA FORESTAL', ' MANUEL MORALES ', '12', NULL, '-17.3545403', '-66.1592174'),
(300, '0', '77908627', '0', '0', 'remberto felipez riva', '12', NULL, '-17.3920066699939', '-66.19585159442927'),
(301, '3781748', '69494999', '', '', 'Villarroel', '12', NULL, '-17.372982525035013', '-66.15117479624061'),
(302, '', '63911076', 'ESTADIO', 'Dirección calle bartolome de las casas esquina pasaje zoológico', 'VERONICA ALACA ', '12', NULL, '-17.384101', '-66.1654932'),
(303, '0', '60353060', ' la florida zud', ' km 7 1/2 blanco Galindo', 'Miguel Farid Terán Villca', '12', NULL, '-17.3941877', '-66.2263813'),
(304, '3143613019', '74355680 ', 'FRUTILLAR', 'Av. Papá Damaso Esq. J. Castillo', 'Gloria Enriquez', '12', NULL, '-17.3674131', '-66.13091'),
(305, '0', '75467929', 'CHIMBA', 'CALLE ANTONIO VIVALDI', 'Laura orelLaNA goytia', '12', NULL, '-17.4106082', '-66.1826385'),
(306, '9315449', '75976199', 'NORTE ', 'Sumaj llajta entre inka roq\'a', 'Sebastian Torrico Almaraz', '12', NULL, '-17.3578291', '-66.1796292'),
(307, '0', '6575775', 'Sausalito', 'Av. Blanco galindo km 6 sausalito', 'Yessika Dayana Arévalo Burgulla', '12', NULL, '-17.3877263', '-66.2138593'),
(308, '2708032', '70645819', '0', 'Km 11 .  6 cuadras al norte. Av. Saavedra Norte. Urb Carlos Peña.', 'Moraima Gonzales', '12', NULL, '-17.3862694', '-66.2614845'),
(309, '0', '77402957', 'cala cala ', 'Av mancesped entre tarcos y algarrobos', 'Benjamin aquino flores ', '12', NULL, '-17.3686946', '-66.1687371'),
(310, '0', '60348910', 'villa bush', 'Av Segunda entre Fleming y Arquímedes lado fábrica IMBA', 'Adriana Sandoval', '12', NULL, '-17.399189', '-66.1980667'),
(311, ' 3127421', '79375474', 'Chimba', 'Calle Coronel Marzana', ' Jaime Delgadillo', '12', NULL, '-17.4049311', '-66.1717665'),
(312, '0', '69528760', 'NORTE ', 'Manuel de la falla pasaje l', 'Eduardo Andrés balderrama Martínez ', '12', NULL, '-17.3634299', '-66.1887814'),
(313, '0', ' 75400111', 'villa bush', 'Calle José reyes Morales y Av blanco Galindo ', 'Willy Paz Lazo', '12', NULL, '-17.399189', '-66.1980667'),
(314, '797374013', ' 68504004', 'cala cala', 'av gabriel rene moreno y castro rojas, calle cumana 1454', 'Maria Jose Torrico Vargas', '12', NULL, '-17.3804311', '-66.1732584'),
(315, '', '60724874', 'NORTE ', 'Calle elena rendon nro 137 entre av atahuallpa y calle walter zeballos', 'Noelia Noelia torrez', '12', NULL, '-17.3655683', '-66.1617556'),
(316, '0', ' 70342049', 'PRADO', ' México entre Ayacucho y Junín', 'Mónica Gamboa', '12', NULL, '-17.3883059', '-66.1602995'),
(317, '0', '74369530', '0', '0', 'Daniel Valenzuela Medrano', '12', NULL, '-17.39234081403926', '-66.19679623741563'),
(318, '0', '67598207', ' Busch.', 'Av. Dorbigni esquina Juan Claure (Condominio Juan Pablo II Fase 2).', 'Maya Camacho Mojica.', '12', NULL, '-17.3875732', '-66.1955414'),
(319, '8508057', '76171018', '', '', 'BUHEZO CALDERÓN ALEJANDRA NAYRA', '12', NULL, '-17.37423559316349', '-66.15183038126754'),
(320, '6524672019', '79700542', 'villa bush', 'Av. Segunda N 678', ' Miguel Flores', '12', NULL, '-17.3997059', '-66.1985321'),
(321, '0', '70715859', 'AROCAGUA ', 'AV. CHAPARE Y CALLE HERBOS', 'Carlos Alcocer', '12', NULL, '-17.3760888', '-66.1283026'),
(322, '8024293', '79762801 ', 'TURUPAYA ', 'Direccion: avenida uyuni entre Guillermo viscarra edificio vyv', ' Carlos Terrazas ', '12', NULL, '-17.3768173', '-66.1439023'),
(323, '0', '79388851', ' Sud', 'Calle M. Virreira 044 ', 'Tatiana Card0na', '12', NULL, '-17.4271182', '-66.1567988'),
(324, '5258161017', '76903779', 'temporal ', 'Dirección: Atahuallpa y mostajo', 'Miguel angel bustamente ', '12', NULL, '-17.3613224', '-66.1618048'),
(325, '3752868', '67481684', '0', '0', 'Rossemary Céspedes', '12', NULL, '-17.391133730416406', '-66.19662454329199'),
(326, '2455377', '60380867', 'CENTRO', 'Direccion Av Heroínas entre lanza y San Martin al lado del supermercado Haas edif Hermanos Pinto', 'Tatiana Vasquez', '12', NULL, '-17.391538', '-66.153647'),
(327, '0', '72295867', '0', '0', ' Hernán Canaviri', '12', NULL, '-17.39096376464919', '-66.19491688547345'),
(328, '4066033', '79393181', 'CENTRO', 'Dirección: calle 25 de Mayo, entre Mayor Rocha y Ecuador, casi al frente del CBA, para E', 'Chambi', '12', NULL, '-17.3890874', '-66.1561337'),
(329, '0', '77965714', 'NORTE ', 'Beigin entre Juan de la Rosa y yuracare acera oeste 1950', 'Carolina Haro ', '12', NULL, '-17.3596268', '-66.1768387'),
(330, '0', '61597353', ' estadounidense', '. Libertador. Casi america  frente al colegio paulo freiré peluquería FACTORY', 'Rodrigo sejas jaldin', '12', NULL, '-17.3738976', '-66.1622925'),
(331, '0', '75952755', '0', '0', 'Pablo Gómez Lavayen', '12', NULL, '-17.372938567779865', '-66.13135052706376'),
(332, '0', ' 70376910', 'COÑA COÑA', ' M.C. Galvarro esq. Luis Espinal... Es plena esquina sobre la M.C. Galvarro la puerta es ploma/plateada ', 'Walter Chevia Huanca', '12', NULL, '-17.3866771', '-66.2017631'),
(333, '0', '77409590', '0', '0', 'Edgar peredo', '12', NULL, '-17.391441575121025', '-66.19731262719358'),
(334, '4434350', '79733272', '0', 'CALLE BAPTISTA ENTRE MEXICO Y MAYOR ROCHA EDIFICIO AD VENIR DEP 06 G', 'PAOLA ROBLES ', '12', NULL, '-17.3886149', '-66.1580291'),
(335, '5994945', '62618060 ', 'PACATA ALTA', 'Calle Games esquina saravia de lanza pacata alta de la parada del trufi 125 jb una cuadra más abajo', 'González ', '12', NULL, '-17.3686532', '-66.1166807'),
(336, '0', '75460068', 'COLCAPIRHUA', '>Av Arquímedes y Comercio 3 cuadras al sud frente al centro cultural colcapiruah', 'Rodrigo Olivarez Siles', '12', NULL, '-17.4010506', '-66.2216949'),
(337, '0', ' 65767188', 'CONDEBAMBA', 'Calle allpha', 'Josue gabriel torrico valencia', '12', NULL, '-17.3458739', '-66.1753925'),
(338, '2863762', '67203179  ', 'TURUPAYA ', ' av final América este entre j de los ríos y mariano borda departamento 4-C  N°1759', ' Carla Cossio', '12', NULL, '-17.37348288545336', '-66.13878370099476'),
(339, '9886676', '74918888', 'PACATA ', ' Norberto Funes, esquina José María Avilés', 'Denisse Estefani Alanez Marañon', '12', NULL, '-17.3676009', '-66.1148569'),
(340, '0', '61628752', 'villa bush', 'Avenida blanco galindo k 5 Calle jose reyes esquina  cleomenes blanco acera este casa color verde', 'Katty cossio', '12', NULL, '-17.3951753', '-66.2068673'),
(341, '0', '65059907', 'LAS CUADRAS ', 'C. HAITI Y 9 DE ABRIL', 'ROSARIO CAMPOS ', '12', NULL, '-17.3987096', '-66.1417885'),
(342, '0', '78607201', ' Andrés cusheri', 'Blanco galindo km 7.5 entrando 5 cuadras al norte', 'Juan Daniel Baldivieso Vargas', '12', NULL, '-17.3859597', '-66.2272288'),
(343, '5297411', '70382601', 'MUYURINA', 'C/Aurelio Melean y Juan de la Cruz Torrez', 'Eduardo López ', '12', NULL, '-17.3864693', '-66.1464811'),
(344, '0', ' 77457727', 'Hipódromo puente cobija ', 'Bartolomé de las casas 1148', 'Carlos Valverde ', '12', NULL, '-17.3853703', '-66.1664276'),
(345, '0', '75970885', '0', '0', 'Valeria  Aguilar', '12', NULL, '-17.39103079506487', '-66.19758936563169'),
(346, '0', '67524964', 'TEMPORAL', 'Faustino Suarez entre Virginia Aguirre y Díaz Machicado', 'Carla Villarroel', '12', NULL, '-17.356636', '-66.1644592'),
(347, '3077515', '70420688', 'NOROESTE ', 'Dirección aven peru esquina dorbigni', 'Dania Elizabeth Rocabado ', '12', NULL, '-17.3880831', '-66.1708437'),
(348, '0', '65755148', 'villa bush', 'AVENIDA CUARTA Y SEGUNDA', 'Fely velasco', '12', NULL, '-17.3936901', '-66.1985922'),
(349, '4412582', '79989635', 'MUYURINA', 'Aniceto arce 528 entre papá Paulo y castel quiroga lado laboratorio Bio center garaje plomo', 'Carina Rivero Barrientos', '12', NULL, '-17.3853754', '-66.1470861'),
(350, '0', ' 70718120', 'MUYURINA', '-Calle Lanza Nro 758 entre calle chuquisaca y calle La Paz', 'Veronica Gonzáles', '12', NULL, '-17.3845744', '-66.1556346'),
(351, '0', '67415751', 'Pacata baja ', 'Diego Mosquera-entre Álvarez y Julián quiroga, altura del rompe muelle', 'Cesar Cortez', '12', NULL, '-17.3759391', '-66.1199214'),
(352, '0', '72284321', 'Centro', 'Calle Crisostomo Carrillo 848 entre La Paz y Salamanca', ' Juan Carlos Villarroel', '12', NULL, '-17.383094', '-66.1529222'),
(353, '0', '65752510', 'CENTRO', 'Calle Ladislao Cabrera casi tumusla', 'Patricia claros', '12', NULL, '-17.3984361', '-66.1610357'),
(354, '0', '75461751', '. Muyurina', 'Av. Uyuni esquina guillermo viscarra', 'Camila Valverde Soto', '12', NULL, '-17.3768959', '-66.1440201'),
(355, '7871876019', '74601466', 'ZONA NORTE', '0', 'Gabriela colque Veizaga', '12', NULL, '-17.37706810658837', '-66.15454502151535'),
(356, '0', ' 65711157', ' pacata ', 'calle Rene fernandez 2061', 'Patricio Bianchi Rodriguez', '12', NULL, '-17.3722393', '-66.1278403'),
(357, '0', '78715789', 'LAS CUADRAS', 'Calle. Ricardo terrazas(plazuela universitaria) N°1175', 'Zelaya Abigail', '12', NULL, '-17.3956315', '-66.145956'),
(358, '3518117 ', '69539309', 'NORTE ', 'Av los ceibos y Molles edificio belgrano color verde departamento 5c', ' Erick Ríos', '12', NULL, '-17.36711795136575', '-66.17118836846507'),
(359, '2717704', '78357547', '00', '0', 'Erika Aguirre', '12', NULL, '-17.374289329536662', '-66.1300324580602'),
(360, '0', ' 70749223', '00', '0', 'Sergio Valdez Ramírez', '12', NULL, '-17.40409964514779', '-66.15496042430311'),
(361, '3019853015', '70125937', 'sarco', 'Calle: Manchay puito entre América y Alcides Arguedas edf. ALHAMBRA 2 depto 2A', 'Nicole Alfaro Caballero', '12', NULL, '-17.3724811', '-66.1731675'),
(362, ' 7335878013 ', ' 60496833', 'villa bush', 'av segunda Nro 0336', 'Acevedo', '12', NULL, '-17.3953362', '-66.19764'),
(363, '8012455 ', '77976606', 'MUYURINA', 'Dirección. Calle Nestor Morales N° 962 entre Ramón Rivero y Aniceto Arce, edificio ocean tower departamento 5G', 'Grados', NULL, NULL, NULL, NULL),
(364, '8012455 ', '77976606', 'MUYURINA', 'Dirección. Calle Nestor Morales N° 962 entre Ramón Rivero y Aniceto Arce, edificio ocean tower departamento 5G', 'Grados', '12', NULL, '-17.380056', '-66.1441334'),
(365, '5050879', '67470556', 'NORTE ', 'Calle Casto Rojas entre Gabriel Rene Moreno y Melchor Pérez edificio Verónica 5 departamento 5b', 'Gutiérrez', '12', NULL, '-17.3810895', '-66.1749346'),
(366, '0', ' 78305234', 'urb los olivos', 'km 6.5 a Sacaba, justo en la botella de Pepsi, de la rotonda una cuadra al sur, 1 y media cuadra a la derecha, la urbanizacion los Olivos, casa C3', 'Pamela Rojas Pereira', '12', NULL, '-17.3905535', '-66.0862122'),
(367, '0', '73752718', 'NORTE ', 'AV. SIMON LOPEZ Y RODRIGO', 'NANCY VARGAS ', '12', NULL, '-17.3620548', '-66.1816121'),
(368, '3575043', '77491311', '0', '0', 'Isaias CHIRI', '12', NULL, '-17.37660625629888', '-66.15493505003565'),
(369, '0', '75943799', 'Centro', 'Heroínas, entre San Martín y 25 de Mayo, ', 'Luis Fernando Paredes Artunduaga', '12', NULL, '-17.3915611', '-66.154859'),
(370, '', ' 77971774', 'LAS CUADRAS', 'Calle litoral entre final sud av belzu..', 'Roger Vega Fuentes', NULL, NULL, NULL, NULL),
(371, '3787404017 ', '77971774', 'LAS CUADRAS', 'Calle litoral entre final sud av belzu..', ' Roger vega', '12', NULL, '-17.3997964', '-66.140047'),
(372, '4511055 ', '67484597', 'NORESTE ', 'DIRECCION: parque Francisco de Orellana entre nueva Castilla  Hernando de Soto, ', 'almaraz ', '12', NULL, '-17.3898849', '-66.1734009'),
(373, '5237511', '77435354', '', '', 'Héctor Villca Vizalla', '12', NULL, '-17.376673812600643', '-66.15680590335158'),
(374, '0', ' 70756738', 'Quillacollo', 'Calle Pacheco frente al mercado central de quillacollo ', 'Fernando cespedes montaño', '12', NULL, '-17.3976169', '-66.2795519'),
(375, '832684', '77435354', '', '', ' Franz Gutierrez', '12', NULL, '-17.372433462264443', '-66.1329476298027'),
(376, '7286733013', '60417619', 'ticti norte', 'Puka huaycha esquina tikallajta ( edificio con vidrios azules)', 'David Torrico', '12', NULL, '-17.3532974', '-66.1698071'),
(377, '0', '70399836', 'Pacata alta', 'Av. Papá Damaso I José curtinas #563', 'Sharon Antezana Crespo ', NULL, NULL, NULL, NULL),
(378, '0', '70399836', 'Pacata alta', 'Av. Papá Damaso I José curtinas ', 'Sharon Antezana Crespo ', '12', NULL, '-17.368524', '-66.1240582'),
(379, '0', '77130417', ' Las cuadras', ' Pasaje Ruben Dario entre Jose A. Arze y Honorato Salazar', 'Paola Adriana COlque Duran', '12', NULL, '-17.3942559', '-66.1364313'),
(380, '0', '77496370', '', 'AV. EDUARDO CASI AMERICA  - PARQUE LINCOLN', 'Juan Carlos Téllez', '12', NULL, '-17.3726656', '-66.1696988'),
(381, '8848448', '76946061', 'SUD', 'Av.suecia tras el hospital harry williams Calle . Manuel terrazas', 'Ricardo acuña ', '12', NULL, '-17.4223407', '-66.1477'),
(382, '0', '72530053', 'NORTE', ' calle enrique arce entre simon lopez y ciclovia zona cala cala', 'morales', '12', NULL, '-17.3663635', '-66.1648941'),
(383, '9713382', '71455365', 'SUD', 'final M ferrufino h luisa ascui', 'Lupita Solis', '12', NULL, '-17.414669', '-66.1610413'),
(384, '0', '61592315', 'CENTRO ', 'CALLE A. MICHEL CASI J. ARAUCO', 'Alondra Rocha', '12', NULL, '-17.3912136', '-66.1464474'),
(385, '3663923', '70750352', 'CIRCUNVALACION', 'MIGULE DE CERVANTES ENTRE MOSTAJO Y R. PRADA Casa verde número 2659', 'TERAN', '12', NULL, '-17.3625969', '-66.1601917'),
(386, '2794582', ' 68510405', 'Villa bush', 'calle gabriel lippman', 'Jorge Ordóñez', '12', NULL, '-17.3950779', '-66.1882865'),
(387, '0', '70377740', 'GALINDO', 'Av blanco Galindo km 5 CNS . Urgencias medicina', 'Melina Camacho', '12', NULL, '-17.3936874', '-66.2061051'),
(388, '949262', '72775529', 'QUINTANILLA ', 'URBANIZACION PARAISO', 'Aguirre', '12', NULL, '-17.3802929', '-66.1295547'),
(389, '5930669 ', '70739192', 'Queru queru ', 'C. Buebos aires esq av villarroel edif torres ventura', 'Cadima', '12', NULL, '-17.3736723', '-66.1589811'),
(390, '12777632', '76920918', 'QUINTANILLA', 'Av villazon km 3.6, dos cuadras y media al norte ', 'Ivan apaza ', '12', NULL, '-17.379917', '-66.1114168'),
(391, '1022043028', '67403533', 'PACATA ALTA', 'Dirección Urbanización Bella Vista manzano O ', 'CACEQUIM SRL', '12', NULL, '-17.3734631', '-66.0964657'),
(392, '2735694 ', '72405847', 'SUD', ' C.TRIGAL Y 22 DE JULIO', 'CALLE', NULL, NULL, NULL, NULL),
(393, '7964927013', '70716617', '', '', 'FERREL', '12', NULL, '-17.372259860404306', '-66.13769887394156'),
(394, '', '73773030', 'Zona.- norte', 'Aniceto Padilla esq. Pasaje Saracho', 'Alejandro Ávila', '12', NULL, '-17.37759531454624', '-66.1724188430005'),
(395, '2735694 ', '72405847', 'SUD', 'C.TRIGAL Y 22 DE JULIO', 'CALLE', '12', NULL, '-17.413811', '-66.1457515'),
(396, '4455939016', '71417100', '', '', 'Alcocer', '12', NULL, '-17.392418532640843', '-66.19727585332564'),
(397, '0', '74116286', 'NORTE ', 'Juan de la rosa entre caracas y medinaceli 901', 'Viviana Aguirre ', '12', NULL, '-17.3771815', '-66.1700309'),
(398, '7269680', '75701489', 'COÑA COÑA', 'DIRECCIÓN: BLANCO GALINDO AL FRENTE DE LA CAJA NACIONAL', ' JOSE LUIS RENGEL CÁCERES', '12', NULL, '-17.3919498', '-66.206154'),
(399, '7891890', '70730042', 'SAN PEDRO ', ' C. Francisco Prada', 'Ovando', '12', NULL, '-17.3890232', '-66.1435423'),
(400, '3790627', '75969363', 'SACABA ', 'Dirección: av independencia y colón plena esquina casa de 3 pisos por favor por la puerta de garage la entrega La casa es color ploma', 'Pizo', '12', NULL, '-17.404115', '-66.0375773');
INSERT INTO `cliente` (`id`, `nit`, `telefono`, `zona`, `direccion`, `razon_social`, `zoom`, `foto`, `latitude`, `longitude`) VALUES
(401, '5204701', '70309492', '', 'Av. Los Ceibos # 2256, casi esq . AV. Simon Lopez, a lado de la ciclovia, la segunda casa, puerta de madera.', 'Omar Pereira Encinas', '12', NULL, '-17.39168257955053', '-66.19749498974609'),
(402, '12969728', '75963075', 'NORTE ', 'C.JESUS LARA Y MELCHOR', 'Canelas', '12', NULL, '-17.3599362', '-66.1730091'),
(403, '8003040 ', '60749865', 'ESTADIO', 'Murguia entre floras salinas y calancha', 'Campos', '12', NULL, '-17.3809683', '-66.1668976'),
(404, '5538681', '76497148', 'CENTRO', ' calle Calama entre Ayacucho y Nataniel Aguirre edificio Omonte departamento M', 'Lopez', '12', NULL, '-17.396595', '-66.157753'),
(405, '0', ' 76490629', 'villa bush', 'dorbigni esquina thunupa casa de dos pisos rejas cafés zona sarcobamba,', 'Edith jaencarla Clavijo,', '12', NULL, '-17.3859181', '-66.1882116'),
(406, '3790627', '75969363', 'SACABA ', 'Dirección: av independencia y colón plena esquina casa de 3 pisos por favor por la puerta de garage la entrega Hay una farmacia en la casa al lado de la farmacia es el garage', 'Pizo', '12', NULL, '-17.404115', '-66.0375773'),
(407, '12969728', '75963075', 'NORTE ', 'C. JESUS LARA', 'Canelas', '12', NULL, '-17.3599362', '-66.1730091'),
(408, '0', '72787574', 'chimba', '.Calle Juan José Pérez ', '.Harold García Mendoza', '12', NULL, '-17.3961863', '-66.1698232'),
(409, '', '65243624', 'JAYHUAYCO', 'CAP. L. PARAVICINI Y STTE. MARICA CALVO', 'lucero rojas', '12', NULL, '-17.4200141', '-66.1705608'),
(410, '0', '77485942', 'guadalupe', 'Avenida villazon km7 1/2', 'Jessica Valencia', '12', NULL, '-17.3861331', '-66.0745514'),
(411, '0', '76436190', '0', '0', ' Claudia Espinoza', '12', NULL, '-17.391946091686762', '-66.19652475210881'),
(412, '1107604', '70784723', 'temporal ', 'C.LOS LIRIOS Y LOS SAUCES', 'gonzalo munguia', '12', NULL, '-17.3669601', '-66.1430305'),
(413, '0', '63611822', 'Sur ', ' Detrás del campo ferial Av Guayacan ', 'Alison caychoca ', '12', NULL, '-17.4241112', '-66.129286'),
(414, '0', '69497019', 'QUINTANILLA SUD', 'C.NICARAGUA E INNOMINADA -', 'Herrera Maida Jesica', '12', NULL, '-17.3925322', '-66.1083876'),
(415, '3122047017', '67454952', 'QUINATNILLA SUD', 'Urbanización Caperuza - Casa B1', 'GUTIERREZ', '12', NULL, '-17.401106', '-66.1085167'),
(416, '13995427', '63835040', 'NORTE ', 'Av.simom lopez lopez zono norte  la calle es paul gauguin y genaro ibañez', 'Nicol  Escalante ', '12', NULL, '-17.3624253', '-66.1843561'),
(417, '0', '65741150', 'colcapirhua', 'pescaderia san lorenzo', 'Ariana Lamas ', NULL, NULL, NULL, NULL),
(418, '0', '65741150', 'colcapirhua', 'pescaderia san lorenzo', 'Ariana Lamas ', '12', NULL, '-17.3926436', '-66.2316073'),
(419, '0', '76960988', 'muyurina', 'Carlos D\'avis entre José Pol y belzu', 'Luis Américo Velásquez avine', '12', NULL, '-17.3876334', '-66.1445497'),
(420, '', ' 77999474', 'queru queru', 'calle: David alvestegui ', 'Cristhian Meneses Vargas', '12', NULL, '-17.3704168', '-66.1517141'),
(421, '8781876', '72243246', 'CALA CALA', 'Z/ cala cala detras del estadio Psje. Magisterio No 1340 entre Felix Aranibar y Flora Salinas', 'ARAUCO', '12', NULL, '-17.380021', '-66.1650589'),
(422, '3978155011', '72216464', 'CALA CALA', 'C. FELIX LOPEZ Y HERNANDO SILES', 'PRIETO', '12', NULL, '-17.359111', '-66.16668'),
(423, '0', '76477009', '', '', 'Gabriel Cavero Valenzuela', '12', NULL, '-17.392163442310494', '-66.19717361362879'),
(424, '0', '65514285', 'Central ', 'Ayacucho entre la paz y reza edif. Sol de septiembre acera este', 'Pamela Pinto Rodríguez ', '12', NULL, '-17.3864448', '-66.1600253'),
(425, '6522285', '68990616', 'MESADILLA', 'Psje Manuela Campos ', 'Pablo Churata Escobar', '12', NULL, '-17.3707083', '-66.1348992'),
(426, '7788620', '79789757', 'Zona.- Las Islas ', 'Av. Gualberto Villarroel esquina las hiedras, 2 cuadras al norte de la circunvalación, en plena esquina, edificio blanco, se llama condominio los pinos departamento PB-B.', 'Gabriel Bedoya Nacif ', '12', NULL, '-17.3642783', '-66.1560451'),
(427, '8831463', '79757527', 'PACATA ALTA', 'OTB SENAC C.INNOMINADA', 'Morante Contreras Jorge ', '12', NULL, '-17.3663738', '-66.1089103'),
(428, '3791225 ', '65762230', 'Sarco', 'Calle ayoreo entre tapiete y yuracare', 'Cardozo', '12', NULL, '-17.374625', '-66.1856517'),
(429, '0', '78323396', 'COÑA COÑA', 'Av cuarta 473Esq victor ustaris', ' Jason matias', '12', NULL, '-17.3970757', '-66.1998596'),
(430, '3378791017', '63430939', 'CENTRO', 'AV. SAN MARTIN ENTRE HEROINAS Y COLOMBIA ', 'Kazu vargas ', '12', NULL, '-17.391024', '-66.1547228'),
(431, '8001227', '75914145', 'GUADALUPE', 'Direccion calle kantu entre chacarera y tobas zona guadalupe', 'Gabriel romero', '12', NULL, '-17.3811589', '-66.0764078'),
(432, '7963656', '72760709', 'MESADILLA', 'Direccion calle papa Leon XIII urbanizacion Vaticano N 107', 'Diego Sandoval Colque', '12', NULL, '-17.3685843', '-66.1337343'),
(433, '6536326', '76942379', 'CHIMBA', 'C.Chaco entre beijin', 'Arturo Alonzo', NULL, NULL, NULL, NULL),
(434, '2376705', '61782011', '0', '0', 'Felix Surco', '12', NULL, '-17.391210600918278', '-66.19724205627293'),
(435, '6536326', '76942379', 'CHIMBA', 'C.Chaco entre beijing', 'Arturo Alonzo', '12', NULL, '-17.39881', '-66.1854215'),
(436, '5195400015', ' 75495943', 'Zona Quintanilla', 'sobre la Av. Maximiliano Kolve, en la Urbanización los Sauces casa N° 11.', 'Luis Fernando Vargas Verastegui', '12', NULL, '-17.3945329', '-66.1121215'),
(437, '1905725', '73910476', 'NORTE ', 'C/ Juan Capriles entre santa cruz y Dalence,  edificio santorini', 'AÑEZ', '12', NULL, '-17.3719339', '-66.1556643'),
(438, '3599832010', '70752787', 'BLANCO GALINDO', 'BLANCO GALINDO KM 6', 'Montaño ', '12', NULL, '-17.3917503', '-66.2128983'),
(439, '3080452017', '75986188', 'SUD', 'C. POLONIA Y AV PETROLERA ', 'Ruben Ríos', '12', NULL, '-17.4462957', '-66.1339485'),
(440, '4392690019', '79772025', ' Sarco e hipódromo', 'Av. Beijing entre Lauca y Mejillones', 'Quintana', '12', NULL, '-17.3840499', '-66.1814726'),
(441, '7936339', '61782011', '0', '0', ' Vanesa Román', '12', NULL, '-17.390368163123746', '-66.19488542198525'),
(442, '819830018', '72271526', 'CENTRO', 'DIRECCIÓN: Ayacucho entre México y Mayor Rocha acera oeste, al lado de una colchoneria, ', 'ROJAS', '12', NULL, '-17.3887953', '-66.1596717'),
(443, '0', '70137157', 'la chimba ', ' cap ustariz #1450 entre campero y riosinio ', 'Sergio rocha ', NULL, NULL, NULL, NULL),
(444, '4336286', '79953747', 'NORTE', 'Carlos medinacelli esquina rotonda Perú empresa comteco', 'Pablo Morales Vasquez', '12', NULL, '-17.3830551', '-66.170105'),
(445, '0', '70137157', ' la chimba ', '- cap ustariz ', ' Sergio rocha ', '12', NULL, '-17.3963133', '-66.1715284'),
(446, '0', ' 76998100', 'puntiti', 'Av. Tercera, casi av López.', 'Luis Francisco Blanco del Castillo', '12', NULL, '-17.3824871', '-66.1016294'),
(447, '0', ' 76991115', ' Bajo Aranjuez', ' Aurelio García ', 'Sergio Chavez Balderrama', '12', NULL, '-17.3752111', '-66.1464026'),
(448, '0', '76425354', 'tupuraya', 'Calle Jacinto anaya esquina América edif. Icono ', 'Marcelo Garnica ', '12', NULL, '-17.3734748', '-66.1392805'),
(449, '5066592018', '74235978', '0', '0', ' ariel camacho', '12', NULL, '-17.3929737141239', '-66.19756972759377'),
(450, '6505081', '61621376', 'HIPODROMO', 'calle cobija y 12 de junio,zona hipódromo', 'Fátima Méndez', NULL, NULL, NULL, NULL),
(451, '0', '69502739', ' seminario', 'Dorbigny casi Juan Pablo II Condominio Milenium', 'Vanessa herboso', '12', NULL, '-17.3866491', '-66.1983254'),
(452, '8040494', '75905303', '', '', 'ERICK DANIEL SANTOS ROCHA', '12', NULL, '-17.392173456667656', '-66.19721091667236'),
(453, '0', '79970713', 'estadio', 'av humboldt y avenida de indias', 'Ricardo Siles', '12', NULL, '-17.3826714', '-66.1633301'),
(454, '6505081', '61621376', 'HIPODROMO', 'calle cobija y 12 de junio', 'Fátima Méndez', '12', NULL, '-17.3873997', '-66.1841417'),
(455, '0', '77151771', 'CIRCUNVALACION', 'VATICANO ENTRE M TORRELIO , CASA CON REJAS QUE QDA JUSTO AL FRENTE DEL CONDOMINIO ROMA, AUTO AZUL EN EL GAREJE DE REJAS', 'CARLA PELAEZ ROCHA ', '12', NULL, '-17.37048', '-66.133766'),
(456, '6912051 ', '75463493', 'CHIMBA', 'C. NANAWA Y FORTIN CONCHITA', 'VILLCA', '12', NULL, '-17.4008926', '-66.1706972'),
(461, '700000000', '77441044', NULL, NULL, 'Boris Ponce De Leon', NULL, NULL, NULL, NULL),
(462, '0', '79373285', '0', '0', ' Adahi Pacheco ', '12', NULL, '-17.39530043608116', '-66.19796792976707'),
(463, '0', '72282882', 'Hipódromo ', 'Calle Vasco de Gama 0669', 'Giovanna lobo ', '12', NULL, '-17.3884933', '-66.1758463'),
(464, '0', '72262307', ' sarcobamba', ' continuación de final villavicenvio chalancalle', 'Pamela Aguilar ', '12', NULL, '-17.3755196', '-66.1977454'),
(465, '0', ' 79342801', 'SUD', 'Av. Petrolera km 3,5', 'Lorena Claros', NULL, NULL, NULL, NULL),
(466, '3826232', '79342801', 'SUD', 'Av. Petrolera km 3,5', ' claros', '12', NULL, '-17.4390437', '-66.1425793'),
(467, '0', '78308439', 'chimba', 'Grover Suarez y pasaje Manuel Liendo', 'Jaime Eduardo Torrico Choque', '12', NULL, '-17.3943492', '-66.1863723'),
(468, '5199138', '77993455', 'Zona. Barrio fabril', 'Direccion. Calle 15 de agosto Nro 2239 esq. Antofagasta', 'DALIBOR CEZAREO', '12', NULL, '-17.38717', '-66.1802125'),
(469, '0', '76414002', '0', '0', 'Mauricio ayala', '12', NULL, '-17.392771709755344', '-66.19746679660847'),
(470, '0', '78312002', 'Pacata Baja', 'Dirección calle José Martínez entre Lucía Ramírez y M del Rosario', 'Katherine Benavides.', '12', NULL, '-17.3724906', '-66.1161746'),
(471, '0', '69467226', 'SUD', 'Av. Panamericana.esta sobre la calle. Manuel virreyra y su paralela de la Panamericana. Es la jr molina', 'Paula cespedes', '12', NULL, '-17.4271928', '-66.1577129'),
(472, '0', '71479464', 'VILLA BUSH', 'Avenida Litoral', 'Juan Carlos Montalvo Porcel.', '12', NULL, '-17.3996487', '-66.1762165'),
(473, '', '70382025', '', '', 'Porcel', NULL, NULL, NULL, NULL),
(474, '2722506', '69710616', 'COÑA COÑA', 'Blanco galindo kl 5 1/2Y AV sexta', '2722506', '12', NULL, '-17.3928895', '-66.2082673'),
(475, '2730644', '79794516', '0', '0', 'Porcel', '12', NULL, '-17.391574942116304', '-66.19696353009648'),
(476, '0', '70382025', 'La chimba', 'Fortín vanguardia ', 'Guadalupe Amurrio ', '12', NULL, '-17.3976048', '-66.1749759'),
(477, '3808086', '70745067', 'LAS CUADRAS ', 'Calle Benjamín Blanco 749 Entre Uruguay y Guillermo urquidi', 'Andia ', '12', NULL, '-17.3976962', '-66.1474459'),
(478, '0', '65437722', 'Sarcobamba', 'Direccion: Alberto Acha entre Luis Montaño Milan y Cidar Humerez', 'Malena Barrera', '12', NULL, '-17.3807658', '-66.1908307'),
(479, '4532266', '60712422', 'NORTE ', 'c/Faustino Suarez entre av/Circunvalación y c/Javier Baptista', 'Marcela Cadima', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `mensaje` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filosofia`
--

CREATE TABLE `filosofia` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL DEFAULT 0,
  `titulo` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeria`
--

INSERT INTO `galeria` (`id`, `nombre`, `foto`, `estado`) VALUES
(1, 'Adorno de prague', 'galeria_1200331182553.jpg', 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `historia`
--

CREATE TABLE `historia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historia`
--

INSERT INTO `historia` (`id`, `titulo`, `descripcion`) VALUES
(1, ' NUESTRA HISTORIA', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `historia_img`
--

CREATE TABLE `historia_img` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historia_img`
--

INSERT INTO `historia_img` (`id`, `descripcion`, `foto`) VALUES
(1, 'historia 1', 'historiaimg_1200331173139.jpg'),
(2, 'historia 2', 'historiaimg_2200331173157.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `imagen_paquete`
--

CREATE TABLE `imagen_paquete` (
  `id` int(11) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `paquete_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagen_paquete`
--

INSERT INTO `imagen_paquete` (`id`, `imagen`, `paquete_id`) VALUES
(2, 'paquete_6_2.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `imagen_souvenir`
--

CREATE TABLE `imagen_souvenir` (
  `id` int(11) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `souvenir_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE `moto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `sucursal_id` int(11) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `player_id` varchar(500) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`id`, `nombre`, `ciudad`, `sucursal_id`, `telefono`, `foto`, `player_id`, `estado`) VALUES
(18, 'Daniel', 'Cochabamba', 3, '69829976', NULL, NULL, 0),
(22, 'Iber Arnol Fernandez Mercado', 'Cochabamba', 3, '76499880', 'moto_527200729040941.jpg', '5cf67e66-1bc3-44f1-9a54-6fcc984a4dbc', 0),
(23, 'Maurico', 'Cochabamba', 3, '72770506', NULL, '7e53224e-a0d9-4e59-bc2e-0fefd4bb2ee1', 0),
(25, 'Fernando Zurita', 'Cochabamba', 5, '76402991', NULL, '39bd3d84-d85f-4805-9ed8-becd2b8be218', 0),
(26, 'Dennis Vargas', 'Cochabamba', 3, '70753277', NULL, '30210085-9c91-4b31-9664-9a8dafeef889', 0),
(27, 'Fanny Mamani', 'Cochabamba', 4, '72787924', NULL, 'd3c1ea3a-17a8-4102-9b3b-c7c0199ea3da', 0),
(28, 'Boris Osmar Ponce De León Fuentes', 'Cochabamba', 3, '74322394', NULL, '013a20ce-bdb6-4d80-a447-7b44c3793220', 0),
(29, 'Cristian Barrios', 'Cochabamba', 3, '70777914', 'moto_536200805042352.jpg', 'd1d7d063-d686-4f00-85fa-978ec97597ad', 0),
(30, 'Ronald Aguilar', 'Cochabmaba', 2, '61620502', NULL, '018eec67-7204-4b84-81f7-7082b07b1b55', 0),
(31, 'Ruddy Nuñez', 'Cochabamba', 3, '70391515', NULL, 'cb79ad49-4c45-47c4-870b-bf28e556b9cf', 0),
(32, 'Jimmy Camacho', 'Cochabamba', 3, '67571364', NULL, 'ffeaade4-8c17-477c-8ee6-97b3423e7c10', 0),
(33, 'Fernando Flores', 'Cochabamba', 3, '76965809', NULL, '5ae41797-f454-4994-8dfc-13fcb7f0079d', 0),
(34, 'Luis Espinoza', 'Cochabamba', 3, '69430657', NULL, '66a078ca-da3b-4170-b3e0-8e33c195e8d9', 0),
(36, 'Rafael rodrigo espinoza corrales', 'Cochabamba', 4, '77995571', NULL, '88142a02-fd3b-43f3-a060-59fd8c3bf349', 0),
(37, 'Gabriel perez garey ', 'Cochabamba', 4, '68472707', NULL, '8a882f92-44e0-494b-9aa6-a78848a85d25', 0),
(38, 'Ronald nina Baltazar', 'Cochabamba', 4, '63851097', NULL, NULL, 0),
(39, 'Mauricio Vargas Coria', 'Cochabamba', 4, '76913679', NULL, NULL, 0),
(40, 'Félix Fabián Chávez peredo', 'Cochabamba', 4, '77438130', NULL, '9b2812fe-add3-4102-a54c-3aea5d9a090e', 0),
(41, 'Juan Carlos Córdova', 'Cochabamba', 4, '76992122', NULL, '57e9004b-3cce-41fd-9b98-9844cf7d353e', 0),
(42, 'Eddy Daniel Zambrana crespo', 'Cochabamba', 4, '70766621', NULL, '46365a3d-747e-44ac-b2e0-66f529676721', 0),
(43, 'Noel Onofre Calicho', 'Cochabamba', 4, '79338685', NULL, 'f2406064-9007-401f-8f76-4a440e99f5bc', 0),
(44, 'Jhon neil flores arauz', 'Cochabamba', 4, '77100990', NULL, 'fe614bca-e332-4fff-8242-6c35156597b3', 0),
(45, 'Jorge Luis Guzmán bellot', 'Cochabamba', 4, '60739634', NULL, '0f91b0f2-2386-4464-be5b-b8a0d4fdbdd1', 0),
(46, 'Junior Bellido Ferrufino', 'Cochabamba', 4, '79346677', NULL, 'dc06d2a7-7c9e-4de3-b768-efdeda4d6ba4', 0),
(47, 'Elmer esteban vargas colque', 'Cochabamba', 4, '67641828', NULL, '33ba6e7c-c687-4238-abe7-e6808cbed26a', 0),
(48, 'Alvaro Mendoza Candia', 'Cochabamba', 4, '65504406', NULL, 'beba1fab-a876-4659-95a9-b481ea6a5ed8', 0),
(49, 'Juan Rodrigo Argote Flores ', 'Cochabamba', 5, '69548146', NULL, '5eb27fc5-dda4-4029-a64f-8332967b790b', 0),
(50, 'Israel Cortez Mamani ', 'Cochabamba', 4, '60741106', NULL, NULL, 0),
(51, 'Williams jose vargas franco', 'Cochabamba', 4, '76961858', NULL, '73f9e988-806b-4385-a49c-618b6f9af533', 0),
(52, 'Oscar', 'Cochabamba', 4, '62612270', NULL, '6aaa6701-5aef-457d-be85-c62872211e57', 0),
(53, 'Jhimy claure torrico ', 'Cochabamba', 4, '77989066', NULL, NULL, 0),
(54, 'Sergio Veizaga Vargas', 'Cochabamba ', 3, '67479030', NULL, 'c88a5a7c-e91e-41ac-b4e7-2cb2f829299e', 0),
(55, 'José Luis Castedo', 'Cochabamba ', 3, '76999555', NULL, '7846e785-e90e-4bd8-874e-5a6c79a3045c', 0),
(56, 'Mario Gutiérrez ', 'Cochabamba ', 5, '76434571', NULL, 'aecdd7d8-d011-435d-a546-5f856e671dd2', 0),
(57, 'Efrain Mamani', 'Cochabamba ', 2, '79750073', NULL, 'a19570a5-7e41-47f1-9f87-54758937124f', 0),
(58, 'Josue Vargas', 'Cochabamba ', 5, '60734927', 'moto_564200804114330.jpg', 'ebac8363-3b39-47af-ad11-7fcfa5f6ab14', 0),
(59, 'Daniel Felipe', 'Cochabamba', 2, '74300427', NULL, '57234d71-a723-4971-9523-d6ab82ca920a', 0),
(60, 'Carlos Rojas', 'Cochabamba ', 15, '75929872', NULL, 'c68b4cd2-20d0-4ea1-8fcc-00e96be01f71', 0),
(61, 'Darío Cristian Flores Delgado', 'Cochabamba', 5, '65317099', 'moto_567200804114550.jpg', '39d83475-080c-45cb-a5ea-74b0c554173e', 0),
(62, 'Brando Covarrubias balderrama', '79707176', 5, '79707176', NULL, 'cd135231-72cc-4c3c-9979-6e695801ef71', 0),
(63, 'Manuel Alejandro Rocha Galindo', 'Cochabamba', 2, '77933720', NULL, NULL, 0),
(64, 'Ronald Villarroel Nogales', 'Cochabamba', 5, '65382289', NULL, '68302639-a289-490b-a22b-3a71d0a4dfe7', 0),
(65, 'Ricardo David La Madrid Alarcón', 'Cochabamba', 5, '71766383', NULL, 'b0db8cbd-f9f9-45fa-b423-8202de92cd47', 0),
(66, 'Javier Ledezma escalera ', 'Cochabamba', 2, '76976863', NULL, 'a3601df0-2d3b-42f1-8bec-ffcdca704a56', 0),
(67, 'Wilson oscar castro alba', 'Cochabamba', 2, '70776610', NULL, NULL, 0),
(68, 'Erland mirko vargas ovando', 'Cochabamba', 5, '76928508', NULL, '93840fb3-29b0-4761-9aa0-9e3cf49b5f3f', 0),
(69, 'Moises Miranda Campos', 'Cochabamba', 2, '66730066', NULL, NULL, 0),
(70, 'Jhamil orosco paredes', 'Cochabamba', 5, '60367172', NULL, '77d4ea48-4a57-4ee7-a728-7c92a3b809ce', 0),
(71, 'Luis Alfredo Rodriguez Molina', 'Cochabamba', 5, '65361106', NULL, '88ed3bd6-b172-4e2f-bd44-c9ef68c9f167', 0),
(72, 'Yeferson Camilo Ruiz Pulgarin', 'Cochabamba', 5, '63912555', NULL, '227b8653-f138-421b-ba42-0bb714938e48', 0),
(74, 'Javier Ramos Rivera', 'Cochabamba', 5, '75927998', NULL, '2fc91086-b9f6-41b3-869b-e4774c6b14ac', 0),
(75, 'ALVARO SANCHEZ LEDEZMA', 'CBBA', 2, '73782221', NULL, NULL, 0),
(76, 'BRYAN CAMACHO MONTAÑO', 'COCHABAMBA', 5, '71716187', NULL, 'e754be13-c8c3-46fd-a520-2f6b9163b875', 0),
(77, 'Franklin Ortiz Villarruel', 'Cochabamba ', 5, '74566131', NULL, '41f5cc52-e639-47ca-b591-b98b59240f02', 0),
(78, 'M11 BRYAN PEÑALOZA ORTIZ', 'COCHABAMBA', 15, '60758292', NULL, '44a70c96-2ece-4964-8d27-0bed47d7bece', 0),
(79, 'M 6', 'CBBA', 15, '65304679', NULL, 'e5f012a7-44a2-450b-94f3-1b48a50f4a37', 0),
(81, 'M 32', 'CBBA', 15, '65745464', NULL, '1e4590f6-1dfb-4c65-bdc8-543cc57093ff', 0),
(82, 'M 75', 'CBBA', 15, '68578825', 'moto_587200804051304.jpg', '70b51bef-e03a-4f9c-b001-1c5f93d49d7b', 0),
(83, 'M 7', 'CBBA', 15, '60724433', NULL, 'd70c26ec-d8fd-4509-a984-b0ec412b8183', 0),
(84, 'M 20', 'CBBA', 15, '79966561', NULL, '93827e42-88c4-4aad-a900-c78c57cd6a46', 0),
(85, 'M 61', 'CBBA', 15, '60362119', NULL, 'd06bbd03-c35d-44c5-ae02-d842730912ac', 0),
(86, 'M 17', 'CBBA', 15, '60720635', NULL, '8150fa7c-0efa-4b4c-abab-d9ceec33b386', 0),
(87, 'M 13', 'CBBA', 15, '65504296', NULL, '29562109-7b72-4c0e-8d75-18bcb1d5933f', 0),
(88, 'M 8', 'CBBA', 15, '72280863', NULL, '4dc62a1c-2b5f-4974-9888-2e5efabd571e', 0),
(89, 'M 4', 'CBBA', 15, '76481471', NULL, 'e54f828e-878a-42cf-92af-c96f772a0b1e', 0),
(90, ' M 28', 'CBBA', 15, '71753434', NULL, '14dfc8b2-06ef-427f-8c21-2dbf2c388ee7', 0),
(91, 'FRANKIN ORTIZ', 'CBBA', 2, '74566131', NULL, NULL, 0),
(92, 'ARIEL ROCHA', 'CBBA', 2, '65308155', NULL, NULL, 0),
(97, 'Marcelo Gutierrez Vasquez', 'Cochabamba', 5, '62702677', NULL, 'e744246b-097c-4d6a-b3b0-85b81426a7a5', 0),
(98, 'Edwin Patiño claros', 'Cochabamba', 5, '65702626', NULL, '455b55a7-9bf0-49a1-be1b-4a7d5d0d839e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paquete`
--

CREATE TABLE `paquete` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `descripcion_corta` varchar(1000) NOT NULL,
  `descripcion_larga` varchar(4000) DEFAULT NULL,
  `catalogo` varchar(45) DEFAULT NULL,
  `estado` enum('Publicado','No publicado') DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `categoria_id` int(11) NOT NULL,
  `temperatura` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paquete`
--

INSERT INTO `paquete` (`id`, `nombre`, `precio`, `descripcion_corta`, `descripcion_larga`, `catalogo`, `estado`, `foto`, `categoria_id`, `temperatura`, `pais`, `ciudad`) VALUES
(6, 'Uyuni', 1300.00, 'Etiam malesuada lectus tempor, ultricies lectus in, convallis massa.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.&nbsp;</p>\r\n', 'paquete_6200401193256.pdf', 'Publicado', 'paquete_6200401193256.jpg', 5, '30° / 40°', 'Bolivia', 'Potosi');

-- --------------------------------------------------------

--
-- Table structure for table `pcounter_save`
--

CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcounter_save`
--

INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES
('counter', 236),
('day_time', 2459068),
('max_count', 16),
('max_time', 1596470400),
('yesterday', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pcounter_users`
--

CREATE TABLE `pcounter_users` (
  `user_ip` varchar(255) NOT NULL,
  `user_time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcounter_users`
--

INSERT INTO `pcounter_users` (`user_ip`, `user_time`) VALUES
('6546935454210b54c157a68f72091476', 1596724151);

-- --------------------------------------------------------

--
-- Table structure for table `pedido_delivery`
--

CREATE TABLE `pedido_delivery` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `razon_social` varchar(45) DEFAULT NULL,
  `nit` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `zoom` varchar(45) DEFAULT NULL,
  `instrucciones` varchar(45) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `precio_delivery_id` int(11) DEFAULT NULL,
  `sucursal_delivery_id` int(11) DEFAULT NULL,
  `tipo_pedido_id` int(11) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `hora_entrega` time NOT NULL,
  `estado` int(11) DEFAULT 0,
  `url_mapa` varchar(400) DEFAULT NULL,
  `facturado` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedido_delivery`
--

INSERT INTO `pedido_delivery` (`id`, `cliente_id`, `razon_social`, `nit`, `telefono`, `zona`, `direccion`, `latitude`, `longitude`, `zoom`, `instrucciones`, `producto_id`, `precio_delivery_id`, `sucursal_delivery_id`, `tipo_pedido_id`, `fecha_entrega`, `hora_entrega`, `estado`, `url_mapa`, `facturado`) VALUES
(84, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'av. pachacutij y pasaje ollanta', '-17.355873544276736', '-66.18341795715357', '12', 'n 818', NULL, 9, 3, 1, '2020-07-26', '22:19:00', 1, NULL, 0),
(85, 55, NULL, NULL, '777848484', 'Surco', 'tadeo haenke ', '-17.3895557615028', '-66.19569446640627', '12', 'cada verde ', NULL, 2, 3, 3, '2020-07-26', '23:00:00', 1, NULL, 0),
(86, 54, NULL, NULL, '76415490', 'Colquiri norte', 'Av. pachacutic y pasaje ollanta', '-17.388291458403344', '-66.1485960156909', '12', '', NULL, 5, 3, 2, '2020-07-27', '14:07:00', 1, '', 0),
(88, 54, NULL, NULL, '76415490', 'Colquiri norte', 'Av. pachacutic y pasaje ollanta', '-17.389307266074614', '-66.19715166699218', '12', '15151', NULL, 2, 3, 2, '2020-07-27', '20:49:00', 1, '', 0),
(89, 54, NULL, NULL, '76415490', 'Colquiri norte', 'Av. pachacutic y pasaje ollanta', '-17.388652001757308', '-66.19577837597656', '12', 'dasdsa', NULL, 2, 3, 2, '2020-07-28', '19:30:00', 1, '', 0),
(90, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.362782870873616', '-66.17668715132514', '12', '', NULL, 8, 3, 3, '2020-07-28', '21:50:00', 1, '', 0),
(92, 58, NULL, NULL, '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', '-17.434105393339713', '-66.11985844981002', '12', 'SN', NULL, 29, 2, 2, '2020-07-28', '21:50:00', 0, '', 0),
(93, 55, NULL, NULL, '777848484', 'Surco', 'Tadeo haenke ', '-17.401782436573757', '-66.15663891147899', '12', 'kkk', NULL, 5, 3, 2, '2020-07-28', '21:56:00', 1, '', 0),
(94, 57, NULL, NULL, '79396328', 'SUD', '1ERO DE MAYO ZONA 5', '-17.48829083682782', '-66.16761177238365', '12', 'AL LADO DE COLEGIO 1RO DE MAYO', NULL, 45, 4, 3, '2020-07-28', '21:50:00', 0, '', 0),
(95, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra ', '-17.40656907705495', '-66.08952113052158', '12', '', NULL, 48, 2, 2, '2020-07-28', '21:50:00', 1, '', 0),
(96, 58, NULL, NULL, '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', '-17.3758945', '-66.1726685', '12', 'xx', NULL, 6, 3, 3, '2020-07-29', '12:59:00', 1, '\"https://www.google.com/maps/place/17°22\'33.2\"S 66°10\'21.6\"W/@-17.3758945,-66.1748572,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3758945!4d-66.1726685?hl=es\"', 0),
(97, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'av. pachacutij y pasaje ollanta', '-17.362032677791323', '-66.18608142929689', '12', 'edificio blanco', NULL, 8, 3, 1, '2020-07-29', '12:50:00', 1, NULL, 0),
(98, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra ', '-17.367897', '-66.133194', '12', 'sasa', NULL, 20, 3, 2, '2020-07-29', '14:21:00', 1, '\"https://www.google.com/maps/place/17°22\'04.4\"S 66°07\'59.5\"W/@-17.367897,-66.1507035,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.367897!4d-66.133194?hl=es\"', 0),
(99, 59, NULL, NULL, '6666666', 'galindo', 'casa blanca', '-17.3974397', '-66.2208658', '12', '444', NULL, 11, 3, 2, '2020-07-29', '14:52:00', 1, '\"https://www.google.com/maps/place/17°23\'50.8\"S 66°13\'15.1\"W/@-17.3974397,-66.2230545,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3974397!4d-66.2208658?hl=es\"', 1),
(100, 54, NULL, NULL, '76415490', 'Colquiri norte', 'Av. pachacutic y pasaje ollanta', '-17.368445160665463', '-66.16350335490036', '12', 'sas', NULL, 6, 3, 2, '2020-07-29', '15:33:00', 0, '', 1),
(101, 60, NULL, NULL, '69829976', 'dadas', '', '-17.365964800145864', '-66.17749836044923', '12', 'dadasdas', NULL, 8, NULL, 3, '2020-07-29', '15:42:00', 0, NULL, 0),
(102, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.4232618', '-66.1459257', '12', 'instrucciones especiales para que se muestre', NULL, 26, 2, 2, '2020-07-30', '12:21:00', 0, 'https://www.google.com/maps/place/17°25\'23.7S 66°08\'45.3W/@-17.4232569,-66.1481147,17z/data=!3m1!4b1!4m6!3m5!1s0x0:0x0!7e2!8m2!3d-17.4232618!4d-66.1459257', 0),
(103, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.4684268', '-66.1658707', '12', '', NULL, 42, 3, 2, '2020-07-30', '13:39:00', 2, 'https://www.google.com/maps/place/17°28\'06.3S 66°09\'57.1W/@-17.4672705,-66.1681678,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4684268!4d-66.1658707?hl=es', 1),
(104, 61, NULL, NULL, '77441044', '', '', '-17.3895557615028', '-66.16119052963869', '12', '', NULL, 1, NULL, 1, '2020-07-30', '13:34:00', 0, NULL, 0),
(105, 62, NULL, NULL, '76877665', 'Zona sud ', 'avenida 17 de octubre entre pasaje 6', '-17.424333143111227', '-66.14829128068965', '12', 'ninguna', NULL, NULL, NULL, 3, '2020-07-31', '09:00:00', 0, NULL, 0),
(106, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.3811065', '-66.2078922', '12', '', NULL, 2, 3, 2, '2020-07-30', '21:00:00', 2, 'https://www.google.com/maps/place/Av. Sexta, Cochabamba/@-17.387598,-66.207756,17z/data=!4m5!3m4!1s0x93e37496aff565f7:0xf7b81493d5f88293!8m2!3d-17.3811065!4d-66.2078922?hl=es', 1),
(107, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.3567702', '-66.1955972', '12', '126', NULL, 40, 3, 2, '2020-07-31', '18:59:00', 0, 'https://www.google.com/maps/place/17°21\'24.4S 66°11\'44.2W/@-17.3784272,-66.2104996,13z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3567702!4d-66.1955972?hl=es', 0),
(108, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.38832436871859', '-66.17860955607223', '12', '', NULL, 3, 3, 2, '2020-08-01', '14:24:00', 0, '', 1),
(109, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'av. pachacutij y pasaje ollanta', '-17.3915215377027', '-66.22075702744142', '12', 'puerta negra', NULL, 11, 3, 1, '2020-08-01', '19:19:00', 0, NULL, 0),
(110, 57, NULL, NULL, '79396328', 'SUD', '1ERO DE MAYO ZONA 5', '-17.3649821', '-66.1879145', '12', '45', NULL, 8, 3, 2, '2020-08-02', '10:38:00', 2, 'https://www.google.com/maps/place/17°21\'53.9S 66°11\'16.5W/@-17.3649821,-66.1901032,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3649821!4d-66.1879145?hl=es', 1),
(111, 57, NULL, NULL, '79396328', 'SUD', '1ERO DE MAYO ZONA 5', '-17.39389405057778', '-66.23903704296875', '12', 'fsdfs', NULL, 12, 5, 2, '2020-08-02', '11:45:00', 2, '', 1),
(112, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.37751214935999', '-66.19131518017578', '12', 'sas', NULL, 7, 5, 2, '2020-08-02', '11:05:00', 2, '', 1),
(113, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.403067274481565', '-66.16213274609375', '12', 'sas', NULL, 5, 3, 3, '2020-08-02', '11:11:00', 2, '', 1),
(114, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.3771844963789', '-66.19680834423828', '12', '45678', NULL, 7, 5, 3, '2020-08-02', '11:45:00', 2, '', 1),
(115, 58, NULL, NULL, '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', '-17.384161293304597', '-66.15057493164532', '12', 'kk', NULL, 1, 5, 3, '2020-08-02', '12:43:00', 2, '', 0),
(116, 61, NULL, NULL, '77441044', '', '', '-17.377635338116843', '-66.16806338548433', '12', '', NULL, 7, NULL, 1, '2020-08-03', '16:48:00', 0, NULL, 0),
(117, 63, NULL, NULL, '76904504', 'Zona Este', 'sacaba', '-17.397418739546538', '-66.05132724838869', '12', 'mucha yapita', NULL, 33, NULL, 3, '2020-08-03', '16:30:00', 0, NULL, 0),
(118, 61, NULL, NULL, '77441044', '', '', '-17.37700276763712', '-66.1696194374367', '12', '', NULL, 7, NULL, 1, '2020-08-03', '18:57:00', 0, NULL, 0),
(119, 63, NULL, NULL, '76904504', 'Zona Este', 'sacaba', '-17.372190487945073', '-66.16874363022463', '12', '', NULL, 6, 3, 1, '2020-08-02', '15:30:00', 1, NULL, 0),
(120, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.422722632539642', '-66.15904015909958', '12', 'as', NULL, 10, 4, 3, '2020-08-02', '13:11:00', 2, '', 0),
(121, 58, NULL, NULL, '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', '-17.44728885456656', '-66.13535088908004', '12', 'mucha yapita', NULL, 29, 3, 3, '2020-08-02', '14:00:00', 2, '', 0),
(122, 55, NULL, NULL, '777848484', 'Surco', 'Tadeo haenke', '-17.4684268', '-66.1658707', '12', '', NULL, 44, 3, 2, '2020-08-02', '14:46:00', 1, 'https://www.google.com/maps/place/17°28\'06.3S 66°09\'57.1W/@-17.4672705,-66.1681678,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4684268!4d-66.1658707?hl=es', 0),
(123, 55, NULL, NULL, '777848484', 'Surco', 'Tadeo haenke', '-17.4684268', '-66.1658707', '12', '', NULL, 42, 3, 1, '2020-08-02', '13:49:00', 1, 'https://www.google.com/maps/place/17°28\'06.3S 66°09\'57.1W/@-17.4672705,-66.1681678,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4684268!4d-66.1658707?hl=es', 0),
(124, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.40372248714888', '-66.16693926464843', '12', 'asdad', NULL, 5, 3, 2, '2020-08-02', '17:22:00', 1, '', 0),
(125, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.39029015815008', '-66.09243554484176', '12', 'aa', NULL, 23, 2, 3, '2020-08-02', '17:21:00', 2, '', 0),
(126, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.397390372667815', '-66.08677340161132', '12', '', NULL, 50, 2, 3, '2020-08-02', '17:24:00', 2, '', 0),
(127, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.39094541659995', '-66.08968896281051', '12', 'sa', NULL, 23, 2, 3, '2020-08-02', '17:27:00', 2, '', 1),
(128, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.398480720055616', '-66.07011956583786', '12', 'saas', NULL, 52, 2, 3, '2020-08-02', '17:29:00', 2, '', 1),
(129, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.373580274888468', '-66.1435906351738', '12', 'sa', NULL, 4, 2, 3, '2020-08-02', '17:31:00', 2, '', 1),
(130, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.39553216002569', '-66.08797234904098', '12', 'sasa', NULL, 50, 2, 3, '2020-08-02', '17:32:00', 2, '', 0),
(131, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.368665313082396', '-66.16419000040817', '12', 'kk', NULL, 6, 3, 2, '2020-08-02', '17:56:00', 2, '', 0),
(132, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.406015712988626', '-66.11337823283004', '12', 'dd', NULL, 35, 3, 3, '2020-08-02', '21:10:00', 1, '', 0),
(133, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.389962528044993', '-66.08110857617187', '12', '456', NULL, 56, 14, 3, '2020-08-02', '20:49:00', 0, '', 0),
(134, 54, NULL, NULL, '76415490', 'Colquiri norte modificado para que se muestre', 'Av. pachacutic y pasaje ollanta modificado pa', '-17.406343314331206', '-66.05467272412109', '12', '456', NULL, 53, 14, 3, '2020-08-02', '20:53:00', 0, '', 0),
(135, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.398716408919167', '-66.06558226863147', '12', '', NULL, 52, 2, 2, '2020-08-02', '20:52:00', 0, '', 0),
(136, 64, NULL, NULL, '60747219', 'SUD', 'Zona Mayorazgo C.BAPTISTA', '-17.3633874', '-66.1747872', '12', '', NULL, 8, 4, 2, '2020-08-02', '21:00:00', 1, 'https://www.google.com/maps/place/17°21\'48.2S 66°10\'29.2W/@-17.3633874,-66.1769759,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3633874!4d-66.1747872?hl=es', 0),
(137, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.448598960137602', '-66.15011644970703', '12', '', NULL, 28, 4, 2, '2020-08-02', '21:00:00', 1, '', 0),
(138, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.3750753', '-66.1237711', '12', '', NULL, 17, 4, 2, '2020-08-02', '21:01:00', 1, 'https://www.google.com/maps/place/17°22\'30.3S 66°07\'25.6W/@-17.3750753,-66.1259598,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3750753!4d-66.1237711?hl=es', 0),
(139, 55, NULL, NULL, '777848484', 'Surco', 'Tadeo haenke', '-17.4368218', '-66.160426', '12', '', NULL, 15, 4, 1, '2020-08-02', '21:03:00', 1, 'https://www.google.com/maps/place/17°26\'12.6S 66°09\'37.5W/@-17.4368218,-66.1626147,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4368218!4d-66.160426?hl=es', 0),
(140, 65, NULL, NULL, '60770183', 'SUD', 'AV. LOS ANGELES FRENTE AL COLEGIO SIGLO XX', '-17.433949111629826', '-66.12205248288603', '12', '', NULL, 29, 4, 3, '2020-08-02', '22:00:00', 1, '', 0),
(141, 56, NULL, NULL, '72770506', 'el abral', '3semaforo pasando el tunel del abra', '-17.39160067270271', '-66.20058489453125', '12', '', NULL, 2, 3, 2, '2020-08-02', '21:10:00', 1, '', 0),
(142, 58, NULL, NULL, '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', '-17.433736897815333', '-66.12175484869735', '12', '', NULL, 29, 2, 2, '2020-08-02', '21:09:00', 0, '', 0),
(144, 66, NULL, NULL, '79350158', 'Sarcobamba', 'Calle Uru ', '-17.3833942', '-66.1873526', '12', '', NULL, 2, 3, 2, '2020-08-02', '21:11:00', 2, 'https://www.google.com/maps/place/17°23\'00.2S 66°11\'14.5W/@-17.3833942,-66.1895413,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3833942!4d-66.1873526?hl=es', 0),
(146, 58, NULL, NULL, '60770183', 'SIGLO XX', 'AV LOS ANGELES FRENTE AL COL SIGLO XX', '-17.43382383346527', '-66.12178612083149', '12', 'CON SALSAS COMPLETAS', NULL, 29, 3, 2, '2020-08-02', '21:12:00', 2, '', 0),
(148, 67, NULL, NULL, '76876283', 'villazon', 'Z. MUYURINA C. LUIS CASTEL QUIROGA Y J. ANTEZ', '-17.3647249', '-66.1712569', '12', 'TODO COMPLETO NO OLVIDARSE LAS SALSAS POR FAV', NULL, 8, 2, 2, '2020-08-02', '21:14:00', 0, 'https://www.google.com/maps/place/Calle E. Laredo 88, Cochabamba/@-17.3641434,-66.1716551,17z/data=!4m5!3m4!1s0x93e37446aa76e2d1:0xe49f5623980aab69!8m2!3d-17.3647249!4d-66.1712569?hl=es', 0),
(149, 68, NULL, NULL, '71413683', 'sarco', 'Zona.- Sarcobamb', '-17.3771696', '-66.1956165', '12', 'cassa', NULL, 7, 3, 2, '2020-08-02', '21:20:00', 0, 'https://www.google.com/maps/place/17°22\'37.8S 66°11\'44.2W/@-17.3771696,-66.1978052,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3771696!4d-66.1956165?hl=es', 0),
(151, 69, NULL, NULL, '71496230', 'Z. SANTA ROSA', 'Blanco galindo km 6 calle Gabriel Garcia Márq', '-17.3953365', '-66.2121644', '12', '', NULL, 11, 3, 3, '2020-08-03', '12:00:00', 2, 'https://www.google.com/maps/place/17°23\'43.2S 66°12\'43.8W/@-17.3953365,-66.2143531,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3953365!4d-66.2121644?hl=es', 1),
(152, 70, NULL, NULL, '6555666', 'Petrolera', 'Prueba', '-17.449361478185864', '-66.15629625927734', '12', '', NULL, 28, 4, 3, '2020-08-03', '10:30:00', 2, '', 0),
(153, 72, NULL, NULL, '79958229', 'AMANCAYAS', 'Av Villazón km 6 1/2 (lado botella de pepsi)', '-17.3881825', '-66.086186', '12', '', NULL, 23, 2, 3, '2020-08-03', '12:00:00', 2, 'https://www.google.com/maps/place/17°23\'17.5S 66°05\'10.3W/@-17.3881825,-66.0883747,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3881825!4d-66.086186?hl=es', 1),
(154, 73, NULL, NULL, '71788479', 'zarco', 'villa granadoCalle: yuracare entre thunupa y ', '-17.374285', '-66.1866868', '12', '', NULL, 7, 3, 3, '2020-08-03', '12:00:00', 2, 'https://www.google.com/maps/place/17°22\'27.4S 66°11\'12.1W/@-17.377639,-66.1836184,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.374285!4d-66.1866868?hl=es', 1),
(155, 74, NULL, NULL, '69447888', 'sarco', '', '-17.388652001757308', '-66.19886828076172', '12', 'pickup ', NULL, 2, 3, 1, '2020-08-03', '12:00:00', 0, '', 1),
(156, 75, NULL, NULL, '69524075', 'centro', 'Ayacucho esq la paz El Prado ', '-17.386043827943677', '-66.16024610625985', '12', '', NULL, 1, 5, 3, '2020-08-03', '12:20:00', 0, '', 1),
(157, 76, NULL, NULL, '67442066', 'Zona Villa pagador.', 'Psje. Loayza entre silala y paria', '-17.4514624', '-66.1150411', '12', '', NULL, 54, 4, 3, '2020-08-03', '12:00:00', 2, 'https://www.google.com/maps/place/17°27\'05.3S 66°06\'54.2W/@-17.4514624,-66.1172298,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4514624!4d-66.1150411?hl=es', 1),
(158, 78, NULL, NULL, '60342350', 'PACATA', 'De la Calle Vaticano y Av. Papa Inocencio III', '-17.3683944', '-66.1297881', '12', '', NULL, 20, 2, 2, '2020-08-03', '11:37:00', 2, 'https://www.google.com/maps/place/Av Papa Inocencio III, Cochabamba/@-17.3891811,-66.1229264,15z/data=!4m5!3m4!1s0x93e376bd2ad0877d:0x13450c0d3d0a398e!8m2!3d-17.3683944!4d-66.1297881?hl=es', 1),
(159, 79, NULL, NULL, '78376868', 'centro ', 'Salamanca esq Pedro Borda', '-17.3842403', '-66.1529097', '12', 'no enviar llajua delivery 5bs', NULL, 1, 5, 3, '2020-08-03', '12:20:00', 0, 'https://www.google.com/maps/place/17°23\'03.3S 66°09\'10.5W/@-17.3843034,-66.1567813,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3842403!4d-66.1529097?hl=es', 1),
(161, 80, NULL, NULL, '70306678', 'Mayorazgo', 'Direccion: C/ Ushka Paugar ', '-17.3589065', '-66.1703667', '12', '', NULL, 8, 5, 2, '2020-08-03', '12:00:00', 0, 'https://www.google.com/maps/place/17°21\'32.1S 66°10\'13.3W/@-17.3589065,-66.1725554,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3589065!4d-66.1703667?hl=es', 1),
(162, 81, NULL, NULL, '79448086', 'sarco', 'Dirección Av beijing casi Av américa', '-17.3721403', '-66.1807621', '12', 'SOLO PIERNA Y ENTREPIERNA', NULL, 1, 15, 3, '2020-08-03', '13:00:00', 2, 'https://www.google.com/maps/place/17°22\'19.7S 66°10\'50.7W/@-17.3721403,-66.1829508,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3721403!4d-66.1807621?hl=es', 1),
(163, 82, NULL, NULL, '79967889', 'TURUPAYA ', 'gral. Galindo 1152 una ncasa antes de llegar ', '-17.3757402', '-66.1425156', '12', 'DELIVERY ES DE 5 BS.', NULL, 4, 2, 2, '2020-08-03', '12:30:00', 2, 'https://www.google.com/maps/place/17°22\'32.7S 66°08\'33.1W/@-17.3757402,-66.1447043,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3757402!4d-66.1425156?hl=es', 1),
(164, 84, NULL, NULL, '76914377', 'tupuraya', 'av América y calle quijarro', '-17.3730519', '-66.1458888', '12', 'DELIVERY 5 BS  - CON PECHOS ', NULL, 4, 5, 2, '2020-08-03', '12:40:00', 0, 'https://www.google.com/maps/place/Edificio Altamira/@-17.372956,-66.1458631,17z/data=!4m5!3m4!1s0x93e3741e9f2fffaf:0x305bc1f79aa06168!8m2!3d-17.3730519!4d-66.1458888?hl=es', 1),
(165, 83, NULL, NULL, '69456421', 'norte', 'calle emilio  amoretti 195 detras del mercado', '-17.3610473', '-66.1824362', '12', 'no alas  app ', NULL, 8, 5, 2, '2020-08-03', '12:40:00', 0, 'https://www.google.com/maps/place/Calle Luis Toro Moreno, Cochabamba/@-17.3606448,-66.1852625,17z/data=!3m1!4b1!4m5!3m4!1s0x93e37450ab35010b:0x27ab85f64e250066!8m2!3d-17.3610473!4d-66.1824362', 1),
(166, 85, NULL, NULL, '65366369', 'PACATA ALTA OTB SENAC', 'C.INNOMINADAS', '-17.3672958', '-66.1106309', '12', '', NULL, 20, 2, 2, '2020-08-03', '12:50:00', 2, 'https://www.google.com/maps/place/17°22\'02.3S 66°06\'38.3W/@-17.3675057,-66.1155662,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3672958!4d-66.1106309?hl=es', 1),
(167, 86, NULL, NULL, '68507074', 'km7 galindo', 'Av. Cap. Ustariz km 7 lado aduana', '-17.3966124', '-66.2235449', '12', '', NULL, 11, 3, 2, '2020-08-03', '13:00:00', 2, 'https://www.google.com/maps/place/17°23\'47.8S 66°13\'24.8W/@-17.3964619,-66.223991,16.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3966124!4d-66.2235449?hl=es', 1),
(168, 87, NULL, NULL, '65336966', 'NORTE ', 'IC NORTE HIPODROMO', '-17.38406508582903', '-66.14771050822067', '12', 'PICK UP', NULL, 5, 15, 1, '2020-08-03', '12:45:00', 2, '', 1),
(169, 88, NULL, NULL, '72748009', 'CHIMBA ', 'Calle Manuel Liendo entre grover Suárez y bei', '-17.3945206', '-66.1858577', '12', 'DELIVERY 5 BS \r\n', NULL, 2, 3, 2, '2020-08-03', '13:00:00', 2, 'https://www.google.com/maps/place/17°23\'40.3S 66°11\'09.1W/@-17.3945206,-66.1880464,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3945206!4d-66.1858577?hl=es', 1),
(170, 89, NULL, NULL, '79371050', 'zarco ', '234 de enero cerca de la beijing', '-17.3768782', '-66.1828356', '12', '', NULL, 7, 15, 2, '2020-08-03', '13:15:00', 2, 'https://www.google.com/maps/place/17°22\'36.8S 66°10\'58.2W/@-17.3770328,-66.184851,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3768782!4d-66.1828356?hl=es', 1),
(171, 90, NULL, NULL, '72261118', 'centro ', ' edificio de capresso. A lado del café está l', '-17.3704533', '-66.1707638', '12', 'delivery 13 bs seria porfavor ', NULL, 6, 5, 2, '2020-08-03', '12:33:00', 0, 'google.com/maps/place/17°22\'13.6S 66°10\'14.8W/@-17.3704533,-66.1729525,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3704533!4d-66.1707638?hl=es', 1),
(172, 92, NULL, NULL, '79964421', 'sarco ', 'tadeo haenke y claure ', '-17.380625', '-66.1935333', '12', 'delivery 5 bs la cliente saldra hasta el limi', NULL, 7, 3, 2, '2020-08-03', '13:30:00', 2, 'https://www.google.com/maps/place/17°22\'50.3S 66°11\'36.7W/@-17.380625,-66.195722,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.380625!4d-66.1935333?hl=es', 1),
(173, 93, NULL, NULL, '79368802', ' zan Pedro', 'calle José Pol No. 322 entre Carlos Davis y p', '-17.3877897', '-66.1452974', '12', 'DELIVERY 5 BS', NULL, 1, 2, 2, '2020-08-03', '13:20:00', 2, 'https://www.google.com/maps/place/17°23\'16.0S 66°08\'43.1W/@-17.3877897,-66.1474861,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3877897!4d-66.1452974?hl=es', 1),
(174, 94, NULL, NULL, '79708947', 'Villa loreto', 'Calle moto mendez esq. Calle Kami s2604', '-17.4206302', '-66.1604959', '12', '', NULL, 10, 4, 2, '2020-08-03', '13:30:00', 2, 'https://www.google.com/maps/place/17°25\'14.3S 66°09\'37.8W/@-17.4206302,-66.1626846,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4206302!4d-66.1604959?hl=es', 1),
(175, 91, NULL, NULL, '71483378', 'AMANCAYAS', 'urvanizacion Amancayas calle los molles', '-17.3780567', '-66.0891506', '12', '', NULL, 25, 2, 2, '2020-08-03', '13:30:00', 2, 'https://www.google.com/maps/place/17°22\'41.0S 66°05\'20.9W/@-17.3780567,-66.0913393,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3780567!4d-66.0891506?hl=es', 1),
(176, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'Av. pachacutij y pasaje ollanta', '-17.385483151357725', '-66.14771319042968', '12', '', NULL, 1, 15, 3, '2020-08-03', '15:45:00', 2, '', 0),
(177, 95, NULL, NULL, '67468531', 'SUD', 'POR EL TEMPLO SAN CARLOS - Zona sud Calle col', '-17.4072471', '-66.1513899', '12', '', NULL, 5, 4, 2, '2020-08-03', '16:37:00', 2, 'https://www.google.com/maps/place/17°24\'26.1S 66°09\'05.0W/@-17.4072471,-66.1535786,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4072471!4d-66.1513899?hl=es', 1),
(178, 53, NULL, NULL, '69829976', 'Colquiri norte ', 'av. pachacutij y pasaje ollanta', '-17.39657921894811', '-66.10522892075197', '12', 'sas', NULL, 30, NULL, 3, '2020-08-03', '18:27:00', 0, NULL, 1),
(179, 96, NULL, NULL, '76432238 ', 'SUD', 'PICK UP', '-17.40334532187994', '-66.15526951524798', '12', '', NULL, 5, 4, 3, '2020-08-03', '17:00:00', 0, '', 1),
(180, 97, NULL, NULL, '79789961', 'GALINDO', 'KM 7 Y MEDIO BLANCO GALINDO', '-17.3839218', '-66.2275233', '12', '', NULL, 11, 3, 2, '2020-08-03', '18:00:00', 2, 'https://www.google.com/maps/place/17°23\'02.1S 66°13\'39.1W/@-17.3856954,-66.2302423,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3839218!4d-66.2275233?hl=es', 1),
(181, 98, NULL, NULL, '70745957', 'GALINDO', '', '-17.391928299873907', '-66.20058489453125', '12', 'PICKUP ', NULL, 2, 3, 1, '2020-08-03', '18:00:00', 0, '', 1),
(182, 99, NULL, NULL, '76902265', 'GALINDO', 'Av. Blanco Galindo km 7 y medio una cuadra al', '-17.3900147', '-66.2269532', '12', '', NULL, 11, 3, 2, '2020-08-03', '18:10:00', 2, 'https://www.google.com/maps/place/17°23\'24.1S 66°13\'37.0W/@-17.3944487,-66.2293711,16.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3900147!4d-66.2269532?hl=es', 1),
(183, 100, NULL, NULL, '60343953', 'sarco ', 'Movima entre tunupa y chiriguano', '-17.3725376', '-66.1885757', '12', '', NULL, 7, 3, 2, '2020-08-03', '17:43:00', 2, 'https://www.google.com/maps/place/17°22\'21.1S 66°11\'18.9W/@-17.3722865,-66.1903707,17.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3725376!4d-66.1885757?hl=es', 1),
(184, 101, NULL, NULL, '75466230', 'GALINDO', ' blanco galindo km 8\'5 entrada concretec 1 cu', '-17.3925343', '-66.2362795', '12', '', NULL, 12, 3, 2, '2020-08-03', '18:30:00', 0, 'https://www.google.com/maps/place/17°23\'33.1S 66°14\'10.6W/@-17.3925343,-66.2384682,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3925343!4d-66.2362795?hl=es', 1),
(185, 101, NULL, NULL, '75466230', 'GALINDO', ' blanco galindo km 8\'5 entrada concretec 1 cu', '-17.3925343', '-66.2362795', '12', 'NO PECHOS', NULL, 12, 3, 2, '2020-08-03', '18:35:00', 2, 'https://www.google.com/maps/place/17°23\'33.1S 66°14\'10.6W/@-17.3925343,-66.2384682,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3925343!4d-66.2362795?hl=es', 1),
(186, 102, NULL, NULL, '77942343', 'CENTRO ', 'Calle Lanza 923 entre Ramón Rivero y Oruro. E', '-17.3828354', '-66.1577835', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-03', '18:45:00', 0, 'https://www.google.com/maps/place/17°22\'58.2S 66°09\'28.0W/@-17.3828354,-66.1599722,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3828354!4d-66.1577835?hl=es', 1),
(187, 103, NULL, NULL, '65747515', 'SUD', 'AV.INDEPENDENCIA ENTRE PASAJE TEJADA Y AV. CO', '-17.4252581', '-66.154347', '12', 'DELIVERY 18 BS', NULL, 10, 3, 2, '2020-08-03', '19:00:00', 2, 'https://www.google.com/maps/place/Av Independencia, Cochabamba/@-17.4200078,-66.1570739,17z/data=!3m1!4b1!4m5!3m4!1s0x93e373c4c3b35559:0x8593d159949e5b93!8m2!3d-17.4252581!4d-66.154347', 1),
(188, 104, NULL, NULL, ' 79795995', 'ORB SENAC ', 'sumunpaya norte km 8 blanco galindo', '-17.384720366572576', '-66.15698290478515', '12', 'PICK UP ', NULL, 1, 3, 1, '2020-08-03', '18:50:00', 0, '', 1),
(189, 105, NULL, NULL, '60358205', 'SANTA ROSA', 'Blanco galindo km. 6.5, por farmacorp al nort', '-17.3900389', '-66.2187109', '12', '', NULL, 11, 3, 2, '2020-08-03', '18:47:00', 2, 'https://www.google.com/maps/place/17°23\'24.1S 66°13\'07.4W/@-17.3900389,-66.2208996,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3900389!4d-66.2187109?hl=es', 1),
(190, 106, NULL, NULL, '65765060', 'Z. SARCO ', 'Calle Eduardo ocampo Moscoso casi América y B', '-17.3724926', '-66.1792123', '12', '', NULL, 7, 3, 2, '2020-08-03', '19:15:00', 2, 'https://www.google.com/maps/place/17°22\'21.0S 66°10\'45.2W/@-17.3724926,-66.181401,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3724926!4d-66.1792123?hl=es', 1),
(191, 107, NULL, NULL, '76485299', 'CENTRO ', 'Jordan entre Tarapacá y suipacha ', '-17.3964367', '-66.1632333', '12', 'DELIVERY 15 BS ', NULL, 5, 3, 2, '2020-08-03', '19:25:00', 2, 'https://www.google.com/maps/place/17°23\'47.2S 66°09\'47.6W/@-17.3964367,-66.165422,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3964367!4d-66.1632333?hl=es', 1),
(192, 108, NULL, NULL, '60715189', '', 'Calle mamaocllo entre tiahuanaco  n°550 detra', '-17.4020235', '-66.1674583', '12', 'DELIVERY 15 BS', NULL, 5, 3, 2, '2020-08-03', '19:28:00', 2, 'https://www.google.com/maps/place/17°24\'07.3S 66°10\'02.9W/@-17.4056016,-66.167748,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4020235!4d-66.1674583?hl=es', 1),
(193, 109, NULL, NULL, '65326935', 'Villa granado', 'Avenida THUNUPA esquina tadeo ahenke', '-17.3830913', '-66.1889713', '12', 'DELIVERY 5 BS ', NULL, 2, 3, 2, '2020-08-03', '19:34:00', 2, 'https://www.google.com/maps/place/17°22\'59.1S 66°11\'20.3W/@-17.3783209,-66.1974338,14.46z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3830913!4d-66.1889713?hl=es', 1),
(194, 111, NULL, NULL, '78350030', 'Zona coÑa coña', 'Calle José Yañez ', '-17.3841585', '-66.1983175', '12', 'DELIVERY 5 BS', NULL, 2, 3, 3, '2020-08-04', '12:00:00', 2, 'https://www.google.com/maps/place/17°23\'03.0S 66°11\'53.9W/@-17.3841585,-66.2005062,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3841585!4d-66.1983175?hl=es', 1),
(195, 113, NULL, NULL, '70380473', '-Zona Villa Coronilla', 'v. Manco Kapac ', '-17.4043577', '-66.1666261', '12', '', NULL, 5, 4, 3, '2020-08-04', '12:30:00', 0, 'https://www.google.com/maps/place/17°24\'15.7S 66°09\'59.9W/@-17.4052586,-66.1831592,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4043577!4d-66.1666261?hl=es', 0),
(196, 113, NULL, NULL, '70380473', '-Zona Villa Coronilla', 'v. Manco Kapac', '-17.4043577', '-66.1666261', '12', '', NULL, 5, 3, 3, '2020-08-04', '12:30:00', 1, 'https://www.google.com/maps/place/17°24\'15.7S 66°09\'59.9W/@-17.4061186,-66.1713253,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4043577!4d-66.1666261?hl=es', 1),
(197, 115, NULL, NULL, '75931649', 'norte', 'Calle Francisco de Quevedo ', '-17.3634284', '-66.1574364', '12', '', NULL, 55, 5, 3, '2020-08-04', '12:00:00', 0, 'https://www.google.com/maps/place/17°21\'48.3S 66°09\'26.8W/@-17.3634284,-66.1596251,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3634284!4d-66.1574364?hl=es', 1),
(198, 116, NULL, NULL, '65506953', 'centro', '', '-17.3771844963789', '-66.12608385693359', '12', 'pick up  ¡¡ ', NULL, 17, 2, 1, '2020-08-04', '12:20:00', 0, 'https://maps.google.com/maps?q=-17.3515626%2C-66.1627716&z=17&hl=es', 1),
(199, 118, NULL, NULL, '70305695', '', '', '-17.38734146608226', '-66.11372423779297', '12', 'pick up', NULL, 21, 2, 1, '2020-08-04', '12:45:00', 0, '', 1),
(200, 117, NULL, NULL, '60403434', '0', '0', '-17.392090454159614', '-66.19733953461854', '12', 'PICK UP PROGRAMADO 12:30', NULL, 2, 3, 1, '2020-08-04', '12:30:00', 0, '', 1),
(201, 119, NULL, NULL, '70784672', 'norte', ' Av. POTOSI ', '-17.376093', '-66.1536043', '12', 'delivery 5bs.', NULL, 57, 5, 3, '2020-08-04', '13:00:00', 0, 'https://www.google.com/maps/place/17°22\'33.9S 66°09\'13.0W/@-17.376093,-66.155793,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.376093!4d-66.1536043?hl=es', 1),
(202, 120, NULL, NULL, '70735311', '0', ' edificio Colón piso 8, av. Ballivian esquina', '-17.3941306', '-66.1573282', '12', 'DELIVERY 12 BS', NULL, 5, 5, 3, '2020-08-04', '12:15:00', 0, 'https://www.google.com/maps/place/17°23\'38.9S 66°09\'26.4W/@-17.419383,-66.1838226,13.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3941306!4d-66.1573282?hl=es', 1),
(203, 121, NULL, NULL, ' 70735591', 'norte', '', '-17.385048006064462', '-66.15835619580078', '12', 'pick up / no pechos', NULL, 1, 5, 1, '2020-08-04', '12:00:00', 0, '', 1),
(204, 122, NULL, NULL, '74578400', 'norte', 'Calle Manchaypuito', '-17.3691601', '-66.1725665', '12', '', NULL, 8, 5, 2, '2020-08-04', '12:30:00', 0, 'https://www.google.com/maps/place/17°22\'09.0S 66°10\'21.2W/@-17.3691601,-66.1747552,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3691601!4d-66.1725665?hl=es', 1),
(205, 123, NULL, NULL, ' 79755520', '0', '0', '-17.39225199722979', '-66.19752513717732', '12', 'PICK UP PROGRAMADO 12]:15', NULL, 2, 3, 1, '2020-08-04', '12:15:00', 0, '', 1),
(206, 124, NULL, NULL, ' 70359357', '0', 'Alfredo Domínguez ', '-17.3910182', '-66.1899458', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '12:40:00', 2, 'https://www.google.com/maps/place/17°23\'27.7S 66°11\'23.8W/@-17.3932911,-66.1945485,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3910182!4d-66.1899458?hl=es', 1),
(207, 126, NULL, NULL, '76917698', 'alto queru queru ', ': 2 circunvalación y wara wara', '-17.3568373', '-66.152064', '12', '', NULL, 19, 5, 2, '2020-08-04', '13:50:00', 0, 'https://www.google.com/maps/place/17°21\'24.6S 66°09\'07.4W/@-17.3568373,-66.1542527,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3568373!4d-66.152064?hl=es', 1),
(208, 127, NULL, NULL, '60719712', '0', '0', '-17.37690657536737', '-66.15679379465128', '12', 'PICK UP PROGRAMADO 12:30', NULL, 57, 5, 1, '2020-08-04', '12:30:00', 0, '', 1),
(209, 125, NULL, NULL, '60377634', '', '', '-17.3985168', '-66.3161181', '12', '', NULL, 59, 3, 2, '2020-08-04', '13:00:00', 1, 'https://www.google.com/maps/place/17°23\'54.7S 66°18\'58.0W/@-17.3985168,-66.3183068,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3985168!4d-66.3161181?hl=es', 1),
(210, 129, NULL, NULL, '79712902', '0', 'Calle Avaroa Casi Heroinas', '-17.3940427', '-66.1659118', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-04', '12:40:00', 0, 'https://www.google.com/maps/place/17°23\'38.6S 66°09\'57.3W/@-17.429723,-66.2137259,12.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3940427!4d-66.1659118?hl=es', 1),
(211, 125, NULL, NULL, '60377634', 'vinto', 'calle tupac katari antes de la zenon Crespo d', '-17.3985168', '-66.3161181', '12', '', NULL, 59, 3, 2, '2020-08-04', '13:00:00', 2, 'https://www.google.com/maps/place/17°23\'54.7S 66°18\'58.0W/@-17.3985168,-66.3183068,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3985168!4d-66.3161181?hl=es', 1),
(212, 131, NULL, NULL, ' 68497125', 'TEMPORAL', 'calle jose Mostajo y errique arce', '-17.3609269', '-66.1630236', '12', '', NULL, 55, 5, 2, '2020-08-04', '12:45:00', 0, 'https://www.google.com/maps/place/17°21\'39.3S 66°09\'46.9W/@-17.3609269,-66.1652123,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3609269!4d-66.1630236?hl=es', 1),
(213, 132, NULL, NULL, '77957097', 'Queru queru alto', 'Crisantemos casi trinitaria s/n', '-17.3649655', '-66.1497433', '12', '', NULL, 55, 5, 2, '2020-08-04', '13:10:00', 0, 'https://www.google.com/maps/place/17°21\'53.9S 66°08\'59.1W/@-17.3702441,-66.1548931,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3649655!4d-66.1497433?hl=es', 1),
(214, 133, NULL, NULL, '79728330', '0', '0', '-17.3920897206267', '-66.19653724100765', '12', 'PICK UP INMEDIATO', NULL, 2, 3, 1, '2020-08-04', '12:20:00', 0, '', 1),
(215, 130, NULL, NULL, '79722131', 'SUD', 'Av. Capitán ustaris ente av. Sexta Zona Pampa', '-17.396991', '-66.2102418', '12', '', NULL, 11, 3, 2, '2020-08-04', '13:00:00', 2, 'https://www.google.com/maps/place/17°23\'49.2S 66°12\'36.9W/@-17.396991,-66.2124305,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.396991!4d-66.2102418?hl=es', 1),
(216, 135, NULL, NULL, '72248002', '0', 'parque la Torre entre Heroinas y Pasaje F. Pr', '-17.3899403', '-66.1459274', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-04', '12:50:00', 0, 'https://www.google.com/maps/place/17°23\'23.8S 66°08\'45.3W/@-17.3884864,-66.1619885,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3899403!4d-66.1459274?hl=es', 1),
(217, 137, NULL, NULL, '78311150', '0', '0', '-17.3920555923415', '-66.19679074411995', '12', 'pick up inmediato', NULL, 2, 3, 1, '2020-08-04', '12:40:00', 0, '', 1),
(220, 136, NULL, NULL, '77992443', 'sud', 'av. Panamericana esquina arenales (una cuadra', '-17.4144688', '-66.156929', '12', '', NULL, 10, 4, 2, '2020-08-04', '12:31:00', 2, 'https://www.google.com/maps/place/17°24\'52.1S 66°09\'24.9W/@-17.4144688,-66.1591177,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4144688!4d-66.156929?hl=es', 1),
(221, 138, NULL, NULL, ' 72764474', 'temporal', 'Felix Lope de Vega entre Francisco de Quevedo', '-17.3617611', '-66.15728', '12', '', NULL, 55, 5, 2, '2020-08-04', '13:33:00', 0, 'https://www.google.com/maps/place/17°21\'42.3S 66°09\'26.2W/@-17.3617611,-66.1594687,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3617611!4d-66.15728?hl=es', 1),
(222, 139, NULL, NULL, '72281451', '0', 'Calle Villalobos Casi Circunvalación, Condomi', '-17.3718258', '-66.1411898', '12', 'DELIVERY 5 BS', NULL, 4, 2, 2, '2020-08-04', '13:00:00', 2, 'https://www.google.com/maps/place/17°22\'18.6S 66°08\'28.3W/@-17.3718258,-66.1433785,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3718258!4d-66.1411898?hl=es', 1),
(223, 140, NULL, NULL, '76400351', 'villazon', ' av chapare parada micro H dos cuadras al nor', '-17.3911752', '-66.0946101', '12', '', NULL, 23, 2, 2, '2020-08-04', '13:37:00', 2, 'https://www.google.com/maps/place/17°23\'28.2S 66°05\'40.6W/@-17.3911752,-66.0967988,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3911752!4d-66.0946101?hl=es', 1),
(224, 141, NULL, NULL, '60347821', 'villazon', 'villazon', '-17.39719937549647', '-66.06071774831969', '12', 'pickup', NULL, 17, 2, 1, '2020-08-04', '15:00:00', 0, '', 1),
(225, 142, NULL, NULL, '74301238', '0', 'Parque Lincoln casi Washington', '-17.3707564', '-66.1672843', '12', 'DELIVERY 5 BS', NULL, 6, 5, 2, '2020-08-04', '13:15:00', 0, 'https://www.google.com/maps/place/17°22\'14.7S 66°10\'02.2W/@-17.374632,-66.1704922,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3707564!4d-66.1672843?hl=es', 1),
(226, 144, NULL, NULL, ' 79956203 79956', 'norte ', 'FMILIO AMORETI', '-17.3623842', '-66.1831183', '12', '', NULL, 8, 3, 2, '2020-08-04', '13:20:00', 2, 'https://www.google.com/maps/place/17°21\'44.6S 66°10\'59.2W/@-17.3851984,-66.2138854,13.63z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3623842!4d-66.1831183?hl=es', 1),
(227, 143, NULL, NULL, ' 60738390', 'norte', 'edificio Washington entre obispo Anaya y Teóf', '-17.3766289', '-66.1673621', '12', 'delivery scz 10 bs ', NULL, 6, 5, 3, '2020-08-04', '13:45:00', 0, 'https://www.google.com/maps/place/17°22\'35.9S 66°10\'02.5W/@-17.3821426,-66.1696688,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3766289!4d-66.1673621?hl=es', 1),
(228, 146, NULL, NULL, '72736303', '0', ' Pacata baja - pedregal', '-17.3713068', '-66.1122552', '12', '', NULL, 20, 2, 2, '2020-08-04', '13:30:00', 2, 'https://www.google.com/maps/place/17°22\'16.7S 66°06\'44.1W/@-17.3858546,-66.1302137,14.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3713068!4d-66.1122552?hl=es', 1),
(229, 145, NULL, NULL, 'Arcienega', 'BLANCO GALINDO ', 'Condominio Juan Pablo IIA dos cuadras de la s', '-17.412766136918663', '-66.14219120676448', '12', 'PICK UP  13:15 ', NULL, 2, 3, 1, '2020-08-04', '13:15:00', 0, '', 1),
(230, 148, NULL, NULL, '4420583 - 78307', 'norte', 'Av Juan de la Rosa entre Beijing y América', '-17.3725699', '-66.1823686', '12', '', NULL, 7, 5, 2, '2020-08-04', '13:45:00', 0, 'https://www.google.com/maps/place/17°22\'21.3S 66°10\'56.5W/@-17.3725699,-66.1845573,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3725699!4d-66.1823686?hl=es', 1),
(231, 147, NULL, NULL, '79716736', 'sud', 'AV. BLANCO GALINDO KM 8 CALLE 1RO DE MAYO ENT', '-17.3925161', '-66.2282464', '12', '', NULL, 11, 3, 2, '2020-08-04', '13:45:00', 2, 'https://www.google.com/maps/place/17°23\'33.1S 66°13\'41.7W/@-17.3925161,-66.2304351,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3925161!4d-66.2282464?hl=es', 1),
(232, 150, NULL, NULL, '77421120', 'norte', 'Av. Ramon Rivero  ', '-17.3811468', '-66.1525459', '12', 'delivery 5bs ', NULL, 1, 5, 2, '2020-08-04', '13:45:00', 0, 'https://www.google.com/maps/place/17°22\'52.1S 66°09\'09.2W/@-17.3811468,-66.1547346,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3811468!4d-66.1525459?hl=es', 1),
(233, 151, NULL, NULL, ' 65771952', '0', 'avenida sexta entre Manuel angel anaya', '-17.3910557', '-66.2065081', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '13:40:00', 2, 'https://www.google.com/maps/place/17°23\'27.8S 66°12\'23.4W/@-17.3910557,-66.2086968,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3910557!4d-66.2065081?hl=es', 1),
(234, 152, NULL, NULL, '69497852', 'PACATA BAJA', 'BANCO SOL ATM', '-17.372673', '-66.1270369', '12', 'DELIVERY 5 BS', NULL, 17, 2, 2, '2020-08-04', '13:40:00', 2, 'https://www.google.com/maps/place/Guido Villagomes 3362, Cochabamba/@-17.3740177,-66.1320061,15.5z/data=!4m5!3m4!1s0x93e376bba9d1c1cf:0x16d7ed2f1060671a!8m2!3d-17.372673!4d-66.1270369', 1),
(235, 155, NULL, NULL, '70355635', '0', ' Av reducto ', '-17.3358312', '-66.2204759', '12', '', NULL, 34, 5, 3, '2020-08-04', '18:00:00', 1, 'https://www.google.com/maps/place/17°20\'09.0S 66°13\'13.7W/@-17.3419685,-66.2301383,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3358312!4d-66.2204759?hl=es', 1),
(236, 153, NULL, NULL, '65752510', 'centro', 'Calle Ladislao Cabrera casi tumusla', '-17.3983862', '-66.1610296', '12', '', NULL, 5, 5, 2, '2020-08-04', '13:52:00', 0, 'https://www.google.com/maps/place/17°23\'54.2S 66°09\'39.7W/@-17.3983862,-66.163229,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3983862!4d-66.1610296?hl=es', 1),
(237, 156, NULL, NULL, '77439009', 'COLQUIRI ', 'PLAZUELA SAN FRANCISCO DE ASÍS', '-17.3620523', '-66.1850686', '12', '', NULL, 8, 5, 2, '2020-08-04', '14:00:00', 2, 'https://www.google.com/maps/place/17°21\'43.4S 66°11\'06.3W/@-17.3620523,-66.1872573,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3620523!4d-66.1850686?hl=es', 1),
(238, 157, NULL, NULL, '65337808', '0', '0', '-17.376138442743667', '-66.15704858995304', '12', 'PICK UP PROGRAMADO 14:00', NULL, 57, 5, 3, '2020-08-04', '14:00:00', 0, '', 1),
(239, 159, NULL, NULL, '60362086', '0', 'Av. Blanco Galindo y Cap. Víctor Ustariz km 5', '-17.3959358', '-66.2113536', '12', '0', NULL, 11, 3, 2, '2020-08-04', '14:00:00', 2, 'https://www.google.com/maps/place/17°23\'45.4S 66°12\'40.9W/@-17.395946,-66.2310839,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3959358!4d-66.2113536?hl=es', 1),
(240, 160, NULL, NULL, '77986516', 'Zona autoventa ', 'Humawaka casi beijing', '-17.4019861', '-66.1862254', '12', 'DELIVERY  10 BS', NULL, 2, 3, 2, '2020-08-04', '14:10:00', 2, 'https://www.google.com/maps/place/17°24\'07.2S 66°11\'10.4W/@-17.4059378,-66.189959,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4019861!4d-66.1862254?hl=es', 1),
(241, 161, NULL, NULL, '76905305', 'LAGUNA COÑACOÑA ', 'AV COPERMICO', '-17.3775064', '-66.2025746', '12', '', NULL, 7, 3, 2, '2020-08-04', '14:17:00', 2, 'https://www.google.com/maps/place/17°22\'39.0S 66°12\'09.3W/@-17.3775064,-66.2047633,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3775064!4d-66.2025746?hl=es', 1),
(242, 162, NULL, NULL, '75882872', '0', ' av América calle Antonio zegada edificio ebe', '-17.3728266', '-66.1777427', '12', 'DELIVERY 10 BS', NULL, 7, 5, 2, '2020-08-04', '14:15:00', 2, 'https://www.google.com/maps/place/17°22\'22.2S 66°10\'39.9W/@-17.3729273,-66.1937324,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3728266!4d-66.1777427?hl=es', 1),
(243, 163, NULL, NULL, '68450897', '0', '0', '-17.373313290068378', '-66.13177544762915', '12', 'PICK UP PROGRAMADO 14:10', NULL, 17, 2, 1, '2020-08-04', '14:10:00', 0, '', 1),
(244, 164, NULL, NULL, ' 70736633', 'NORTE ', 'Simon lopez y cala cala alado de la iglesia a', '-17.3683563', '-66.1641848', '12', '', NULL, 6, 5, 2, '2020-08-04', '14:40:00', 2, 'https://www.google.com/maps/place/17°22\'06.1S 66°09\'51.1W/@-17.3683563,-66.1663735,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3683563!4d-66.1641848?hl=es', 1),
(245, 149, NULL, NULL, '65300088', '', '', '-17.383409802739198', '-66.11784142863083', '12', 'PICK UP ', NULL, 21, 5, 1, '2020-08-04', '14:00:00', 0, '', 1),
(246, 165, NULL, NULL, '65325078', '0', '0', '-17.375391705698338', '-66.15673449098963', '12', 'pick up inmediato', NULL, 57, 5, 1, '2020-08-04', '13:50:00', 0, '', 1),
(247, 166, NULL, NULL, ' 72044604', '', '', '-17.373252614871557', '-66.14462060343551', '12', 'PICK UP ', NULL, 4, 5, 1, '2020-08-04', '14:20:00', 0, '', 1),
(248, 167, NULL, NULL, '72755915', '', '', '-17.373907934319124', '-66.1439339579277', '12', '', NULL, 4, 5, 1, '2020-08-04', '14:20:00', 0, '', 1),
(249, 169, NULL, NULL, '72741117', '0', 'avenida blanco galindo - calle w ceballoos', '-17.3933974', '-66.1884767', '12', '', NULL, 2, 3, 2, '2020-08-04', '14:30:00', 2, 'https://www.google.com/maps/place/17°23\'36.2S 66°11\'18.5W/@-17.3933974,-66.1906654,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3933974!4d-66.1884767?hl=es', 1),
(250, 171, NULL, NULL, '71882950', '0', 'Cerca de Mons J.Ramallo 104', '-17.3828907', '-66.2008888', '12', 'YAPADITO - DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '14:15:00', 2, 'https://www.google.com/maps/place/17°22\'58.4S 66°12\'03.2W/@-17.405793,-66.2183631,13.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3828907!4d-66.2008888?hl=es', 1),
(251, 170, NULL, NULL, ' 70737830', 'CENTRO ', 'Freddy Mauricio Zelada RocabadoAv. Salamanca ', '-17.3862464', '-66.1542337', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-04', '14:45:00', 2, 'https://www.google.com/maps/place/17°23\'10.5S 66°09\'15.2W/@-17.3862464,-66.1564224,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3862464!4d-66.1542337?hl=es', 1),
(252, 173, NULL, NULL, ' 79982292', '0', 'Carlos davis ', '-17.3880562', '-66.1454766', '12', 'DELIVERY 5 BS', NULL, 1, 2, 2, '2020-08-04', '14:30:00', 2, 'https://www.google.com/maps/place/17°23\'17.0S 66°08\'43.7W/@-17.3904523,-66.1511925,15.71z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3880562!4d-66.1454766?hl=es', 1),
(253, 175, NULL, NULL, '60399251', 'Muyurina', 'Av Ramon rivero lado bloques militares', '-17.3805376', '-66.1487453', '12', 'CEL. REF. 74147874 - DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-04', '14:08:00', 2, 'https://www.google.com/maps/place/17°22\'49.9S 66°08\'55.5W/@-17.3809605,-66.1567481,15.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3805376!4d-66.1487453?hl=es', 1),
(254, 172, NULL, NULL, '63972517', 'sacaba ', 'Av. Circunvalación km 7/5 calle Pujllay Esmer', '-17.37643', '-66.073662', '12', '', NULL, 31, 2, 2, '2020-08-04', '14:50:00', 2, 'https://www.google.com/maps/place/17°22\'35.2S 66°04\'25.2W/@-17.37643,-66.0758507,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.37643!4d-66.073662?hl=es', 1),
(255, 177, NULL, NULL, '76410322', '', '', '-17.377118368808283', '-66.171937099023', '12', 'PICK 14:30', NULL, 7, 5, 1, '2020-08-04', '14:30:00', 0, '', 1),
(256, 178, NULL, NULL, '68834259', 'norte ', 'Calle Los Alelies S/N, Cochabamba, Bolivia', '-17.3673478', '-66.1413144', '12', '', NULL, 17, 5, 2, '2020-08-04', '15:00:00', 2, 'https://www.google.com/maps/place/Calle Los Alelies, Cochabamba/@-17.3680044,-66.1433316,16z/data=!4m5!3m4!1s0x93e376a0061648d9:0x58069698afafa4f1!8m2!3d-17.3673478!4d-66.1413144?hl=es', 1),
(257, 174, NULL, NULL, '77423019', 'sud', 'Av.petrolera km4 calle Mariano moreno y gualb', '-17.4417215', '-66.1404274', '12', '', NULL, 29, 4, 2, '2020-08-04', '14:40:00', 2, 'https://www.google.com/maps/place/17°26\'30.2S 66°08\'25.5W/@-17.4417215,-66.1426161,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4417215!4d-66.1404274?hl=es', 1),
(258, 179, NULL, NULL, '79962228', '0', 'Av Villazon km 6 1/2', '-17.3832186', '-66.0867416', '12', '', NULL, 25, 2, 2, '2020-08-04', '14:50:00', 1, 'https://www.google.com/maps/place/17°22\'59.6S 66°05\'12.3W/@-17.3965593,-66.1735486,12z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3832186!4d-66.0867416?hl=es', 1),
(259, 180, NULL, NULL, '77480850', 'blango galindo ', 'sbtte Jose Kanaudt esq. Pasaje', '-17.4028166', '-66.1705791', '12', 'dos pechos porfavor ', NULL, 3, 15, 2, '2020-08-04', '14:50:00', 2, 'https://www.google.com/maps/place/17°24\'10.1S 66°10\'14.1W/@-17.4028166,-66.1727678,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4028166!4d-66.1705791?hl=es', 1),
(260, 181, NULL, NULL, '77989300', 'Pacata baja', 'Ma. Manuela Rocha 207 entre Iriarte y Torres', '-17.3704776', '-66.1156349', '12', '', NULL, 20, 2, 2, '2020-08-04', '15:10:00', 2, 'https://www.google.com/maps/place/Ma.Manuela Rocha, Cochabamba/@-17.3707435,-66.1156395,17z/data=!4m5!3m4!1s0x93e376c716f1c311:0xc28588d10a773a02!8m2!3d-17.3704776!4d-66.1156349?hl=es', 1),
(261, 182, NULL, NULL, '70921348', '0', 'Av. Villarroel ', '-17.376506', '-66.1597323', '12', 'DELIVERY 5 BS', NULL, 57, 5, 2, '2020-08-04', '14:50:00', 2, 'https://www.google.com/maps/place/17°22\'35.4S 66°09\'35.0W/@-17.3772981,-66.1676175,14.71z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.376506!4d-66.1597323?hl=es', 1),
(262, 183, NULL, NULL, '60780876', 'centro ', 'Es al medio de atb y univida en una casa roja', '-17.3776397', '-66.1510707', '12', '5 bs delivery ', NULL, 57, 5, 2, '2020-08-04', '14:37:00', 2, 'https://www.google.com/maps/place/17°22\'39.5S 66°09\'03.9W/@-17.3776397,-66.1532594,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3776397!4d-66.1510707?hl=es', 1),
(263, 185, NULL, NULL, '79933989', 'SUD', 'cerca hospital univalle', '-17.4210167', '-66.1349716', '12', '', NULL, 27, 4, 2, '2020-08-04', '15:25:00', 2, 'https://www.google.com/maps/place/17°25\'15.7S 66°08\'05.9W/@-17.4210167,-66.1371603,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4210167!4d-66.1349716?hl=es', 1),
(264, 186, NULL, NULL, '75797547', '0', '0', '-17.39133534386301', '-66.19940494885164', '12', 'PICK UP PROGRAMADO 15 :25', NULL, 2, 3, 1, '2020-08-04', '15:25:00', 0, 'https://www.google.com/maps/place/P.Juan del Valle, Colcapirhua/@-17.3989074,-66.2215308,17z/data=!4m5!3m4!1s0x93e374a781ac0b9b:0xf40fcae8b6a9ce21!8m2!3d-17.3988146!4d-66.2219873?hl=es', 1),
(265, 187, NULL, NULL, '71772094', 'sacaba ', 'Sacaba mercado morro  final independencia en ', '-17.399282', '-66.0345529', '12', '', NULL, 33, 14, 2, '2020-08-04', '15:01:00', 0, 'https://www.google.com/maps/place/17°23\'57.4S 66°02\'04.4W/@-17.399282,-66.0367416,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.399282!4d-66.0345529?hl=es', 1),
(266, 188, NULL, NULL, ' 76905910', '0', 'DANIEL SALINAS Y AV. Sexta', '-17.3876072', '-66.209974', '12', '', NULL, 11, 3, 2, '2020-08-04', '15:30:00', 2, 'https://www.google.com/maps/place/17°23\'15.4S 66°12\'35.9W/@-17.3902166,-66.2137527,15.96z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3876072!4d-66.209974?hl=es', 1),
(267, 189, NULL, NULL, '75994374', 'Pacata Alta', 'C/Papa Alejandro jandro VI', '-17.3668872', '-66.130307', '12', '', NULL, 20, 2, 2, '2020-08-04', '15:30:00', 2, 'https://www.google.com/maps/place/17°22\'00.8S 66°07\'49.1W/@-17.3699898,-66.1389115,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3668872!4d-66.130307?hl=es', 1),
(268, 190, NULL, NULL, '65736472', 'recoleta', 'Canal Atb. Av. Pando. Pje tupiza', '-17.3779076', '-66.1509956', '12', 'delivery 5 bs', NULL, 57, 5, 2, '2020-08-04', '15:10:00', 2, 'https://www.google.com/maps/place/17°22\'40.5S 66°09\'03.6W/@-17.3779076,-66.1531843,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3779076!4d-66.1509956?hl=es', 1),
(269, 191, NULL, NULL, '70717798', '0', '0', '-17.392011186590192', '-66.19965562800017', '12', 'PICK UP PROGRAMADO 15:50', NULL, 2, 3, 1, '2020-08-04', '15:50:00', 0, '', 1),
(270, 192, NULL, NULL, '69472123', 'centro', 'Av. Oquendo y Guatemala', '-17.3996653', '-66.1485909', '12', '', NULL, 5, 4, 2, '2020-08-04', '15:28:00', 2, 'https://www.google.com/maps/place/17°23\'58.8S 66°08\'54.9W/@-17.3996653,-66.1507796,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3996653!4d-66.1485909?hl=es', 1),
(271, 194, NULL, NULL, '77950100', '', '', '-17.387996735093157', '-66.15698290478515', '12', 'pick up ', NULL, 1, 5, 1, '2020-08-04', '16:25:00', 0, '', 1);
INSERT INTO `pedido_delivery` (`id`, `cliente_id`, `razon_social`, `nit`, `telefono`, `zona`, `direccion`, `latitude`, `longitude`, `zoom`, `instrucciones`, `producto_id`, `precio_delivery_id`, `sucursal_delivery_id`, `tipo_pedido_id`, `fecha_entrega`, `hora_entrega`, `estado`, `url_mapa`, `facturado`) VALUES
(272, 193, NULL, NULL, '65378331', 'colcapirua ', 'av. blanco Galindo km 5.5 entre av. sexta y c', '-17.3937709', '-66.2088392', '12', '', NULL, 11, 3, 2, '2020-08-04', '16:04:00', 1, 'https://www.google.com/maps/place/Villa Busch, Cochabamba, Bolivia/@-17.3937709,-66.2110279,17z/data=!3m1!4b1!4m5!3m4!1s0x93e3749eee759b37:0x1a86e187cb83ced1!8m2!3d-17.3937709!4d-66.2088392?hl=es-US', 1),
(273, 195, NULL, NULL, '69543403', '0', 'Cruce taquiña', '-17.357114', '-66.1898847', '12', '', NULL, 8, 3, 2, '2020-08-04', '17:00:00', 2, 'https://www.google.com/maps/place/17°21\'25.6S 66°11\'23.6W/@-17.3557377,-66.1982844,15.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.357114!4d-66.1898847?hl=es', 1),
(274, 196, NULL, NULL, ' 77960577', 'las cuadras ', 'Final 9 de Abril y Rubén Dario', '-17.3975582', '-66.1362381', '12', '', NULL, 5, 4, 2, '2020-08-04', '16:29:00', 2, 'https://www.google.com/maps/place/17°23\'51.2S 66°08\'10.5W/@-17.3975582,-66.1384268,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3975582!4d-66.1362381?hl=es', 1),
(275, 197, NULL, NULL, '69521235', 'pacata ', 'cirunvalacion pacata baja 213', '-17.3736044', '-66.1274692', '12', '', NULL, 17, 2, 2, '2020-08-04', '16:34:00', 2, 'https://www.google.com/maps/place/Pacata, Cochabamba/@-17.3663312,-66.1388757,14z/data=!3m1!4b1!4m5!3m4!1s0x93e376d0f77fe2a1:0xbc9683dffe218b41!8m2!3d-17.3736044!4d-66.1274692', 1),
(276, 198, NULL, NULL, ' 77937706', 'SUD', 'av. panamericana y manuela rodriguez', '-17.4165876', '-66.1568893', '12', '', NULL, 10, 15, 2, '2020-08-04', '16:41:00', 0, 'https://www.google.com/maps/place/17°24\'59.7S 66°09\'24.8W/@-17.4167894,-66.1600115,16.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4165876!4d-66.1568893?hl=es', 1),
(277, 199, NULL, NULL, ' 67553865', 'Florida Norte', 'AV Blanco Galindo km 7 y medio', '-17.3872069', '-66.2242052', '12', '', NULL, 11, 3, 2, '2020-08-04', '17:25:00', 2, 'https://www.google.com/maps/place/17°23\'13.9S 66°13\'27.1W/@-17.3853127,-66.2433347,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3872069!4d-66.2242052?hl=es', 1),
(278, 200, NULL, NULL, '60366554', '0', '0', '-17.392224791877638', '-66.19684223450693', '12', 'PICK UP PROGRAMADO 17:10', NULL, 2, 3, 1, '2020-08-04', '17:10:00', 0, '', 1),
(279, 202, NULL, NULL, ' 77941502', 'CALA CALA', 'Por la subida de José Mendoza, En el segundo ', '-17.3708508', '-66.1672556', '12', 'DELIVERY 5 BS ', NULL, 6, 5, 2, '2020-08-04', '16:59:00', 2, 'https://www.google.com/maps/place/17°22\'15.1S 66°10\'02.1W/@-17.3677851,-66.169736,16.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3708508!4d-66.1672556?hl=es', 1),
(280, 201, NULL, NULL, '65729006', 'Zona seminario', 'Gurnnar mendoza', '-17.3837722', '-66.1943734', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '17:30:00', 2, 'https://www.google.com/maps/place/17°23\'01.6S 66°11\'39.7W/@-17.4006804,-66.2169063,13.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3837722!4d-66.1943734?hl=es', 1),
(281, 204, NULL, NULL, '76956700', 'COLCAPIRHUA', 'Km 8 cap ustariz', '-17.3937681', '-66.2297409', '12', '', NULL, 11, 3, 2, '2020-08-04', '17:09:00', 2, 'https://www.google.com/maps/place/17°23\'37.6S 66°13\'47.1W/@-17.3935966,-66.2317096,18z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3937681!4d-66.2297409?hl=es', 1),
(282, 205, NULL, NULL, '78332736', '0', ' Direccion.- 4 y medio de la blanco galindo c', '-17.3945708', '-66.1992181', '12', 'delivery 5 bs', NULL, 2, 3, 2, '2020-08-04', '17:40:00', 1, 'https://www.google.com/maps/place/17°23\'40.5S 66°11\'57.2W/@-17.3945708,-66.2014068,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3945708!4d-66.1992181?hl=es', 1),
(283, 206, NULL, NULL, ' 69433436', 'Zona Coronilla', 'Bartolome Guzman entre Huaskar y Tiwanaku', '-17.4034278', '-66.1625337', '12', '', NULL, 5, 4, 2, '2020-08-04', '17:40:00', 2, 'https://www.google.com/maps/place/17°24\'12.3S 66°09\'45.1W/@-17.4103433,-66.1710932,15.21z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4034278!4d-66.1625337?hl=es', 1),
(284, 209, NULL, NULL, ' 77938744', '0', '0', '-17.392007270875702', '-66.19697951943455', '12', 'pick up programado 17:50', NULL, 2, 3, 1, '2020-08-04', '17:50:00', 0, '', 1),
(285, 208, NULL, NULL, '60710065', 'GALINDO', 'Av Victor Ustariz Km 6 1/2  sobre la avenida ', '-17.3969346', '-66.2171005', '12', '', NULL, 11, 3, 2, '2020-08-04', '17:21:00', 2, 'https://www.google.com/maps/place/17°23\'49.0S 66°13\'01.6W/@-17.3969346,-66.2192892,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3969346!4d-66.2171005?hl=es', 1),
(286, 210, NULL, NULL, '77434692', 'CALA CALA', 'enrique arce entre simon lopez y ciclovia', '-17.3663635', '-66.1648941', '12', 'DELIVERY 12 BS \r\n', NULL, 6, 5, 2, '2020-08-04', '17:29:00', 2, 'https://www.google.com/maps/place/17°21\'58.9S 66°09\'53.6W/@-17.3663635,-66.1670828,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3663635!4d-66.1648941?hl=es', 1),
(287, 211, NULL, NULL, ' 69434434', '0', 'Zona autoventa barrio Marevi.', '-17.4014645', '-66.1929446', '12', 'delivery 10 bs', NULL, 2, 3, 2, '2020-08-04', '18:00:00', 2, 'https://www.google.com/maps/place/17°24\'05.3S 66°11\'34.6W/@-17.3991792,-66.2059321,14.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4014645!4d-66.1929446?hl=es', 1),
(288, 212, NULL, NULL, '75490904', 'CENTRO', 'A av carlos medinacelli calle batallon colora', '-17.378499', '-66.1689709', '12', 'DELIVERY 5 BS ', NULL, 7, 5, 2, '2020-08-04', '17:35:00', 2, 'https://www.google.com/maps/place/17°22\'42.6S 66°10\'08.3W/@-17.378499,-66.1711596,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.378499!4d-66.1689709?hl=es', 1),
(289, 214, NULL, NULL, '76906136', '0', 'calle 16 de julio n. 719 a entre calle la paz', '-17.3844271', '-66.1541101', '12', 'delivery 5 bs', NULL, 1, 5, 2, '2020-08-04', '18:15:00', 0, 'https://www.google.com/maps/place/17°23\'03.9S 66°09\'14.8W/@-17.3841814,-66.1629668,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3844271!4d-66.1541101?hl=es', 1),
(290, 216, NULL, NULL, ' 60784407', '0', '0', '-17.37579612173888', '-66.12712970071225', '12', 'pick up programado  18: 30', NULL, 17, 2, 1, '2020-08-04', '18:30:00', 0, '', 1),
(291, 215, NULL, NULL, '77902672', '', '', '-17.383737444577392', '-66.1161248148613', '12', 'PCIK UP 18 HRS ', NULL, 21, 2, 1, '2020-08-04', '17:46:00', 0, '', 1),
(292, 213, NULL, NULL, ' 76917472', 'GALINDO', 'Calle 21 de enero ibuen RetiroSona Sumunpaya', '-17.4030864', '-66.2295663', '12', '', NULL, 12, 3, 2, '2020-08-04', '17:48:00', 1, 'https://www.google.com/maps/place/17°24\'11.1S 66°13\'46.4W/@-17.4073288,-66.23245,15.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4030864!4d-66.2295663?hl=es', 1),
(293, 217, NULL, NULL, '75997533', '0', '0', '-17.376870193183304', '-66.15619313337416', '12', 'pick up inmediato ', NULL, 57, 5, 1, '2020-08-04', '18:00:00', 0, '', 1),
(294, 219, NULL, NULL, '63960287', 'SACABA', 'Calle sucre Colegio inti muju', '-17.422614', '-66.0087482', '12', 'DELIVERY 20 BS', NULL, 53, 14, 2, '2020-08-04', '18:30:00', 0, 'https://www.google.com/maps/place/17°25\'21.4S 66°00\'31.5W/@-17.4496015,-66.042451,12.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.422614!4d-66.0087482?hl=es', 1),
(295, 218, NULL, NULL, ' 76445276', 'FLORIDA', 'km7.5 Florida norte entrando una cuadra depue', '-17.3899031', '-66.2241404', '12', '', NULL, 11, 3, 2, '2020-08-04', '17:58:00', 2, 'https://www.google.com/maps/place/17°23\'23.7S 66°13\'26.9W/@-17.3899031,-66.2263291,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3899031!4d-66.2241404?hl=es', 1),
(296, 220, NULL, NULL, '70303087', '0', 'Calle Bolivar Nro. 876 entre Oquendo y 16 de ', '-17.392149', '-66.1497955', '12', 'DELIVERY 12 BS', NULL, 1, 5, 2, '2020-08-04', '18:30:00', 2, 'https://www.google.com/maps/place/17°23\'31.7S 66°08\'59.3W/@-17.394299,-66.156324,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.392149!4d-66.1497955?hl=es', 1),
(297, 221, NULL, NULL, '76934670', 'PACATA', 'JACINTO ANAYA Y A URQUIDI', '-17.37065', '-66.1377848', '12', '', NULL, 17, 2, 2, '2020-08-04', '18:08:00', 2, 'https://www.google.com/maps/place/17°22\'14.3S 66°08\'16.0W/@-17.37065,-66.1399735,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.37065!4d-66.1377848?hl=es', 1),
(298, 222, NULL, NULL, '76986394', 'Zona Huayllani', ' Villazón Km 9, subiendo 3 cuadras al norte d', '-17.3900054', '-66.0611706', '12', '', NULL, 32, 2, 2, '2020-08-04', '18:14:00', 1, 'https://www.google.com/maps/place/17°23\'24.0S 66°03\'40.2W/@-17.39,-66.0633554,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3900054!4d-66.0611706?hl=es', 1),
(299, 223, NULL, NULL, ' 70785515', 'Zona quintanilla', 'Calle Maldonado esquina PanamáZona quintanill', '-17.3899776', '-66.1137859', '12', '', NULL, 21, 2, 2, '2020-08-04', '18:16:00', 2, 'https://www.google.com/maps/place/17°23\'23.9S 66°06\'49.6W/@-17.3899776,-66.1159746,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3899776!4d-66.1137859?hl=es', 1),
(300, 224, NULL, NULL, '75401827', 'CENTRO', 'Punata y republicaLa cancha', '-17.4025799', '-66.1515424', '12', '17 BS DELIVERY SE ENVIA DE LA VILLAZON  LLAJU', NULL, 5, 2, 2, '2020-08-04', '18:19:00', 1, 'https://www.google.com/maps/place/17°24\'09.3S 66°09\'05.6W/@-17.4025799,-66.1537311,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4025799!4d-66.1515424?hl=es', 1),
(301, 225, NULL, NULL, ' 65723444', 'CENTRO', ' Baptista entre mayor Rocha y México', '-17.38867', '-66.1583599', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-04', '18:23:00', 0, 'https://www.google.com/maps/place/17°23\'19.2S 66°09\'30.1W/@-17.38867,-66.1605486,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.38867!4d-66.1583599?hl=es', 1),
(302, 226, NULL, NULL, ' 77916648', '0', 'Cae linares entre general Roman y aspiazu', '-17.3970156', '-66.1426628', '12', 'DELIVERY 10 BS -  NO PECHOS', NULL, 5, 2, 2, '2020-08-04', '18:25:00', 1, 'https://www.google.com/maps/place/17°23\'49.3S 66°08\'33.6W/@-17.4111344,-66.1487723,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3970156!4d-66.1426628?hl=es', 1),
(303, 228, NULL, NULL, '70752494', '0', 'Sumumpaya norte ( km 8 Av blanco Galind', '-17.3876674', '-66.2303036', '12', '', NULL, 12, 3, 2, '2020-08-04', '18:28:00', 2, 'https://www.google.com/maps/place/17°23\'15.6S 66°13\'49.1W/@-17.3911275,-66.2370506,14.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3876674!4d-66.2303036?hl=es', 1),
(304, 227, NULL, NULL, '.77921772', 'LA CHIMBA ', 'MARZANA Y STTE JONTA', '-17.4041367', '-66.1714942', '12', '', NULL, 3, 15, 2, '2020-08-04', '18:26:00', 0, 'https://www.google.com/maps/place/17°24\'14.9S 66°10\'17.4W/@-17.4039908,-66.1725671,18z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4041367!4d-66.1714942?hl=es', 1),
(305, 229, NULL, NULL, '70719311', '0', 'San Antonio de patdua y nicaragua', '-17.3921541', '-66.1101843', '12', '', NULL, 22, 2, 2, '2020-08-04', '18:30:00', 0, 'https://www.google.com/maps/place/17°23\'31.8S 66°06\'36.7W/@-17.4028519,-66.1275547,14.08z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3921541!4d-66.1101843?hl=es', 1),
(306, 230, NULL, NULL, ' 70730398', 'CHIMBA', 'av. Chaco 2419', '-17.3998527', '-66.1818854', '12', '', NULL, 3, 3, 2, '2020-08-04', '18:33:00', 2, 'https://www.google.com/maps/place/17°23\'59.5S 66°10\'54.8W/@-17.4014387,-66.1850584,16.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3998527!4d-66.1818854?hl=es', 1),
(307, 231, NULL, NULL, ' 79796580', 'PRADO', 'C. Lanza esquina La Paz', '-17.3839744', '-66.1566434', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-04', '18:38:00', 2, 'https://www.google.com/maps/place/17°23\'02.3S 66°09\'23.9W/@-17.385029,-66.1613373,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3839744!4d-66.1566434?hl=es', 1),
(308, 233, NULL, NULL, ' 71706577', 'MUYURINA', 'Ricardo Martínez ', '-17.3840094', '-66.1429393', '12', 'DELIVERY 5 BS', NULL, 1, 2, 2, '2020-08-04', '18:41:00', 0, 'https://www.google.com/maps/place/17°23\'02.4S 66°08\'34.6W/@-17.4063392,-66.1606887,14.21z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3840094!4d-66.1429393?hl=es', 1),
(309, 234, NULL, NULL, ' 77423395', 'CENTRAL', 'Final ayacucho detras del surtidor de la term', '-17.4038997', '-66.1587685', '12', 'DELIVERY 13 BS', NULL, 5, 15, 2, '2020-08-04', '18:44:00', 0, 'https://www.google.com/maps/place/17°24\'14.0S 66°09\'31.6W/@-17.4283407,-66.1934698,12.96z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4038997!4d-66.1587685?hl=es', 1),
(310, 236, NULL, NULL, '70262222', 'MAYORAZGO', 'BEIGIN Y PUENTE PINTO 1 CUADRA LARGA AL NORTE', '-17.3542532', '-66.1738744', '12', 'TIENDA DE PARED DE CEMENTO  -   DELIVERY 15 B', NULL, 9, 5, 2, '2020-08-04', '18:47:00', 2, 'https://www.google.com/maps/place/Mayorazgo, Cochabamba/@-17.3768704,-66.142208,13z/data=!3m1!4b1!4m6!3m5!1s0x93e3744c3a2b6d9f:0xbd924440a8f47c7b!7e2!8m2!3d-17.3542532!4d-66.1738744', 1),
(311, 238, NULL, NULL, '77661995', 'GALINDO', 'Ave.Blanco Galindo km 5 1/2 frente Al surtido', '-17.3925582', '-66.2092057', '12', '', NULL, 11, 3, 2, '2020-08-04', '18:49:00', 1, 'https://www.google.com/maps/place/17°23\'33.2S 66°12\'33.1W/@-17.3925582,-66.2113944,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3925582!4d-66.2092057?hl=es', 1),
(312, 237, NULL, NULL, ' 70395505', 'hipodromo', 'Calle Fernando de Magallanes ', '-17.3884792', '-66.17458', '12', 'DELIVERY 5 BS', NULL, 3, 15, 2, '2020-08-04', '18:49:00', 0, 'https://www.google.com/maps/place/17°23\'18.5S 66°10\'28.5W/@-17.3904757,-66.1783941,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3884792!4d-66.17458?hl=es', 1),
(313, 239, NULL, NULL, ' 72744456', 'Villa Buchs', 'Víctor Ustaroz km 3 1/2', '-17.3945921', '-66.1908342', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '18:52:00', 1, 'https://www.google.com/maps/place/17°23\'40.5S 66°11\'27.0W/@-17.3958835,-66.194826,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3945921!4d-66.1908342?hl=es', 1),
(314, 241, NULL, NULL, '61612445', 'Villa buch norte', 'Av Blanco galindo km 3y medio, pasando el sur', '-17.3883924', '-66.1898339', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '18:55:00', 2, 'https://www.google.com/maps/place/17°23\'18.2S 66°11\'23.4W/@-17.3904298,-66.1986047,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3883924!4d-66.1898339?hl=es', 1),
(315, 243, NULL, NULL, '74303770', 'VILLA BUSH', 'Pj. 12 de Junio entre abrían PatiñoTras el co', '-17.3867689', '-66.1871852', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '18:57:00', 1, 'https://www.google.com/maps/place/17°23\'12.4S 66°11\'13.9W/@-17.3979798,-66.2077041,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3867689!4d-66.1871852?hl=es', 1),
(316, 242, NULL, NULL, '76473704', 'VILLA CORONILLA ', 'Calle comunerosVilla coronilla', '-17.4047113', '-66.1663204', '12', '14 BS  PECHO ALA ', NULL, 5, 3, 2, '2020-08-04', '18:56:00', 2, 'https://www.google.com/maps/place/17°24\'17.0S 66°09\'58.8W/@-17.4047113,-66.1685091,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4047113!4d-66.1663204?hl=es', 1),
(317, 244, NULL, NULL, '60713578', 'COLCAPIRHUA', 'Final tadeo Haenke Barrio Martín Cárdenas esq', '-17.3786706', '-66.2138659', '12', 'DELIVERY 15 BS', NULL, 11, 3, 2, '2020-08-04', '19:00:00', 1, 'https://www.google.com/maps/place/17°22\'43.2S 66°12\'49.9W/@-17.3796945,-66.2180341,16z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3786706!4d-66.2138659?hl=es', 1),
(318, 235, NULL, NULL, ' 75906819', 'NORTE ', 'urbanización padre Berta zona chilimarca dist', '-17.3402131', '-66.1923265', '12', '', NULL, 38, 5, 2, '2020-08-04', '19:01:00', 2, 'https://www.google.com/maps/place/17°20\'24.8S 66°11\'32.4W/@-17.3402131,-66.1945152,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3402131!4d-66.1923265?hl=es', 1),
(319, 240, NULL, NULL, '77454599', 'SUD', 'Av. Cabildo ', '-17.4142437', '-66.161499', '12', 'DELIVERY 15  BS ', NULL, 10, 3, 2, '2020-08-04', '19:02:00', 1, 'https://www.google.com/maps/place/17°24\'51.3S 66°09\'41.4W/@-17.4142437,-66.1636877,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4142437!4d-66.161499?hl=es', 1),
(320, 246, NULL, NULL, '70746084', '0', 'JOSE ANTONIO ZEGADA N. 1883', '-17.3721674', '-66.1778074', '12', 'DELIVERY 10 BS', NULL, 7, 5, 2, '2020-08-04', '19:08:00', 2, 'https://www.google.com/maps/place/José Antonio Zegada 1875, Cochabamba/@-17.3908821,-66.1934343,14z/data=!4m6!3m5!1s0x93e37467e50742bb:0xb2d8589f78d8d656!7e2!8m2!3d-17.3721674!4d-66.1778074', 1),
(321, 248, NULL, NULL, ' 72738035', 'VILLA BUSH', 'Calle 23 de marzo frente a SERVECO', '-17.3896525', '-66.1838714', '12', 'DELIVERY 5 BS', NULL, 2, 15, 2, '2020-08-04', '19:13:00', 0, 'https://www.google.com/maps/place/17°23\'22.8S 66°11\'01.9W/@-17.3896525,-66.1860601,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3896525!4d-66.1838714?hl=es', 1),
(322, 249, NULL, NULL, '76964955', 'SARCO', ' villa granado av. Vilmavivencio calle apurim', '-17.3774858', '-66.1895256', '12', '', NULL, 7, 3, 2, '2020-08-04', '19:18:00', 2, 'https://www.google.com/maps/place/17°22\'39.0S 66°11\'22.3W/@-17.3774858,-66.1917143,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3774858!4d-66.1895256?hl=es', 1),
(323, 245, NULL, NULL, '75941534', 'BLANCO GALINDO ', ' Av Segunda circunvalación, calle José Rosend', '-17.3526931', '-66.1590285', '12', 'DELIVERY 22 BS ', NULL, 19, 5, 2, '2020-08-04', '19:10:00', 2, 'https://www.google.com/maps/place/17°21\'09.7S 66°09\'32.5W/@-17.3579719,-66.1663427,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3526931!4d-66.1590285?hl=es', 1),
(324, 251, NULL, NULL, ' 79972669', 'NORTE ', 'Final América Oeste entre thunupa y tapiete', '-17.373756', '-66.1869469', '12', '', NULL, 7, 3, 2, '2020-08-04', '19:25:00', 2, 'https://www.google.com/maps/place/17°22\'25.5S 66°11\'13.0W/@-17.373756,-66.1891356,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.373756!4d-66.1869469?hl=es', 1),
(325, 252, NULL, NULL, '75906819', 'CIUDAD DEL NIÑO', 'urbanización padre Berta zona chilimarca dist', '-17.3402131', '-66.1923265', '12', 'DELIVERY 25', NULL, 38, 5, 2, '2020-08-04', '19:27:00', 2, 'https://www.google.com/maps/place/17°20\'24.8S 66°11\'32.4W/@-17.3563595,-66.2001023,13.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3402131!4d-66.1923265?hl=es', 1),
(326, 254, NULL, NULL, ' 60369116', 'CENTRO ', 'calle Garcilaso de la Vega plaza virrey Toled', '-17.3910769', '-66.167381', '12', '', NULL, 3, 3, 2, '2020-08-04', '19:28:00', 1, 'https://www.google.com/maps/place/17°23\'27.9S 66°10\'02.6W/@-17.3913277,-66.1710825,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3910769!4d-66.167381?hl=es', 1),
(327, 253, NULL, NULL, '69528650', 'COLCAPIRHUA', 'Yendo hacia el cementerio de la concordia una', '-17.3813337', '-66.2186352', '12', 'DELIVERY 14 BS', NULL, 11, 3, 2, '2020-08-04', '19:28:00', 2, 'https://www.google.com/maps/place/17°22\'52.8S 66°13\'07.1W/@-17.4167058,-66.252372,13z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3813337!4d-66.2186352?hl=es', 1),
(328, 255, NULL, NULL, '77929717', 'CENTRAL', 'Republica 16 de julio', '-17.4001661', '-66.1494938', '12', 'DELIVERY 15 BS', NULL, 5, 15, 2, '2020-08-04', '19:31:00', 0, 'https://www.google.com/maps/place/17°24\'00.6S 66°08\'58.2W/@-17.4001661,-66.1516825,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4001661!4d-66.1494938?hl=es', 1),
(329, 256, NULL, NULL, '72233444', 'norte alto queru queru', 'Pasaje la sevillana esquina durazneros', '-17.3614971', '-66.1487178', '12', 'DELIVERY 15 BS ', NULL, 19, 5, 2, '2020-08-04', '19:32:00', 2, 'https://www.google.com/maps/place/La Sevillana, Cochabamba/@-17.3615645,-66.1484775,17z/data=!4m5!3m4!1s0x93e374246ef608ad:0x36b6613f77ed035e!8m2!3d-17.3614971!4d-66.1487178?hl=es', 1),
(330, 257, NULL, NULL, '60410561', 'CENTRO ', 'AV 6 DE AGOSTO AVION', '-17.4086756', '-66.1699165', '12', 'DELIVERY 15 BS', NULL, 5, 3, 2, '2020-08-04', '19:34:00', 1, 'https://www.google.com/maps/place/17°24\'31.2S 66°10\'11.7W/@-17.4086756,-66.1721052,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4086756!4d-66.1699165?hl=es', 1),
(331, 259, NULL, NULL, '67199730', 'ZONA MUYURINA', 'AV. RAMON RIVERO VILLA MILITAR BLOQUE B PISO ', '-17.3780914', '-66.144554', '12', 'DELIVERY 5 BS', NULL, 1, 2, 2, '2020-08-04', '19:36:00', 0, 'https://www.google.com/maps/place/17°22\'41.1S 66°08\'40.4W/@-17.3789608,-66.1477448,16.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3780914!4d-66.144554?hl=es', 1),
(332, 260, NULL, NULL, '76926693', 'ZONA CHIMBA ', 'ALIHUATA ES CHACO', '-17.4037255', '-66.1731067', '12', '', NULL, 3, 3, 2, '2020-08-04', '19:37:00', 1, 'https://www.google.com/maps/place/17°24\'13.4S 66°10\'23.2W/@-17.4037255,-66.1752954,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4037255!4d-66.1731067?hl=es', 1),
(333, 261, NULL, NULL, '71497002', 'VILLAZON', 'Av Villazón km 3.6 a sacaba subir 1 cuadra al', '-17.3815042', '-66.1127553', '12', '', NULL, 21, 2, 2, '2020-08-04', '19:40:00', 0, 'https://www.google.com/maps/place/17°22\'53.4S 66°06\'45.9W/@-17.3815042,-66.114944,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3815042!4d-66.1127553?hl=es', 1),
(334, 262, NULL, NULL, '76177548', 'Sud', 'Av. Cabildo n° 2860, porton cafe oscuro con c', '-17.4181428', '-66.1664281', '12', ' porton cafe oscuro con cortina de metal (tip', NULL, 10, 15, 2, '2020-08-04', '19:41:00', 0, 'https://www.google.com/maps/place/17°25\'05.3S 66°09\'59.1W/@-17.4190969,-66.2106075,13z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4181428!4d-66.1664281?hl=es;z=16', 1),
(335, 263, NULL, NULL, '65242759', 'SACABA ', 'VILLAZON FORESTAL', '-17.3835047', '-66.0946436', '12', '', NULL, 23, 2, 2, '2020-08-04', '19:43:00', 2, 'https://www.google.com/maps/place/17°23\'00.6S 66°05\'40.7W/@-17.3835047,-66.0968323,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3835047!4d-66.0946436?hl=es', 1),
(336, 264, NULL, NULL, ' 70387826', 'COÑA COÑA', 'Frente el puente guillen la paralela a la cal', '-17.3783638', '-66.2136738', '12', 'DELIVERY 15 BS', NULL, 11, 3, 2, '2020-08-04', '19:43:00', 2, 'https://www.google.com/maps/place/17°22\'42.1S 66°12\'49.2W/@-17.3981202,-66.2348228,13.63z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3783638!4d-66.2136738?hl=es', 1),
(337, 250, NULL, NULL, '70563309', 'ZONA CHIMBA ', ' Avenida final beijing sur, esquina pasaja D.', '-17.4055786', '-66.1874355', '12', 'DELIVERY ', NULL, 3, 3, 2, '2020-08-04', '19:17:00', 2, 'https://www.google.com/maps/place/17°24\'20.1S 66°11\'14.8W/@-17.4055786,-66.1896242,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4055786!4d-66.1874355?hl=es', 1),
(338, 266, NULL, NULL, '75481996', '0', '0', '-17.391829803413856', '-66.19724396781587', '12', 'PICK UP INMEDIATO', NULL, 2, 3, 1, '2020-08-04', '19:49:00', 0, '', 1),
(339, 267, NULL, NULL, '61602377', 'COLCAPIRHUA', 'Barrio ferroviario', '-17.394656', '-66.2320815', '12', '', NULL, 12, 3, 2, '2020-08-04', '19:49:00', 0, 'https://www.google.com/maps/place/17°23\'40.8S 66°13\'55.5W/@-17.394656,-66.2342702,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.394656!4d-66.2320815?hl=es', 1),
(340, 265, NULL, NULL, '76997175', 'America y Beguin', 'Óscar Cerruto 22, Edificio Inti 2, depto 4B', '-17.3747791', '-66.1792397', '12', '', NULL, 7, 3, 2, '2020-08-04', '19:48:00', 1, 'https://www.google.com/maps/place/17°22\'29.2S 66°10\'45.3W/@-17.3747791,-66.1814284,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3747791!4d-66.1792397?hl=es;z=16', 1),
(341, 269, NULL, NULL, '65778878', '0', '0', '-17.391027323741156', '-66.19620484720993', '12', 'PICK UP INMEDIATO  - SALSAS MIEL Y BBQ', NULL, 2, 3, 1, '2020-08-04', '19:52:00', 0, '', 1),
(343, 270, NULL, NULL, '72710385', 'CALA CALA', 'pasaje Eterovic n°500, calle Milivoy Eterovic', '-17.3832241', '-66.1672419', '12', 'DELIVERY 5 BS', NULL, 3, 5, 2, '2020-08-04', '19:55:00', 2, 'https://www.google.com/maps/place/17°22\'59.6S 66°10\'02.1W/@-17.384719,-66.1711955,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3832241!4d-66.1672419?hl=es', 1),
(347, 272, NULL, NULL, '68485263', 'URBANIZACION LAB', 'Guadalupe final circunvalación este', '-17.380368', '-66.0714196', '12', '', NULL, 31, 2, 2, '2020-08-04', '19:59:00', 2, 'https://www.google.com/maps/place/17°22\'49.3S 66°04\'17.1W/@-17.3862963,-66.0895889,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.380368!4d-66.0714196?hl=es', 1),
(348, 268, NULL, NULL, '76462741', 'VILLA GALINDO', '', '-17.3886448', '-66.1686042', '12', '', NULL, 3, 3, 2, '2020-08-04', '19:59:00', 0, 'https://www.google.com/maps/place/17°23\'19.1S 66°10\'07.0W/@-17.3886448,-66.1707929,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3886448!4d-66.1686042?hl=es', 1),
(349, 273, NULL, NULL, '71726288', 'NORTE ', 'Zona bajo aranjuez', '-17.3752813', '-66.1464175', '12', 'DELIVERY 5 BS ', NULL, 4, 5, 2, '2020-08-04', '20:01:00', 2, 'https://www.google.com/maps/place/17°22\'31.0S 66°08\'47.1W/@-17.3752813,-66.1486062,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3752813!4d-66.1464175?hl=es', 1),
(350, 271, NULL, NULL, '75701489', 'GALINDO', 'BLANCO GALINDO AL FRENTE DE LA CAJA NACIONAL', '-17.3919715', '-66.2061649', '12', 'DELIVERY 5 BS  PECHO ALA ', NULL, 2, 3, 2, '2020-08-04', '19:57:00', 2, 'https://www.google.com/maps/place/17°23\'31.1S 66°12\'22.2W/@-17.3919715,-66.2083536,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3919715!4d-66.2061649?hl=es', 1),
(351, 275, NULL, NULL, '60353177', 'QUINTANILLA ', 'Av Chapare y los ángeles', '-17.3827914', '-66.1126175', '12', '', NULL, 21, 2, 2, '2020-08-04', '20:13:00', 1, 'https://www.google.com/maps/place/Calle Los Angeles/@-17.3876827,-66.1143024,17z/data=!4m5!3m4!1s0x93e37134cb231505:0x3f96c9633a574859!8m2!3d-17.3827914!4d-66.1126175?hl=es', 1),
(352, 276, NULL, NULL, ' 65363982', 'LINDE', 'Calle innominada', '-17.3563509', '-66.1980494', '12', 'DELIVERY 18 BS', NULL, 8, 3, 2, '2020-08-04', '20:14:00', 1, 'https://www.google.com/maps/place/17°21\'22.9S 66°11\'53.0W/@-17.3611326,-66.2027212,15.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3563509!4d-66.1980494?hl=es', 1),
(353, 274, NULL, NULL, ' 70790434', 'Zona Miraflores', 'Mariano borda esquina papa Clemente', '-17.3675937', '-66.1347177', '12', '', NULL, 20, 2, 2, '2020-08-04', '20:05:00', 2, 'https://www.google.com/maps/place/Papa Clemente 100, Cochabamba/@-17.3672089,-66.1354523,17z/data=!4m5!3m4!1s0x93e376a23c9e9d8b:0xf745f81ada26c36b!8m2!3d-17.3675937!4d-66.1347177?hl=es', 1),
(354, 278, NULL, NULL, ' 77155555', 'Queru queru', ' Pedro blanco trinidad y villarroel', '-17.3760146', '-66.158379', '12', 'DELIVERY 5 BS', NULL, 57, 5, 2, '2020-08-04', '20:16:00', 2, 'https://www.google.com/maps/place/17°22\'33.7S 66°09\'30.2W/@-17.3760146,-66.1605677,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3760146!4d-66.158379?hl=es', 1),
(355, 277, NULL, NULL, ' 72774720', 'colcapirua ', 'Blanco Galindo km 4 1/2', '-17.3928106', '-66.2264907', '12', '', NULL, 11, 3, 2, '2020-08-04', '20:17:00', 0, 'https://www.google.com/maps/place/17°23\'34.1S 66°13\'35.4W/@-17.3932265,-66.2273656,18z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3928106!4d-66.2264907?hl=es', 1),
(356, 279, NULL, NULL, ' 70708128', 'VILLAZON', 'Maximiliano Kolbe y tercera calle', '-17.3786534', '-66.109528', '12', '', NULL, 24, 2, 2, '2020-08-04', '20:20:00', 0, 'https://www.google.com/maps/place/17°22\'43.2S 66°06\'34.3W/@-17.3786534,-66.1117167,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3786534!4d-66.109528?hl=es', 1),
(357, 280, NULL, NULL, ' 69509564', 'COLCAPIRHUA', 'Avenida Blanco galindo km 8', '-17.3909241', '-66.2299536', '12', '', NULL, 12, 3, 2, '2020-08-04', '20:21:00', 0, 'https://www.google.com/maps/place/17°23\'27.3S 66°13\'47.8W/@-17.3939239,-66.2340681,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3909241!4d-66.2299536?hl=es', 1),
(358, 281, NULL, NULL, '69107970', 'Chimba', 'CALLE TROJES Y INNOMINADA', '-17.4057476', '-66.1895661', '12', 'DELIVERY 14 BS ', NULL, 3, 3, 2, '2020-08-04', '20:23:00', 0, 'https://www.google.com/maps/place/17°24\'20.7S 66°11\'22.4W/@-17.4051294,-66.1905062,18z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4057476!4d-66.1895661?hl=es', 1),
(359, 282, NULL, NULL, ' 70358080', 'COÑA COÑA', 'pedro  nolasco ', '-17.3878101', '-66.2039642', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-04', '20:31:00', 1, 'https://www.google.com/maps/place/17°23\'16.1S 66°12\'14.3W/@-17.3902821,-66.2100116,15.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3878101!4d-66.2039642?hl=es', 1),
(360, 283, NULL, NULL, '65739369', 'TEMPORAL', 'Francisco de Quevedo entre mostajo y Lope de ', '-17.3623581', '-66.1580658', '12', 'DELIVERY 12 BS', NULL, 55, 5, 2, '2020-08-04', '20:32:00', 2, 'https://www.google.com/maps/place/17°21\'44.5S 66°09\'29.0W/@-17.3692136,-66.1952949,13z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3623581!4d-66.1580658?hl=es', 1),
(361, 287, NULL, NULL, '69516203', 'NORTE ', 'America oeste entre azanaque y baure calle ya', '-17.3719044', '-66.1864285', '12', '', NULL, 7, 3, 3, '2020-08-05', '12:00:00', 0, 'https://www.google.com/maps/place/17°22\'18.9S 66°11\'11.1W/@-17.3719044,-66.1886172,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3719044!4d-66.1864285?hl=es', 1),
(362, 288, NULL, NULL, '70773707', 'QUERU QUERU', 'av Villarroel esquina Pedro Blanco, edificio ', '-17.3766785', '-66.1590729', '12', '', NULL, 4, 5, 3, '2020-08-05', '12:00:00', 2, 'https://www.google.com/maps/place/17°22\'36.0S 66°09\'32.7W/@-17.3776555,-66.1645879,15.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3766785!4d-66.1590729?hl=es', 1),
(363, 289, NULL, NULL, '60375915', 'COÑA COÑA', 'GALINDO KM 4 ESQ. AV SEGUNDA ', '-17.38870534322221', '-66.19719484259389', '12', 'PICK UP 12:05', NULL, 2, 3, 1, '2020-08-05', '12:05:00', 0, '', 1),
(364, 290, NULL, NULL, '70721400', '', '', '-17.374481333384697', '-66.13745373628205', '12', 'PICK UP 12:00', NULL, 4, 2, 1, '2020-08-05', '12:00:00', 0, '', 1),
(365, 291, NULL, NULL, '63932018', 'CONDEBAMBA', 'C. PACHACUTEC Y ASARPAYA', '-17.3540977', '-66.1836756', '12', '', NULL, 23, 5, 3, '2020-08-05', '12:00:00', 2, 'https://www.google.com/maps/place/17°21\'14.8S 66°11\'01.2W/@-17.3540977,-66.1858643,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3540977!4d-66.1836756?hl=es', 1),
(366, 292, NULL, NULL, '62623901', 'QUERU QUERU', 'AV. AMERICA Y SANTA CRUZ', '-17.3729122', '-66.157569', '12', 'DELIVERY 5 BS ', NULL, 5, 5, 3, '2020-08-05', '12:00:00', 2, 'https://www.google.com/maps/place/17°22\'22.5S 66°09\'27.3W/@-17.3729122,-66.1597577,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3729122!4d-66.157569?hl=es', 1),
(367, 295, NULL, NULL, '77411959', 'villa bush', ' Av blanco Galindo km 3 y 1/2', '-17.3953705', '-66.1915158', '12', 'delivery 5 bs', NULL, 2, 3, 3, '2020-08-05', '12:00:00', 0, 'https://www.google.com/maps/place/17°23\'43.3S 66°11\'29.5W/@-17.3948842,-66.2024753,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3953705!4d-66.1915158?hl=es', 1),
(368, 294, NULL, NULL, '75992370', 'COLQUIRI NORTE', 'AV. CENTENARIO', '-17.3487417', '-66.1830421', '12', 'DELIVERY 18 BS ', NULL, 38, 5, 3, '2020-08-05', '12:20:00', 2, 'https://www.google.com/maps/place/17°20\'55.5S 66°10\'59.0W/@-17.3511783,-66.1844522,17.04z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3487417!4d-66.1830421?hl=es', 1),
(369, 297, NULL, NULL, '61623965', 'siglo xx', ' Km 10 detras de la coca cola  calle Catavi.', '-17.3884991', '-66.2517111', '12', '', NULL, 13, 3, 2, '2020-08-05', '12:00:00', 2, 'https://www.google.com/maps/place/17°23\'18.6S 66°15\'06.2W/@-17.38725,-66.2627367,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3884991!4d-66.2517111?hl=es', 1),
(370, 298, NULL, NULL, '76463764', 'Pacata Alta', 'Av Papa Damaso I N°421', '-17.3685013', '-66.1268018', '12', '', NULL, 20, 2, 3, '2020-08-05', '12:30:00', 2, 'https://www.google.com/maps/place/17°22\'06.6S 66°07\'36.5W/@-17.3700153,-66.1313836,15.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3685013!4d-66.1268018?hl=es', 1),
(371, 300, NULL, NULL, '77908627', '0', '0', '-17.3920066699939', '-66.19585159442927', '12', 'PICK UP PROGRAMADO 15 :00', NULL, 2, 3, 1, '2020-08-05', '15:00:00', 0, '', 1),
(372, 301, NULL, NULL, '69494999', '', '', '-17.372982525035013', '-66.15117479624061', '12', '', NULL, 5, 5, 1, '2020-08-05', '12:00:00', 0, '', 1),
(373, 299, NULL, NULL, '79331504 ', 'temporal ', ' (CALLE MACEDONIO URQUIDI Y RICARDO MUJIA )LA', '-17.3545403', '-66.1592174', '12', '', NULL, 55, 5, 3, '2020-08-05', '12:00:00', 0, 'https://www.google.com/maps/place/17°21\'16.4S 66°09\'33.2W/@-17.3545403,-66.1614061,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3545403!4d-66.1592174?hl=es', 1),
(374, 302, NULL, NULL, '63911076', 'ESTADIO', 'Dirección calle bartolome de las casas esquin', '-17.384101', '-66.1654932', '12', 'DELIVERY 5 BS ', NULL, 3, 5, 3, '2020-08-05', '12:00:00', 2, 'https://www.google.com/maps/place/17°23\'02.8S 66°09\'55.8W/@-17.384101,-66.1676819,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.384101!4d-66.1654932?hl=es', 1),
(375, 303, NULL, NULL, '60353060', ' la florida zud', ' km 7 1/2 blanco Galindo', '-17.3941877', '-66.2263813', '12', '', NULL, 11, 3, 2, '2020-08-05', '11:34:00', 2, 'https://www.google.com/maps/place/17°23\'39.1S 66°13\'35.0W/@-17.3886344,-66.2361703,14.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3941877!4d-66.2263813?hl=es', 1),
(376, 304, NULL, NULL, '74355680 ', 'FRUTILLAR', 'Av. Papá Damaso Esq. J. Castillo', '-17.3674131', '-66.13091', '12', '', NULL, 20, 2, 3, '2020-08-05', '12:00:00', 0, 'https://www.google.com/maps/place/17°22\'02.7S 66°07\'51.3W/@-17.367413,-66.1330987,17z/data=!3m1!4b1!4m6!3m5!1s0!7e2!8m2!3d-17.3674131!4d-66.13091', 1),
(377, 305, NULL, NULL, '75467929', 'CHIMBA', 'CALLE ANTONIO VIVALDI', '-17.4106082', '-66.1826385', '12', 'DELIVERY 14 BS', NULL, 3, 15, 2, '2020-08-05', '18:30:00', 2, 'https://www.google.com/maps/place/17°24\'38.2S 66°10\'57.5W/@-17.4100421,-66.1871413,15.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4106082!4d-66.1826385?hl=es', 1),
(378, 296, NULL, NULL, '70750730', 'kami', 'av la paz y reducto', '-17.390799311557586', '-66.23363319902043', '12', 'delivery 22 bs', NULL, 12, 3, 3, '2020-08-05', '12:00:00', 0, 'https://www.google.com/maps?q=-17.371771,-66.2372926', 1),
(379, 307, NULL, NULL, '6575775', 'Sausalito', 'Av. Blanco galindo km 6 sausalito', '-17.3877263', '-66.2138593', '12', '', NULL, 11, 3, 2, '2020-08-05', '11:41:00', 1, 'https://www.google.com/maps/place/17°23\'15.8S 66°12\'49.9W/@-17.3899672,-66.2174005,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3877263!4d-66.2138593?hl=es', 1),
(380, 306, NULL, NULL, '75976199', 'NORTE ', 'Sumaj llajta entre inka roq\'a', '-17.3578291', '-66.1796292', '12', '', NULL, 8, 5, 3, '2020-08-05', '12:30:00', 2, 'https://www.google.com/maps/place/17°21\'28.2S 66°10\'46.7W/@-17.3578291,-66.1818179,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3578291!4d-66.1796292?hl=es', 1),
(381, 309, NULL, NULL, '77402957', 'cala cala ', 'Av mancesped entre tarcos y algarrobos', '-17.3686946', '-66.1687371', '12', '', NULL, 3, 5, 2, '2020-08-05', '12:30:00', 2, 'https://www.google.com/maps/place/17°22\'07.3S 66°10\'07.5W/@-17.3686946,-66.1709258,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3686946!4d-66.1687371?hl=es', 1),
(382, 310, NULL, NULL, '60348910', 'villa bush', 'Av Segunda entre Fleming y Arquímedes lado fá', '-17.399189', '-66.1980667', '12', 'DELIVERY 5 BS', NULL, 2, 3, 3, '2020-08-05', '13:00:00', 0, 'https://www.google.com/maps/place/17°23\'57.1S 66°11\'53.0W/@-17.400451,-66.2121199,14.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.399189!4d-66.1980667?hl=es', 1),
(383, 311, NULL, NULL, '79375474', 'Chimba', 'Calle Coronel Marzana', '-17.4049311', '-66.1717665', '12', '', NULL, 3, 15, 2, '2020-08-05', '11:53:00', 2, 'https://www.google.com/maps/place/17°24\'17.8S 66°10\'18.4W/@-17.4049311,-66.1739552,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4049311!4d-66.1717665?hl=es', 1),
(384, 312, NULL, NULL, '69528760', 'NORTE ', 'Manuel de la falla pasaje l', '-17.3634299', '-66.1887814', '12', '', NULL, 8, 3, 2, '2020-08-05', '12:35:00', 2, 'https://www.google.com/maps/place/17°21\'48.4S 66°11\'19.6W/@-17.3634299,-66.1909701,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3634299!4d-66.1887814?hl=es', 1),
(385, 313, NULL, NULL, ' 75400111', 'villa bush', 'Calle José reyes Morales y Av blanco Galindo ', '-17.399189', '-66.1980667', '12', '', NULL, 2, 3, 3, '2020-08-05', '13:00:00', 1, 'https://www.google.com/maps/place/17°23\'57.1S 66°11\'53.0W/@-17.4004146,-66.206072,14.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.399189!4d-66.1980667?hl=es', 1),
(386, 314, NULL, NULL, ' 68504004', 'cala cala', 'av gabriel rene moreno y castro rojas, calle ', '-17.3804311', '-66.1732584', '12', 'DELIVERY 5 BS', NULL, 7, 15, 2, '2020-08-05', '12:01:00', 2, 'https://www.google.com/maps/place/17°22\'49.6S 66°10\'23.7W/@-17.3805898,-66.1775982,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3804311!4d-66.1732584?hl=es', 1),
(387, 316, NULL, NULL, ' 70342049', 'PRADO', ' México entre Ayacucho y Junín', '-17.3883059', '-66.1602995', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-05', '12:03:00', 2, 'https://www.google.com/maps/place/17°23\'17.9S 66°09\'37.1W/@-17.3909013,-66.1663559,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3883059!4d-66.1602995?hl=es', 1),
(388, 315, NULL, NULL, '60724874', 'NORTE ', 'Calle elena rendon nro 137 entre av atahuallp', '-17.3655683', '-66.1617556', '12', 'DELIVERY 5 BS', NULL, 5, 5, 2, '2020-08-05', '12:45:00', 0, 'https://www.google.com/maps/place/17°21\'56.1S 66°09\'42.3W/@-17.3655683,-66.1639443,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3655683!4d-66.1617556?hl=es', 1),
(389, 317, NULL, NULL, '74369530', '0', '0', '-17.39234081403926', '-66.19679623741563', '12', 'PICK UP PROGRAMADO 13:00', NULL, 2, 3, 1, '2020-08-05', '13:00:00', 0, '', 1),
(390, 318, NULL, NULL, '67598207', ' Busch.', 'Av. Dorbigni esquina Juan Claure (Condominio ', '-17.3875732', '-66.1955414', '12', 'DELIVERY 5 BS', NULL, 2, 3, 3, '2020-08-05', '13:00:00', 0, 'https://www.google.com/maps/place/17°23\'15.3S 66°11\'44.0W/@-17.394967,-66.2003781,15.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3875732!4d-66.1955414?hl=es', 1),
(391, 319, NULL, NULL, '76171018', '', '', '-17.37423559316349', '-66.15183038126754', '12', 'PICK UP', NULL, 5, 5, 1, '2020-08-05', '12:35:00', 0, '', 1),
(392, 308, NULL, NULL, '70645819', '0', 'Km 11 .  6 cuadras al norte. Av. Saavedra Nor', '-17.3862694', '-66.2614845', '12', ' DELIVERY 20 bs ', NULL, 13, 3, 3, '2020-08-05', '12:35:00', 2, 'https://www.google.com/maps/place/17°23\'10.6S 66°15\'41.3W/@-17.3862694,-66.2636732,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3862694!4d-66.2614845?hl=es', 1),
(393, 321, NULL, NULL, '70715859', 'AROCAGUA ', 'AV. CHAPARE Y CALLE HERBOS', '-17.3760888', '-66.1283026', '12', '', NULL, 17, 2, 2, '2020-08-05', '12:45:00', 2, 'https://www.google.com/maps/place/17°22\'33.9S 66°07\'41.9W/@-17.3760888,-66.1304913,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3760888!4d-66.1283026?hl=es', 1),
(394, 320, NULL, NULL, '79700542', 'villa bush', 'Av. Segunda N 678', '-17.3997059', '-66.1985321', '12', 'DELIVERY 5 BS', NULL, 2, 3, 3, '2020-08-05', '13:00:00', 2, 'https://www.google.com/maps/place/17°23\'58.9S 66°11\'54.7W/@-17.4025162,-66.2063695,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3997059!4d-66.1985321?hl=es', 1),
(395, 322, NULL, NULL, '79762801 ', 'TURUPAYA ', 'Direccion: avenida uyuni entre Guillermo visc', '-17.3768173', '-66.1439023', '12', 'DELIVERY 5 BS ', NULL, 4, 5, 2, '2020-08-05', '12:50:00', 1, 'https://www.google.com/maps/place/17°22\'36.5S 66°08\'38.1W/@-17.3768173,-66.146091,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3768173!4d-66.1439023?hl=es', 1),
(396, 323, NULL, NULL, '79388851', ' Sud', 'Calle M. Virreira 044 ', '-17.4271182', '-66.1567988', '12', 'DELIVERY 15 BS', NULL, 10, 15, 2, '2020-08-05', '12:18:00', 2, 'https://www.google.com/maps/place/17°25\'37.6S 66°09\'24.5W/@-17.4271182,-66.1589875,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4271182!4d-66.1567988?hl=es', 1),
(397, 324, NULL, NULL, '76903779', 'temporal ', 'Dirección: Atahuallpa y mostajo', '-17.3613224', '-66.1618048', '12', '', NULL, 3, 5, 2, '2020-08-05', '12:50:00', 1, 'https://www.google.com/maps/place/17°21\'40.8S 66°09\'42.5W/@-17.3613224,-66.1639935,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3613224!4d-66.1618048?hl=es', 1),
(398, 325, NULL, NULL, '67481684', '0', '0', '-17.391133730416406', '-66.19662454329199', '12', 'PICK UP PROGRAMADO 13:00', NULL, 2, 3, 1, '2020-08-05', '13:00:00', 0, '', 1),
(399, 326, NULL, NULL, '60380867', 'CENTRO', 'Direccion Av Heroínas entre lanza y San Marti', '-17.391538', '-66.153647', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-05', '12:55:00', 2, 'https://www.google.com/maps/place/Haas/@-17.3916186,-66.153522,17z/data=!4m5!3m4!1s0x93e373f7f44f06fb:0x5ae1fa6de1f21cce!8m2!3d-17.391538!4d-66.153647?hl=es', 1),
(400, 327, NULL, NULL, '72295867', '0', '0', '-17.39096376464919', '-66.19491688547345', '12', 'PICK UP PROGRAMADO 16:15', NULL, 2, 3, 1, '2020-08-05', '16:15:00', 0, '', 1),
(401, 328, NULL, NULL, '79393181', 'CENTRO', 'Dirección: calle 25 de Mayo, entre Mayor Roch', '-17.3890874', '-66.1561337', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-05', '12:55:00', 2, 'https://www.google.com/maps/place/17°23\'20.7S 66°09\'22.1W/@-17.3890874,-66.1583224,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3890874!4d-66.1561337?hl=es', 1),
(402, 330, NULL, NULL, '61597353', ' estadounidense', '. Libertador. Casi america  frente al colegio', '-17.3738976', '-66.1622925', '12', 'DELIVERY 5 BS', NULL, 57, 5, 2, '2020-08-05', '12:31:00', 2, 'https://www.google.com/maps/place/17°22\'26.0S 66°09\'44.3W/@-17.3738976,-66.1644812,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3738976!4d-66.1622925?hl=es', 1),
(403, 329, NULL, NULL, '77965714', 'NORTE ', 'Beigin entre Juan de la Rosa y yuracare acera', '-17.3596268', '-66.1768387', '12', 'DELIVERY 5 BS  - CON PECHOS', NULL, 8, 15, 2, '2020-08-05', '13:00:00', 2, 'https://www.google.com/maps/place/Ave Beijing 100, Cochabamba/@-17.3751548,-66.1810552,17z/data=!4m5!3m4!1s0x93e3744ffea77e4f:0xf97beb9ae8107cc7!8m2!3d-17.3596268!4d-66.1768387?hl=es', 1),
(404, 331, NULL, NULL, '75952755', '0', '0', '-17.372938567779865', '-66.13135052706376', '12', '', NULL, 17, 2, 1, '2020-08-05', '12:50:00', 0, '', 1),
(405, 332, NULL, NULL, ' 70376910', 'COÑA COÑA', ' M.C. Galvarro esq. Luis Espinal... Es plena ', '-17.3866771', '-66.2017631', '12', 'DELIVERY 5 BS  + 4 SALSA MIX FACTURAR', NULL, 2, 3, 2, '2020-08-05', '12:36:00', 0, 'https://www.google.com/maps/place/17°23\'12.0S 66°12\'06.4W/@-17.3866771,-66.2039411,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3866771!4d-66.2017631?hl=es', 1),
(406, 333, NULL, NULL, '77409590', '0', '0', '-17.391441575121025', '-66.19731262719358', '12', 'PICK UP PROGRAMADO 13:00', NULL, 2, 3, 1, '2020-08-05', '13:00:00', 0, '', 1),
(407, 336, NULL, NULL, '75460068', 'COLCAPIRHUA', '>Av Arquímedes y Comercio 3 cuadras al sud fr', '-17.4010506', '-66.2216949', '12', 'DELIVERY 15 BS', NULL, 11, 3, 2, '2020-08-05', '13:30:00', 2, 'https://www.google.com/maps/place/17°24\'03.8S 66°13\'18.1W/@-17.4055501,-66.2290817,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4010506!4d-66.2216949?hl=es', 1),
(408, 334, NULL, NULL, '79733272', '0', 'CALLE BAPTISTA ENTRE MEXICO Y MAYOR ROCHA EDI', '-17.3886149', '-66.1580291', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-05', '13:15:00', 2, 'https://www.google.com/maps/place/17°23\'19.0S 66°09\'28.9W/@-17.3886149,-66.1602178,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3886149!4d-66.1580291?hl=es', 1),
(409, 337, NULL, NULL, ' 65767188', 'CONDEBAMBA', 'Calle allpha', '-17.3458739', '-66.1753925', '12', 'DELIVERY 18 BS', NULL, 18, 5, 2, '2020-08-05', '12:47:00', 1, 'https://www.google.com/maps/place/17°20\'45.2S 66°10\'31.4W/@-17.3480474,-66.1939721,14.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3458739!4d-66.1753925?hl=es', 1),
(410, 338, NULL, NULL, '67203179  ', 'TURUPAYA ', ' av final América este entre j de los ríos y ', '-17.37348288545336', '-66.13878370099476', '12', 'DELIVERY 5 BS', NULL, 4, 5, 2, '2020-08-05', '13:30:00', 2, 'https://www.google.com/maps/search/Edificio Mirador/@-17.3738192,-66.1383117,17z?hl=es', 1),
(412, 335, NULL, NULL, '62618060 ', 'PACATA ALTA', 'Calle Games esquina saravia de lanza pacata a', '-17.3686532', '-66.1166807', '12', '', NULL, 20, 2, 2, '2020-08-05', '12:44:00', 2, 'https://www.google.com/maps/place/17°22\'07.2S 66°07\'00.1W/@-17.3686532,-66.1188694,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3686532!4d-66.1166807?hl=es', 1),
(413, 339, NULL, NULL, '74918888', 'PACATA ', ' Norberto Funes, esquina José María Avilés', '-17.3676009', '-66.1148569', '12', '', NULL, 20, 5, 2, '2020-08-05', '12:53:00', 2, 'https://www.google.com/maps/place/17°22\'03.4S 66°06\'53.5W/@-17.3676009,-66.1170456,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3676009!4d-66.1148569?hl=es', 1),
(414, 340, NULL, NULL, '61628752', 'villa bush', 'Avenida blanco galindo k 5 Calle jose reyes e', '-17.3951753', '-66.2068673', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-05', '12:54:00', 0, 'https://www.google.com/maps/place/17°23\'42.6S 66°12\'24.7W/@-17.4007063,-66.2182452,14.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3951753!4d-66.2068673?hl=es', 1),
(415, 341, NULL, NULL, '65059907', 'LAS CUADRAS ', 'C. HAITI Y 9 DE ABRIL', '-17.3987096', '-66.1417885', '12', '', NULL, 5, 4, 2, '2020-08-05', '12:57:00', 2, 'https://www.google.com/maps/place/17°23\'55.4S 66°08\'30.4W/@-17.3987096,-66.1439772,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3987096!4d-66.1417885?hl=es', 1),
(416, 342, NULL, NULL, '78607201', ' Andrés cusheri', 'Blanco galindo km 7.5 entrando 5 cuadras al n', '-17.3859597', '-66.2272288', '12', '', NULL, 11, 3, 2, '2020-08-05', '12:58:00', 0, 'https://www.google.com/maps/place/17°23\'09.5S 66°13\'38.0W/@-17.3922636,-66.233547,15.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3859597!4d-66.2272288?hl=es', 1),
(417, 343, NULL, NULL, '70382601', 'MUYURINA', 'C/Aurelio Melean y Juan de la Cruz Torrez', '-17.3864693', '-66.1464811', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-05', '13:35:00', 2, 'https://www.google.com/maps/place/Calle A. Melean, Cochabamba/@-17.3829975,-66.1442871,17z/data=!4m5!3m4!1s0x93e37400c33f8393:0x91c5c27304d24b11!8m2!3d-17.3864693!4d-66.1464811?hl=es', 1),
(418, 344, NULL, NULL, ' 77457727', 'Hipódromo puente cobija ', 'Bartolomé de las casas 1148', '-17.3853703', '-66.1664276', '12', 'DELIVERY 5 BS', NULL, 3, 5, 2, '2020-08-05', '13:01:00', 2, 'https://www.google.com/maps/place/17°23\'07.3S 66°09\'59.1W/@-17.3869317,-66.170349,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3853703!4d-66.1664276?hl=es', 1),
(419, 345, NULL, NULL, '75970885', '0', '0', '-17.39103079506487', '-66.19758936563169', '12', 'PICK UP PROGRAMADO 13:20', NULL, 2, 3, 1, '2020-08-05', '13:20:00', 0, '', 1),
(420, 346, NULL, NULL, '67524964', 'TEMPORAL', 'Faustino Suarez entre Virginia Aguirre y Díaz', '-17.356636', '-66.1644592', '12', 'DELIVERY 15 BS', NULL, 19, 5, 2, '2020-08-05', '13:07:00', 2, 'https://www.google.com/maps/place/17°21\'23.9S 66°09\'52.1W/@-17.356636,-66.1666479,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.356636!4d-66.1644592?hl=es', 1),
(421, 347, NULL, NULL, '70420688', 'NOROESTE ', 'Dirección aven peru esquina dorbigni', '-17.3880831', '-66.1708437', '12', 'DELIVERY 5 BS ', NULL, 3, 15, 2, '2020-08-05', '13:08:00', 2, 'https://www.google.com/maps/place/17°23\'17.1S 66°10\'15.0W/@-17.3880831,-66.1730324,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3880831!4d-66.1708437?hl=es', 1),
(422, 348, NULL, NULL, '65755148', 'villa bush', 'AVENIDA CUARTA Y SEGUNDA', '-17.3936901', '-66.1985922', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-05', '13:09:00', 0, 'https://www.google.com/maps/place/17°23\'37.3S 66°11\'54.9W/@-17.3938337,-66.2056514,15.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3936901!4d-66.1985922?hl=es', 1),
(423, 349, NULL, NULL, '79989635', 'MUYURINA', 'Aniceto arce 528 entre papá Paulo y castel qu', '-17.3853754', '-66.1470861', '12', 'DELIVERY 5 BS - NO PECHOR POR FAVOR', NULL, 1, 5, 2, '2020-08-05', '13:12:00', 2, 'https://www.google.com/maps/place/17°23\'07.4S 66°08\'49.5W/@-17.3853754,-66.1492748,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3853754!4d-66.1470861?hl=es', 1),
(424, 350, NULL, NULL, ' 70718120', 'MUYURINA', '-Calle Lanza Nro 758 entre calle chuquisaca y', '-17.3845744', '-66.1556346', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-05', '13:13:00', 1, 'https://www.google.com/maps/place/17°23\'04.5S 66°09\'20.3W/@-17.3845744,-66.1578233,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3845744!4d-66.1556346?hl=es', 1),
(425, 351, NULL, NULL, '67415751', 'Pacata baja ', 'Diego Mosquera-entre Álvarez y Julián quiroga', '-17.3759391', '-66.1199214', '12', 'DELIVERY 15 BS', NULL, 17, 5, 2, '2020-08-05', '13:17:00', 2, 'https://www.google.com/maps/place/17°22\'33.4S 66°07\'11.7W/@-17.3785751,-66.1239122,16.21z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3759391!4d-66.1199214?hl=es', 1),
(426, 352, NULL, NULL, '72284321', 'Centro', 'Calle Crisostomo Carrillo 848 entre La Paz y ', '-17.383094', '-66.1529222', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-05', '13:20:00', 2, 'https://www.google.com/maps/place/17°22\'59.1S 66°09\'10.5W/@-17.383094,-66.1551109,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.383094!4d-66.1529222?hl=es', 1),
(427, 353, NULL, NULL, '65752510', 'CENTRO', 'Calle Ladislao Cabrera casi tumusla', '-17.3984361', '-66.1610357', '12', '', NULL, 5, 4, 2, '2020-08-05', '13:23:00', 2, 'https://www.google.com/maps/place/17°23\'54.4S 66°09\'39.7W/@-17.3984361,-66.1632244,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3984361!4d-66.1610357?hl=es', 1),
(428, 354, NULL, NULL, '75461751', '. Muyurina', 'Av. Uyuni esquina guillermo viscarra', '-17.3768959', '-66.1440201', '12', 'DELIVERY 5 BS', NULL, 4, 5, 2, '2020-08-05', '13:23:00', 1, 'https://www.google.com/maps/place/17°22\'36.8S 66°08\'38.5W/@-17.3768959,-66.1462088,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3768959!4d-66.1440201?hl=es', 1),
(429, 355, NULL, NULL, '74601466', 'ZONA NORTE', '0', '-17.37706810658837', '-66.15454502151535', '12', 'PICK UP ', NULL, 57, 5, 1, '2020-08-05', '13:55:00', 0, '', 1),
(430, 356, NULL, NULL, ' 65711157', ' pacata ', 'calle Rene fernandez 2061', '-17.3722393', '-66.1278403', '12', 'DELIVERY 5 BS', NULL, 17, 2, 2, '2020-08-05', '13:33:00', 0, 'https://www.google.com/maps/place/17°22\'20.1S 66°07\'40.2W/@-17.3722393,-66.130029,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3722393!4d-66.1278403?hl=es', 1),
(431, 357, NULL, NULL, '78715789', 'LAS CUADRAS', 'Calle. Ricardo terrazas(plazuela universitari', '-17.3956315', '-66.145956', '12', 'DELIVERY 13 BS', NULL, 5, 2, 2, '2020-08-05', '13:34:00', 0, 'https://www.google.com/maps/place/17°23\'44.3S 66°08\'45.4W/@-17.3984845,-66.1481684,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3956315!4d-66.145956?hl=es', 1);
INSERT INTO `pedido_delivery` (`id`, `cliente_id`, `razon_social`, `nit`, `telefono`, `zona`, `direccion`, `latitude`, `longitude`, `zoom`, `instrucciones`, `producto_id`, `precio_delivery_id`, `sucursal_delivery_id`, `tipo_pedido_id`, `fecha_entrega`, `hora_entrega`, `estado`, `url_mapa`, `facturado`) VALUES
(432, 358, NULL, NULL, '69539309', 'NORTE ', 'Av los ceibos y Molles edificio belgrano colo', '-17.36711795136575', '-66.17118836846507', '12', '', NULL, 3, 5, 2, '2020-08-05', '13:37:00', 2, 'https://www.google.com/maps/search/Pizzeria Italia - Mario Oddo/@-17.367143459208,-66.1714044928,17z?hl=es', 1),
(433, 359, NULL, NULL, '78357547', '00', '0', '-17.374289329536662', '-66.1300324580602', '12', 'PICK UP PROGRAMADO 14:10', NULL, 17, 2, 1, '2020-08-05', '14:10:00', 0, '', 1),
(434, 360, NULL, NULL, ' 70749223', '00', '0', '-17.40409964514779', '-66.15496042430311', '12', 'PICK UP PROGRAMADO 14:15', NULL, 5, 4, 1, '2020-08-05', '14:15:00', 0, '', 1),
(435, 362, NULL, NULL, ' 60496833', 'villa bush', 'av segunda Nro 0336', '-17.3953362', '-66.19764', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-05', '13:52:00', 2, 'https://www.google.com/maps/place/17°23\'43.2S 66°11\'51.5W/@-17.3953362,-66.1998287,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3953362!4d-66.19764?hl=es', 1),
(436, 361, NULL, NULL, '70125937', 'sarco', 'Calle: Manchay puito entre América y Alcides ', '-17.3724811', '-66.1731675', '12', '', NULL, 1, 5, 2, '2020-08-05', '14:20:00', 2, 'https://www.google.com/maps/place/17°22\'20.9S 66°10\'23.4W/@-17.3730206,-66.1748504,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3724811!4d-66.1731675?hl=es', 1),
(437, 364, NULL, NULL, '77976606', 'MUYURINA', 'Dirección. Calle Nestor Morales N° 962 entre ', '-17.380056', '-66.1441334', '12', 'DELIVERY 5 BS', NULL, 1, 2, 2, '2020-08-05', '13:54:00', 0, 'https://www.google.com/maps/place/17°22\'48.2S 66°08\'38.9W/@-17.380056,-66.1463221,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.380056!4d-66.1441334?hl=es', 1),
(438, 365, NULL, NULL, '67470556', 'NORTE ', 'Calle Casto Rojas entre Gabriel Rene Moreno y', '-17.3810895', '-66.1749346', '12', 'DELIVERY 5 BS', NULL, 7, 5, 2, '2020-08-05', '13:58:00', 2, 'https://www.google.com/maps/place/17°22\'51.9S 66°10\'29.8W/@-17.3809717,-66.1803097,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3810895!4d-66.1749346?hl=es', 1),
(439, 366, NULL, NULL, ' 78305234', 'urb los olivos', 'km 6.5 a Sacaba, justo en la botella de Pepsi', '-17.3905535', '-66.0862122', '12', '', NULL, 23, 2, 2, '2020-08-05', '13:59:00', 0, 'https://www.google.com/maps/place/17°23\'26.0S 66°05\'10.4W/@-17.3822028,-66.1111829,13.21z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3905535!4d-66.0862122?hl=es', 1),
(440, 367, NULL, NULL, '73752718', 'NORTE ', 'AV. SIMON LOPEZ Y RODRIGO', '-17.3620548', '-66.1816121', '12', '', NULL, 3, 15, 2, '2020-08-05', '14:30:00', 2, 'https://www.google.com/maps/place/17°21\'43.4S 66°10\'53.8W/@-17.3625885,-66.1817408,19z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3620548!4d-66.1816121?hl=es', 1),
(441, 368, NULL, NULL, '77491311', '0', '0', '-17.37660625629888', '-66.15493505003565', '12', 'PICK UP ', NULL, 57, 5, 1, '2020-08-05', '14:30:00', 0, '', 1),
(442, 369, NULL, NULL, '75943799', 'Centro', 'Heroínas, entre San Martín y 25 de Mayo, ', '-17.3915611', '-66.154859', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-05', '14:08:00', 2, 'https://www.google.com/maps/place/17°23\'29.6S 66°09\'17.5W/@-17.3922727,-66.1582654,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3915611!4d-66.154859?hl=es', 1),
(443, 372, NULL, NULL, '67484597', 'NORESTE ', 'DIRECCION: parque Francisco de Orellana entre', '-17.3898849', '-66.1734009', '12', '', NULL, 3, 15, 2, '2020-08-05', '14:13:00', 2, 'https://www.google.com/maps/place/17°23\'23.6S 66°10\'24.2W/@-17.3898849,-66.1755896,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3898849!4d-66.1734009?hl=es', 1),
(444, 371, NULL, NULL, '77971774', 'LAS CUADRAS', 'Calle litoral entre final sud av belzu..', '-17.3997964', '-66.140047', '12', 'DELIVERY 14 BS', NULL, 5, 2, 2, '2020-08-05', '14:12:00', 0, 'https://www.google.com/maps/place/17°23\'59.3S 66°08\'24.2W/@-17.4021309,-66.161011,13.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3997964!4d-66.140047?hl=es', 1),
(445, 373, NULL, NULL, '77435354', '', '', '-17.376673812600643', '-66.15680590335158', '12', 'PICK UP', NULL, 5, 5, 1, '2020-08-05', '17:00:00', 0, '', 1),
(446, 374, NULL, NULL, ' 70756738', 'Quillacollo', 'Calle Pacheco frente al mercado central de qu', '-17.3976169', '-66.2795519', '12', '', NULL, 58, 3, 2, '2020-08-05', '14:32:00', 2, 'https://www.google.com/maps/place/17°23\'51.4S 66°16\'46.4W/@-17.3968746,-66.2836771,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3976169!4d-66.2795519?hl=es', 1),
(447, 375, NULL, NULL, '77435354', '', '', '-17.372433462264443', '-66.1329476298027', '12', 'PICK UP', NULL, 17, 2, 1, '2020-08-05', '15:00:00', 0, '', 1),
(448, 376, NULL, NULL, '60417619', 'ticti norte', 'Puka huaycha esquina tikallajta ( edificio co', '-17.3532974', '-66.1698071', '12', '', NULL, 8, 5, 2, '2020-08-05', '15:35:00', 2, 'https://www.google.com/maps/place/17°21\'11.9S 66°10\'11.3W/@-17.3519099,-66.1799942,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3532974!4d-66.1698071?hl=es', 1),
(449, 378, NULL, NULL, '70399836', 'Pacata alta', 'Av. Papá Damaso I José curtinas ', '-17.368524', '-66.1240582', '12', '', NULL, 20, 2, 2, '2020-08-05', '15:10:00', 0, 'https://www.google.com/maps/place/17°22\'06.7S 66°07\'26.6W/@-17.368524,-66.1262469,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.368524!4d-66.1240582?hl=es', 1),
(450, 379, NULL, NULL, '77130417', ' Las cuadras', ' Pasaje Ruben Dario entre Jose A. Arze y Hono', '-17.3942559', '-66.1364313', '12', 'DELIVERY 13 BS', NULL, 5, 2, 2, '2020-08-05', '15:28:00', 0, 'https://www.google.com/maps/place/17°23\'39.3S 66°08\'11.2W/@-17.3968717,-66.1461785,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3942559!4d-66.1364313?hl=es', 1),
(451, 380, NULL, NULL, '77496370', '', 'AV. EDUARDO CASI AMERICA  - PARQUE LINCOLN', '-17.3726656', '-66.1696988', '12', 'DELIVERY 10 BS', NULL, 6, 5, 2, '2020-08-05', '15:34:00', 2, 'https://www.google.com/maps/place/17°22\'21.6S 66°10\'10.9W/@-17.3738092,-66.1757028,15.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3726656!4d-66.1696988?hl=es', 1),
(452, 382, NULL, NULL, '72530053', 'NORTE', ' calle enrique arce entre simon lopez y ciclo', '-17.3663635', '-66.1648941', '12', '', NULL, 3, 5, 2, '2020-08-05', '15:51:00', 2, 'https://www.google.com/maps/place/17°21\'58.9S 66°09\'53.6W/@-17.3663635,-66.1670828,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3663635!4d-66.1648941?hl=es', 1),
(453, 381, NULL, NULL, '76946061', 'SUD', 'Av.suecia tras el hospital harry williams Cal', '-17.4223407', '-66.1477', '12', '', NULL, 29, 2, 3, '2020-08-05', '17:00:00', 0, 'https://www.google.com/maps/place/17°25\'20.4S 66°08\'51.7W/@-17.4223407,-66.1498887,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4223407!4d-66.1477?hl=es', 1),
(454, 383, NULL, NULL, '71455365', 'SUD', 'final M ferrufino h luisa ascui', '-17.414669', '-66.1610413', '12', '', NULL, 15, 3, 2, '2020-08-05', '15:58:00', 1, 'https://www.google.com/maps/place/17°24\'52.8S 66°09\'39.8W/@-17.414669,-66.16323,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.414669!4d-66.1610413?hl=es', 1),
(455, 384, NULL, NULL, '61592315', 'CENTRO ', 'CALLE A. MICHEL CASI J. ARAUCO', '-17.3912136', '-66.1464474', '12', '', NULL, 5, 4, 2, '2020-08-05', '16:13:00', 2, 'https://www.google.com/maps/place/17°23\'28.4S 66°08\'47.2W/@-17.3915718,-66.1464991,19z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3912136!4d-66.1464474?hl=es', 1),
(456, 385, NULL, NULL, '70750352', 'CIRCUNVALACION', 'MIGULE DE CERVANTES ENTRE MOSTAJO Y R. PRADA ', '-17.3625969', '-66.1601917', '12', 'DELIVERY 12 BS ', NULL, 55, 5, 2, '2020-08-05', '16:22:00', 2, 'https://www.google.com/maps/place/17°21\'45.4S 66°09\'36.7W/@-17.3631019,-66.1604809,18.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3625969!4d-66.1601917?hl=es', 1),
(457, 386, NULL, NULL, ' 68510405', 'Villa bush', 'calle gabriel lippman', '-17.3950779', '-66.1882865', '12', 'calle gabriel lippman#27 entre av blanco gali', NULL, 2, 3, 2, '2020-08-05', '16:29:00', 2, 'https://www.google.com/maps/place/17°23\'42.3S 66°11\'17.8W/@-17.3927867,-66.1940746,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3950779!4d-66.1882865?hl=es', 1),
(458, 387, NULL, NULL, '70377740', 'GALINDO', 'Av blanco Galindo km 5 CNS . Urgencias medici', '-17.3936874', '-66.2061051', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-05', '16:34:00', 2, 'https://www.google.com/maps/place/17°23\'37.3S 66°12\'22.0W/@-17.3936874,-66.2082938,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3936874!4d-66.2061051?hl=es', 1),
(459, 388, NULL, NULL, '72775529', 'QUINTANILLA ', 'URBANIZACION PARAISO', '-17.3802929', '-66.1295547', '12', '', NULL, 17, 2, 2, '2020-08-05', '16:36:00', 0, 'https://www.google.com/maps/place/17°22\'49.1S 66°07\'46.4W/@-17.3802929,-66.1317434,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3802929!4d-66.1295547?hl=es', 1),
(460, 387, NULL, NULL, '70377740', 'GALINDO', 'Av blanco Galindo km 5 CNS . Urgencias medici', '-17.3936874', '-66.2061051', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-05', '16:45:00', 2, 'https://www.google.com/maps/place/17°23\'37.3S 66°12\'22.0W/@-17.3936874,-66.2082938,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3936874!4d-66.2061051?hl=es', 1),
(461, 389, NULL, NULL, '70739192', 'Queru queru ', 'C. Buebos aires esq av villarroel edif torres', '-17.3736723', '-66.1589811', '12', 'delivery 5 bs', NULL, 6, 4, 2, '2020-08-05', '16:59:00', 0, 'https://www.google.com/maps/place/Calle Buenos Aires 303, Cochabamba/@-17.3737661,-66.1589579,17z/data=!4m5!3m4!1s0x93e37416a5debd4d:0xd061d882590bd7bc!8m2!3d-17.3736723!4d-66.1589811?hl=es', 1),
(462, 390, NULL, NULL, '76920918', 'QUINTANILLA', 'Av villazon km 3.6, dos cuadras y media al no', '-17.379917', '-66.1114168', '12', '', NULL, 24, 2, 2, '2020-08-05', '17:07:00', 0, 'https://www.google.com/maps/place/17°22\'47.7S 66°06\'41.1W/@-17.379917,-66.1136055,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.379917!4d-66.1114168?hl=es', 1),
(463, 391, NULL, NULL, '67403533', 'PACATA ALTA', 'Dirección Urbanización Bella Vista manzano O ', '-17.3734631', '-66.0964657', '12', '', NULL, 24, 2, 2, '2020-08-05', '17:17:00', 0, 'https://www.google.com/maps/place/17°22\'24.5S 66°05\'47.3W/@-17.3734631,-66.0986544,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3734631!4d-66.0964657?hl=es', 1),
(464, 393, NULL, NULL, '70716617', '', '', '-17.372259860404306', '-66.13769887394156', '12', 'PICK UP', NULL, 4, 2, 1, '2020-08-05', '17:45:00', 0, '', 1),
(465, 394, NULL, NULL, '73773030', 'Zona.- norte', 'Aniceto Padilla esq. Pasaje Saracho', '-17.37759531454624', '-66.1724188430005', '12', 'PICK UP 17:45', NULL, 7, 5, 1, '2020-08-05', '17:45:00', 0, '', 1),
(466, 395, NULL, NULL, '72405847', 'SUD', 'C.TRIGAL Y 22 DE JULIO', '-17.413811', '-66.1457515', '12', 'PIERNAS Y ENTREPIERNAS', NULL, 23, 2, 2, '2020-08-05', '17:34:00', 0, 'https://www.google.com/maps/place/17°24\'49.7S 66°08\'44.7W/@-17.413811,-66.1479402,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.413811!4d-66.1457515?hl=es', 1),
(467, 396, NULL, NULL, '71417100', '', '', '-17.392418532640843', '-66.19727585332564', '12', '', NULL, 2, 3, 1, '2020-08-05', '18:10:00', 0, '', 1),
(468, 397, NULL, NULL, '74116286', 'NORTE ', 'Juan de la rosa entre caracas y medinaceli 90', '-17.3771815', '-66.1700309', '12', 'DELIVERY 5 BS', NULL, 7, 5, 2, '2020-08-05', '17:45:00', 2, 'https://www.google.com/maps/place/17°22\'37.9S 66°10\'12.1W/@-17.3771815,-66.1722196,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3771815!4d-66.1700309?hl=es', 1),
(469, 398, NULL, NULL, '75701489', 'COÑA COÑA', 'DIRECCIÓN: BLANCO GALINDO AL FRENTE DE LA CAJ', '-17.3919498', '-66.206154', '12', 'DELIVERY 5 BS', NULL, 2, 3, 2, '2020-08-05', '17:47:00', 2, 'https://www.google.com/maps/place/17°23\'31.0S 66°12\'22.2W/@-17.3919498,-66.2083427,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3919498!4d-66.206154?hl=es', 1),
(470, 399, NULL, NULL, '70730042', 'SAN PEDRO ', ' C. Francisco Prada', '-17.3890232', '-66.1435423', '12', 'DELIVERY 5 BS', NULL, 1, 2, 2, '2020-08-05', '17:53:00', 0, 'https://www.google.com/maps/place/17°23\'20.5S 66°08\'36.8W/@-17.3890232,-66.145731,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3890232!4d-66.1435423?hl=es', 1),
(471, 400, NULL, NULL, '75969363', 'SACABA ', 'Dirección: av independencia y colón plena esq', '-17.404115', '-66.0375773', '12', 'DELIVERY 8 BS ', NULL, 33, 14, 2, '2020-08-05', '17:56:00', 0, 'https://www.google.com/maps/place/17°24\'14.8S 66°02\'15.3W/@-17.404115,-66.039766,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.404115!4d-66.0375773?hl=es', 0),
(472, 401, NULL, NULL, '70309492', '', 'Av. Los Ceibos # 2256, casi esq . AV. Simon L', '-17.39168257955053', '-66.19749498974609', '12', 'PICK UP INMEDIATO', NULL, 2, 3, 1, '2020-08-05', '17:57:00', 0, '', 1),
(473, 402, NULL, NULL, '75963075', 'NORTE ', 'C.JESUS LARA Y MELCHOR', '-17.3599362', '-66.1730091', '12', '', NULL, 1, 14, 2, '2020-08-05', '17:59:00', 0, 'https://www.google.com/maps/place/Jesus Lara 1437, Cochabamba/@-17.3601459,-66.1730968,17z/data=!4m5!3m4!1s0x93e374458b9198c7:0xe4ccad3f279d0646!8m2!3d-17.3599362!4d-66.1730091?hl=es', 0),
(474, 403, NULL, NULL, '60749865', 'ESTADIO', 'Murguia entre floras salinas y calancha', '-17.3809683', '-66.1668976', '12', 'DELIVERY 5 BS ', NULL, 7, 5, 2, '2020-08-05', '18:02:00', 2, 'https://www.google.com/maps/place/17°22\'51.5S 66°10\'00.8W/@-17.3809683,-66.1690863,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3809683!4d-66.1668976?hl=es', 1),
(475, 405, NULL, NULL, ' 76490629', 'villa bush', 'dorbigni esquina thunupa casa de dos pisos re', '-17.3859181', '-66.1882116', '12', 'delivery 5 bs', NULL, 2, 3, 2, '2020-08-05', '18:07:00', 2, 'https://www.google.com/maps/place/17°23\'09.3S 66°11\'17.6W/@-17.3873259,-66.1977817,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3859181!4d-66.1882116?hl=es', 1),
(476, 406, NULL, NULL, '75969363', 'SACABA ', 'Dirección: av independencia y colón plena esq', '-17.404115', '-66.0375773', '12', '', NULL, 33, 2, 2, '2020-08-05', '18:08:00', 0, 'https://www.google.com/maps/place/17°24\'14.8S 66°02\'15.3W/@-17.404115,-66.039766,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.404115!4d-66.0375773?hl=es', 1),
(477, 408, NULL, NULL, '72787574', 'chimba', '.Calle Juan José Pérez ', '-17.3961863', '-66.1698232', '12', 'delivery 5 bs', NULL, 3, 15, 2, '2020-08-05', '18:11:00', 2, 'https://www.google.com/maps/place/17°23\'46.3S 66°10\'11.4W/@-17.3981673,-66.1794148,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3961863!4d-66.1698232?hl=es', 1),
(478, 407, NULL, NULL, '75963075', 'NORTE ', 'C. JESUS LARA', '-17.3599362', '-66.1730091', '12', '', NULL, 1, 5, 2, '2020-08-05', '18:11:00', 2, 'https://www.google.com/maps/place/Jesus Lara 1437, Cochabamba/@-17.3601459,-66.1730968,17z/data=!4m5!3m4!1s0x93e374458b9198c7:0xe4ccad3f279d0646!8m2!3d-17.3599362!4d-66.1730091?hl=es', 1),
(479, 410, NULL, NULL, '77485942', 'guadalupe', 'Avenida villazon km7 1/2', '-17.3861331', '-66.0745514', '12', '', NULL, 56, 2, 2, '2020-08-05', '18:13:00', 0, 'https://www.google.com/maps/place/17°23\'10.1S 66°04\'28.4W/@-17.3949079,-66.0918269,14.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3861331!4d-66.0745514?hl=es', 1),
(480, 409, NULL, NULL, '65243624', 'JAYHUAYCO', 'CAP. L. PARAVICINI Y STTE. MARICA CALVO', '-17.4200141', '-66.1705608', '12', 'La casa es de 2 pisos  -  DELIVERY 20 BS ', NULL, 10, 3, 2, '2020-08-05', '18:12:00', 2, 'https://www.google.com/maps/place/17°25\'12.1S 66°10\'14.0W/@-17.4208638,-66.1713891,18.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4200141!4d-66.1705608?hl=es', 1),
(481, 411, NULL, NULL, '76436190', '0', '0', '-17.391946091686762', '-66.19652475210881', '12', 'pik up programado 18:25', NULL, 2, 3, 1, '2020-08-05', '18:25:00', 0, '', 1),
(482, 404, NULL, NULL, '76497148', 'CENTRO', ' calle Calama entre Ayacucho y Nataniel Aguir', '-17.396595', '-66.157753', '12', '', NULL, 3, 15, 2, '2020-08-05', '18:06:00', 2, 'https://www.google.com/maps/place/17°23\'47.7S 66°09\'27.9W/@-17.3953472,-66.1573524,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.396595!4d-66.157753?hl=es', 1),
(483, 412, NULL, NULL, '70784723', 'temporal ', 'C.LOS LIRIOS Y LOS SAUCES', '-17.3669601', '-66.1430305', '12', '', NULL, 17, 2, 2, '2020-08-05', '18:15:00', 0, 'https://www.google.com/maps/place/17°22\'01.1S 66°08\'34.9W/@-17.3669601,-66.1452192,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3669601!4d-66.1430305?hl=es', 1),
(484, 414, NULL, NULL, '69497019', 'QUINTANILLA SUD', 'C.NICARAGUA E INNOMINADA -', '-17.3925322', '-66.1083876', '12', '', NULL, 30, 2, 2, '2020-08-05', '18:19:00', 0, 'https://www.google.com/maps/place/17°23\'33.1S 66°06\'30.2W/@-17.3925322,-66.1105763,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3925322!4d-66.1083876?hl=es', 1),
(485, 413, NULL, NULL, '63611822', 'Sur ', ' Detrás del campo ferial Av Guayacan ', '-17.4241112', '-66.129286', '12', 'delivery 20 bs', NULL, 27, 15, 2, '2020-08-05', '18:19:00', 2, 'https://www.google.com/maps/place/17°25\'26.8S 66°07\'45.4W/@-17.4264605,-66.1517522,14z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4241112!4d-66.129286?hl=es', 1),
(486, 416, NULL, NULL, '63835040', 'NORTE ', 'Av.simom lopez lopez zono norte  la calle es ', '-17.3624253', '-66.1843561', '12', '', NULL, 8, 3, 2, '2020-08-05', '18:21:00', 2, 'https://www.google.com/maps/place/17°21\'44.7S 66°11\'03.7W/@-17.3624253,-66.1865448,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3624253!4d-66.1843561?hl=es', 1),
(487, 415, NULL, NULL, '67454952', 'QUINATNILLA SUD', 'Urbanización Caperuza - Casa B1', '-17.401106', '-66.1085167', '12', '', NULL, 30, 2, 2, '2020-08-05', '18:20:00', 0, 'https://www.google.com/maps/place/17°24\'04.0S 66°06\'30.7W/@-17.3982276,-66.1190933,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.401106!4d-66.1085167?hl=es', 1),
(488, 418, NULL, NULL, '65741150', 'colcapirhua', 'pescaderia san lorenzo', '-17.3926436', '-66.2316073', '12', '', NULL, 12, 3, 2, '2020-08-05', '18:25:00', 1, 'https://www.google.com/maps/place/17°23\'33.5S 66°13\'53.8W/@-17.3931827,-66.2386384,15.21z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3926436!4d-66.2316073?hl=es', 1),
(489, 419, NULL, NULL, '76960988', 'muyurina', 'Carlos D\'avis entre José Pol y belzu', '-17.3876334', '-66.1445497', '12', 'delivery 5 bs  - pierna entrepierna', NULL, 1, 5, 2, '2020-08-05', '18:28:00', 2, 'https://www.google.com/maps/place/17°23\'15.5S 66°08\'40.4W/@-17.3896682,-66.147543,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3876334!4d-66.1445497?hl=es', 1),
(490, 420, NULL, NULL, ' 77999474', 'queru queru', 'calle: David alvestegui ', '-17.3704168', '-66.1517141', '12', 'delivery 5 bs', NULL, 57, 5, 2, '2020-08-05', '18:30:00', 2, 'https://www.google.com/maps/place/17°22\'13.5S 66°09\'06.2W/@-17.371137,-66.1590182,15.5z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3704168!4d-66.1517141?hl=es', 1),
(491, 421, NULL, NULL, '72243246', 'CALA CALA', 'Z/ cala cala detras del estadio Psje. Magiste', '-17.380021', '-66.1650589', '12', 'DELIVERY 5 BS ', NULL, 7, 5, 2, '2020-08-05', '18:33:00', 2, 'https://www.google.com/maps/place/17°22\'48.1S 66°09\'54.2W/@-17.3809656,-66.1645746,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.380021!4d-66.1650589?hl=es', 1),
(492, 422, NULL, NULL, '72216464', 'CALA CALA', 'C. FELIX LOPEZ Y HERNANDO SILES', '-17.359111', '-66.16668', '12', '', NULL, 8, 5, 2, '2020-08-05', '18:39:00', 2, 'https://www.google.com/maps/place/17°21\'32.8S 66°10\'00.1W/@-17.359111,-66.1688687,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.359111!4d-66.16668?hl=es', 1),
(493, 423, NULL, NULL, '76477009', '', '', '-17.392163442310494', '-66.19717361362879', '12', 'PICK UP', NULL, 2, 3, 1, '2020-08-05', '20:00:00', 0, '', 1),
(494, 424, NULL, NULL, '65514285', 'Central ', 'Ayacucho entre la paz y reza edif. Sol de sep', '-17.3864448', '-66.1600253', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-05', '18:45:00', 1, 'https://www.google.com/maps/place/17°23\'11.2S 66°09\'36.1W/@-17.3864448,-66.162214,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3864448!4d-66.1600253?hl=es', 1),
(495, 425, NULL, NULL, '68990616', 'MESADILLA', 'Psje Manuela Campos ', '-17.3707083', '-66.1348992', '12', 'DELIVERY 5 BS ', NULL, 17, 2, 2, '2020-08-05', '18:48:00', 0, 'https://www.google.com/maps/place/17°22\'14.6S 66°08\'05.6W/@-17.3707083,-66.1370879,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3707083!4d-66.1348992?hl=es', 1),
(496, 426, NULL, NULL, '79789757', 'Zona.- Las Islas ', 'Av. Gualberto Villarroel esquina las hiedras,', '-17.3642783', '-66.1560451', '12', 'DELIVERY 12', NULL, 55, 5, 2, '2020-08-05', '18:51:00', 2, 'https://www.google.com/maps/place/17°21\'51.4S 66°09\'21.8W/@-17.3642783,-66.1582338,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3642783!4d-66.1560451?hl=es', 1),
(497, 427, NULL, NULL, '79757527', 'PACATA ALTA', 'OTB SENAC C.INNOMINADA', '-17.3663738', '-66.1089103', '12', '2 SALSAS MIX EXTRAS Y LLAJUA EXTRA', NULL, 20, 2, 2, '2020-08-05', '18:54:00', 0, 'https://www.google.com/maps/place/17°21\'59.0S 66°06\'32.1W/@-17.3663738,-66.111099,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3663738!4d-66.1089103?hl=es', 1),
(498, 429, NULL, NULL, '78323396', 'COÑA COÑA', 'Av cuarta 473Esq victor ustaris', '-17.3970757', '-66.1998596', '12', 'DELIVERY 5 BS ', NULL, 2, 3, 2, '2020-08-05', '18:56:00', 2, 'https://www.google.com/maps/place/17°23\'49.5S 66°11\'59.5W/@-17.3970757,-66.2020483,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3970757!4d-66.1998596?hl=es', 1),
(499, 430, NULL, NULL, '63430939', 'CENTRO', 'AV. SAN MARTIN ENTRE HEROINAS Y COLOMBIA ', '-17.391024', '-66.1547228', '12', 'DELIVERY 5 BS ', NULL, 1, 5, 2, '2020-08-05', '19:00:00', 1, 'https://www.google.com/maps/place/17°23\'27.7S 66°09\'17.0W/@-17.391024,-66.1569115,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.391024!4d-66.1547228?hl=es', 1),
(500, 431, NULL, NULL, '75914145', 'GUADALUPE', 'Direccion calle kantu entre chacarera y tobas', '-17.3811589', '-66.0764078', '12', '', NULL, 31, 2, 2, '2020-08-05', '19:03:00', 0, 'https://www.google.com/maps/place/17°22\'52.2S 66°04\'35.1W/@-17.3811589,-66.0785965,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3811589!4d-66.0764078?hl=es', 1),
(501, 428, NULL, NULL, '65762230', 'Sarco', 'Calle ayoreo entre tapiete y yuracare', '-17.374625', '-66.1856517', '12', '', NULL, 7, 3, 2, '2020-08-05', '18:55:00', 0, 'https://www.google.com/maps/place/17°22\'28.7S 66°11\'08.4W/@-17.3746147,-66.1878618,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.374625!4d-66.1856517?hl=es', 1),
(502, 432, NULL, NULL, '72760709', 'MESADILLA', 'Direccion calle papa Leon XIII urbanizacion V', '-17.3685843', '-66.1337343', '12', '', NULL, 20, 2, 2, '2020-08-05', '19:08:00', 0, 'https://www.google.com/maps/place/17°22\'06.9S 66°08\'01.4W/@-17.3685843,-66.135923,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3685843!4d-66.1337343?hl=es', 1),
(503, 434, NULL, NULL, '61782011', '0', '0', '-17.391210600918278', '-66.19724205627293', '12', 'pick up programado 19:35', NULL, 2, 3, 1, '2020-08-05', '19:35:00', 0, '', 1),
(504, 435, NULL, NULL, '76942379', 'CHIMBA', 'C.Chaco entre beijing', '-17.39881', '-66.1854215', '12', 'DELIVERY 5 BS', NULL, 3, 15, 2, '2020-08-05', '19:18:00', 2, 'https://www.google.com/maps/place/17°23\'55.7S 66°11\'07.5W/@-17.39881,-66.1876102,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.39881!4d-66.1854215?hl=es', 1),
(505, 436, NULL, NULL, ' 75495943', 'Zona Quintanilla', 'sobre la Av. Maximiliano Kolve, en la Urbaniz', '-17.3945329', '-66.1121215', '12', '', NULL, 30, 2, 2, '2020-08-05', '19:22:00', 0, 'https://www.google.com/maps/place/Urbanización Los Sauces/@-17.3944475,-66.1150663,15.75z/data=!4m5!3m4!1s0x93e37137341bc977:0xf42d4540b77c3b66!8m2!3d-17.3945329!4d-66.1121215', 1),
(506, 437, NULL, NULL, '73910476', 'NORTE ', 'C/ Juan Capriles entre santa cruz y Dalence, ', '-17.3719339', '-66.1556643', '12', 'DELIVERY 5 BS ', NULL, 5, 5, 2, '2020-08-05', '19:28:00', 2, 'https://www.google.com/maps/place/17°22\'19.0S 66°09\'20.4W/@-17.3719339,-66.157853,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3719339!4d-66.1556643?hl=es', 1),
(507, 438, NULL, NULL, '70752787', 'BLANCO GALINDO', 'BLANCO GALINDO KM 6', '-17.3917503', '-66.2128983', '12', 'En el\r\nEdificio hay una veterinaria ', NULL, 11, 3, 2, '2020-08-05', '19:28:00', 0, 'https://www.google.com/maps/place/17°23\'30.3S 66°12\'46.4W/@-17.3929985,-66.2155285,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3917503!4d-66.2128983?hl=es', 1),
(508, 440, NULL, NULL, '79772025', ' Sarco e hipódromo', 'Av. Beijing entre Lauca y Mejillones', '-17.3840499', '-66.1814726', '12', 'DELIVERY 5 BS', NULL, 3, 15, 2, '2020-08-05', '19:32:00', 2, 'https://www.google.com/maps/place/17°23\'02.6S 66°10\'53.3W/@-17.3860865,-66.1856267,15.75z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3840499!4d-66.1814726?hl=es', 1),
(509, 439, NULL, NULL, '75986188', 'SUD', 'C. POLONIA Y AV PETROLERA ', '-17.4462957', '-66.1339485', '12', 'DELIVERY 22 BS', NULL, 40, 3, 2, '2020-08-05', '19:32:00', 2, 'https://www.google.com/maps/place/17°26\'46.7S 66°08\'02.2W/@-17.4458509,-66.1348517,18.04z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4462957!4d-66.1339485?hl=es', 1),
(510, 441, NULL, NULL, '61782011', '0', '0', '-17.390368163123746', '-66.19488542198525', '12', 'pick up inmediato', NULL, 2, 3, 1, '2020-08-05', '19:40:00', 0, '', 1),
(511, 442, NULL, NULL, '72271526', 'CENTRO', 'DIRECCIÓN: Ayacucho entre México y Mayor Roch', '-17.3887953', '-66.1596717', '12', 'DELIVERY 5 BS', NULL, 1, 5, 2, '2020-08-05', '19:40:00', 2, 'https://www.google.com/maps/place/17°23\'19.7S 66°09\'34.8W/@-17.3887953,-66.1618604,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3887953!4d-66.1596717?hl=es', 1),
(512, 444, NULL, NULL, '79953747', 'NORTE', 'Carlos medinacelli esquina rotonda Perú empre', '-17.3830551', '-66.170105', '12', 'DELIVERY 5 BS - PECHO ALA', NULL, 7, 5, 2, '2020-08-05', '19:48:00', 2, 'https://www.google.com/maps/place/17°22\'59.0S 66°10\'12.4W/@-17.3830551,-66.1722937,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3830551!4d-66.170105?hl=es', 1),
(513, 445, NULL, NULL, '70137157', ' la chimba ', '- cap ustariz ', '-17.3963133', '-66.1715284', '12', 'delivery 5 bs', NULL, 3, 15, 2, '2020-08-05', '19:53:00', 2, 'https://www.google.com/maps/place/17°23\'46.7S 66°10\'17.5W/@-17.3962365,-66.1794677,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3963133!4d-66.1715284?hl=es', 1),
(514, 446, NULL, NULL, ' 76998100', 'puntiti', 'Av. Tercera, casi av López.', '-17.3824871', '-66.1016294', '12', '', NULL, 22, 2, 2, '2020-08-05', '19:55:00', 0, 'https://www.google.com/maps/place/17°22\'57.0S 66°06\'05.9W/@-17.3824871,-66.1038181,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3824871!4d-66.1016294?hl=es', 1),
(515, 447, NULL, NULL, ' 76991115', ' Bajo Aranjuez', ' Aurelio García ', '-17.3752111', '-66.1464026', '12', 'delivery 5 bs', NULL, 4, 2, 2, '2020-08-05', '20:02:00', 0, 'https://www.google.com/maps/place/17°22\'30.8S 66°08\'47.1W/@-17.3791652,-66.1630521,14.71z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3752111!4d-66.1464026?hl=es', 1),
(516, 448, NULL, NULL, '76425354', 'tupuraya', 'Calle Jacinto anaya esquina América edif. Ico', '-17.3734748', '-66.1392805', '12', 'delivery 5 bs', NULL, 4, 2, 2, '2020-08-05', '20:04:00', 0, 'https://www.google.com/maps/place/17°22\'24.5S 66°08\'21.4W/@-17.3810159,-66.147016,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3734748!4d-66.1392805?hl=es', 1),
(517, 449, NULL, NULL, '74235978', '0', '0', '-17.3929737141239', '-66.19756972759377', '12', 'pick up programado 20:25', NULL, 2, 3, 1, '2020-08-05', '20:25:00', 0, '', 1),
(518, 451, NULL, NULL, '69502739', ' seminario', 'Dorbigny casi Juan Pablo II Condominio Mileni', '-17.3866491', '-66.1983254', '12', 'delivery 5 bs', NULL, 2, 3, 2, '2020-08-05', '20:11:00', 2, 'https://www.google.com/maps/place/17°23\'11.9S 66°11\'54.0W/@-17.3933763,-66.2055003,15.13z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3866491!4d-66.1983254?hl=es', 1),
(519, 452, NULL, NULL, '75905303', '', '', '-17.392173456667656', '-66.19721091667236', '12', 'PICK UP', NULL, 2, 3, 1, '2020-08-05', '20:30:00', 0, '', 1),
(520, 453, NULL, NULL, '79970713', 'estadio', 'av humboldt y avenida de indias', '-17.3826714', '-66.1633301', '12', 'delivery 5 bs', NULL, 7, 5, 2, '2020-08-05', '20:16:00', 1, 'https://www.google.com/maps/place/17°22\'57.6S 66°09\'48.0W/@-17.3869357,-66.1673479,16.25z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3826714!4d-66.1633301?hl=es', 1),
(521, 454, NULL, NULL, '61621376', 'HIPODROMO', 'calle cobija y 12 de junio', '-17.3873997', '-66.1841417', '12', 'DELIVERY 5 BS ', NULL, 2, 15, 2, '2020-08-05', '20:18:00', 2, 'https://www.google.com/maps/place/17°23\'14.6S 66°11\'02.9W/@-17.3865371,-66.1892995,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3873997!4d-66.1841417?hl=es', 1),
(522, 456, NULL, NULL, '75463493', 'CHIMBA', 'C. NANAWA Y FORTIN CONCHITA', '-17.4008926', '-66.1706972', '12', '', NULL, 1, 15, 2, '2020-08-05', '20:31:00', 2, 'https://www.google.com/maps/place/17°24\'03.2S 66°10\'14.5W/@-17.4008926,-66.1728859,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4008926!4d-66.1706972?hl=es', 1),
(523, 455, NULL, NULL, '77151771', 'CIRCUNVALACION', 'VATICANO ENTRE M TORRELIO , CASA CON REJAS QU', '-17.37048', '-66.133766', '12', '', NULL, 17, 2, 2, '2020-08-05', '20:31:00', 0, 'https://www.google.com/maps/place/17°22\'13.7S 66°08\'01.6W/@-17.3701913,-66.1449701,14.46z/data=!4m6!3m5!1s0!7e2!8m2!3d-17.37048!4d-66.133766', 1),
(524, 462, NULL, NULL, '79373285', '0', '0', '-17.39530043608116', '-66.19796792976707', '12', 'PICK UP PROGRAMADO 12:00', NULL, 2, 3, 1, '2020-08-06', '12:00:00', 0, '', 0),
(525, 463, NULL, NULL, '72282882', 'Hipódromo ', 'Calle Vasco de Gama 0669', '-17.3884933', '-66.1758463', '12', 'DELIVERY 5 BS', NULL, 3, 15, 3, '2020-08-06', '16:00:00', 0, 'https://www.google.com/maps/place/17°23\'18.6S 66°10\'33.1W/@-17.3884933,-66.178035,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3884933!4d-66.1758463?hl=es', 0),
(526, 464, NULL, NULL, '72262307', ' sarcobamba', ' continuación de final villavicenvio chalanca', '-17.3755196', '-66.1977454', '12', 'COMBO 109 PRESAS BROASTER', NULL, 7, 3, 3, '2020-08-06', '12:00:00', 0, 'https://www.google.com/maps/place/17°22\'31.9S 66°11\'51.9W/@-17.3819969,-66.2079364,14.92z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3755196!4d-66.1977454?hl=es', 0),
(527, 466, NULL, NULL, '79342801', 'SUD', 'Av. Petrolera km 3,5', '-17.4390437', '-66.1425793', '12', 'DELIVERY 22 BS', NULL, 15, 15, 3, '2020-08-06', '12:00:00', 0, 'https://www.google.com/maps/place/17°26\'20.6S 66°08\'33.3W/@-17.4631826,-66.1572583,13.96z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.4390437!4d-66.1425793?hl=es', 0),
(528, 467, NULL, NULL, '78308439', 'chimba', 'Grover Suarez y pasaje Manuel Liendo', '-17.3943492', '-66.1863723', '12', 'DELIVERY 5 BS', NULL, 2, 15, 3, '2020-08-06', '18:30:00', 0, 'https://www.google.com/maps/place/17°23\'39.7S 66°11\'10.9W/@-17.3955965,-66.200905,14.38z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3943492!4d-66.1863723?hl=es', 0),
(529, 468, NULL, NULL, '77993455', 'Zona. Barrio fabril', 'Direccion. Calle 15 de agosto Nro 2239 esq. A', '-17.38717', '-66.1802125', '12', 'DELIVERY 5 BS', NULL, 3, 15, 3, '2020-08-06', '12:00:00', 0, 'https://www.google.com/maps/place/17°23\'13.8S 66°10\'48.8W/@-17.38717,-66.1824012,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.38717!4d-66.1802125?hl=es', 0),
(530, 469, NULL, NULL, '76414002', '0', '0', '-17.392771709755344', '-66.19746679660847', '12', 'PICK UP PROGRAMADO 12:00', NULL, 2, 3, 1, '2020-08-06', '12:00:00', 0, '', 0),
(531, 471, NULL, NULL, '69467226', 'SUD', 'Av. Panamericana.esta sobre la calle. Manuel ', '-17.4271928', '-66.1577129', '12', '', NULL, 10, 4, 3, '2020-08-06', '11:45:00', 0, 'https://www.google.com/maps/place/17°25\'37.9S 66°09\'27.8W/@-17.4271928,-66.1599016,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.4271928!4d-66.1577129?hl=es', 0),
(532, 472, NULL, NULL, '71479464', 'VILLA BUSH', 'Avenida Litoral', '-17.3996487', '-66.1762165', '12', '', NULL, 3, 15, 3, '2020-08-06', '12:00:00', 0, 'https://www.google.com/maps/place/17°23\'58.7S 66°10\'34.4W/@-17.3987682,-66.1783301,17z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3996487!4d-66.1762165?hl=es', 0),
(533, 470, NULL, NULL, '78312002', 'Pacata Baja', 'Dirección calle José Martínez entre Lucía Ram', '-17.3724906', '-66.1161746', '12', 'DELIVERY 5 BS', NULL, 17, 2, 3, '2020-08-06', '11:30:00', 0, 'https://www.google.com/maps/place/17°22\'21.0S 66°06\'58.2W/@-17.3724906,-66.1183633,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3724906!4d-66.1161746?hl=es', 0),
(534, 475, NULL, NULL, '79794516', '0', '0', '-17.391574942116304', '-66.19696353009648', '12', 'PICK UP PROGRAMADO  12:00', NULL, 2, 3, 1, '2020-08-06', '12:00:00', 0, '', 0),
(535, 474, NULL, NULL, '69710616', 'COÑA COÑA', 'Blanco galindo kl 5 1/2Y AV sexta', '-17.3928895', '-66.2082673', '12', 'DELIVERY 5 BS', NULL, 2, 3, 3, '2020-08-06', '11:45:00', 0, 'https://www.google.com/maps/place/17°23\'34.4S 66°12\'29.8W/@-17.3928895,-66.210456,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3928895!4d-66.2082673?hl=es', 0),
(536, 476, NULL, NULL, '70382025', 'La chimba', 'Fortín vanguardia ', '-17.3976048', '-66.1749759', '12', 'DELIVERY 5 BS', NULL, 3, 15, 3, '2020-08-06', '12:00:00', 0, 'https://www.google.com/maps/place/17°23\'51.4S 66°10\'29.9W/@-17.3971901,-66.182293,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3976048!4d-66.1749759?hl=es', 0),
(537, 477, NULL, NULL, '70745067', 'LAS CUADRAS ', 'Calle Benjamín Blanco 749 Entre Uruguay y Gui', '-17.3976962', '-66.1474459', '12', '', NULL, 5, 5, 2, '2020-08-06', '11:00:00', 0, 'https://www.google.com/maps/place/17°23\'51.7S 66°08\'50.8W/@-17.3992165,-66.1526387,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d-17.3976962!4d-66.1474459?hl=es', 0),
(539, 478, NULL, NULL, '65437722', 'Sarcobamba', 'Direccion: Alberto Acha entre Luis Montaño Mi', '-17.3807658', '-66.1908307', '12', '', NULL, 7, 3, 3, '2020-08-06', '10:27:00', 0, 'https://www.google.com/maps/place/17°22\'50.8S 66°11\'27.0W/@-17.3807658,-66.1930194,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-17.3807658!4d-66.1908307?hl=es', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pedido_delivery_detalle`
--

CREATE TABLE `pedido_delivery_detalle` (
  `id` int(11) NOT NULL,
  `pedido_delivery_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observacion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedido_delivery_detalle`
--

INSERT INTO `pedido_delivery_detalle` (`id`, `pedido_delivery_id`, `producto_id`, `cantidad`, `observacion`) VALUES
(85, 83, 17, 1, NULL),
(86, 83, 9, 1, NULL),
(87, 84, 8, 1, NULL),
(88, 85, 10, 1, NULL),
(89, 86, 9, 1, NULL),
(90, 87, 8, 1, NULL),
(91, 88, 9, 1, NULL),
(92, 89, 9, 2, NULL),
(93, 90, 9, 2, NULL),
(94, 92, 19, 1, NULL),
(95, 93, 10, 1, NULL),
(96, 94, 19, 1, NULL),
(97, 95, 10, 1, NULL),
(98, 96, 9, 1, NULL),
(99, 97, 12, 1, NULL),
(100, 97, 8, 1, NULL),
(101, 98, 10, 1, NULL),
(102, 99, 8, 1, NULL),
(103, 100, 9, 1, NULL),
(104, 101, 12, 1, NULL),
(105, 102, 13, 2, NULL),
(106, 103, 9, 1, NULL),
(107, 104, 12, 1, NULL),
(108, 105, 12, 1, NULL),
(109, 106, 9, 1, NULL),
(110, 107, 10, 1, NULL),
(111, 108, 9, 1, NULL),
(112, 109, 12, 1, NULL),
(113, 109, 31, 1, NULL),
(114, 110, 30, 2, NULL),
(115, 110, 10, 1, NULL),
(116, 111, 31, 3, NULL),
(117, 112, 30, 3, NULL),
(118, 112, 31, 1, NULL),
(119, 113, 30, 1, NULL),
(120, 113, 33, 2, NULL),
(121, 114, 31, 1, NULL),
(122, 115, 31, 1, NULL),
(123, 116, 10, 1, NULL),
(124, 117, 10, 2, NULL),
(125, 118, 10, 1, NULL),
(126, 119, 12, 1, NULL),
(127, 120, 31, 2, NULL),
(128, 120, 30, 1, NULL),
(129, 121, 8, 1, NULL),
(130, 122, 8, 1, NULL),
(131, 123, 8, 1, NULL),
(132, 124, 9, 1, NULL),
(133, 125, 10, 1, NULL),
(134, 126, 10, 1, NULL),
(135, 127, 9, 1, NULL),
(136, 128, 30, 1, NULL),
(137, 129, 10, 1, NULL),
(138, 130, 9, 1, NULL),
(139, 131, 31, 3, NULL),
(140, 132, 8, 1, NULL),
(141, 133, 9, 1, NULL),
(142, 134, 9, 1, NULL),
(143, 135, 9, 1, NULL),
(144, 136, 8, 1, NULL),
(145, 137, 8, 1, NULL),
(146, 138, 9, 1, NULL),
(147, 138, 13, 1, NULL),
(148, 138, 20, 1, NULL),
(149, 139, 9, 1, NULL),
(150, 140, 19, 2, NULL),
(151, 141, 10, 1, NULL),
(152, 142, 20, 3, NULL),
(153, 144, 9, 1, NULL),
(154, 146, 32, 3, NULL),
(155, 148, 31, 1, NULL),
(156, 149, 30, 2, NULL),
(157, 151, 18, 1, NULL),
(158, 152, 8, 1, NULL),
(159, 153, 31, 1, NULL),
(160, 154, 33, 1, NULL),
(161, 154, 32, 1, NULL),
(162, 155, 12, 1, NULL),
(163, 156, 32, 1, NULL),
(164, 157, 12, 1, NULL),
(165, 158, 32, 1, NULL),
(166, 159, 32, 2, NULL),
(167, 161, 33, 1, NULL),
(168, 162, 31, 1, NULL),
(169, 163, 18, 1, NULL),
(170, 164, 12, 1, NULL),
(171, 165, 33, 1, NULL),
(172, 166, 12, 1, NULL),
(173, 167, 12, 1, NULL),
(174, 168, 32, 1, NULL),
(175, 169, 19, 1, NULL),
(176, 170, 12, 1, NULL),
(177, 170, 10, 1, NULL),
(178, 171, 33, 1, NULL),
(179, 172, 19, 2, NULL),
(180, 173, 18, 1, NULL),
(181, 174, 12, 1, NULL),
(182, 175, 33, 1, NULL),
(183, 176, 10, 1, NULL),
(184, 177, 18, 1, NULL),
(185, 178, 10, 2, NULL),
(186, 179, 18, 1, NULL),
(187, 180, 17, 1, NULL),
(188, 181, 12, 2, NULL),
(189, 182, 18, 1, NULL),
(190, 183, 18, 1, NULL),
(191, 184, 18, 1, NULL),
(192, 185, 15, 1, NULL),
(193, 186, 18, 1, NULL),
(194, 187, 33, 1, NULL),
(195, 188, 12, 1, NULL),
(196, 189, 32, 1, NULL),
(197, 190, 31, 1, NULL),
(198, 191, 18, 1, NULL),
(199, 192, 31, 1, NULL),
(200, 192, 32, 1, NULL),
(201, 193, 33, 1, NULL),
(202, 194, 8, 5, NULL),
(203, 195, 32, 1, NULL),
(204, 196, 32, 1, NULL),
(205, 197, 32, 1, NULL),
(206, 198, 32, 1, NULL),
(207, 199, 16, 1, NULL),
(208, 200, 34, 1, NULL),
(209, 201, 12, 1, NULL),
(210, 202, 32, 1, NULL),
(211, 203, 31, 1, NULL),
(212, 204, 33, 1, NULL),
(213, 204, 21, 1, NULL),
(214, 204, 25, 1, NULL),
(215, 205, 30, 1, NULL),
(216, 205, 18, 1, NULL),
(217, 206, 34, 1, NULL),
(218, 207, 12, 1, NULL),
(219, 208, 18, 1, NULL),
(220, 209, 34, 1, NULL),
(221, 210, 18, 1, NULL),
(222, 211, 30, 1, NULL),
(223, 212, 34, 1, NULL),
(224, 213, 19, 1, NULL),
(225, 214, 32, 1, NULL),
(226, 215, 32, 1, NULL),
(227, 216, 18, 1, NULL),
(228, 217, 18, 2, NULL),
(229, 220, 20, 1, NULL),
(230, 221, 19, 1, NULL),
(231, 222, 19, 1, NULL),
(232, 223, 12, 1, NULL),
(233, 224, 18, 1, NULL),
(234, 225, 34, 1, NULL),
(235, 226, 34, 1, NULL),
(236, 227, 18, 1, NULL),
(237, 228, 32, 1, NULL),
(238, 229, 32, 1, NULL),
(239, 230, 12, 1, NULL),
(240, 231, 12, 2, NULL),
(241, 232, 12, 1, NULL),
(242, 233, 18, 1, NULL),
(243, 234, 34, 1, NULL),
(244, 235, 18, 1, NULL),
(245, 235, 31, 1, NULL),
(246, 236, 18, 1, NULL),
(247, 237, 12, 1, NULL),
(248, 238, 32, 1, NULL),
(249, 239, 18, 1, NULL),
(250, 240, 34, 1, NULL),
(251, 241, 18, 1, NULL),
(252, 242, 18, 1, NULL),
(253, 243, 19, 1, NULL),
(254, 244, 32, 1, NULL),
(255, 245, 12, 1, NULL),
(256, 246, 30, 1, NULL),
(257, 247, 12, 1, NULL),
(258, 248, 34, 1, NULL),
(259, 249, 18, 1, NULL),
(260, 250, 19, 1, NULL),
(261, 251, 32, 1, NULL),
(262, 252, 18, 2, NULL),
(263, 253, 19, 1, NULL),
(264, 253, 28, 1, NULL),
(265, 254, 32, 1, NULL),
(266, 255, 12, 1, NULL),
(267, 256, 32, 1, NULL),
(268, 257, 12, 1, NULL),
(269, 258, 32, 1, NULL),
(270, 258, 23, 2, NULL),
(271, 259, 15, 4, NULL),
(272, 260, 34, 1, NULL),
(273, 261, 34, 1, NULL),
(274, 262, 31, 1, NULL),
(275, 263, 18, 1, NULL),
(276, 264, 32, 1, NULL),
(277, 265, 12, 1, NULL),
(278, 265, 28, 1, NULL),
(279, 266, 16, 1, NULL),
(280, 267, 12, 1, NULL),
(281, 268, 18, 1, NULL),
(282, 269, 32, 1, NULL),
(283, 270, 20, 1, NULL),
(284, 271, 19, 1, NULL),
(285, 271, 34, 1, NULL),
(286, 272, 32, 1, NULL),
(287, 273, 19, 1, NULL),
(288, 274, 18, 1, NULL),
(289, 275, 32, 1, NULL),
(290, 276, 32, 1, NULL),
(291, 277, 20, 1, NULL),
(292, 278, 17, 1, NULL),
(293, 278, 16, 2, NULL),
(294, 279, 31, 1, NULL),
(295, 280, 12, 1, NULL),
(296, 281, 14, 1, NULL),
(297, 282, 30, 1, NULL),
(298, 283, 18, 1, NULL),
(299, 284, 19, 1, NULL),
(300, 285, 12, 1, NULL),
(301, 286, 34, 1, NULL),
(302, 287, 18, 1, NULL),
(303, 288, 14, 1, NULL),
(304, 289, 16, 1, NULL),
(305, 290, 34, 1, NULL),
(306, 291, 31, 1, NULL),
(307, 292, 16, 2, NULL),
(308, 293, 18, 1, NULL),
(309, 294, 18, 1, NULL),
(310, 295, 32, 1, NULL),
(311, 296, 32, 1, NULL),
(312, 296, 24, 2, NULL),
(313, 297, 12, 1, NULL),
(314, 298, 32, 1, NULL),
(315, 299, 18, 1, NULL),
(316, 300, 32, 1, NULL),
(317, 301, 31, 1, NULL),
(318, 302, 31, 1, NULL),
(319, 303, 19, 1, NULL),
(320, 304, 32, 1, NULL),
(321, 305, 12, 1, NULL),
(322, 306, 34, 1, NULL),
(323, 307, 32, 1, NULL),
(324, 308, 12, 1, NULL),
(325, 309, 34, 1, NULL),
(326, 310, 34, 1, NULL),
(327, 311, 19, 1, NULL),
(328, 312, 32, 1, NULL),
(329, 313, 34, 1, NULL),
(330, 314, 34, 1, NULL),
(331, 315, 18, 1, NULL),
(332, 316, 30, 1, NULL),
(333, 317, 34, 1, NULL),
(334, 318, 34, 1, NULL),
(335, 319, 32, 1, NULL),
(336, 320, 34, 1, NULL),
(337, 321, 18, 1, NULL),
(338, 322, 18, 1, NULL),
(339, 323, 34, 1, NULL),
(340, 324, 12, 1, NULL),
(341, 325, 34, 1, NULL),
(342, 326, 18, 1, NULL),
(343, 327, 32, 1, NULL),
(344, 328, 9, 1, NULL),
(345, 329, 34, 1, NULL),
(346, 330, 32, 1, NULL),
(347, 331, 32, 1, NULL),
(348, 331, 23, 2, NULL),
(349, 332, 18, 1, NULL),
(350, 332, 12, 1, NULL),
(351, 333, 32, 1, NULL),
(352, 334, 34, 1, NULL),
(353, 335, 8, 0, NULL),
(354, 336, 12, 1, NULL),
(355, 336, 28, 1, NULL),
(356, 337, 32, 1, NULL),
(357, 338, 12, 1, NULL),
(358, 339, 8, 1, NULL),
(359, 339, 19, 1, NULL),
(360, 340, 31, 1, NULL),
(361, 341, 20, 1, NULL),
(362, 343, 32, 1, NULL),
(363, 347, 34, 1, NULL),
(364, 348, 30, 1, NULL),
(365, 349, 32, 1, NULL),
(366, 350, 30, 1, NULL),
(367, 351, 12, 1, NULL),
(368, 352, 12, 1, NULL),
(369, 353, 19, 1, NULL),
(370, 354, 19, 1, NULL),
(371, 355, 18, 1, NULL),
(372, 356, 18, 1, NULL),
(373, 357, 18, 1, NULL),
(374, 357, 28, 1, NULL),
(375, 358, 19, 1, NULL),
(376, 359, 34, 1, NULL),
(377, 360, 17, 1, NULL),
(378, 360, 28, 1, NULL),
(379, 361, 34, 1, NULL),
(380, 362, 18, 1, NULL),
(381, 363, 20, 1, NULL),
(382, 364, 12, 1, NULL),
(383, 365, 32, 1, NULL),
(384, 366, 12, 1, NULL),
(385, 366, 18, 1, NULL),
(386, 367, 32, 1, NULL),
(387, 368, 32, 1, NULL),
(388, 369, 12, 1, NULL),
(389, 370, 12, 1, NULL),
(390, 371, 32, 1, NULL),
(391, 372, 20, 1, NULL),
(392, 373, 33, 2, NULL),
(393, 373, 32, 1, NULL),
(394, 374, 18, 1, NULL),
(395, 375, 19, 1, NULL),
(396, 376, 19, 1, NULL),
(397, 377, 34, 1, NULL),
(398, 378, 33, 1, NULL),
(399, 379, 12, 1, NULL),
(400, 379, 18, 1, NULL),
(401, 380, 36, 1, NULL),
(402, 381, 34, 1, NULL),
(403, 382, 36, 1, NULL),
(404, 383, 32, 1, NULL),
(405, 384, 19, 1, NULL),
(406, 385, 32, 1, NULL),
(407, 386, 32, 1, NULL),
(408, 387, 32, 1, NULL),
(409, 388, 36, 1, NULL),
(410, 389, 36, 1, NULL),
(411, 390, 32, 1, NULL),
(412, 391, 36, 1, NULL),
(413, 392, 34, 1, NULL),
(414, 393, 19, 1, NULL),
(415, 394, 19, 1, NULL),
(416, 395, 36, 1, NULL),
(417, 396, 34, 1, NULL),
(418, 396, 23, 1, NULL),
(419, 397, 36, 1, NULL),
(420, 398, 36, 1, NULL),
(421, 399, 34, 1, NULL),
(422, 400, 18, 1, NULL),
(423, 401, 36, 1, NULL),
(424, 401, 30, 1, NULL),
(425, 402, 36, 1, NULL),
(426, 403, 32, 1, NULL),
(427, 404, 34, 1, NULL),
(428, 405, 18, 1, NULL),
(429, 406, 18, 1, NULL),
(430, 407, 34, 1, NULL),
(431, 408, 20, 1, NULL),
(432, 409, 34, 1, NULL),
(433, 410, 36, 1, NULL),
(434, 412, 19, 1, NULL),
(435, 413, 31, 1, NULL),
(436, 414, 36, 1, NULL),
(437, 415, 19, 1, NULL),
(438, 416, 36, 1, NULL),
(439, 417, 34, 1, NULL),
(440, 418, 31, 1, NULL),
(441, 419, 36, 1, NULL),
(442, 420, 31, 1, NULL),
(443, 421, 34, 1, NULL),
(444, 422, 36, 1, NULL),
(445, 423, 36, 1, NULL),
(446, 424, 34, 1, NULL),
(447, 425, 31, 1, NULL),
(448, 426, 31, 1, NULL),
(449, 427, 14, 1, NULL),
(450, 428, 34, 1, NULL),
(451, 428, 12, 1, NULL),
(452, 429, 8, 1, NULL),
(453, 430, 34, 1, NULL),
(454, 431, 36, 1, NULL),
(455, 432, 18, 1, NULL),
(456, 433, 18, 1, NULL),
(457, 434, 18, 1, NULL),
(458, 435, 15, 1, NULL),
(459, 436, 36, 1, NULL),
(460, 437, 18, 1, NULL),
(461, 438, 18, 1, NULL),
(462, 439, 19, 1, NULL),
(463, 440, 32, 1, NULL),
(464, 441, 19, 1, NULL),
(465, 442, 31, 1, NULL),
(466, 443, 19, 1, NULL),
(467, 444, 19, 1, NULL),
(468, 445, 36, 1, NULL),
(469, 446, 18, 2, NULL),
(470, 447, 19, 1, NULL),
(471, 448, 18, 1, NULL),
(472, 449, 18, 1, NULL),
(473, 450, 32, 1, NULL),
(474, 451, 32, 1, NULL),
(475, 452, 34, 1, NULL),
(476, 453, 36, 1, NULL),
(477, 454, 36, 1, NULL),
(478, 455, 18, 1, NULL),
(479, 456, 18, 1, NULL),
(480, 457, 36, 1, NULL),
(481, 458, 34, 1, NULL),
(482, 459, 34, 1, NULL),
(483, 460, 30, 1, NULL),
(484, 461, 14, 1, NULL),
(485, 462, 18, 2, NULL),
(486, 463, 34, 1, NULL),
(487, 464, 18, 2, NULL),
(488, 465, 19, 1, NULL),
(489, 466, 34, 1, NULL),
(490, 467, 36, 1, NULL),
(491, 468, 32, 1, NULL),
(492, 469, 31, 1, NULL),
(493, 470, 32, 1, NULL),
(494, 471, 36, 1, NULL),
(495, 472, 32, 1, NULL),
(496, 472, 24, 1, NULL),
(497, 473, 8, 1, NULL),
(498, 474, 19, 1, NULL),
(499, 474, 12, 1, NULL),
(500, 475, 32, 1, NULL),
(501, 476, 36, 1, NULL),
(502, 477, 32, 1, NULL),
(503, 478, 8, 5, NULL),
(504, 479, 34, 1, NULL),
(505, 480, 36, 1, NULL),
(506, 481, 32, 1, NULL),
(507, 482, 19, 1, NULL),
(508, 483, 12, 1, NULL),
(509, 484, 36, 1, NULL),
(510, 485, 32, 1, NULL),
(511, 486, 20, 1, NULL),
(512, 487, 32, 1, NULL),
(513, 488, 18, 1, NULL),
(514, 489, 16, 1, NULL),
(515, 490, 20, 1, NULL),
(516, 491, 36, 1, NULL),
(517, 492, 19, 1, NULL),
(518, 493, 34, 1, NULL),
(519, 494, 34, 1, NULL),
(520, 495, 19, 1, NULL),
(521, 496, 36, 1, NULL),
(522, 497, 16, 2, NULL),
(523, 498, 18, 1, NULL),
(524, 499, 34, 1, NULL),
(525, 500, 32, 1, NULL),
(526, 501, 32, 1, NULL),
(527, 502, 34, 1, NULL),
(528, 503, 19, 1, NULL),
(529, 504, 18, 1, NULL),
(530, 505, 31, 1, NULL),
(531, 506, 36, 1, NULL),
(532, 507, 32, 1, NULL),
(533, 508, 34, 1, NULL),
(534, 509, 18, 1, NULL),
(535, 510, 19, 1, NULL),
(536, 510, 23, 3, NULL),
(537, 511, 19, 1, NULL),
(538, 512, 30, 1, NULL),
(539, 512, 28, 1, NULL),
(540, 513, 32, 1, NULL),
(541, 514, 17, 1, NULL),
(542, 514, 21, 1, NULL),
(543, 515, 19, 1, NULL),
(544, 516, 36, 1, NULL),
(545, 517, 19, 1, NULL),
(546, 518, 32, 1, NULL),
(547, 519, 36, 1, NULL),
(548, 520, 18, 1, NULL),
(549, 521, 19, 1, NULL),
(550, 522, 16, 1, NULL),
(551, 523, 32, 1, NULL),
(552, 524, 36, 1, NULL),
(553, 525, 36, 1, NULL),
(554, 526, 20, 1, NULL),
(555, 527, 36, 1, NULL),
(556, 528, 36, 1, NULL),
(557, 529, 36, 1, NULL),
(558, 530, 36, 1, NULL),
(559, 531, 8, 2, NULL),
(560, 532, 18, 3, NULL),
(561, 533, 39, 1, NULL),
(562, 534, 12, 1, NULL),
(563, 535, 32, 1, NULL),
(564, 535, 23, 2, NULL),
(565, 536, 12, 1, NULL),
(566, 536, 18, 1, NULL),
(567, 537, 12, 2, NULL),
(568, 539, 32, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `precio_coordinates`
--

CREATE TABLE `precio_coordinates` (
  `id` int(11) NOT NULL,
  `precio_delivery_id` int(11) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `precio_coordinates`
--

INSERT INTO `precio_coordinates` (`id`, `precio_delivery_id`, `lat`, `lng`) VALUES
(1, 1, '-17.3813648', '-66.1599889'),
(2, 1, '-17.382532', '-66.1622097'),
(3, 1, '-17.3844058', '-66.1630786'),
(4, 1, '-17.3859182', '-66.1637728'),
(5, 1, '-17.3877202', '-66.1646847'),
(6, 1, '-17.3889916', '-66.1651447'),
(7, 1, '-17.3907363', '-66.1659823'),
(8, 1, '-17.3939323', '-66.1669781'),
(9, 1, '-17.3915514', '-66.1535133'),
(10, 1, '-17.3912007', '-66.1515227'),
(11, 1, '-17.3910854', '-66.1508635'),
(12, 1, '-17.3909522', '-66.1501545'),
(13, 1, '-17.3903248', '-66.1468051'),
(14, 1, '-17.3890673', '-66.1400918'),
(15, 1, '-17.3883694', '-66.1404202'),
(16, 1, '-17.3880196', '-66.1405072'),
(17, 1, '-17.3869766', '-66.1406306'),
(18, 1, '-17.386432', '-66.1407084'),
(19, 1, '-17.3858388', '-66.1407325'),
(20, 1, '-17.3853992', '-66.1408291'),
(21, 1, '-17.3849647', '-66.140974'),
(22, 1, '-17.3845532', '-66.1412396'),
(23, 1, '-17.3841878', '-66.1415186'),
(24, 1, '-17.3831614', '-66.1420744'),
(25, 1, '-17.3825816', '-66.1421915'),
(26, 1, '-17.3820204', '-66.1419951'),
(27, 1, '-17.3816179', '-66.1416486'),
(28, 1, '-17.3794434', '-66.1418236'),
(29, 1, '-17.3769515', '-66.1422776'),
(30, 1, '-17.3789945', '-66.1507039'),
(31, 1, '-17.3813648', '-66.1599889'),
(32, 2, '-17.3933973', '-66.184429'),
(33, 2, '-17.3872542', '-66.1821276'),
(34, 2, '-17.3846331', '-66.1819399'),
(35, 2, '-17.3837321', '-66.1819559'),
(36, 2, '-17.3831588', '-66.1819559'),
(37, 2, '-17.3822142', '-66.1862739'),
(38, 2, '-17.382053', '-66.1891228'),
(39, 2, '-17.3819685', '-66.1921533'),
(40, 2, '-17.3815205', '-66.1958176'),
(41, 2, '-17.3813977', '-66.1990792'),
(42, 2, '-17.3811929', '-66.2021262'),
(43, 2, '-17.3811929', '-66.2081773'),
(44, 2, '-17.3862713', '-66.2079627'),
(45, 2, '-17.4000316', '-66.2083918'),
(46, 2, '-17.4005519', '-66.186736'),
(47, 2, '-17.3961513', '-66.1850512'),
(48, 2, '-17.3933973', '-66.184429'),
(49, 3, '-17.4005519', '-66.186736'),
(50, 3, '-17.4048396', '-66.1797731'),
(51, 3, '-17.4066414', '-66.1765114'),
(52, 3, '-17.4091394', '-66.1745373'),
(53, 3, '-17.4068462', '-66.1724345'),
(54, 3, '-17.4041025', '-66.1701171'),
(55, 3, '-17.4023007', '-66.1693446'),
(56, 3, '-17.3989836', '-66.1684863'),
(57, 3, '-17.3940342', '-66.1672135'),
(58, 3, '-17.3908382', '-66.1662177'),
(59, 3, '-17.3885406', '-66.1652032'),
(60, 3, '-17.3878221', '-66.1649201'),
(61, 3, '-17.3845077', '-66.1633141'),
(62, 3, '-17.3824286', '-66.1664072'),
(63, 3, '-17.383708', '-66.1695592'),
(64, 3, '-17.3819301', '-66.1765326'),
(65, 3, '-17.3828311', '-66.179381'),
(66, 3, '-17.3831588', '-66.1819559'),
(67, 3, '-17.3846331', '-66.1819399'),
(68, 3, '-17.3872542', '-66.1821276'),
(69, 3, '-17.3933973', '-66.184429'),
(70, 3, '-17.3961513', '-66.1850512'),
(71, 3, '-17.4005519', '-66.186736'),
(72, 4, '-17.3748393', '-66.136811'),
(73, 4, '-17.3726789', '-66.1368753'),
(74, 4, '-17.371829', '-66.1382325'),
(75, 4, '-17.3712863', '-66.140448'),
(76, 4, '-17.369648', '-66.1430229'),
(77, 4, '-17.368665', '-66.1453403'),
(78, 4, '-17.3670267', '-66.1496105'),
(79, 4, '-17.3732523', '-66.1496319'),
(80, 4, '-17.3756612', '-66.1497744'),
(81, 4, '-17.378436', '-66.149753'),
(82, 4, '-17.3770534', '-66.142513'),
(83, 4, '-17.3768104', '-66.141537'),
(84, 4, '-17.3763957', '-66.1400081'),
(85, 4, '-17.3756483', '-66.1378623'),
(86, 4, '-17.3748393', '-66.136811'),
(87, 5, '-17.3942594', '-66.1670204'),
(88, 5, '-17.3953292', '-66.1673018'),
(89, 5, '-17.3962394', '-66.1675375'),
(90, 5, '-17.3980599', '-66.1679928'),
(91, 5, '-17.401665', '-66.1689303'),
(92, 5, '-17.4020335', '-66.1690214'),
(93, 5, '-17.4024264', '-66.169118'),
(94, 5, '-17.4025455', '-66.1691555'),
(95, 5, '-17.4026474', '-66.1691917'),
(96, 5, '-17.4027185', '-66.1692252'),
(97, 5, '-17.4028365', '-66.1692762'),
(98, 5, '-17.4031699', '-66.1694264'),
(99, 5, '-17.4043277', '-66.169924'),
(100, 5, '-17.4051458', '-66.170604'),
(101, 5, '-17.4058458', '-66.1712007'),
(102, 5, '-17.4065534', '-66.1718056'),
(103, 5, '-17.4071005', '-66.1722482'),
(104, 5, '-17.4074326', '-66.1725673'),
(105, 5, '-17.4082963', '-66.1733506'),
(106, 5, '-17.409144', '-66.174129'),
(107, 5, '-17.4093723', '-66.1743416'),
(108, 5, '-17.4102619', '-66.1730528'),
(109, 5, '-17.4102619', '-66.1720229'),
(110, 5, '-17.4103847', '-66.1696196'),
(111, 5, '-17.4105895', '-66.1670876'),
(112, 5, '-17.410999', '-66.1652422'),
(113, 5, '-17.4114085', '-66.1646843'),
(114, 5, '-17.4112856', '-66.1642123'),
(115, 5, '-17.4112447', '-66.1635256'),
(116, 5, '-17.4127188', '-66.160307'),
(117, 5, '-17.413415', '-66.1585474'),
(118, 5, '-17.4137016', '-66.1570883'),
(119, 5, '-17.4135788', '-66.1556292'),
(120, 5, '-17.4130055', '-66.1544276'),
(121, 5, '-17.4118589', '-66.1525393'),
(122, 5, '-17.4093201', '-66.1488056'),
(123, 5, '-17.4067607', '-66.1452007'),
(124, 5, '-17.4063538', '-66.1445811'),
(125, 5, '-17.4057574', '-66.1449862'),
(126, 5, '-17.4041194', '-66.1460162'),
(127, 5, '-17.402768', '-66.1470461'),
(128, 5, '-17.4018262', '-66.1469174'),
(129, 5, '-17.39941', '-66.1360169'),
(130, 5, '-17.3975262', '-66.1354161'),
(131, 5, '-17.3947415', '-66.1363173'),
(132, 5, '-17.3928167', '-66.1370039'),
(133, 5, '-17.3920386', '-66.1376047'),
(134, 5, '-17.3910147', '-66.139021'),
(135, 5, '-17.39081', '-66.1395359'),
(136, 5, '-17.3893944', '-66.1401341'),
(137, 5, '-17.3900318', '-66.1435271'),
(138, 5, '-17.3914243', '-66.1509514'),
(139, 5, '-17.3930701', '-66.1603606'),
(140, 5, '-17.3942594', '-66.1670204'),
(141, 6, '-17.3791015', '-66.1653097'),
(142, 6, '-17.3785077', '-66.163121'),
(143, 6, '-17.3780367', '-66.1611041'),
(144, 6, '-17.3725151', '-66.1626996'),
(145, 6, '-17.3728018', '-66.1567129'),
(146, 6, '-17.3666581', '-66.1563053'),
(147, 6, '-17.3666914', '-66.1543019'),
(148, 6, '-17.3663842', '-66.1570056'),
(149, 6, '-17.3658722', '-66.1580785'),
(150, 6, '-17.3647253', '-66.1632283'),
(151, 6, '-17.3633327', '-66.1671765'),
(152, 6, '-17.3621039', '-66.1697515'),
(153, 6, '-17.3634556', '-66.1701806'),
(154, 6, '-17.3666914', '-66.1709102'),
(155, 6, '-17.3693946', '-66.1712106'),
(156, 6, '-17.3718931', '-66.1721762'),
(157, 6, '-17.3735006', '-66.1724444'),
(158, 6, '-17.3761526', '-66.1728843'),
(159, 6, '-17.3765724', '-66.1711677'),
(160, 6, '-17.377238', '-66.1690648'),
(161, 6, '-17.3781595', '-66.1671658'),
(162, 6, '-17.3791015', '-66.1653097'),
(163, 7, '-17.3718931', '-66.1721762'),
(164, 7, '-17.3714009', '-66.1801915'),
(165, 7, '-17.3709908', '-66.1854436'),
(166, 7, '-17.3704581', '-66.186396'),
(167, 7, '-17.3701302', '-66.1871767'),
(168, 7, '-17.3696387', '-66.1887217'),
(169, 7, '-17.3682546', '-66.1933111'),
(170, 7, '-17.3667884', '-66.1987588'),
(171, 7, '-17.3675703', '-66.2037206'),
(172, 7, '-17.3683076', '-66.2075615'),
(173, 7, '-17.3701729', '-66.2073882'),
(174, 7, '-17.3745962', '-66.2076028'),
(175, 7, '-17.3811929', '-66.2081773'),
(176, 7, '-17.381111', '-66.2059885'),
(177, 7, '-17.3811929', '-66.2021262'),
(178, 7, '-17.3813977', '-66.1990792'),
(179, 7, '-17.3815205', '-66.1958176'),
(180, 7, '-17.3819685', '-66.191767'),
(181, 7, '-17.3821758', '-66.1879641'),
(182, 7, '-17.3822142', '-66.1862739'),
(183, 7, '-17.3831588', '-66.1819559'),
(184, 7, '-17.3828311', '-66.179381'),
(185, 7, '-17.3819301', '-66.1765487'),
(186, 7, '-17.383708', '-66.1695752'),
(187, 7, '-17.3824286', '-66.1664232'),
(188, 7, '-17.3845077', '-66.1633141'),
(189, 7, '-17.3826339', '-66.1624451'),
(190, 7, '-17.3814667', '-66.1602243'),
(191, 7, '-17.3780367', '-66.1611041'),
(192, 7, '-17.3791015', '-66.1653097'),
(193, 7, '-17.377238', '-66.1690648'),
(194, 7, '-17.3765724', '-66.1711677'),
(195, 7, '-17.3761526', '-66.1728843'),
(196, 7, '-17.3718931', '-66.1721762'),
(197, 8, '-17.3667884', '-66.1987588'),
(198, 8, '-17.3682238', '-66.1933648'),
(199, 8, '-17.3692999', '-66.1897987'),
(200, 8, '-17.3694053', '-66.1894855'),
(201, 8, '-17.3695604', '-66.1889426'),
(202, 8, '-17.3697001', '-66.1885178'),
(203, 8, '-17.3701302', '-66.1871767'),
(204, 8, '-17.3701486', '-66.1870905'),
(205, 8, '-17.3704581', '-66.186396'),
(206, 8, '-17.3709908', '-66.1854436'),
(207, 8, '-17.3712012', '-66.1825518'),
(208, 8, '-17.3713475', '-66.1807275'),
(209, 8, '-17.3716255', '-66.1765323'),
(210, 8, '-17.3718777', '-66.1723532'),
(211, 8, '-17.3718931', '-66.1721762'),
(212, 8, '-17.3700781', '-66.1714895'),
(213, 8, '-17.3693946', '-66.1712106'),
(214, 8, '-17.3682119', '-66.1710872'),
(215, 8, '-17.3666914', '-66.1709102'),
(216, 8, '-17.3654113', '-66.1706313'),
(217, 8, '-17.3646229', '-66.170457'),
(218, 8, '-17.3640393', '-66.1703335'),
(219, 8, '-17.3634556', '-66.1701806'),
(220, 8, '-17.3621039', '-66.1697515'),
(221, 8, '-17.3610363', '-66.1727002'),
(222, 8, '-17.3591904', '-66.1766574'),
(223, 8, '-17.3582675', '-66.1784444'),
(224, 8, '-17.3577773', '-66.1794469'),
(225, 8, '-17.3571629', '-66.1833092'),
(226, 8, '-17.3564255', '-66.187515'),
(227, 8, '-17.355934', '-66.1948965'),
(228, 8, '-17.3667884', '-66.1987588'),
(229, 9, '-17.3501993', '-66.1840818'),
(230, 9, '-17.3514692', '-66.1855838'),
(231, 9, '-17.3539268', '-66.1900255'),
(232, 9, '-17.355934', '-66.1948965'),
(233, 9, '-17.3564255', '-66.187515'),
(234, 9, '-17.3572448', '-66.1827192'),
(235, 9, '-17.3577773', '-66.1794469'),
(236, 9, '-17.3603156', '-66.1742387'),
(237, 9, '-17.3610363', '-66.1727002'),
(238, 9, '-17.3621039', '-66.1697515'),
(239, 9, '-17.3561889', '-66.1670932'),
(240, 9, '-17.354069', '-66.1713848'),
(241, 9, '-17.3513655', '-66.1754188'),
(242, 9, '-17.3499728', '-66.1773071'),
(243, 9, '-17.3489077', '-66.1791953'),
(244, 9, '-17.3484162', '-66.1804828'),
(245, 9, '-17.3480885', '-66.1815128'),
(246, 9, '-17.3488565', '-66.1823926'),
(247, 9, '-17.3501993', '-66.1840818'),
(248, 10, '-17.4106638', '-66.1673558'),
(249, 10, '-17.4164874', '-66.1724967'),
(250, 10, '-17.4185757', '-66.1737841'),
(251, 10, '-17.419886', '-66.1744708'),
(252, 10, '-17.4301634', '-66.1622399'),
(253, 10, '-17.4292627', '-66.1526269'),
(254, 10, '-17.4270516', '-66.1539143'),
(255, 10, '-17.4239397', '-66.154601'),
(256, 10, '-17.4217678', '-66.153057'),
(257, 10, '-17.4180416', '-66.1518125'),
(258, 10, '-17.4155438', '-66.1503963'),
(259, 10, '-17.4133325', '-66.1483793'),
(260, 10, '-17.4128412', '-66.1466627'),
(261, 10, '-17.4094014', '-66.1463623'),
(262, 10, '-17.4080245', '-66.1470597'),
(263, 10, '-17.411367', '-66.1517267'),
(264, 10, '-17.4133325', '-66.1549024'),
(265, 10, '-17.4137426', '-66.1572036'),
(266, 10, '-17.4131688', '-66.1594515'),
(267, 10, '-17.4120017', '-66.1621336'),
(268, 10, '-17.411319', '-66.1637938'),
(269, 10, '-17.4114828', '-66.1649525'),
(270, 10, '-17.4110733', '-66.1655104'),
(271, 10, '-17.4106638', '-66.1673558'),
(272, 11, '-17.3862713', '-66.2079627'),
(273, 11, '-17.3811929', '-66.2081773'),
(274, 11, '-17.3834644', '-66.2292349'),
(275, 11, '-17.3895033', '-66.2293113'),
(276, 11, '-17.3935986', '-66.2312853'),
(277, 11, '-17.3993319', '-66.2302554'),
(278, 11, '-17.4000316', '-66.2083918'),
(279, 11, '-17.3862713', '-66.2079627'),
(280, 12, '-17.3834644', '-66.2292349'),
(281, 12, '-17.3834419', '-66.2463097'),
(282, 12, '-17.3908954', '-66.2463526'),
(283, 12, '-17.398349', '-66.2467388'),
(284, 12, '-17.3993319', '-66.2302554'),
(285, 12, '-17.3935986', '-66.2312853'),
(286, 12, '-17.3895033', '-66.2293113'),
(287, 12, '-17.3834644', '-66.2292349'),
(288, 13, '-17.3834419', '-66.2463097'),
(289, 13, '-17.384237', '-66.2648258'),
(290, 13, '-17.3988164', '-66.2650404'),
(291, 13, '-17.3990621', '-66.2588606'),
(292, 13, '-17.3990622', '-66.2544833'),
(293, 13, '-17.3983259', '-66.2467979'),
(294, 13, '-17.3910567', '-66.2463688'),
(295, 13, '-17.3834419', '-66.2463097'),
(296, 14, '-17.3848744', '-66.285409'),
(297, 14, '-17.3854764', '-66.3011871'),
(298, 14, '-17.4013663', '-66.3010154'),
(299, 14, '-17.400668', '-66.2852081'),
(300, 14, '-17.3848744', '-66.285409'),
(301, 15, '-17.4298972', '-66.1623177'),
(302, 15, '-17.4341894', '-66.1621579'),
(303, 15, '-17.4342713', '-66.1642179'),
(304, 15, '-17.4384475', '-66.1653337'),
(305, 15, '-17.4397577', '-66.1621579'),
(306, 15, '-17.4403309', '-66.1600122'),
(307, 15, '-17.4412316', '-66.1576947'),
(308, 15, '-17.4417229', '-66.155549'),
(309, 15, '-17.4424599', '-66.1506566'),
(310, 15, '-17.4426236', '-66.14894'),
(311, 15, '-17.443033', '-66.1474809'),
(312, 15, '-17.4428693', '-66.1455926'),
(313, 15, '-17.4412316', '-66.143876'),
(314, 15, '-17.4379562', '-66.1463651'),
(315, 15, '-17.434435', '-66.148425'),
(316, 15, '-17.4331248', '-66.1497125'),
(317, 15, '-17.4314052', '-66.1507424'),
(318, 15, '-17.4296036', '-66.1517724'),
(319, 15, '-17.4289965', '-66.1527047'),
(320, 15, '-17.4298972', '-66.1623177'),
(321, 16, '-17.392388', '-66.1971895'),
(322, 16, '-17.392388', '-66.1971895'),
(323, 17, '-17.3693408', '-66.1366685'),
(324, 17, '-17.3677331', '-66.1399315'),
(325, 17, '-17.3654837', '-66.1440067'),
(326, 17, '-17.3620054', '-66.1475668'),
(327, 17, '-17.3647087', '-66.1482963'),
(328, 17, '-17.3670267', '-66.1496105'),
(329, 17, '-17.3695419', '-66.1432323'),
(330, 17, '-17.3712863', '-66.140448'),
(331, 17, '-17.371829', '-66.1382325'),
(332, 17, '-17.3726789', '-66.1368753'),
(333, 17, '-17.3748393', '-66.136811'),
(334, 17, '-17.3734058', '-66.1342192'),
(335, 17, '-17.3734673', '-66.1327647'),
(336, 17, '-17.3738206', '-66.1320451'),
(337, 17, '-17.3752387', '-66.1309822'),
(338, 17, '-17.3766415', '-66.1302205'),
(339, 17, '-17.3780648', '-66.1295875'),
(340, 17, '-17.3795392', '-66.1286219'),
(341, 17, '-17.3804914', '-66.1261864'),
(342, 17, '-17.3799078', '-66.1211332'),
(343, 17, '-17.3784334', '-66.1162408'),
(344, 17, '-17.3764265', '-66.1138375'),
(345, 17, '-17.3742147', '-66.1122497'),
(346, 17, '-17.3729247', '-66.1110051'),
(347, 17, '-17.3719211', '-66.1132367'),
(348, 17, '-17.372126', '-66.1165841'),
(349, 17, '-17.3722898', '-66.1231072'),
(350, 17, '-17.3719622', '-66.1267122'),
(351, 17, '-17.3713068', '-66.1291155'),
(352, 17, '-17.3708154', '-66.1315186'),
(353, 17, '-17.3704058', '-66.1336644'),
(354, 17, '-17.3693408', '-66.1366685'),
(355, 18, '-17.3480885', '-66.1815128'),
(356, 18, '-17.3484162', '-66.1804828'),
(357, 18, '-17.3493862', '-66.17811'),
(358, 18, '-17.3513655', '-66.1754188'),
(359, 18, '-17.354069', '-66.1713848'),
(360, 18, '-17.3561889', '-66.1670932'),
(361, 18, '-17.3516801', '-66.1617164'),
(362, 18, '-17.350615', '-66.1632613'),
(363, 18, '-17.3500006', '-66.1645059'),
(364, 18, '-17.3497139', '-66.1658362'),
(365, 18, '-17.3486897', '-66.1678103'),
(366, 18, '-17.3479525', '-66.1699132'),
(367, 18, '-17.3468054', '-66.1718873'),
(368, 18, '-17.3458633', '-66.1732177'),
(369, 18, '-17.3446344', '-66.1750201'),
(370, 18, '-17.3432416', '-66.1769084'),
(371, 18, '-17.3425928', '-66.1789102'),
(372, 18, '-17.3442248', '-66.1796764'),
(373, 18, '-17.3456586', '-66.1802557'),
(374, 18, '-17.3480885', '-66.1815128'),
(375, 19, '-17.3561889', '-66.1670932'),
(376, 19, '-17.3581142', '-66.162673'),
(377, 19, '-17.3597321', '-66.1575231'),
(378, 19, '-17.3607766', '-66.1536177'),
(379, 19, '-17.3612271', '-66.1513433'),
(380, 19, '-17.3620054', '-66.1475668'),
(381, 19, '-17.3588924', '-66.1462793'),
(382, 19, '-17.3572787', '-66.1490417'),
(383, 19, '-17.3567872', '-66.1505008'),
(384, 19, '-17.3561318', '-66.1525608'),
(385, 19, '-17.3555584', '-66.1547924'),
(386, 19, '-17.3544934', '-66.1571098'),
(387, 19, '-17.3533464', '-66.1589981'),
(388, 19, '-17.3516801', '-66.1617164'),
(389, 19, '-17.3561889', '-66.1670932'),
(390, 20, '-17.3587285', '-66.1461507'),
(391, 20, '-17.3618415', '-66.1474382'),
(392, 20, '-17.3653198', '-66.1438781'),
(393, 20, '-17.3657165', '-66.1431376'),
(394, 20, '-17.3662694', '-66.1421612'),
(395, 20, '-17.3676518', '-66.1396077'),
(396, 20, '-17.3692083', '-66.1364535'),
(397, 20, '-17.3702419', '-66.1335358'),
(398, 20, '-17.3704267', '-66.1325374'),
(399, 20, '-17.3711429', '-66.1289869'),
(400, 20, '-17.3717983', '-66.1265836'),
(401, 20, '-17.3721259', '-66.1229786'),
(402, 20, '-17.3719422', '-66.1174313'),
(403, 20, '-17.3717572', '-66.1131081'),
(404, 20, '-17.3727608', '-66.1108765'),
(405, 20, '-17.3678463', '-66.1094919'),
(406, 20, '-17.3658803', '-66.1166158'),
(407, 20, '-17.3646515', '-66.1215082'),
(408, 20, '-17.3644058', '-66.1242548'),
(409, 20, '-17.3659622', '-66.1280313'),
(410, 20, '-17.3644058', '-66.1324087'),
(411, 20, '-17.3620301', '-66.139361'),
(412, 20, '-17.3599002', '-66.1430517'),
(413, 20, '-17.3587285', '-66.1461507'),
(414, 21, '-17.3820002', '-66.1030932'),
(415, 21, '-17.3826094', '-66.0991182'),
(416, 21, '-17.3812014', '-66.1071566'),
(417, 21, '-17.3820002', '-66.1030932'),
(418, 21, '-17.3943684', '-66.1000891'),
(419, 21, '-17.3937541', '-66.1025353'),
(420, 21, '-17.393535', '-66.1038237'),
(421, 21, '-17.3943684', '-66.1000891'),
(422, 21, '-17.393535', '-66.1038237'),
(423, 21, '-17.3918447', '-66.1113973'),
(424, 21, '-17.3889164', '-66.1107642'),
(425, 21, '-17.3865822', '-66.1103138'),
(426, 21, '-17.3835975', '-66.1095359'),
(427, 21, '-17.3809302', '-66.1087044'),
(428, 21, '-17.3812014', '-66.1071566'),
(429, 21, '-17.3811607', '-66.1073634'),
(430, 21, '-17.3805054', '-66.1100455'),
(431, 21, '-17.3798296', '-66.1131355'),
(432, 21, '-17.3792767', '-66.1145302'),
(433, 21, '-17.3784334', '-66.1162408'),
(434, 21, '-17.3791948', '-66.118693'),
(435, 21, '-17.3799729', '-66.1213323'),
(436, 21, '-17.3800344', '-66.1221906'),
(437, 21, '-17.3800856', '-66.1227056'),
(438, 21, '-17.3805258', '-66.1227056'),
(439, 21, '-17.3830651', '-66.1227485'),
(440, 21, '-17.3851948', '-66.1209032'),
(441, 21, '-17.3880616', '-66.1205169'),
(442, 21, '-17.3890445', '-66.1193582'),
(443, 21, '-17.3902731', '-66.1170408'),
(444, 21, '-17.3913379', '-66.1145516'),
(445, 21, '-17.3923617', '-66.1104317'),
(446, 21, '-17.393017', '-66.1068698'),
(447, 21, '-17.393535', '-66.1038237'),
(448, 22, '-17.3809302', '-66.1087044'),
(449, 22, '-17.3835975', '-66.1095359'),
(450, 22, '-17.3865822', '-66.1103138'),
(451, 22, '-17.3918447', '-66.1113973'),
(452, 22, '-17.392116', '-66.1103458'),
(453, 22, '-17.392111', '-66.1101528'),
(454, 22, '-17.3921058', '-66.1099865'),
(455, 22, '-17.3921724', '-66.1097236'),
(456, 22, '-17.3924741', '-66.1084963'),
(457, 22, '-17.3928122', '-66.1069664'),
(458, 22, '-17.3931808', '-66.1047241'),
(459, 22, '-17.3937541', '-66.1025353'),
(460, 22, '-17.3943684', '-66.1000891'),
(461, 22, '-17.3946141', '-66.0972568'),
(462, 22, '-17.3910922', '-66.096656'),
(463, 22, '-17.3831061', '-66.0954114'),
(464, 22, '-17.3826966', '-66.0985014'),
(465, 22, '-17.3809302', '-66.1087044'),
(466, 23, '-17.3831061', '-66.0953255'),
(467, 23, '-17.3899864', '-66.0963984'),
(468, 23, '-17.3946141', '-66.0972568'),
(469, 23, '-17.395208', '-66.0931477'),
(470, 23, '-17.3949827', '-66.0909053'),
(471, 23, '-17.3942456', '-66.0891458'),
(472, 23, '-17.3944913', '-66.0820218'),
(473, 23, '-17.39314', '-66.0824577'),
(474, 23, '-17.3893723', '-66.0820714'),
(475, 23, '-17.3880208', '-66.081814'),
(476, 23, '-17.3870379', '-66.0816852'),
(477, 23, '-17.3864646', '-66.0816852'),
(478, 23, '-17.3857681', '-66.0815068'),
(479, 23, '-17.3842528', '-66.0844251'),
(480, 23, '-17.3841302', '-66.085762'),
(481, 23, '-17.3840483', '-66.0867491'),
(482, 23, '-17.3837206', '-66.0893669'),
(483, 23, '-17.3835158', '-66.0911693'),
(484, 23, '-17.3831061', '-66.0953255'),
(485, 24, '-17.3784334', '-66.1162408'),
(486, 24, '-17.3792767', '-66.1145302'),
(487, 24, '-17.3798296', '-66.1131355'),
(488, 24, '-17.3800384', '-66.1120239'),
(489, 24, '-17.3812057', '-66.1072173'),
(490, 24, '-17.3820105', '-66.1029109'),
(491, 24, '-17.3828142', '-66.0977181'),
(492, 24, '-17.3816767', '-66.0975882'),
(493, 24, '-17.3793985', '-66.0972556'),
(494, 24, '-17.3787279', '-66.0972663'),
(495, 24, '-17.3763831', '-66.0962364'),
(496, 24, '-17.3760349', '-66.0961318'),
(497, 24, '-17.3748267', '-66.0959735'),
(498, 24, '-17.3740895', '-66.0997501'),
(499, 24, '-17.3733522', '-66.1027542'),
(500, 24, '-17.3719597', '-66.106874'),
(501, 24, '-17.3713658', '-66.1105755'),
(502, 24, '-17.3729247', '-66.1110051'),
(503, 24, '-17.3742147', '-66.1122497'),
(504, 24, '-17.3764265', '-66.1138375'),
(505, 24, '-17.3784334', '-66.1162408'),
(506, 25, '-17.3748267', '-66.0959735'),
(507, 25, '-17.3760349', '-66.0961318'),
(508, 25, '-17.3763165', '-66.0962009'),
(509, 25, '-17.3770179', '-66.0965059'),
(510, 25, '-17.3787279', '-66.0972663'),
(511, 25, '-17.3794733', '-66.0972508'),
(512, 25, '-17.3811463', '-66.0974952'),
(513, 25, '-17.3828142', '-66.0977181'),
(514, 25, '-17.3842528', '-66.0844251'),
(515, 25, '-17.3857681', '-66.0815068'),
(516, 25, '-17.3817158', '-66.0803671'),
(517, 25, '-17.379668', '-66.0794229'),
(518, 25, '-17.3772106', '-66.0788221'),
(519, 25, '-17.3766372', '-66.0802812'),
(520, 25, '-17.3758181', '-66.0850019'),
(521, 25, '-17.3754085', '-66.0894651'),
(522, 25, '-17.3748267', '-66.0959735'),
(523, 26, '-17.4061286', '-66.1447742'),
(524, 26, '-17.4077583', '-66.1471375'),
(525, 26, '-17.4091352', '-66.1464401'),
(526, 26, '-17.412575', '-66.1467405'),
(527, 26, '-17.4128036', '-66.1475317'),
(528, 26, '-17.41308', '-66.1483471'),
(529, 26, '-17.4135407', '-66.148862'),
(530, 26, '-17.4152401', '-66.1504071'),
(531, 26, '-17.4177754', '-66.1518903'),
(532, 26, '-17.4184545', '-66.1520807'),
(533, 26, '-17.4196419', '-66.1493449'),
(534, 26, '-17.4193962', '-66.148846'),
(535, 26, '-17.4197135', '-66.1445813'),
(536, 26, '-17.4199183', '-66.139764'),
(537, 26, '-17.4164889', '-66.1406652'),
(538, 26, '-17.4144415', '-66.1421244'),
(539, 26, '-17.4118208', '-66.1423819'),
(540, 26, '-17.409282', '-66.1427252'),
(541, 26, '-17.4061286', '-66.1447742'),
(542, 27, '-17.4164889', '-66.1406652'),
(543, 27, '-17.4199183', '-66.139764'),
(544, 27, '-17.4236689', '-66.1345419'),
(545, 27, '-17.4275997', '-66.1300787'),
(546, 27, '-17.4307115', '-66.1279329'),
(547, 27, '-17.4305477', '-66.1229548'),
(548, 27, '-17.4293194', '-66.1193499'),
(549, 27, '-17.4262075', '-66.1178049'),
(550, 27, '-17.4229318', '-66.1188349'),
(551, 27, '-17.4206388', '-66.1205515'),
(552, 27, '-17.4175268', '-66.1227831'),
(553, 27, '-17.4154794', '-66.1257872'),
(554, 27, '-17.4167078', '-66.126624'),
(555, 27, '-17.4172811', '-66.1279329'),
(556, 27, '-17.4178544', '-66.1312803'),
(557, 27, '-17.4188371', '-66.1331686'),
(558, 27, '-17.4191033', '-66.1347136'),
(559, 27, '-17.4182639', '-66.1361727'),
(560, 27, '-17.4170354', '-66.1384043'),
(561, 27, '-17.4164889', '-66.1406652'),
(562, 28, '-17.4384475', '-66.1652479'),
(563, 28, '-17.4543759', '-66.1698051'),
(564, 28, '-17.4572416', '-66.1568447'),
(565, 28, '-17.4566275', '-66.1528535'),
(566, 28, '-17.4557474', '-66.1480041'),
(567, 28, '-17.4544168', '-66.1437555'),
(568, 28, '-17.4511212', '-66.1414596'),
(569, 28, '-17.4450312', '-66.1398502'),
(570, 28, '-17.4438133', '-66.141481'),
(571, 28, '-17.4412316', '-66.143876'),
(572, 28, '-17.4428693', '-66.1455926'),
(573, 28, '-17.44302', '-66.147001'),
(574, 28, '-17.4430507', '-66.147524'),
(575, 28, '-17.442631', '-66.1489805'),
(576, 28, '-17.4422845', '-66.1522755'),
(577, 28, '-17.4417229', '-66.1554632'),
(578, 28, '-17.4412214', '-66.1577377'),
(579, 28, '-17.4403309', '-66.1599264'),
(580, 28, '-17.4395837', '-66.1625657'),
(581, 28, '-17.4384475', '-66.1652479'),
(582, 29, '-17.4307115', '-66.1279329'),
(583, 29, '-17.4357237', '-66.1248841'),
(584, 29, '-17.4388354', '-66.125914'),
(585, 29, '-17.4401455', '-66.1247982'),
(586, 29, '-17.4398896', '-66.1260428'),
(587, 29, '-17.4400432', '-66.1273302'),
(588, 29, '-17.4417014', '-66.1298623'),
(589, 29, '-17.443032', '-66.1312356'),
(590, 29, '-17.4432469', '-66.1315789'),
(591, 29, '-17.4429655', '-66.132759'),
(592, 29, '-17.4429706', '-66.1341538'),
(593, 29, '-17.4431753', '-66.137072'),
(594, 29, '-17.442899', '-66.1388208'),
(595, 29, '-17.4431344', '-66.1410632'),
(596, 29, '-17.4443626', '-66.1395182'),
(597, 29, '-17.4454475', '-66.1375012'),
(598, 29, '-17.4476788', '-66.1334457'),
(599, 29, '-17.4496235', '-66.1308922'),
(600, 29, '-17.4522641', '-66.1286606'),
(601, 29, '-17.4513635', '-66.1251416'),
(602, 29, '-17.4511537', '-66.1243584'),
(603, 29, '-17.4506163', '-66.1232747'),
(604, 29, '-17.4494085', '-66.1209251'),
(605, 29, '-17.4484567', '-66.1190906'),
(606, 29, '-17.4471261', '-66.1166229'),
(607, 29, '-17.4448948', '-66.1121811'),
(608, 29, '-17.4384259', '-66.1132969'),
(609, 29, '-17.4322025', '-66.1143269'),
(610, 29, '-17.4269616', '-66.1163868'),
(611, 29, '-17.4262075', '-66.1178049'),
(612, 29, '-17.4293194', '-66.1193499'),
(613, 29, '-17.4305477', '-66.1229548'),
(614, 29, '-17.4307115', '-66.1279329'),
(615, 30, '-17.3879797', '-66.1203881'),
(616, 30, '-17.3928632', '-66.1195041'),
(617, 30, '-17.3985146', '-66.1198474'),
(618, 30, '-17.4013812', '-66.1172296'),
(619, 30, '-17.4014631', '-66.1146546'),
(620, 30, '-17.4018112', '-66.1116077'),
(621, 30, '-17.4026507', '-66.1074449'),
(622, 30, '-17.4033878', '-66.103797'),
(623, 30, '-17.4036744', '-66.1009218'),
(624, 30, '-17.4036745', '-66.0989476'),
(625, 30, '-17.4037362', '-66.0955806'),
(626, 30, '-17.4005623', '-66.0964097'),
(627, 30, '-17.3968768', '-66.0973909'),
(628, 30, '-17.3958121', '-66.0972837'),
(629, 30, '-17.3946141', '-66.0972568'),
(630, 30, '-17.3943684', '-66.1000891'),
(631, 30, '-17.3936822', '-66.1026813'),
(632, 30, '-17.3926174', '-66.1086894'),
(633, 30, '-17.3913479', '-66.1140538'),
(634, 30, '-17.3897097', '-66.1181737'),
(635, 30, '-17.3879797', '-66.1203881'),
(636, 31, '-17.3857681', '-66.0815068'),
(637, 31, '-17.3865874', '-66.0758056'),
(638, 31, '-17.3852974', '-66.0735632'),
(639, 31, '-17.3847445', '-66.0709776'),
(640, 31, '-17.3849492', '-66.0672654'),
(641, 31, '-17.3847854', '-66.0640468'),
(642, 31, '-17.3848351', '-66.0604159'),
(643, 31, '-17.3824597', '-66.06239'),
(644, 31, '-17.3777088', '-66.0652224'),
(645, 31, '-17.3782003', '-66.0707156'),
(646, 31, '-17.3772106', '-66.0788221'),
(647, 31, '-17.379668', '-66.0794229'),
(648, 31, '-17.3817158', '-66.0803671'),
(649, 31, '-17.3852447', '-66.0813586'),
(650, 31, '-17.3857681', '-66.0815068'),
(651, 32, '-17.3943276', '-66.0626735'),
(652, 32, '-17.3950065', '-66.0606841'),
(653, 32, '-17.3953751', '-66.0588387'),
(654, 32, '-17.3964398', '-66.0574225'),
(655, 32, '-17.3974227', '-66.0559205'),
(656, 32, '-17.3979346', '-66.054912'),
(657, 32, '-17.3966855', '-66.0542468'),
(658, 32, '-17.395457', '-66.0536675'),
(659, 32, '-17.3945356', '-66.0531954'),
(660, 32, '-17.3934912', '-66.0527018'),
(661, 32, '-17.3929998', '-66.0524014'),
(662, 32, '-17.3924265', '-66.052101'),
(663, 32, '-17.3909112', '-66.0514144'),
(664, 32, '-17.389314', '-66.0507706'),
(665, 32, '-17.3880444', '-66.0500411'),
(666, 32, '-17.3863653', '-66.0494403'),
(667, 32, '-17.3858738', '-66.0510281'),
(668, 32, '-17.385751', '-66.0527448'),
(669, 32, '-17.3850547', '-66.0539035'),
(670, 32, '-17.3850547', '-66.0554913'),
(671, 32, '-17.3845223', '-66.0598687'),
(672, 32, '-17.3848351', '-66.0604159'),
(673, 32, '-17.384993', '-66.0677232'),
(674, 32, '-17.389314', '-66.0687093'),
(675, 32, '-17.3921191', '-66.0694397'),
(676, 32, '-17.3939972', '-66.069269'),
(677, 32, '-17.3938949', '-66.0679064'),
(678, 32, '-17.3943276', '-66.0626735'),
(679, 33, '-17.4088704', '-66.0292036'),
(680, 33, '-17.4035059', '-66.0264999'),
(681, 33, '-17.398776', '-66.0283024'),
(682, 33, '-17.3946378', '-66.0313535'),
(683, 33, '-17.3941065', '-66.0333792'),
(684, 33, '-17.393698', '-66.0361344'),
(685, 33, '-17.3935321', '-66.0386491'),
(686, 33, '-17.3946378', '-66.0417819'),
(687, 33, '-17.3929587', '-66.0472751'),
(688, 33, '-17.390092', '-66.0509658'),
(689, 33, '-17.3972609', '-66.0544592'),
(690, 33, '-17.3984792', '-66.0552639'),
(691, 33, '-17.4011461', '-66.057061'),
(692, 33, '-17.4029736', '-66.0554249'),
(693, 33, '-17.4070277', '-66.0520346'),
(694, 33, '-17.4086247', '-66.0495026'),
(695, 33, '-17.4096689', '-66.0470992'),
(696, 33, '-17.4113478', '-66.0420352'),
(697, 33, '-17.4109588', '-66.0356838'),
(698, 33, '-17.4102627', '-66.0324222'),
(699, 33, '-17.4088704', '-66.0292036'),
(700, 34, '-17.3283959', '-66.2119807'),
(701, 34, '-17.3280682', '-66.2181605'),
(702, 34, '-17.327085', '-66.2231387'),
(703, 34, '-17.3289695', '-66.2242545'),
(704, 34, '-17.3333939', '-66.2262286'),
(705, 34, '-17.3374086', '-66.2260569'),
(706, 34, '-17.3426521', '-66.2278594'),
(707, 34, '-17.3444545', '-66.2233104'),
(708, 34, '-17.3456834', '-66.2185038'),
(709, 34, '-17.3465027', '-66.2135257'),
(710, 34, '-17.3444545', '-66.2134398'),
(711, 34, '-17.3411774', '-66.2142123'),
(712, 34, '-17.338146', '-66.2135257'),
(713, 34, '-17.3350325', '-66.2129248'),
(714, 34, '-17.3312637', '-66.2120665'),
(715, 34, '-17.3283959', '-66.2119807'),
(716, 35, '-17.4013812', '-66.1172296'),
(717, 35, '-17.4066645', '-66.1179627'),
(718, 35, '-17.4099404', '-66.1145295'),
(719, 35, '-17.4104318', '-66.1113538'),
(720, 35, '-17.4099404', '-66.1094655'),
(721, 35, '-17.4089577', '-66.1067188'),
(722, 35, '-17.4083844', '-66.1025131'),
(723, 35, '-17.4080568', '-66.0995091'),
(724, 35, '-17.4078418', '-66.0941434'),
(725, 35, '-17.4057636', '-66.0949601'),
(726, 35, '-17.4037362', '-66.0955806'),
(727, 35, '-17.4036745', '-66.0989476'),
(728, 35, '-17.4036744', '-66.1009218'),
(729, 35, '-17.4030608', '-66.1053456'),
(730, 35, '-17.4018112', '-66.1116077'),
(731, 35, '-17.4014631', '-66.1146546'),
(732, 35, '-17.4013812', '-66.1172296'),
(733, 36, '-17.4099404', '-66.1144651'),
(734, 36, '-17.4135485', '-66.1087571'),
(735, 36, '-17.4151046', '-66.1033497'),
(736, 36, '-17.4145313', '-66.0972558'),
(737, 36, '-17.4136611', '-66.092684'),
(738, 36, '-17.4109688', '-66.0933505'),
(739, 36, '-17.4078418', '-66.0941434'),
(740, 36, '-17.4080568', '-66.0972989'),
(741, 36, '-17.4080568', '-66.0994447'),
(742, 36, '-17.4087166', '-66.1060963'),
(743, 36, '-17.4102726', '-66.1107312'),
(744, 36, '-17.4099404', '-66.1144651'),
(745, 37, '-17.390092', '-66.0509658'),
(746, 37, '-17.3929587', '-66.0472751'),
(747, 37, '-17.3946378', '-66.0417819'),
(748, 37, '-17.3935321', '-66.0386491'),
(749, 37, '-17.3936959', '-66.035645'),
(750, 37, '-17.3942692', '-66.0324264'),
(751, 37, '-17.3946378', '-66.0313535'),
(752, 37, '-17.3954384', '-66.0307056'),
(753, 37, '-17.3956616', '-66.0295081'),
(754, 37, '-17.3929587', '-66.0284353'),
(755, 37, '-17.3906858', '-66.0329628'),
(756, 37, '-17.3899159', '-66.0344888'),
(757, 37, '-17.3890887', '-66.0381126'),
(758, 37, '-17.38829', '-66.0418677'),
(759, 37, '-17.3875119', '-66.0455584'),
(760, 37, '-17.3863653', '-66.0494403'),
(761, 37, '-17.390092', '-66.0509658'),
(762, 38, '-17.3448417', '-66.1985963'),
(763, 38, '-17.346214', '-66.1948197'),
(764, 38, '-17.3474753', '-66.1911628'),
(765, 38, '-17.3501993', '-66.1840818'),
(766, 38, '-17.3480885', '-66.1815128'),
(767, 38, '-17.343979', '-66.1795262'),
(768, 38, '-17.3425928', '-66.1789102'),
(769, 38, '-17.3427501', '-66.183174'),
(770, 38, '-17.3379597', '-66.1955922'),
(771, 38, '-17.3448417', '-66.1985963'),
(772, 39, '-17.3379597', '-66.1955922'),
(773, 39, '-17.3339246', '-66.212651'),
(774, 39, '-17.338146', '-66.2135257'),
(775, 39, '-17.3411774', '-66.2142123'),
(776, 39, '-17.346808', '-66.1997979'),
(777, 39, '-17.3448417', '-66.1985963'),
(778, 39, '-17.3379597', '-66.1955922'),
(779, 40, '-17.3539268', '-66.1900255'),
(780, 40, '-17.3514692', '-66.1855838'),
(781, 40, '-17.3501379', '-66.1840818'),
(782, 40, '-17.3447803', '-66.1985963'),
(783, 40, '-17.3505151', '-66.2019067'),
(784, 40, '-17.3558726', '-66.1948965'),
(785, 40, '-17.3539268', '-66.1900255'),
(786, 41, '-17.3777088', '-66.0652224'),
(787, 41, '-17.3824597', '-66.06239'),
(788, 41, '-17.3848351', '-66.0604159'),
(789, 41, '-17.3845223', '-66.0598687'),
(790, 41, '-17.3850547', '-66.0539035'),
(791, 41, '-17.385751', '-66.0527448'),
(792, 41, '-17.3857412', '-66.0513542'),
(793, 41, '-17.3863653', '-66.0494403'),
(794, 41, '-17.3826696', '-66.0478351'),
(795, 41, '-17.3791065', '-66.0458181'),
(796, 41, '-17.3781235', '-66.0482213'),
(797, 41, '-17.3777549', '-66.0563753'),
(798, 41, '-17.3777088', '-66.0652224'),
(799, 42, '-17.4543759', '-66.1698909'),
(800, 42, '-17.4646869', '-66.1716034'),
(801, 42, '-17.4671021', '-66.1584713'),
(802, 42, '-17.4670101', '-66.1543407'),
(803, 42, '-17.4666109', '-66.1501243'),
(804, 42, '-17.4654441', '-66.1431504'),
(805, 42, '-17.46264', '-66.1389018'),
(806, 42, '-17.4599585', '-66.1349107'),
(807, 42, '-17.4515661', '-66.1331513'),
(808, 42, '-17.448516', '-66.1323895'),
(809, 42, '-17.4473651', '-66.133992'),
(810, 42, '-17.4463779', '-66.1358734'),
(811, 42, '-17.4443626', '-66.1395182'),
(812, 42, '-17.4516889', '-66.1416056'),
(813, 42, '-17.4544168', '-66.1437555'),
(814, 42, '-17.4559316', '-66.1486907'),
(815, 42, '-17.4572416', '-66.1569305'),
(816, 42, '-17.4543759', '-66.1698909'),
(817, 43, '-17.3929587', '-66.0284353'),
(818, 43, '-17.3934691', '-66.0254744'),
(819, 43, '-17.3894746', '-66.024831'),
(820, 43, '-17.3884476', '-66.026634'),
(821, 43, '-17.3857006', '-66.027493'),
(822, 43, '-17.3837727', '-66.0280944'),
(823, 43, '-17.3810287', '-66.0368062'),
(824, 43, '-17.3791065', '-66.0458181'),
(825, 43, '-17.3826696', '-66.0478351'),
(826, 43, '-17.3847147', '-66.0486937'),
(827, 43, '-17.3863653', '-66.0494403'),
(828, 43, '-17.3863938', '-66.0489941'),
(829, 43, '-17.3877044', '-66.0445739'),
(830, 43, '-17.3881139', '-66.0428572'),
(831, 43, '-17.38829', '-66.0418677'),
(832, 43, '-17.3891787', '-66.037922'),
(833, 43, '-17.3899159', '-66.0344888'),
(834, 43, '-17.3929587', '-66.0284353'),
(835, 44, '-17.4649324', '-66.1716463'),
(836, 44, '-17.4832064', '-66.174571'),
(837, 44, '-17.4809141', '-66.1632414'),
(838, 44, '-17.4775985', '-66.1474055'),
(839, 44, '-17.4689611', '-66.1338872'),
(840, 44, '-17.4630662', '-66.1275356'),
(841, 44, '-17.4592999', '-66.1237806'),
(842, 44, '-17.457693', '-66.1248963'),
(843, 44, '-17.4556974', '-66.1262911'),
(844, 44, '-17.4521578', '-66.1288414'),
(845, 44, '-17.45004', '-66.1306154'),
(846, 44, '-17.449319', '-66.1313844'),
(847, 44, '-17.4485774', '-66.1323895'),
(848, 44, '-17.4600199', '-66.1349107'),
(849, 44, '-17.4655055', '-66.1431504'),
(850, 44, '-17.467119', '-66.15174'),
(851, 44, '-17.4673886', '-66.1583426'),
(852, 44, '-17.4649324', '-66.1716463'),
(853, 45, '-17.4829813', '-66.174571'),
(854, 45, '-17.4987374', '-66.1745417'),
(855, 45, '-17.493662', '-66.1554871'),
(856, 45, '-17.4862944', '-66.1438141'),
(857, 45, '-17.4767978', '-66.1299095'),
(858, 45, '-17.4678739', '-66.1200389'),
(859, 45, '-17.4646821', '-66.122693'),
(860, 45, '-17.4590748', '-66.1237806'),
(861, 45, '-17.4628411', '-66.1275356'),
(862, 45, '-17.4685212', '-66.1336298'),
(863, 45, '-17.4736253', '-66.141486'),
(864, 45, '-17.4773734', '-66.1474055'),
(865, 45, '-17.4782216', '-66.1513176'),
(866, 45, '-17.4791208', '-66.155809'),
(867, 45, '-17.480995', '-66.1645677'),
(868, 45, '-17.4829813', '-66.174571'),
(869, 46, '-17.4050532', '-66.1556203'),
(870, 46, '-17.4050532', '-66.1556203'),
(871, 47, '-17.3749376', '-66.1356961'),
(872, 47, '-17.3749376', '-66.1356961'),
(873, 48, '-17.4136611', '-66.092684'),
(874, 48, '-17.4127117', '-66.0882356'),
(875, 48, '-17.4137354', '-66.0750177'),
(876, 48, '-17.4037437', '-66.078923'),
(877, 48, '-17.4041369', '-66.0812046'),
(878, 48, '-17.4042848', '-66.0821899'),
(879, 48, '-17.4044122', '-66.0831107'),
(880, 48, '-17.4044112', '-66.0849954'),
(881, 48, '-17.4042274', '-66.0869995'),
(882, 48, '-17.4035928', '-66.09129'),
(883, 48, '-17.4033164', '-66.0939932'),
(884, 48, '-17.4037362', '-66.0955806'),
(885, 48, '-17.4078418', '-66.0941434'),
(886, 48, '-17.4088088', '-66.0938964'),
(887, 48, '-17.409382', '-66.093596'),
(888, 48, '-17.4107116', '-66.0932742'),
(889, 48, '-17.4136611', '-66.092684'),
(890, 49, '-17.4138761', '-66.0934792'),
(891, 49, '-17.4141337', '-66.0930677'),
(892, 49, '-17.4168772', '-66.092145'),
(893, 49, '-17.4177576', '-66.0918661'),
(894, 49, '-17.4196002', '-66.0917802'),
(895, 49, '-17.4215452', '-66.091909'),
(896, 49, '-17.4243705', '-66.0916944'),
(897, 49, '-17.4244524', '-66.0881539'),
(898, 49, '-17.4233469', '-66.0866733'),
(899, 49, '-17.4229784', '-66.083562'),
(900, 49, '-17.4222004', '-66.0822101'),
(901, 49, '-17.4206239', '-66.079249'),
(902, 49, '-17.4196617', '-66.0772319'),
(903, 49, '-17.4198255', '-66.0746356'),
(904, 49, '-17.4137354', '-66.0750177'),
(905, 49, '-17.4127117', '-66.0882356'),
(906, 49, '-17.4138761', '-66.0934792'),
(907, 50, '-17.3977573', '-66.0971548'),
(908, 50, '-17.398269', '-66.0969593'),
(909, 50, '-17.3987296', '-66.0968823'),
(910, 50, '-17.4037055', '-66.0955752'),
(911, 50, '-17.40347', '-66.0947769'),
(912, 50, '-17.4033164', '-66.0939932'),
(913, 50, '-17.4035928', '-66.09129'),
(914, 50, '-17.4041027', '-66.0878048'),
(915, 50, '-17.4042245', '-66.0868454'),
(916, 50, '-17.4044112', '-66.0849954'),
(917, 50, '-17.4044122', '-66.0831107'),
(918, 50, '-17.4041369', '-66.0812046'),
(919, 50, '-17.4037437', '-66.078923'),
(920, 50, '-17.3944913', '-66.0820218'),
(921, 50, '-17.3943888', '-66.0854921'),
(922, 50, '-17.3942456', '-66.0891458'),
(923, 50, '-17.3949827', '-66.0909053'),
(924, 50, '-17.395208', '-66.0931477'),
(925, 50, '-17.3949521', '-66.0950413'),
(926, 50, '-17.3946141', '-66.0972568'),
(927, 50, '-17.3958121', '-66.0972837'),
(928, 50, '-17.3968461', '-66.0973855'),
(929, 50, '-17.3977573', '-66.0971548'),
(930, 51, '-17.4037437', '-66.078923'),
(931, 51, '-17.4136577', '-66.0747991'),
(932, 51, '-17.4140876', '-66.065229'),
(933, 51, '-17.4150704', '-66.0563026'),
(934, 51, '-17.4059592', '-66.0584484'),
(935, 51, '-17.4012908', '-66.0598217'),
(936, 51, '-17.4016185', '-66.0666881'),
(937, 51, '-17.4024375', '-66.0726104'),
(938, 51, '-17.4037437', '-66.078923'),
(939, 52, '-17.3944913', '-66.0820218'),
(940, 52, '-17.3976625', '-66.0809205'),
(941, 52, '-17.4037437', '-66.078923'),
(942, 52, '-17.4026176', '-66.0739038'),
(943, 52, '-17.4015529', '-66.0663936'),
(944, 52, '-17.4012908', '-66.0598217'),
(945, 52, '-17.4011461', '-66.057061'),
(946, 52, '-17.3994908', '-66.0560278'),
(947, 52, '-17.3979346', '-66.054912'),
(948, 52, '-17.396866', '-66.0568849'),
(949, 52, '-17.3953751', '-66.0588387'),
(950, 52, '-17.3950065', '-66.0606841'),
(951, 52, '-17.3943276', '-66.0626735'),
(952, 52, '-17.393987', '-66.066576'),
(953, 52, '-17.3938949', '-66.0679064'),
(954, 52, '-17.3939972', '-66.069269'),
(955, 52, '-17.3940382', '-66.0703633'),
(956, 52, '-17.3941918', '-66.0719404'),
(957, 52, '-17.3943863', '-66.0733781'),
(958, 52, '-17.3944989', '-66.0748264'),
(959, 52, '-17.3945911', '-66.0759315'),
(960, 52, '-17.3945399', '-66.0770366'),
(961, 52, '-17.3945705', '-66.0786674'),
(962, 52, '-17.3945399', '-66.0807917'),
(963, 52, '-17.3944913', '-66.0820218'),
(964, 53, '-17.4012908', '-66.0598217'),
(965, 53, '-17.4059592', '-66.0584484'),
(966, 53, '-17.4107473', '-66.0572513'),
(967, 53, '-17.4150704', '-66.0563026'),
(968, 53, '-17.415743', '-66.0524018'),
(969, 53, '-17.4169306', '-66.0479387'),
(970, 53, '-17.4177904', '-66.042188'),
(971, 53, '-17.4194283', '-66.0342057'),
(972, 53, '-17.4180361', '-66.0258802'),
(973, 53, '-17.4145964', '-66.0210307'),
(974, 53, '-17.4095802', '-66.0186274'),
(975, 53, '-17.4048915', '-66.0188849'),
(976, 53, '-17.400264', '-66.0217603'),
(977, 53, '-17.3934691', '-66.0254744'),
(978, 53, '-17.3929587', '-66.0284353'),
(979, 53, '-17.3956616', '-66.0295081'),
(980, 53, '-17.3954384', '-66.0307056'),
(981, 53, '-17.398776', '-66.0283024'),
(982, 53, '-17.4032125', '-66.0263951'),
(983, 53, '-17.4088704', '-66.0292036'),
(984, 53, '-17.4104607', '-66.033047'),
(985, 53, '-17.4109588', '-66.0356838'),
(986, 53, '-17.4113478', '-66.0420352'),
(987, 53, '-17.4090684', '-66.0489257'),
(988, 53, '-17.4070277', '-66.0520346'),
(989, 53, '-17.4011461', '-66.057061'),
(990, 53, '-17.4012908', '-66.0598217'),
(991, 54, '-17.4229318', '-66.1188349'),
(992, 54, '-17.4262075', '-66.1178049'),
(993, 54, '-17.4269616', '-66.1163868'),
(994, 54, '-17.4322025', '-66.1143269'),
(995, 54, '-17.4448948', '-66.1121811'),
(996, 54, '-17.4471261', '-66.1166229'),
(997, 54, '-17.4479638', '-66.1181949'),
(998, 54, '-17.4511537', '-66.1243584'),
(999, 54, '-17.4522641', '-66.1286606'),
(1000, 54, '-17.4592614', '-66.1237155'),
(1001, 54, '-17.4559863', '-66.1143599'),
(1002, 54, '-17.4532843', '-66.1070643'),
(1003, 54, '-17.4488628', '-66.1027728'),
(1004, 54, '-17.4419028', '-66.1034594'),
(1005, 54, '-17.4334685', '-66.106206'),
(1006, 54, '-17.4250338', '-66.1086951'),
(1007, 54, '-17.419547', '-66.1109267'),
(1008, 54, '-17.4167625', '-66.1124716'),
(1009, 54, '-17.419233', '-66.1155245'),
(1010, 54, '-17.4229318', '-66.1188349'),
(1011, 55, '-17.3670267', '-66.1496105'),
(1012, 55, '-17.3647087', '-66.1482963'),
(1013, 55, '-17.3620054', '-66.1475668'),
(1014, 55, '-17.3607766', '-66.1536177'),
(1015, 55, '-17.3597455', '-66.1574445'),
(1016, 55, '-17.3581142', '-66.162673'),
(1017, 55, '-17.3561889', '-66.1670932'),
(1018, 55, '-17.3621039', '-66.1697515'),
(1019, 55, '-17.3633327', '-66.1671765'),
(1020, 55, '-17.3646607', '-66.1632917'),
(1021, 55, '-17.3658722', '-66.1580785'),
(1022, 55, '-17.3663842', '-66.1570056'),
(1023, 55, '-17.3666914', '-66.1543019'),
(1024, 55, '-17.3670267', '-66.1496105'),
(1025, 56, '-17.3857681', '-66.0815068'),
(1026, 56, '-17.3892318', '-66.0820783'),
(1027, 56, '-17.39314', '-66.0824577'),
(1028, 56, '-17.3944913', '-66.0820218'),
(1029, 56, '-17.3945911', '-66.0759315'),
(1030, 56, '-17.3944124', '-66.0739244'),
(1031, 56, '-17.3940029', '-66.0695685'),
(1032, 56, '-17.3921191', '-66.0694397'),
(1033, 56, '-17.384993', '-66.0677232'),
(1034, 56, '-17.3847473', '-66.0706842'),
(1035, 56, '-17.3852974', '-66.0735632'),
(1036, 56, '-17.3865874', '-66.0758056'),
(1037, 56, '-17.3857681', '-66.0815068'),
(1038, 57, '-17.3666579', '-66.1563049'),
(1039, 57, '-17.3728016', '-66.1567125'),
(1040, 57, '-17.3725149', '-66.1626992'),
(1041, 57, '-17.3811999', '-66.1602502'),
(1042, 57, '-17.3784358', '-66.1497526'),
(1043, 57, '-17.3670265', '-66.1496101'),
(1044, 57, '-17.3666579', '-66.1563049'),
(1045, 58, '-17.384237', '-66.2648258'),
(1046, 58, '-17.3848601', '-66.2853798'),
(1047, 58, '-17.400668', '-66.2852081'),
(1048, 58, '-17.3988164', '-66.2650404'),
(1049, 58, '-17.384237', '-66.2648258'),
(1050, 59, '-17.3854764', '-66.3011871'),
(1051, 59, '-17.3802731', '-66.3136929'),
(1052, 59, '-17.3810103', '-66.3276833'),
(1053, 59, '-17.3963271', '-66.3209027'),
(1054, 59, '-17.4029613', '-66.3184136'),
(1055, 59, '-17.4013663', '-66.3010154'),
(1056, 59, '-17.3854764', '-66.3011871'),
(1057, 60, '-17.4342713', '-66.1642179'),
(1058, 60, '-17.4288411', '-66.1707279'),
(1059, 60, '-17.4324852', '-66.1750194'),
(1060, 60, '-17.4384475', '-66.1653337'),
(1061, 60, '-17.4342713', '-66.1642179'),
(1062, 61, '-17.4288411', '-66.1707279'),
(1063, 61, '-17.424985', '-66.1753026'),
(1064, 61, '-17.4315363', '-66.183714'),
(1065, 61, '-17.4358353', '-66.1787787'),
(1066, 61, '-17.4288411', '-66.1707279');

-- --------------------------------------------------------

--
-- Table structure for table `precio_delivery`
--

CREATE TABLE `precio_delivery` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(3000) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `precio_delivery`
--

INSERT INTO `precio_delivery` (`id`, `nombre`, `descripcion`, `precio`, `estado`) VALUES
(1, 'CENTRO', NULL, '10 Bs', 'Activo'),
(2, 'GALINDO', NULL, '8 Bs', 'Activo'),
(3, 'GALINDO', NULL, '12 Bs', 'Activo'),
(4, 'VILLAZON', NULL, '8 Bs', 'Activo'),
(5, 'CENTRO', NULL, '8 Bs', 'Activo'),
(6, 'VILLAZON', NULL, '15 Bs', 'Activo'),
(7, 'GALINDO', NULL, '13 Bs', 'Activo'),
(8, 'GALINDO', NULL, '15 Bs', 'Activo'),
(9, 'GALINDO', NULL, '20 Bs', 'Activo'),
(10, 'CENTRO', NULL, '12 Bs', 'Activo'),
(11, 'GALINDO', NULL, '12 Bs', 'Activo'),
(12, 'GALINDO', NULL, '15 Bs', 'Activo'),
(13, 'QUILLACOLLO', NULL, '20 Bs', 'Activo'),
(14, 'VINTO', NULL, '28 Bs', 'Activo'),
(15, 'CENTRO', NULL, '15 Bs', 'Activo'),
(16, 'DOÑA PANCHITA GALINDO', NULL, 'sin precio', 'Activo'),
(17, 'VILLAZON', NULL, '10 Bs', 'Activo'),
(18, 'GALINDO', NULL, '25 Bs', 'Activo'),
(19, 'VILLAZON', NULL, '20 Bs', 'Activo'),
(20, 'VILLAZON', NULL, '15 Bs', 'Activo'),
(21, 'VILLAZON', NULL, '12 Bs', 'Activo'),
(22, 'VILLAZON', NULL, '15 Bs', 'Activo'),
(23, 'SACABA', NULL, '18 Bs', 'Activo'),
(24, 'VILLAZON', NULL, '15 Bs', 'Activo'),
(25, 'VILLAZON', NULL, '20 Bs', 'Activo'),
(26, 'CENTRO', NULL, '12 Bs', 'Activo'),
(27, 'CENTRO', NULL, '15 Bs', 'Activo'),
(28, 'CENTRO', NULL, '18 Bs', 'Activo'),
(29, 'CENTRO', NULL, '20 Bs', 'Activo'),
(30, 'VILLAZON', NULL, '15 Bs', 'Activo'),
(31, 'VILLAZON', NULL, '25 Bs', 'Activo'),
(32, 'VILLAZON', NULL, '25 Bs', 'Activo'),
(33, 'SACABA', NULL, '30 Bs', 'Activo'),
(34, 'TIQUIPAYA', NULL, '30 Bs', 'Activo'),
(35, 'VILLAZON', NULL, '20 Bs', 'Activo'),
(36, 'VILLAZON', NULL, '25 Bs', 'Activo'),
(37, 'VILLAZON', NULL, '33 Bs', 'Activo'),
(38, 'GALINDO', NULL, '25 Bs', 'Activo'),
(39, 'GALINDO', NULL, '28 Bs', 'Activo'),
(40, 'GALINDO', NULL, '20 Bs', 'Activo'),
(41, 'VILLAZON', NULL, '30 Bs', 'Activo'),
(42, 'SUD', NULL, '20 Bs', 'Activo'),
(43, 'VILLAZON', NULL, '35 Bs', 'Activo'),
(44, 'SUD', NULL, '25 Bs', 'Activo'),
(45, 'SUD', NULL, '30 Bs', 'Activo'),
(46, 'SUCURSAL SUD', NULL, 'sin precio', 'Activo'),
(47, 'SUCURSAL VILLAZON', NULL, 'sin precio', 'Activo'),
(48, 'VILLAZON', NULL, '30 Bs', 'Activo'),
(49, 'VILLAZON', NULL, '35 Bs', 'Activo'),
(50, 'VILLAZON', NULL, '20 Bs', 'Activo'),
(51, 'VILLAZON', NULL, '35 Bs', 'Activo'),
(52, 'VILLAZON', NULL, '25 Bs', 'Activo'),
(53, 'SACABA', NULL, '35 Bs', 'Activo'),
(54, 'SUD', NULL, '25 Bs', 'Activo'),
(55, 'VILLAZON', NULL, '15 Bs', 'Activo'),
(56, 'VILLAZON', NULL, '20 Bs', 'Activo'),
(57, 'VILLAZON', NULL, '10 Bs', 'Activo'),
(58, 'GALINDO', NULL, '25 Bs', 'Activo'),
(59, 'GALINDO', NULL, '35 Bs', 'Activo'),
(60, 'SUD', NULL, '18 Bs', 'Activo'),
(61, 'SUD', NULL, '20 Bs', 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `producto` varchar(200) DEFAULT NULL,
  `detalle` varchar(3000) DEFAULT NULL,
  `costo` varchar(50) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  `categoria_producto_id` int(11) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id`, `producto`, `detalle`, `costo`, `estado`, `categoria_producto_id`, `foto`) VALUES
(8, '2 Presas', '2 Presas de pollo, papa frita, Arroz', '25', 'Activo', 3, 'producto_8200726180543.jpg'),
(9, '3 Presas', ' Presas de pollo, papa frita, Arroz', '35', 'Activo', 3, 'producto_9200726180631.jpg'),
(10, '4 Presas', '4 Presas de pollo, papa frita, Arroz', '43', 'Activo', 3, 'producto_10200726180712.jpg'),
(12, '10 Presas', '10 Presas de pollo, 5 porciones de papa frita, 5 porciones de arroz', '99', 'Activo', 3, 'producto_12200726180859.jpg'),
(13, 'Alita 6', '6 Alitas, 1 porcion de papa, 1 Salsa', '26', 'Activo', 4, 'producto_13200726181138.jpg'),
(14, '20 Alitas', '20 Alitas,  3 porciones de papa, 2 salsa miel & mostaza y barbacoa', '69', 'Activo', 4, 'producto_14200726181219.jpg'),
(15, '1 Presa', '1 Presa de pollo, papa frita, Arroz, mas Coca Cola 300cc', '22.5', 'Activo', 10, NULL),
(16, '2 Presas', '2 Presas de pollo, papa frita, Arroz, mas Coca Cola 300cc', '27.5', 'Activo', 10, NULL),
(17, '3 Presas', '3 Presas de pollo, papa frita, Arroz, mas Coca Cola 300cc', '35.5', 'Activo', 10, 'producto_17200726182251.jpg'),
(18, 'Todo x49', '4 Presas de pollo, 2 porciones de arroz, 2 porciones de papa y tostada de 2 Litros', '49', 'Activo', 11, 'producto_18200726182339.jpg'),
(19, 'Todo x59', '6 Presas de pollo, 3 porciones de papa, 3 coca colas 300cc, 3 Salsa mix', '59', 'Activo', 11, 'producto_19200726182422.jpg'),
(20, 'Que Ganga-Todo x109', '20 Alitas, 4 Presas de pollo, 4 porciones de papa y tostada de 2 Litros, 2 salsa miel & mostaza y barbacoa', '109', 'Activo', 11, 'producto_20200726182504.jpg'),
(21, 'Porcion de papa pequeña', 'Porcion de papa pequeña', '6', 'Activo', 12, NULL),
(22, 'Porcion de papa grande', 'Porcion de papa grande', '12', 'Activo', 12, NULL),
(23, 'Porcion de arroz pequeña', 'Porcion de arroz pequeña', '6', 'Activo', 12, NULL),
(24, 'Porcion de arroz grande', 'Porcion de arroz grande', '12', 'Activo', 12, NULL),
(25, 'Porcion de platanito pequeña', 'Porcion de platanito pequeña', '6', 'Activo', 12, NULL),
(26, 'Porcion de platanito grande', 'Porcion de platanito grande', '12', 'Activo', 12, NULL),
(27, 'Presa de pollo', 'Presa de pollo', '9', 'Activo', 12, NULL),
(28, 'Tostada de 2 Litros', 'Tostada de 2 Litros', '18', 'Activo', 13, NULL),
(29, 'Coca Cola 300cc', 'Coca Cola 300cc', '5', 'Activo', 13, NULL),
(30, 'Broaster 25', '2 Presas de pollo, 1 porcion de papa frita ', '25', 'Activo', 14, 'producto_30200801181951.jpeg'),
(31, 'Broaster 49', '2 Presas de pollo, 2 porcion de papa frita, 2 coca colas 300cc', '49', 'Activo', 14, 'producto_31200801182143.jpeg'),
(32, 'Broaster 59', '6 Presas de pollo, 4 salsas, 3 porcion de papa frita, 3 coca colas 300cc, 4 llajuas', '59', 'Activo', 14, 'producto_32200801182417.jpeg'),
(33, 'Broaster 99', '10 Presas de pollo, 5 salsas, 5 porcion de papa frita, 5 llajuas', '99', 'Activo', 14, 'producto_33200801182546.jpeg'),
(34, 'Broaster 99 + Tostada', '', '99', 'Activo', 14, 'producto_34200804120506.jpeg'),
(35, 'Broaster 69', '', '69', 'Activo', 14, NULL),
(36, 'Patriota', '', '99', 'Activo', 11, 'producto_36200805113134.jpeg'),
(38, 'Todo x109 Broaster', '', '109', 'Activo', 14, 'producto_38200806101458.jpg'),
(39, 'Todo x109 Tradicional', '', '109', 'Activo', 3, 'producto_39200806101543.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `relacionados`
--

CREATE TABLE `relacionados` (
  `id` int(11) NOT NULL,
  `paquete_id` int(11) NOT NULL,
  `paquete_relacionado_id` int(11) NOT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `update_at` varchar(45) DEFAULT NULL,
  `deleted_at` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `estado` enum('No Revisado','Revisado') DEFAULT NULL,
  `Cliente_id` int(11) NOT NULL,
  `paquete_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruta`
--

CREATE TABLE `ruta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL DEFAULT '0',
  `foto` varchar(100) DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicio`
--

INSERT INTO `servicio` (`id`, `titulo`, `foto`, `descripcion`) VALUES
(1, 'Venta de Boletos nacionales e internacionales.', 'servicio_1200331170733.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n'),
(2, 'Servicio de transporte turístico.', 'servicio_2200331171612.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n'),
(3, 'Organización de eventos para promociones turística', 'servicio_3200331172343.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n'),
(4, 'Venta de paquetes turísticos.', 'servicio_4200331172606.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `expire`, `data`) VALUES
('0c5ef31529a5c5fe5a686d31b3b91cd7', 1596687264, 0x5f5f666c6173687c613a303a7b7d),
('1b53136725f9ada867c39b8977edb67c', 1596128938, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532383b),
('26ac044099a31cc5dbccf702ce23f680', 1596686438, 0x5f5f666c6173687c613a303a7b7d),
('2866145bff55ce70cb0b1641bd93833a', 1596080367, 0x5f5f666c6173687c613a303a7b7d),
('2953493e12974b6fef5294832271e366', 1596693041, 0x5f5f666c6173687c613a303a7b7d),
('3436f6c6a1e6a8ab91f516aadd913b53', 1596080267, 0x5f5f666c6173687c613a303a7b7d),
('3930bfb5d49b11d17e87bad455e7c599', 1596325964, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532323b),
('4b0c0848ca0688bfaed085a6c09ba646', 1595813280, 0x5f5f666c6173687c613a303a7b7d),
('4ec7a47f279601dc57e5ea67b166cc0a', 1596053503, 0x5f5f666c6173687c613a303a7b7d),
('51bce26e7eaa8e34787908de1b5282fb', 1596683551, 0x5f5f666c6173687c613a303a7b7d),
('5322e14ad2ff8df05d3dd6bd5b90ed63', 1596389498, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532383b),
('55babab326d19316d6c3b0ab9a7ecf0a', 1596059926, 0x5f5f666c6173687c613a303a7b7d),
('59dd6be95cbdd9cd204b6132823b6ab2', 1595814214, 0x5f5f666c6173687c613a303a7b7d),
('5c06f56f592243cea78e771f67cb360b', 1595817344, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532333b),
('65944c810d436836a7b3c0d9bac8a81d', 1596680936, 0x5f5f666c6173687c613a303a7b7d7265636f7665727c733a3230303a226265306239313232373834626466373663366564306462623835613736363835323833396461383761343739656362373135383931323864373264636239316166336631356633656264623636316237313864373532306664336135653862393539356634613630646231366261373332323361353632383363386265633534663961633563313237363532373266353237333431303930306464316633316563646561376464653966626265303539316463653762623134336362613333346564356339356335223b69645f7265636f7665727c693a3630323b),
('690547c440fde494088c30bdf796bcde', 1596050339, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532363b),
('74b2b4babdd1dc5758e3acd356ac46c0', 1595813610, 0x5f5f666c6173687c613a303a7b7d),
('77e718f7d88b35f1325a70f88eae0726', 1595897896, 0x5f5f666c6173687c613a303a7b7d),
('7c977e3f69c3aaf09cc95f0b9513cbb9', 1596584150, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532383b),
('852544da5109742665702afb0f42f409', 1596638017, 0x5f5f666c6173687c613a303a7b7d73686f705f636172747c613a333a7b693a303b613a323a7b733a323a226964223b733a323a223133223b733a383a2263616e7469646164223b733a313a2231223b7d693a313b613a323a7b733a323a226964223b733a323a223132223b733a383a2263616e7469646164223b733a313a2231223b7d693a323b613a323a7b733a323a226964223b733a313a2239223b733a383a2263616e7469646164223b733a313a2232223b7d7d5f5f69647c693a3539383b),
('8f9d713e625d9ef95553a0706f784979', 1596216272, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532383b),
('99dd96ab3d538dd26753786e70a29d39', 1595821288, 0x5f5f666c6173687c613a303a7b7d73686f705f636172747c613a313a7b693a303b613a323a7b733a323a226964223b733a313a2238223b733a383a2263616e7469646164223b733a313a2232223b7d7d5f5f69647c693a3532323b),
('99e422c3cfc1ad6e7ad34cfd69be13ba', 1596389713, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3533333b),
('9d6ba314899c7b4f450c89418ed7fc1b', 1595812722, 0x5f5f666c6173687c613a303a7b7d73686f705f636172747c613a303a7b7d),
('a4dd558142ccfe318010037fe17dba76', 1595868300, 0x5f5f666c6173687c613a303a7b7d),
('a77be5e84d8d4317ba7b5daea521f492', 1595855507, 0x5f5f666c6173687c613a303a7b7d),
('af7863c2a061f8a77af0abd3a054c22f', 1596152937, 0x5f5f666c6173687c613a303a7b7d),
('b7643b8501be0e26c202289908142f09', 1596159310, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532323b73686f705f636172747c613a313a7b693a303b613a323a7b733a323a226964223b733a313a2238223b733a383a2263616e7469646164223b733a313a2231223b7d7d),
('be760ee59b22df678891c03eb69e2d98', 1596722495, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532323b73686f705f636172747c613a313a7b693a303b613a323a7b733a323a226964223b733a313a2238223b733a383a2263616e7469646164223b733a313a2231223b7d7d),
('c0d4310ec938e110dc851f3ea72b8856', 1596684409, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3533333b),
('c278de7764d7731da5b13f7b525e3f49', 1596389614, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3533333b73686f705f636172747c613a313a7b693a303b613a323a7b733a323a226964223b733a323a223130223b733a383a2263616e7469646164223b733a313a2231223b7d7d),
('c2bb10a635814ff9a779cfb6dfd84b0b', 1596080443, 0x5f5f666c6173687c613a303a7b7d),
('c387c2a032d639969be636e41b936ec8', 1595868166, 0x5f5f666c6173687c613a303a7b7d),
('cb564dcca39bfb2ded768eb9de4275e6', 1595810459, 0x5f5f666c6173687c613a303a7b7d),
('ced6b27e5cb69cec7e0e96b468101261', 1595857758, 0x5f5f666c6173687c613a303a7b7d73686f705f636172747c613a303a7b7d),
('cmct3vug326umv0tk50ai6fsbf', 1595654776, 0x5f5f666c6173687c613a303a7b7d),
('d6ac0e333844eeff74a4c459dfb99ed8', 1596488828, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532323b),
('daa472c4321e95ab98503158c256faed', 1596153294, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532393b),
('e76927e4bc0c270ed0b85971e39ce36c', 1596053524, 0x5f5f666c6173687c613a303a7b7d),
('e86289e6ee623bd9dac75951a9450155', 1596326242, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532323b),
('e92f864787674dfcff00efde7530ace6', 1596226285, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532393b),
('ead0187be3f75e1b19f20ac250a9984e', 1596039947, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a3532323b),
('i9ffpvj7qdaond513fe6emnmpn', 1595652607, 0x5f5f666c6173687c613a303a7b7d73686f705f636172747c613a313a7b693a303b613a323a7b733a323a226964223b733a313a2234223b733a383a2263616e7469646164223b733a313a2231223b7d7d5f5f69647c693a3530333b);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `estado` enum('Habilitado','Deshabilitado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `titulo`, `descripcion`, `foto`, `estado`) VALUES
(6, 'slider 1', 'slider 1', 'slider_6200805212115.jpg', 'Habilitado');

-- --------------------------------------------------------

--
-- Table structure for table `souvenir`
--

CREATE TABLE `souvenir` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion_corta` varchar(200) DEFAULT NULL,
  `foto` varchar(50) NOT NULL,
  `descripcion_larga` varchar(2000) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `categoria_souvenir_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '0',
  `telefono` varchar(100) NOT NULL DEFAULT '0',
  `celular` varchar(100) NOT NULL DEFAULT '0',
  `direccion` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sucursal_delivery`
--

CREATE TABLE `sucursal_delivery` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `detalle` varchar(3000) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sucursal_delivery`
--

INSERT INTO `sucursal_delivery` (`id`, `nombre`, `ciudad`, `detalle`, `estado`) VALUES
(2, 'SUCURSAL VILLAZON', 'Cochabamba', 'FERCA S.R.L.', 'Activo'),
(3, 'SUCURSAL BLANCO GALINDO', 'Cochabamba', 'FERCA S.R.L.', 'Activo'),
(4, 'SUCURSAL SUD', 'Cochabamba', 'FERCA S.R.L.', 'Activo'),
(5, 'SUCURSAL SANTA CRUZ', 'Cochabamba', 'FERCA S.R.L.', 'Activo'),
(14, 'SUCURSAL SACABA', 'Cochabamba', 'FERCA S.R.L.', 'Activo'),
(15, 'IC NORTE', 'Cochabamba', 'Me Gusta S.r.l.', 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `testimonio`
--

CREATE TABLE `testimonio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '0',
  `descripcion` varchar(1000) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonio`
--

INSERT INTO `testimonio` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n'),
(2, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_pedido`
--

CREATE TABLE `tipo_pedido` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(600) DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_pedido`
--

INSERT INTO `tipo_pedido` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'PICKUP (RECOGERA EN POR AUTOPOLLO)', '', 'Activo'),
(2, 'ENTREGA INMEDIATA', '', 'Activo'),
(3, 'ENTREGA PROGRAMADA', '', 'Activo');

-- --------------------------------------------------------

--
-- Table structure for table `trails_log`
--

CREATE TABLE `trails_log` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trails_log`
--

INSERT INTO `trails_log` (`id`, `description`, `action`, `model`, `id_model`, `ip`, `creation_date`, `user_id`) VALUES
(1, 'El usuario anonimo: Registro app\\models\\User[1].', 'create', 'app\\models\\User', 1, '127.0.0.1', 1575585349, NULL),
(2, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575585436, 1),
(3, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575663460, 1),
(4, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575914346, 1),
(5, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575929553, 1),
(6, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1575929564, 1),
(7, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1576603908, 1),
(8, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1576683310, 1),
(9, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1576766108, 1),
(10, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1578531623, 1),
(11, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1578583379, 1),
(12, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1578591943, 1),
(13, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1578592041, 1),
(14, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1578592045, 1),
(15, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1580510916, 1),
(16, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1580758005, 1),
(17, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581354731, 1),
(18, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581446298, 1),
(19, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450797, 1),
(20, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450803, 1),
(21, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450816, 1),
(22, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450843, 1),
(23, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581450866, 1),
(24, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581451116, 1),
(25, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581532511, 1),
(26, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581534252, 1),
(27, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581535114, 1),
(28, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581603484, 1),
(29, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581608872, 1),
(30, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581690911, 1),
(31, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1581977145, 1),
(32, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582034756, 1),
(33, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1582042051, 1),
(34, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582051150, 1),
(35, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1582051171, 1),
(36, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582062556, 1),
(37, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582144731, 1),
(38, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582210637, 1),
(39, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582311686, 1),
(40, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582728260, 1),
(41, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582816316, 1),
(42, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1582920906, 1),
(43, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1583162825, 1),
(44, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1584029406, 1),
(45, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1584110309, 1),
(46, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1584715630, 1),
(47, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585319133, 1),
(48, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585429111, 1),
(49, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1585429643, 1),
(50, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585429792, 1),
(51, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1585429815, 1),
(52, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585682528, 1),
(53, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585753268, 1),
(54, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1585778122, 1),
(55, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585778131, 1),
(56, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1585778160, 1),
(57, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585778169, 1),
(58, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1585778214, 1),
(59, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585778241, 1),
(60, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1585778319, 1),
(61, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585778337, 1),
(62, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1585778709, 1),
(63, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1586904673, 1),
(64, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589990287, 1),
(65, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1589996575, 1),
(66, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589996590, 1),
(67, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1589998184, 1),
(68, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589998192, 1),
(69, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1589998522, 1),
(70, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589998567, 1),
(71, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1589998608, 1),
(72, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589998614, 1),
(73, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1589998922, 1),
(74, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589998929, 1),
(75, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1589999475, 1),
(76, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1589999481, 1),
(77, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1590001127, 1),
(78, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1590001134, 1),
(79, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1590001213, 1),
(80, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1590001222, 1),
(81, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1590001240, 1),
(82, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590002954, 1),
(83, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.177.139.173', 1590002957, 1),
(84, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590003177, 1),
(85, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.125.20', 1590005113, 1),
(86, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590005216, 1),
(87, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590010223, 1),
(88, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590010257, 1),
(89, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590014854, 1),
(90, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590014945, 1),
(91, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.127.254', 1590027285, 1),
(92, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2803:9400:3:430a:f08a:17f1:f9e6:1917', 1590109661, 1),
(93, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b08:9b00:7004:a39c:3e6c:ca62', 1590201707, 1),
(94, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2803:9400:3:430a:f08a:17f1:f9e6:1917', 1590202785, 1),
(95, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590249370, 1),
(96, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590250187, 1),
(97, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590254924, 1),
(98, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590260843, 1),
(99, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590261255, 1),
(100, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b08:9b00:d9d3:a00c:e54d:9ada', 1590263530, 1),
(101, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b0d:2b00:c45c:809d:734b:4eb0', 1590268185, 1),
(102, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b0d:2b00:c45c:809d:734b:4eb0', 1590271620, 1),
(103, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590271764, 1),
(104, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.75.48', 1590271906, 1),
(105, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '2800:cd0:7b0d:2b00:545a:3172:17e5:be5a', 1590273292, 1),
(106, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590277645, 1),
(107, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590277682, 1),
(108, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590277785, 1),
(109, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590277963, 1),
(110, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590280602, 1),
(111, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590280680, 1),
(112, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590281093, 1),
(113, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590291059, 1),
(114, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590293700, 1),
(115, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590334625, 1),
(116, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590371149, 1),
(117, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590371834, 1),
(118, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590371865, 1),
(119, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590372181, 1),
(120, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590372344, 1),
(121, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.229.191', 1590378062, 1),
(122, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.40.145', 1590379083, 1),
(123, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.40.145', 1590379398, 1),
(124, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.123.6', 1590507166, 1),
(125, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590514471, 1),
(126, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.123.6', 1590514620, 1),
(127, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1590514875, 1),
(128, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.75.48', 1590516179, 1),
(129, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590532333, 1),
(130, 'El usuario admin: Registro app\\models\\User[2].', 'create', 'app\\models\\User', 2, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590534071, 1),
(131, 'El usuario admin: Registro app\\models\\User[3].', 'create', 'app\\models\\User', 3, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590534687, 1),
(132, 'El usuario admin: Registro app\\models\\User[4].', 'create', 'app\\models\\User', 4, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590535279, 1),
(133, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590537089, 1),
(134, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590538949, 1),
(135, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 4, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590539001, 4),
(136, 'Salio del sistema', 'logout', 'app\\models\\User', 4, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590539316, 4),
(137, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b00:8c00:85ab:d72e:43bd:cade', 1590539332, 1),
(138, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590539853, 1),
(139, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590548887, 1),
(140, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590591473, 1),
(141, 'El usuario admin: Registro app\\models\\User[5].', 'create', 'app\\models\\User', 5, '190.107.57.215', 1590591785, 1),
(142, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.57.215', 1590591797, 1),
(143, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 5, '190.107.57.215', 1590591817, 5),
(144, 'El usuario borisponce: Elimino app\\models\\User[5].', 'delete', 'app\\models\\User', 5, '190.107.57.215', 1590592069, 5),
(145, 'El usuario : Elimino app\\models\\User[4].', 'delete', 'app\\models\\User', 4, '190.107.57.215', 1590592076, NULL),
(146, 'El usuario : Elimino app\\models\\User[3].', 'delete', 'app\\models\\User', 3, '190.107.57.215', 1590592086, NULL),
(147, 'El usuario : Elimino app\\models\\User[2].', 'delete', 'app\\models\\User', 2, '190.107.57.215', 1590592093, NULL),
(148, 'El usuario anonimo: Registro app\\models\\User[6].', 'create', 'app\\models\\User', 6, '190.107.57.215', 1590592131, NULL),
(149, 'El usuario anonimo: Registro app\\models\\User[7].', 'create', 'app\\models\\User', 7, '190.107.57.215', 1590592159, NULL),
(150, 'El usuario anonimo: Registro app\\models\\User[8].', 'create', 'app\\models\\User', 8, '190.107.57.215', 1590592197, NULL),
(151, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590592225, 1),
(152, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590595645, 1),
(153, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.177.191.184', 1590679485, 1),
(154, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.122.34', 1590680277, 1),
(155, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590690949, 1),
(156, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590699230, 1),
(157, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.57.215', 1590699354, 1),
(158, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 6, '190.107.57.215', 1590699375, 6),
(159, 'Salio del sistema', 'logout', 'app\\models\\User', 6, '190.107.57.215', 1590700129, 6),
(160, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590700143, 1),
(161, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1590702695, 1),
(162, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.122.34', 1590704518, 1),
(163, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590704962, 1),
(164, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.122.34', 1590709892, 1),
(165, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.122.34', 1590709893, 1),
(166, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b06:d500:d13c:1680:52f0:3a4c', 1590713241, 1),
(167, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '2800:cd0:7b06:d500:d13c:1680:52f0:3a4c', 1590713298, 1),
(168, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 6, '2800:cd0:7b06:d500:d13c:1680:52f0:3a4c', 1590713314, 6),
(169, 'Salio del sistema', 'logout', 'app\\models\\User', 6, '2800:cd0:7b06:d500:d13c:1680:52f0:3a4c', 1590713462, 6),
(170, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b06:d500:d13c:1680:52f0:3a4c', 1590713478, 1),
(171, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.57.215', 1590715094, 1),
(172, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.57.215', 1590715106, 1),
(173, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 6, '190.107.57.215', 1590715147, 6),
(174, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1590770153, 1),
(175, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1590774651, 1),
(176, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b06:d500:d8e5:abac:33e:66bf', 1591023199, 1),
(177, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.177.190.236', 1591385072, 1),
(178, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1591647398, 1),
(179, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.106.241.22', 1592491807, 1),
(180, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.106.241.22', 1592493589, 1),
(181, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '2800:cd0:7b06:2300:55c9:1ec5:5dfd:3a81', 1592498698, 1),
(182, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.106.241.22', 1592507492, 1),
(183, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592523489, 1),
(184, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592607391, 1),
(185, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592652614, 1),
(186, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592653456, 1),
(187, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654016, 1),
(188, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592654050, 1),
(189, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654055, 1),
(190, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592654065, 1),
(191, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654133, 1),
(192, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592654154, 1),
(193, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654161, 1),
(194, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654223, 1),
(195, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654788, 1),
(196, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592654824, 1),
(197, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592655336, 1),
(198, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592655395, 1),
(199, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592655526, 1),
(200, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592664355, 1),
(201, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592664710, 1),
(202, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592664739, 1),
(203, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592664752, 1),
(204, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592664777, 1),
(205, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592664786, 1),
(208, 'El usuario admin: Registro app\\models\\User[11].', 'create', 'app\\models\\User', 11, '127.0.0.1', 1592701005, 1),
(209, 'El usuario admin: Registro app\\models\\User[12].', 'create', 'app\\models\\User', 12, '127.0.0.1', 1592702843, 1),
(210, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592702866, 1),
(211, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 12, '127.0.0.1', 1592702874, 12),
(212, 'Salio del sistema', 'logout', 'app\\models\\User', 12, '127.0.0.1', 1592702902, 12),
(213, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 12, '127.0.0.1', 1592702908, 12),
(214, 'Salio del sistema', 'logout', 'app\\models\\User', 12, '127.0.0.1', 1592702938, 12),
(215, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592702945, 1),
(216, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592744397, 1),
(217, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592744405, 1),
(218, 'El usuario admin: Registro app\\models\\User[13].', 'create', 'app\\models\\User', 13, '127.0.0.1', 1592750903, 1),
(219, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592750907, 1),
(220, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 13, '127.0.0.1', 1592750912, 13),
(221, 'Salio del sistema', 'logout', 'app\\models\\User', 13, '127.0.0.1', 1592750923, 13),
(222, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 13, '127.0.0.1', 1592750929, 13),
(223, 'Salio del sistema', 'logout', 'app\\models\\User', 13, '127.0.0.1', 1592750999, 13),
(224, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592751007, 1),
(225, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592751154, 1),
(226, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592751161, 1),
(227, 'El usuario admin: Registro app\\models\\User[14].', 'create', 'app\\models\\User', 14, '127.0.0.1', 1592845037, 1),
(228, 'El usuario admin: Registro app\\models\\User[15].', 'create', 'app\\models\\User', 15, '127.0.0.1', 1592876827, 1),
(229, 'El usuario admin: Registro app\\models\\User[16].', 'create', 'app\\models\\User', 16, '127.0.0.1', 1592876849, 1),
(230, 'El usuario admin: Registro app\\models\\User[17].', 'create', 'app\\models\\User', 17, '127.0.0.1', 1592876875, 1),
(231, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1592876929, 1),
(232, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 15, '127.0.0.1', 1592876939, 15),
(233, 'Salio del sistema', 'logout', 'app\\models\\User', 15, '127.0.0.1', 1592877154, 15),
(234, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 16, '127.0.0.1', 1592877160, 16),
(235, 'Salio del sistema', 'logout', 'app\\models\\User', 16, '127.0.0.1', 1592877443, 16),
(236, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1592877449, 17),
(237, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1592878145, 17),
(238, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 15, '127.0.0.1', 1592878151, 15),
(239, 'Salio del sistema', 'logout', 'app\\models\\User', 15, '127.0.0.1', 1592878367, 15),
(240, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 16, '127.0.0.1', 1592878374, 16),
(241, 'Salio del sistema', 'logout', 'app\\models\\User', 16, '127.0.0.1', 1592878548, 16),
(242, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1592878556, 17),
(243, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1592878821, 17),
(244, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1592878846, 17),
(245, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1592878846, 17),
(246, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1592878853, 17),
(247, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1592878856, 17),
(248, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1592878864, 17),
(249, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1592878870, 17),
(250, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 16, '127.0.0.1', 1592878878, 16),
(251, 'Salio del sistema', 'logout', 'app\\models\\User', 16, '127.0.0.1', 1592878884, 16),
(252, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 15, '127.0.0.1', 1592878890, 15),
(253, 'Salio del sistema', 'logout', 'app\\models\\User', 15, '127.0.0.1', 1592878912, 15),
(254, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1592878924, 1),
(255, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593009779, 1),
(256, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 15, '127.0.0.1', 1593009789, 15),
(257, 'Salio del sistema', 'logout', 'app\\models\\User', 15, '127.0.0.1', 1593012716, 15),
(258, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593012880, 1),
(259, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593014663, 1),
(260, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593015225, 1),
(261, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593015813, 1),
(262, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593015819, 1),
(263, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593016624, 1),
(264, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 16, '127.0.0.1', 1593016633, 16),
(265, 'Salio del sistema', 'logout', 'app\\models\\User', 16, '127.0.0.1', 1593016722, 16),
(266, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593016730, 1),
(267, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593026782, 1),
(268, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593026790, 1),
(269, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593026885, 1),
(270, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593026890, 1),
(271, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593027338, 1),
(272, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593027731, 1),
(273, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593029260, 1),
(274, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593029297, 1),
(275, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593030041, 1),
(276, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593030046, 1),
(277, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593113467, 1),
(278, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1593113476, 17),
(279, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1593113744, 17),
(280, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593114008, 1),
(281, 'El usuario admin: Registro app\\models\\User[18].', 'create', 'app\\models\\User', 18, '127.0.0.1', 1593114606, 1),
(282, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593280806, 1),
(283, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1593281409, 1),
(284, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 17, '127.0.0.1', 1593281417, 17),
(285, 'Salio del sistema', 'logout', 'app\\models\\User', 17, '127.0.0.1', 1593281533, 17),
(286, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1593281540, 1),
(287, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.2', 1594683274, 1),
(288, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.58.201', 1594686984, 1),
(289, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.160.250', 1594746183, 1),
(290, 'El usuario admin: Registro app\\models\\User[19].', 'create', 'app\\models\\User', 19, '181.188.160.250', 1594746760, 1),
(291, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.188.160.250', 1594746768, 1),
(292, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 19, '181.188.160.250', 1594746780, 19),
(293, 'Salio del sistema', 'logout', 'app\\models\\User', 19, '181.188.160.250', 1594746841, 19),
(294, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.160.250', 1594746851, 1),
(295, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.188.160.250', 1594747016, 1),
(296, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.160.250', 1594747029, 1),
(297, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.188.160.250', 1594747034, 1),
(298, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 19, '181.188.160.250', 1594747040, 19),
(299, 'Salio del sistema', 'logout', 'app\\models\\User', 19, '181.188.160.250', 1594748222, 19),
(300, 'El usuario admin: Registro app\\models\\User[20].', 'create', 'app\\models\\User', 20, '190.107.58.201', 1595024567, 1),
(301, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.58.201', 1595024579, 1),
(302, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 20, '190.107.58.201', 1595024599, 20),
(303, 'Salio del sistema', 'logout', 'app\\models\\User', 20, '190.107.58.201', 1595024683, 20),
(304, 'Salio del sistema', 'logout', 'app\\models\\User', 20, '190.107.58.201', 1595024692, 20),
(305, 'Salio del sistema', 'logout', 'app\\models\\User', 20, '190.107.58.201', 1595024715, 20),
(306, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.58.201', 1595024727, 1),
(307, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.58.201', 1595025063, 1),
(308, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.58.201', 1595025084, 1),
(309, 'El usuario admin: Registro app\\models\\User[21].', 'create', 'app\\models\\User', 21, '190.107.58.201', 1595025135, 1),
(310, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '190.107.58.201', 1595025144, 1),
(311, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 20, '190.107.58.201', 1595025159, 20),
(312, 'Salio del sistema', 'logout', 'app\\models\\User', 20, '190.107.58.201', 1595025178, 20),
(313, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 21, '190.107.58.201', 1595025191, 21),
(314, 'Salio del sistema', 'logout', 'app\\models\\User', 21, '190.107.58.201', 1595025214, 21),
(315, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.58.201', 1595025242, 1),
(316, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.165.238', 1595120603, 1),
(317, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1595121628, 1),
(318, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.177.180.149', 1595187345, 1),
(319, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1595275159, 1),
(320, 'El usuario admin: Registro app\\models\\User[22].', 'create', 'app\\models\\User', 22, '200.58.77.44', 1595276325, 1),
(321, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1595276336, 1),
(322, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 22, '200.58.77.44', 1595276350, 22),
(323, 'Salio del sistema', 'logout', 'app\\models\\User', 22, '200.58.77.44', 1595276580, 22),
(324, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1595276590, 1),
(325, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.115.249.112', 1595278277, 1),
(326, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 16, '181.115.249.112', 1595278293, 16),
(327, 'Salio del sistema', 'logout', 'app\\models\\User', 16, '181.115.249.112', 1595278723, 16),
(328, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.112', 1595278736, 1),
(329, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.115.249.112', 1595278801, 1),
(330, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 16, '181.115.249.112', 1595278811, 16),
(331, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1595284667, 1),
(332, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 22, '200.58.77.44', 1595284676, 22),
(333, 'Salio del sistema', 'logout', 'app\\models\\User', 22, '200.58.77.44', 1595285589, 22),
(334, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1595285600, 1),
(335, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 22, '181.114.123.151', 1595457435, 22),
(336, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.123.151', 1595458939, 1),
(337, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.114.123.151', 1595458967, 1),
(338, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 22, '181.114.123.151', 1595458984, 22),
(339, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 22, '200.58.77.44', 1595459497, 22),
(340, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595460592, 1),
(341, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '177.222.62.37', 1595476529, 1),
(342, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.126.94', 1595519402, 1),
(343, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.126.94', 1595520419, 1),
(344, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.165.2', 1595526331, 1),
(345, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.125.108', 1595545603, 1),
(346, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.125.108', 1595545816, 1),
(347, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.125.108', 1595559527, 1),
(348, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '177.222.62.37', 1595608563, 1),
(349, 'El usuario admin: Registro app\\models\\User[23].', 'create', 'app\\models\\User', 23, '200.58.77.44', 1595610266, 1),
(350, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1595612713, 1),
(351, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1595613055, 1),
(352, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1595619381, 1),
(353, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1595619611, 1),
(354, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1595619873, 1),
(355, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1595620235, 1),
(356, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '127.0.0.1', 1595620262, 1),
(357, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '127.0.0.1', 1595622571, 1),
(358, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595791759, 1),
(359, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '177.222.62.37', 1595792775, 1),
(360, 'El usuario admin: Elimino app\\models\\User[23].', 'delete', 'app\\models\\User', 23, '132.251.253.178', 1595802901, 1),
(361, 'El usuario admin: Elimino app\\models\\User[22].', 'delete', 'app\\models\\User', 22, '132.251.253.178', 1595802909, 1),
(362, 'El usuario admin: Elimino app\\models\\User[21].', 'delete', 'app\\models\\User', 21, '132.251.253.178', 1595802917, 1),
(363, 'El usuario admin: Elimino app\\models\\User[20].', 'delete', 'app\\models\\User', 20, '132.251.253.178', 1595802925, 1),
(364, 'El usuario admin: Elimino app\\models\\User[19].', 'delete', 'app\\models\\User', 19, '132.251.253.178', 1595802933, 1),
(365, 'El usuario admin: Elimino app\\models\\User[18].', 'delete', 'app\\models\\User', 18, '132.251.253.178', 1595802942, 1),
(366, 'El usuario admin: Elimino app\\models\\User[17].', 'delete', 'app\\models\\User', 17, '132.251.253.178', 1595802951, 1),
(367, 'El usuario admin: Elimino app\\models\\User[16].', 'delete', 'app\\models\\User', 16, '132.251.253.178', 1595802961, 1),
(368, 'El usuario admin: Elimino app\\models\\User[15].', 'delete', 'app\\models\\User', 15, '132.251.253.178', 1595802971, 1),
(369, 'El usuario admin: Elimino app\\models\\User[14].', 'delete', 'app\\models\\User', 14, '132.251.253.178', 1595802977, 1),
(370, 'El usuario admin: Elimino app\\models\\User[13].', 'delete', 'app\\models\\User', 13, '132.251.253.178', 1595802984, 1),
(371, 'El usuario admin: Elimino app\\models\\User[12].', 'delete', 'app\\models\\User', 12, '132.251.253.178', 1595802995, 1),
(372, 'El usuario admin: Elimino app\\models\\User[11].', 'delete', 'app\\models\\User', 11, '132.251.253.178', 1595803002, 1),
(373, 'El usuario admin: Elimino app\\models\\User[8].', 'delete', 'app\\models\\User', 8, '132.251.253.178', 1595803007, 1),
(374, 'El usuario admin: Elimino app\\models\\User[7].', 'delete', 'app\\models\\User', 7, '132.251.253.178', 1595803014, 1),
(375, 'El usuario admin: Elimino app\\models\\User[6].', 'delete', 'app\\models\\User', 6, '132.251.253.178', 1595803023, 1),
(376, 'El usuario admin: Registro app\\models\\User[24].', 'create', 'app\\models\\User', 24, '132.251.253.178', 1595803073, 1),
(377, 'El usuario admin: Registro app\\models\\User[25].', 'create', 'app\\models\\User', 25, '132.251.253.178', 1595803129, 1),
(378, 'El usuario admin: Registro app\\models\\User[26].', 'create', 'app\\models\\User', 26, '132.251.253.178', 1595803161, 1),
(379, 'El usuario admin: Registro app\\models\\User[27].', 'create', 'app\\models\\User', 27, '132.251.253.178', 1595803206, 1),
(380, 'El usuario admin: Registro app\\models\\User[28].', 'create', 'app\\models\\User', 28, '132.251.253.178', 1595803243, 1),
(381, 'El usuario admin: Registro app\\models\\User[29].', 'create', 'app\\models\\User', 29, '132.251.253.178', 1595803286, 1),
(382, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '177.222.62.37', 1595806976, 1),
(383, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.13', 1595809166, 1),
(384, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.162.226', 1595812636, 1),
(385, 'El usuario admin: Registro app\\models\\User[30].', 'create', 'app\\models\\User', 30, '181.114.127.121', 1595812740, 1),
(386, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.114.127.121', 1595813531, 1),
(387, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '181.114.127.121', 1595813544, 30),
(388, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '181.114.127.121', 1595814393, 30),
(389, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.127.121', 1595814405, 1),
(390, 'El usuario admin: Registro app\\models\\User[31].', 'create', 'app\\models\\User', 31, '181.114.127.121', 1595814565, 1),
(391, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.114.127.121', 1595814571, 1),
(392, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '181.114.127.121', 1595814586, 31),
(393, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595814708, 1),
(394, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '181.114.127.121', 1595815552, 31),
(395, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '181.114.127.121', 1595815610, 30),
(396, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '181.114.127.121', 1595815979, 30),
(397, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.127.121', 1595816004, 1),
(398, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.114.127.121', 1595816089, 1),
(399, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.162.226', 1595819047, 1),
(400, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595866928, 1),
(401, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '132.251.253.178', 1595867376, 1),
(402, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 29, '132.251.253.178', 1595867387, 29),
(403, 'Salio del sistema', 'logout', 'app\\models\\User', 29, '132.251.253.178', 1595867795, 29),
(404, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595867806, 1),
(405, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1595891125, 1),
(406, 'El usuario admin: Registro app\\models\\User[32].', 'create', 'app\\models\\User', 32, '200.58.77.44', 1595891178, 1),
(407, 'El usuario admin: Registro app\\models\\User[33].', 'create', 'app\\models\\User', 33, '200.58.77.44', 1595891252, 1),
(408, 'El usuario admin: Registro app\\models\\User[34].', 'create', 'app\\models\\User', 34, '200.58.77.44', 1595891341, 1),
(409, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1595891357, 1),
(410, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1595891383, 30),
(411, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1595891424, 30),
(412, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 33, '200.58.77.44', 1595891435, 33),
(413, 'Salio del sistema', 'logout', 'app\\models\\User', 33, '200.58.77.44', 1595891439, 33),
(414, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1595891450, 34),
(415, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1595891454, 34),
(416, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1595891464, 32),
(417, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1595892337, 32),
(418, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1595892353, 1),
(419, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595900238, 1),
(420, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1595905518, 1),
(421, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.124.217', 1595907331, 1),
(422, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.13', 1595947896, 1),
(423, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1595973660, 30),
(424, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1595973842, 32),
(425, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1595973993, 32),
(426, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1595974005, 31),
(427, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1595974320, 31),
(428, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1595974342, 30),
(429, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1595974534, 30),
(430, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1595974544, 31),
(431, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '181.114.124.82', 1595982654, 34),
(432, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1595982696, 30),
(433, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 33, '181.188.162.226', 1595982707, 33),
(434, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '181.177.173.121', 1595982741, 32),
(435, 'Salio del sistema', 'logout', 'app\\models\\User', 33, '200.58.77.44', 1596031924, 33),
(436, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 33, '161.138.8.55', 1596032004, 33),
(437, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596032028, 32),
(438, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596037578, 32),
(439, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596039427, 32),
(440, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596039888, 32),
(441, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596039906, 31),
(442, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1596040550, 31),
(443, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596040556, 32),
(444, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596042519, 31),
(445, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596044601, 1),
(446, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596045294, 32),
(447, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596046341, 32),
(448, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596046797, 32),
(449, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596046807, 31),
(450, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1596048159, 31),
(451, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596048178, 32),
(452, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '181.188.162.226', 1596068999, 32),
(453, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.181', 1596123724, 1),
(454, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.115.249.181', 1596126520, 1),
(455, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.181', 1596126531, 1),
(456, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.115.249.181', 1596126554, 1),
(457, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 28, '181.115.249.181', 1596126561, 28),
(458, 'Salio del sistema', 'logout', 'app\\models\\User', 28, '181.115.249.181', 1596126593, 28),
(459, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.115.249.181', 1596126600, 1),
(460, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.115.249.181', 1596126671, 1),
(461, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 24, '181.115.249.181', 1596126675, 24),
(462, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '132.251.253.178', 1596127287, 1),
(463, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 25, '132.251.253.178', 1596127296, 25),
(464, 'Salio del sistema', 'logout', 'app\\models\\User', 25, '132.251.253.178', 1596127349, 25),
(465, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.253.178', 1596127358, 1),
(466, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.162.226', 1596157070, 1),
(467, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '181.188.162.226', 1596157332, 32),
(468, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.188.162.226', 1596157341, 1),
(469, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.188.162.226', 1596157440, 1),
(470, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '181.188.162.226', 1596157454, 31),
(471, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596235738, 32),
(472, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596235846, 32),
(473, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596235851, 32),
(474, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596236026, 32),
(475, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596236046, 31),
(476, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.250.217', 1596305151, 1),
(477, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '132.251.250.217', 1596306189, 1),
(478, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 24, '132.251.250.217', 1596306207, 24),
(479, 'Salio del sistema', 'logout', 'app\\models\\User', 24, '132.251.250.217', 1596306222, 24),
(480, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.250.217', 1596306228, 1),
(481, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '132.251.250.217', 1596306239, 1),
(482, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 29, '132.251.250.217', 1596306250, 29),
(483, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1596319769, 31),
(484, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596319779, 1),
(485, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596321052, 1),
(486, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596321065, 31),
(487, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1596376800, 30),
(488, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596376812, 1),
(489, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596378182, 1),
(490, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596378441, 1),
(491, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1596378458, 30),
(492, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1596378716, 30),
(493, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596378723, 1),
(494, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596378753, 1),
(495, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596378763, 31),
(496, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1596379218, 31),
(497, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596379226, 1),
(498, 'El usuario admin: Registro app\\models\\User[35].', 'create', 'app\\models\\User', 35, '200.58.77.44', 1596379314, 1),
(499, 'El usuario admin: Registro app\\models\\User[36].', 'create', 'app\\models\\User', 36, '200.58.77.44', 1596379380, 1);
INSERT INTO `trails_log` (`id`, `description`, `action`, `model`, `id_model`, `ip`, `creation_date`, `user_id`) VALUES
(500, 'El usuario admin: Registro app\\models\\User[37].', 'create', 'app\\models\\User', 37, '200.58.77.44', 1596379570, 1),
(501, 'El usuario admin: Registro app\\models\\User[38].', 'create', 'app\\models\\User', 38, '200.58.77.44', 1596379800, 1),
(502, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596380560, 1),
(503, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596380565, 34),
(504, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1596380623, 34),
(505, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596380638, 37),
(506, 'Salio del sistema', 'logout', 'app\\models\\User', 37, '200.58.77.44', 1596380723, 37),
(507, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596380731, 34),
(508, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1596380794, 34),
(509, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596380815, 37),
(510, 'Salio del sistema', 'logout', 'app\\models\\User', 37, '200.58.77.44', 1596380985, 37),
(511, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596380997, 1),
(512, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596381090, 1),
(513, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596381096, 34),
(514, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1596381216, 34),
(515, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596381239, 31),
(516, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1596381310, 31),
(517, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1596382276, 30),
(518, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1596382583, 30),
(519, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596382603, 37),
(520, 'Salio del sistema', 'logout', 'app\\models\\User', 31, '200.58.77.44', 1596384697, 31),
(521, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596384720, 1),
(522, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596386601, 1),
(523, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596386618, 32),
(524, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596386673, 32),
(525, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596386688, 37),
(526, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.250.217', 1596387702, 1),
(527, 'Salio del sistema', 'logout', 'app\\models\\User', 37, '200.58.77.44', 1596388080, 37),
(528, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596388090, 1),
(529, 'El usuario admin: Registro app\\models\\User[39].', 'create', 'app\\models\\User', 39, '200.58.77.44', 1596388154, 1),
(530, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596388249, 1),
(531, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596388282, 32),
(532, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596388368, 32),
(533, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '200.58.77.44', 1596388379, 39),
(534, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '132.251.250.217', 1596390344, 1),
(535, 'El usuario admin: Registro app\\models\\User[40].', 'create', 'app\\models\\User', 40, '200.58.77.44', 1596403178, 1),
(536, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 40, '200.58.77.44', 1596403213, 40),
(537, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596403293, 1),
(538, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596403307, 32),
(539, 'Salio del sistema', 'logout', 'app\\models\\User', 40, '200.58.77.44', 1596405313, 40),
(540, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596405322, 1),
(541, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596405453, 1),
(542, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596405465, 31),
(543, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596410403, 37),
(544, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596410663, 1),
(545, 'Salio del sistema', 'logout', 'app\\models\\User', 32, '200.58.77.44', 1596414898, 32),
(546, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596414910, 1),
(547, 'El usuario admin: Registro app\\models\\User[41].', 'create', 'app\\models\\User', 41, '200.58.77.44', 1596415020, 1),
(548, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596415576, 1),
(549, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '200.58.77.44', 1596415594, 39),
(550, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 41, '200.58.77.44', 1596415690, 41),
(551, 'Salio del sistema', 'logout', 'app\\models\\User', 39, '200.58.77.44', 1596415730, 39),
(552, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1596415749, 30),
(553, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596415946, 32),
(554, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '200.58.77.44', 1596416338, 39),
(555, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1596416560, 34),
(556, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '200.58.77.44', 1596416582, 30),
(557, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596416611, 34),
(558, 'Salio del sistema', 'logout', 'app\\models\\User', 39, '200.58.77.44', 1596416963, 39),
(559, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '200.58.77.44', 1596416983, 39),
(560, 'Salio del sistema', 'logout', 'app\\models\\User', 39, '200.58.77.44', 1596417013, 39),
(561, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596417169, 31),
(562, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '181.177.151.225', 1596460779, 39),
(563, 'Salio del sistema', 'logout', 'app\\models\\User', 39, '181.177.151.225', 1596460825, 39),
(564, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596461726, 1),
(565, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '200.58.77.44', 1596463800, 39),
(566, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596464659, 32),
(567, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 30, '181.114.126.114', 1596464996, 30),
(568, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1596465140, 30),
(569, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '200.58.77.44', 1596465153, 39),
(570, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 39, '181.115.135.135', 1596465625, 39),
(571, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 31, '200.58.77.44', 1596466082, 31),
(572, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 40, '200.58.77.44', 1596466292, 40),
(573, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596467736, 1),
(574, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.122.205', 1596470261, 1),
(575, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 40, '200.58.77.44', 1596471068, 40),
(576, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1596481176, 30),
(577, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596481193, 1),
(578, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596483776, 1),
(579, 'El usuario admin: Registro app\\models\\User[42].', 'create', 'app\\models\\User', 42, '200.58.77.44', 1596484030, 1),
(580, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596484033, 1),
(581, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596484082, 1),
(582, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596484126, 1),
(583, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596484128, 1),
(584, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 42, '200.58.77.44', 1596484146, 42),
(585, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 38, '181.114.126.10', 1596484555, 38),
(586, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 38, '177.222.36.89', 1596507504, 38),
(587, 'Salio del sistema', 'logout', 'app\\models\\User', 30, '200.58.77.44', 1596550221, 30),
(588, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596550351, 34),
(589, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1596553231, 34),
(590, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596553290, 34),
(591, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.124.1', 1596555738, 1),
(592, 'Salio del sistema', 'logout', 'app\\models\\User', 37, '200.58.77.44', 1596563101, 37),
(593, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '200.58.77.44', 1596563107, 1),
(594, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.124.1', 1596564095, 1),
(595, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.114.124.1', 1596564501, 1),
(596, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 40, '181.114.124.1', 1596564515, 40),
(597, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '200.58.77.44', 1596564589, 1),
(598, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 40, '200.58.77.44', 1596564601, 40),
(599, 'Salio del sistema', 'logout', 'app\\models\\User', 40, '200.58.77.44', 1596564616, 40),
(600, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596564624, 37),
(601, 'Salio del sistema', 'logout', 'app\\models\\User', 37, '200.58.77.44', 1596564776, 37),
(602, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 38, '181.188.165.244', 1596567303, 38),
(603, 'Salio del sistema', 'logout', 'app\\models\\User', 34, '200.58.77.44', 1596575090, 34),
(604, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '200.58.77.44', 1596575595, 34),
(605, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 37, '200.58.77.44', 1596578266, 37),
(606, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '190.107.48.255', 1596584431, 1),
(607, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '186.2.4.77', 1596630537, 34),
(608, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 32, '200.58.77.44', 1596640058, 32),
(609, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '181.177.152.214', 1596640873, 34),
(610, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 38, '181.188.165.244', 1596642386, 38),
(611, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 1, '181.114.122.237', 1596655354, 1),
(612, 'Ingreso al sistema', 'login', 'mdm\\admin\\models\\User', 34, '181.177.152.214', 1596665209, 34),
(613, 'Salio del sistema', 'logout', 'app\\models\\User', 1, '181.177.132.42', 1596680220, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `sucursal_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `rol`, `status`, `created_at`, `updated_at`, `sucursal_id`) VALUES
(1, 'admin', 'gLQrZjrqpehandifWOHefcoB-0yg762j', '$2y$13$DDOkriGRphO93Wqe6ABzyOSEeC3NV.GZRzGuhaxADB07d5iyLToXO', NULL, 'admin@rnovaacademy.com', 'admin', 10, 1575585349, 1575585349, 1),
(24, 'usuario1', 'DIUe_jw7O9te0BpAg4skqjxTCT7fZi_e', '$2y$13$1XjQMG4r13bwRbP94uTpPetQvE7qYDsxK0V0pYhH/97rbQKDT3BYK', NULL, 'usuario1@ferca.com', 'sucursal', 10, 1595803073, 1595803073, 2),
(25, 'usuario2', 'yhlWrgvbyCfNsT6FoAu-4QV8rpRvO2Kx', '$2y$13$ZlSydD65ClW6T6I1nLXtVOVzmlmLAe2X7bJjt3A0.caEfgOQg6mUa', NULL, 'usuario2@ferca.com', 'sucursal', 10, 1595803129, 1595803129, 3),
(26, 'usuario3', 'AsAi9JVFR6QaxLw0AOXVdIWKgZq_l9BP', '$2y$13$tFYZgvJu1Ty6cDljRbAWnejMSdFy/g9OT5NZCfRsvNgd8xHCOuanq', NULL, 'usuario3@ferca.com', 'sucursal', 10, 1595803161, 1595803161, 4),
(27, 'usuario4', '8GsNetlQ4EiO9s7m2Cit-7VS2h-bsrhZ', '$2y$13$hqG0IXtHC2MFkgie8qwsBelhRGGEyl9B/x99xtBHdGJ24lwVoLvMK', NULL, 'usuario4@ferca.com', 'sucursal', 10, 1595803206, 1595803206, 5),
(28, 'usuario5', 'tiNcAAdXALljYZ38MMh6ydjlIycZtrH1', '$2y$13$RiJ9BomAeRozu3tkgcSQ9.7N56PzfzAtdfYV84iJys28Z7P07iO/G', NULL, 'usuario5@ferca.com', 'sucursal', 10, 1595803243, 1595803243, 14),
(29, 'callcenter', 'o5LHj_crUPAgNAcZiGmvC9F9yYeJDHr2', '$2y$13$xHV8N6BiBTc27ixCRtCzWeNptkIL76D9i0wAuIW98O16UugMBN/HO', NULL, 'callcenter@ferca.com', 'call_center', 10, 1595803286, 1595803286, NULL),
(30, 'jimena', 'JXch--QuMkEmNIeNSpaR-Nw706J0Z_xU', '$2y$13$JnQVMZRDWaSp9nugeRT76.HWt/K92fW6KD22fo8q4r/y4Or0hZqza', NULL, 'jimena@ferca.com.bo', 'call_center', 10, 1595812740, 1595812740, NULL),
(31, 'galindo', '9EGGT6nZkFbbsGr2pJqIpR0vslAXjtrx', '$2y$13$5ucdAGOJrlwZFPrJuw5jG.S6RGy15Tru2//TVOA6Wi5oiPcx2Eyyi', NULL, 'galindo@ferca.com.bo', 'sucursal', 10, 1595814565, 1595814565, 3),
(32, 'mauricio', 'ZmCzm8hhyIRpQpcSqxhHRecZfQPcpTQ9', '$2y$13$dWswRNihtVnZiA8TuaPF8eWixS1tixVSfFcMRTPrpTMakHJ/cftNS', NULL, 'mauricio@ferca.com.bo', 'call_center', 10, 1595891178, 1595891178, NULL),
(33, 'carlos', 'nF0qBzLWlYHJtA-DJf-ORBggDc6mXFeQ', '$2y$13$BUgjhj3eWMHesFw90ck5BOX3zUZR7oD4BN8MTKSj1inTliVcv/Pc2', NULL, 'mendez@ferca.com.bo', 'call_center', 10, 1595891252, 1595891252, NULL),
(34, 'cristhian', 'v1lzMtl7_anDYdF2x_9FgkRQFf4_UZC0', '$2y$13$nvKyg4TUpJ2g1YQRCI.8K.frhz19wK6VRlJ7D8FnJi2p/Zhm0/dce', NULL, 'cristhian@ferca.com.bo', 'call_center', 10, 1595891341, 1595891341, NULL),
(35, 'danielerick', 'hal_ZeiNuSs2gYD_23whF83cV_FAxxCo', '$2y$13$7MlQRY6mm1o0w0O9lUv44uyp6og4tLqbTtBgynywsGhsydQJRc./K', NULL, 'chuquimia.d@gmail.com', 'administrador', 10, 1596379314, 1596379314, NULL),
(36, 'karen', 'OfUcQR119h-gDdRHkXbYa3UFEZBkvJ_6', '$2y$13$MVt72qlCJv5SKlsQHKo01OXHG.qDFf3KZN9kdLmOOM6Cq2Ax4/zoW', NULL, 'karen@ferca.com.bo', 'call_center', 10, 1596379380, 1596379380, NULL),
(37, 'santacruz', '3_d2W5Ka9lu4zW4QocJ7Tls-b0-odLrB', '$2y$13$L0hqy7D3qGkCLfsTh6bd/ufQJPQJHDVgblEtDxUAdHRFbjFBI44rm', NULL, 'santacruz@ferca.com.bo', 'sucursal', 10, 1596379570, 1596379570, 5),
(38, 'icnorte', 'yg7H1u9PL_rSMI8WahwR4gy9famjgq1o', '$2y$13$8EHiPkjSA592m2bwUUffoeDwFCiy.6PBFe0IGJn.pGCG2XRsJG5m.', NULL, 'icnorte@megusta.com', 'sucursal', 10, 1596379800, 1596379800, 15),
(39, 'SUD', 'Q0Ns0J-WiwMi786djadWwHiQXMSnKr6f', '$2y$13$DQTQH42Pa/0nPRi6eH60veQOp8jG5/.J1WeWy5leKAAbaR0762qFK', NULL, 'sud@ferca.com.bo', 'sucursal', 10, 1596388154, 1596388154, 4),
(40, 'Villazon', 'X6zMD-efJMs0ADUaqfXGmd3Ibewr_leF', '$2y$13$PILkZ00mSW2Rq4auHvaxDeT7SFw8u5V0xdvhgrbEDjwAiAwyLgDR.', NULL, 'villazon@ferca.com.bo', 'sucursal', 10, 1596403178, 1596403178, 2),
(41, 'sacaba', 'qesrxg0FlGcom4W-S-wU05WeNPsl1A6c', '$2y$13$..40G94sd5nSti36z7kBzu2UiyMEeuOgFtN18M9d8SpsR3jf95hI.', NULL, 'sacaba@ferca.com.bo', 'sucursal', 10, 1596415020, 1596415020, 14),
(42, 'ICENORTE', 'eMb63csAdI5K64QJXWXbrqnwqci_rMZ7', '$2y$13$jHJzG8siwv3oYzTtHBZYN.N.FeB7Y0EfoXzk1Tlvp8iY6LfW.MYKy', NULL, 'icenorte@megusta.com', 'sucursal', 10, 1596484030, 1596484030, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asignacion_moto`
--
ALTER TABLE `asignacion_moto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `beneficio`
--
ALTER TABLE `beneficio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoria_souvenir`
--
ALTER TABLE `categoria_souvenir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filosofia`
--
ALTER TABLE `filosofia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historia_img`
--
ALTER TABLE `historia_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagen_paquete`
--
ALTER TABLE `imagen_paquete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_imagen_paquete_paquete1_idx` (`paquete_id`);

--
-- Indexes for table `imagen_souvenir`
--
ALTER TABLE `imagen_souvenir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_imagen_souvenir_souvenir1_idx` (`souvenir_id`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_paquete_categoria1_idx` (`categoria_id`);

--
-- Indexes for table `pcounter_save`
--
ALTER TABLE `pcounter_save`
  ADD PRIMARY KEY (`save_name`);

--
-- Indexes for table `pcounter_users`
--
ALTER TABLE `pcounter_users`
  ADD PRIMARY KEY (`user_ip`);

--
-- Indexes for table `pedido_delivery`
--
ALTER TABLE `pedido_delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_delivery_producto1_idx` (`producto_id`),
  ADD KEY `fk_pedido_delivery_precio_delivery1_idx` (`precio_delivery_id`),
  ADD KEY `fk_pedido_delivery_sucursal_delivery1_idx` (`sucursal_delivery_id`),
  ADD KEY `fk_pedido_delivery_tipo_pedido1_idx` (`tipo_pedido_id`);

--
-- Indexes for table `pedido_delivery_detalle`
--
ALTER TABLE `pedido_delivery_detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precio_coordinates`
--
ALTER TABLE `precio_coordinates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `precio_delivery`
--
ALTER TABLE `precio_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria_producto1_idx` (`categoria_producto_id`);

--
-- Indexes for table `relacionados`
--
ALTER TABLE `relacionados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_relacionados_paquete1_idx` (`paquete_id`),
  ADD KEY `fk_relacionados_paquete2_idx` (`paquete_relacionado_id`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reserva_Cliente1_idx` (`Cliente_id`),
  ADD KEY `fk_reserva_paquete1_idx` (`paquete_id`);

--
-- Indexes for table `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `souvenir`
--
ALTER TABLE `souvenir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_souvenir_categoria_souvenir1_idx` (`categoria_souvenir_id`);

--
-- Indexes for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sucursal_delivery`
--
ALTER TABLE `sucursal_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonio`
--
ALTER TABLE `testimonio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_pedido`
--
ALTER TABLE `tipo_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trails_log`
--
ALTER TABLE `trails_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `asignacion_moto`
--
ALTER TABLE `asignacion_moto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `beneficio`
--
ALTER TABLE `beneficio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categoria_souvenir`
--
ALTER TABLE `categoria_souvenir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filosofia`
--
ALTER TABLE `filosofia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `historia`
--
ALTER TABLE `historia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `historia_img`
--
ALTER TABLE `historia_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `imagen_paquete`
--
ALTER TABLE `imagen_paquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `imagen_souvenir`
--
ALTER TABLE `imagen_souvenir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `paquete`
--
ALTER TABLE `paquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pedido_delivery`
--
ALTER TABLE `pedido_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `pedido_delivery_detalle`
--
ALTER TABLE `pedido_delivery_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT for table `precio_coordinates`
--
ALTER TABLE `precio_coordinates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1067;

--
-- AUTO_INCREMENT for table `precio_delivery`
--
ALTER TABLE `precio_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `relacionados`
--
ALTER TABLE `relacionados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `souvenir`
--
ALTER TABLE `souvenir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sucursal_delivery`
--
ALTER TABLE `sucursal_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `testimonio`
--
ALTER TABLE `testimonio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_pedido`
--
ALTER TABLE `tipo_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trails_log`
--
ALTER TABLE `trails_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `imagen_paquete`
--
ALTER TABLE `imagen_paquete`
  ADD CONSTRAINT `fk_imagen_paquete_paquete1` FOREIGN KEY (`paquete_id`) REFERENCES `paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `imagen_souvenir`
--
ALTER TABLE `imagen_souvenir`
  ADD CONSTRAINT `fk_imagen_souvenir_souvenir1` FOREIGN KEY (`souvenir_id`) REFERENCES `souvenir` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `paquete`
--
ALTER TABLE `paquete`
  ADD CONSTRAINT `fk_paquete_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pedido_delivery`
--
ALTER TABLE `pedido_delivery`
  ADD CONSTRAINT `fk_pedido_delivery_precio_delivery1` FOREIGN KEY (`precio_delivery_id`) REFERENCES `precio_delivery` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_delivery_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_delivery_sucursal_delivery1` FOREIGN KEY (`sucursal_delivery_id`) REFERENCES `sucursal_delivery` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_delivery_tipo_pedido1` FOREIGN KEY (`tipo_pedido_id`) REFERENCES `tipo_pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria_producto1` FOREIGN KEY (`categoria_producto_id`) REFERENCES `categoria_producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `relacionados`
--
ALTER TABLE `relacionados`
  ADD CONSTRAINT `fk_relacionados_paquete1` FOREIGN KEY (`paquete_id`) REFERENCES `paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relacionados_paquete2` FOREIGN KEY (`paquete_relacionado_id`) REFERENCES `paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_reserva_Cliente1` FOREIGN KEY (`Cliente_id`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reserva_paquete1` FOREIGN KEY (`paquete_id`) REFERENCES `paquete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `souvenir`
--
ALTER TABLE `souvenir`
  ADD CONSTRAINT `fk_souvenir_categoria_souvenir1` FOREIGN KEY (`categoria_souvenir_id`) REFERENCES `categoria_souvenir` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
