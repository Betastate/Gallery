-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 22, 2022 at 04:29 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `deleted_images`
--

DROP TABLE IF EXISTS `deleted_images`;
CREATE TABLE IF NOT EXISTS `deleted_images` (
  `id` int(11) NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_added` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deleted_images`
--

INSERT INTO `deleted_images` (`id`, `url`, `thumbnail`, `time_added`) VALUES
(82, 'files/7321cb797ef5e75206d3b8d604c3d759/Lower Compound Orbit DJI_0801.JPG', 'files/7321cb797ef5e75206d3b8d604c3d759/Lower Compound Orbit DJI_0801_thumbnail.jpg', '2022-09-22 17:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `thumbnail`, `time_added`) VALUES
(1, 'files/b64b132023dabb1058bd1f9998395669/Access Road DJI_0830.JPG', 'files/b64b132023dabb1058bd1f9998395669/Access Road DJI_0830_thumbnail.jpg', '2022-09-22 17:27:39'),
(2, 'files/6eefecd06577f53cbb953add69cf1ed2/Access Road DJI_0833.JPG', 'files/6eefecd06577f53cbb953add69cf1ed2/Access Road DJI_0833_thumbnail.jpg', '2022-09-22 17:36:18'),
(3, 'files/23d1033f409d58706d175bab37869361/Access Road DJI_0831.JPG', 'files/23d1033f409d58706d175bab37869361/Access Road DJI_0831_thumbnail.jpg', '2022-09-22 17:36:18'),
(4, 'files/2b26ddd6b085322dcd8762e0082ff961/Access Road DJI_0836.JPG', 'files/2b26ddd6b085322dcd8762e0082ff961/Access Road DJI_0836_thumbnail.jpg', '2022-09-22 17:36:18'),
(5, 'files/058eca769c45b18995294a593e5c5d85/Access Road DJI_0834.JPG', 'files/058eca769c45b18995294a593e5c5d85/Access Road DJI_0834_thumbnail.jpg', '2022-09-22 17:36:18'),
(6, 'files/465bfa7325d2a7dbb94015972ee5cdfb/Access Road DJI_0835.JPG', 'files/465bfa7325d2a7dbb94015972ee5cdfb/Access Road DJI_0835_thumbnail.jpg', '2022-09-22 17:36:18'),
(7, 'files/97ed8f9627313589cb4c067619dd15cb/Access Road DJI_0832.JPG', 'files/97ed8f9627313589cb4c067619dd15cb/Access Road DJI_0832_thumbnail.jpg', '2022-09-22 17:36:18'),
(8, 'files/a2de29f81443d30fe2eaea58a7a8f339/Access Road DJI_0837.JPG', 'files/a2de29f81443d30fe2eaea58a7a8f339/Access Road DJI_0837_thumbnail.jpg', '2022-09-22 17:36:18'),
(9, 'files/f7cc26bdffcfb9ada2c11d94e5c5d254/Access Road DJI_0838.JPG', 'files/f7cc26bdffcfb9ada2c11d94e5c5d254/Access Road DJI_0838_thumbnail.jpg', '2022-09-22 17:36:18'),
(10, 'files/914f14141cc21b4f565688cd445d84dd/Access Road DJI_0839.JPG', 'files/914f14141cc21b4f565688cd445d84dd/Access Road DJI_0839_thumbnail.jpg', '2022-09-22 17:36:18'),
(11, 'files/e4391ac404c86c3b3c6b01054e27b8e7/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0009.JPG', 'files/e4391ac404c86c3b3c6b01054e27b8e7/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0009_thumbnail.jpg', '2022-09-22 17:36:40'),
(12, 'files/8268247c945f8c3b6aeacd9071171f68/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0011.JPG', 'files/8268247c945f8c3b6aeacd9071171f68/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0011_thumbnail.jpg', '2022-09-22 17:36:40'),
(13, 'files/10882f26144164a100fb08e7683eed2c/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0012.JPG', 'files/10882f26144164a100fb08e7683eed2c/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0012_thumbnail.jpg', '2022-09-22 17:36:40'),
(14, 'files/834efeed9919f7fb1914464d101ac6d1/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0010.JPG', 'files/834efeed9919f7fb1914464d101ac6d1/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0010_thumbnail.jpg', '2022-09-22 17:36:40'),
(15, 'files/de99eae644b25d4b94ea274099e85a4e/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0008.JPG', 'files/de99eae644b25d4b94ea274099e85a4e/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0008_thumbnail.jpg', '2022-09-22 17:36:40'),
(16, 'files/6913a2dd674be2f4d0b2dea4d5755450/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0013.JPG', 'files/6913a2dd674be2f4d0b2dea4d5755450/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0013_thumbnail.jpg', '2022-09-22 17:36:40'),
(17, 'files/7cd1c2760644f3bde563ea96ac2dc6af/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0014.JPG', 'files/7cd1c2760644f3bde563ea96ac2dc6af/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0014_thumbnail.jpg', '2022-09-22 17:36:40'),
(18, 'files/1ae941fc0fe568b56058dd517c782af7/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0015.JPG', 'files/1ae941fc0fe568b56058dd517c782af7/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0015_thumbnail.jpg', '2022-09-22 17:36:40'),
(19, 'files/22eed46082b1006541dd57b75b5f92e7/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0017.JPG', 'files/22eed46082b1006541dd57b75b5f92e7/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0017_thumbnail.jpg', '2022-09-22 17:36:40'),
(20, 'files/c56d7ae15473707b514344c451a491ab/Lower Compound Orbit DJI_0740.JPG', 'files/c56d7ae15473707b514344c451a491ab/Lower Compound Orbit DJI_0740_thumbnail.jpg', '2022-09-22 17:36:40'),
(21, 'files/d5cb149407c2a75119061ebd7622f61f/Lower Compound Orbit DJI_0741.JPG', 'files/d5cb149407c2a75119061ebd7622f61f/Lower Compound Orbit DJI_0741_thumbnail.jpg', '2022-09-22 17:36:40'),
(22, 'files/c0abe51134da02dfbe27954892f4f65b/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0016.JPG', 'files/c0abe51134da02dfbe27954892f4f65b/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0016_thumbnail.jpg', '2022-09-22 17:36:40'),
(23, 'files/87013297b23605d4c50af511517d4624/Lower Compound Orbit DJI_0743.JPG', 'files/87013297b23605d4c50af511517d4624/Lower Compound Orbit DJI_0743_thumbnail.jpg', '2022-09-22 17:36:40'),
(24, 'files/1f1ceb60fd2812a18f8314c2ca19714b/Lower Compound Orbit DJI_0742.JPG', 'files/1f1ceb60fd2812a18f8314c2ca19714b/Lower Compound Orbit DJI_0742_thumbnail.jpg', '2022-09-22 17:36:40'),
(25, 'files/055cba68f54fec54bf0ffa941b428fbd/Lower Compound Orbit DJI_0744.JPG', 'files/055cba68f54fec54bf0ffa941b428fbd/Lower Compound Orbit DJI_0744_thumbnail.jpg', '2022-09-22 17:36:40'),
(26, 'files/a504a37e4d191966653195e11fc553cd/Lower Compound Orbit DJI_0746.JPG', 'files/a504a37e4d191966653195e11fc553cd/Lower Compound Orbit DJI_0746_thumbnail.jpg', '2022-09-22 17:36:40'),
(27, 'files/3f5a6db63d20c291868e3aa74067f9cf/Lower Compound Orbit DJI_0745.JPG', 'files/3f5a6db63d20c291868e3aa74067f9cf/Lower Compound Orbit DJI_0745_thumbnail.jpg', '2022-09-22 17:36:40'),
(28, 'files/8e4dbb86d560dad257d69864b6098292/Lower Compound Orbit DJI_0747.JPG', 'files/8e4dbb86d560dad257d69864b6098292/Lower Compound Orbit DJI_0747_thumbnail.jpg', '2022-09-22 17:36:40'),
(29, 'files/159e5f99f18e744db2165758adb7823b/Lower Compound Orbit DJI_0748.JPG', 'files/159e5f99f18e744db2165758adb7823b/Lower Compound Orbit DJI_0748_thumbnail.jpg', '2022-09-22 17:36:41'),
(30, 'files/27a50f648eae2337788a6fbd3b693dbd/Lower Compound Orbit DJI_0749.JPG', 'files/27a50f648eae2337788a6fbd3b693dbd/Lower Compound Orbit DJI_0749_thumbnail.jpg', '2022-09-22 17:36:41'),
(31, 'files/692b57ef70df48445203ccf59f330a5a/Lower Compound Orbit DJI_0750.JPG', 'files/692b57ef70df48445203ccf59f330a5a/Lower Compound Orbit DJI_0750_thumbnail.jpg', '2022-09-22 17:36:41'),
(32, 'files/966611a268e9de3a1409c0bd44d6a13c/Lower Compound Orbit DJI_0751.JPG', 'files/966611a268e9de3a1409c0bd44d6a13c/Lower Compound Orbit DJI_0751_thumbnail.jpg', '2022-09-22 17:36:41'),
(33, 'files/5015764ef46dad880c0807a3ef0b8e9e/Lower Compound Orbit DJI_0752.JPG', 'files/5015764ef46dad880c0807a3ef0b8e9e/Lower Compound Orbit DJI_0752_thumbnail.jpg', '2022-09-22 17:36:41'),
(34, 'files/421574d2d83bd5955437bb2aea35e829/Lower Compound Orbit DJI_0753.JPG', 'files/421574d2d83bd5955437bb2aea35e829/Lower Compound Orbit DJI_0753_thumbnail.jpg', '2022-09-22 17:36:41'),
(35, 'files/508d2d390f7dc21d574eb721f9e6bd73/Lower Compound Orbit DJI_0755.JPG', 'files/508d2d390f7dc21d574eb721f9e6bd73/Lower Compound Orbit DJI_0755_thumbnail.jpg', '2022-09-22 17:36:41'),
(36, 'files/330bb0e0885f39d6cf4930f8922017cb/Lower Compound Orbit DJI_0754.JPG', 'files/330bb0e0885f39d6cf4930f8922017cb/Lower Compound Orbit DJI_0754_thumbnail.jpg', '2022-09-22 17:36:41'),
(37, 'files/18597fcf7ff711ad4b3798665e027e3e/Lower Compound Orbit DJI_0757.JPG', 'files/18597fcf7ff711ad4b3798665e027e3e/Lower Compound Orbit DJI_0757_thumbnail.jpg', '2022-09-22 17:36:41'),
(38, 'files/6d4a965b4197b0013f5e25cc84c7444a/Lower Compound Orbit DJI_0756.JPG', 'files/6d4a965b4197b0013f5e25cc84c7444a/Lower Compound Orbit DJI_0756_thumbnail.jpg', '2022-09-22 17:36:41'),
(39, 'files/3e8ca7eded05f1ec0679455f06367651/Lower Compound Orbit DJI_0758.JPG', 'files/3e8ca7eded05f1ec0679455f06367651/Lower Compound Orbit DJI_0758_thumbnail.jpg', '2022-09-22 17:36:41'),
(40, 'files/9da287e645e9af7a05ecfba89260eb39/Lower Compound Orbit DJI_0759.JPG', 'files/9da287e645e9af7a05ecfba89260eb39/Lower Compound Orbit DJI_0759_thumbnail.jpg', '2022-09-22 17:36:41'),
(41, 'files/7dc648af665ba7ab5b5d33028717d067/Lower Compound Orbit DJI_0760.JPG', 'files/7dc648af665ba7ab5b5d33028717d067/Lower Compound Orbit DJI_0760_thumbnail.jpg', '2022-09-22 17:36:41'),
(42, 'files/b9314edb17d1db25fb857077b6795f04/Lower Compound Orbit DJI_0761.JPG', 'files/b9314edb17d1db25fb857077b6795f04/Lower Compound Orbit DJI_0761_thumbnail.jpg', '2022-09-22 17:36:41'),
(43, 'files/6915b6ac3f35b70f913ad9e853baba56/Lower Compound Orbit DJI_0762.JPG', 'files/6915b6ac3f35b70f913ad9e853baba56/Lower Compound Orbit DJI_0762_thumbnail.jpg', '2022-09-22 17:36:41'),
(44, 'files/773e134c0f3d1edc68d81c44beb3a86e/Lower Compound Orbit DJI_0764.JPG', 'files/773e134c0f3d1edc68d81c44beb3a86e/Lower Compound Orbit DJI_0764_thumbnail.jpg', '2022-09-22 17:36:41'),
(45, 'files/e4705465d84a213b08d74e70cf2620a1/Lower Compound Orbit DJI_0763.JPG', 'files/e4705465d84a213b08d74e70cf2620a1/Lower Compound Orbit DJI_0763_thumbnail.jpg', '2022-09-22 17:36:41'),
(46, 'files/c056de0e3e556a13ca0a3bdb56f3695f/Lower Compound Orbit DJI_0765.JPG', 'files/c056de0e3e556a13ca0a3bdb56f3695f/Lower Compound Orbit DJI_0765_thumbnail.jpg', '2022-09-22 17:36:41'),
(47, 'files/0612a28dcc54e85822b48644f8104a4b/Lower Compound Orbit DJI_0766.JPG', 'files/0612a28dcc54e85822b48644f8104a4b/Lower Compound Orbit DJI_0766_thumbnail.jpg', '2022-09-22 17:36:41'),
(48, 'files/48c9c4064206b0e87f44b2452dcddb17/Lower Compound Orbit DJI_0767.JPG', 'files/48c9c4064206b0e87f44b2452dcddb17/Lower Compound Orbit DJI_0767_thumbnail.jpg', '2022-09-22 17:36:42'),
(49, 'files/d9cc7526bdea61a3bcbec380fd6aabb1/Lower Compound Orbit DJI_0768.JPG', 'files/d9cc7526bdea61a3bcbec380fd6aabb1/Lower Compound Orbit DJI_0768_thumbnail.jpg', '2022-09-22 17:36:42'),
(50, 'files/6c7db1899019d5401ec0a12aaa2d6aff/Lower Compound Orbit DJI_0769.JPG', 'files/6c7db1899019d5401ec0a12aaa2d6aff/Lower Compound Orbit DJI_0769_thumbnail.jpg', '2022-09-22 17:36:42'),
(51, 'files/30b4e7dd985e9fad0b7d0707e71664bc/Lower Compound Orbit DJI_0770.JPG', 'files/30b4e7dd985e9fad0b7d0707e71664bc/Lower Compound Orbit DJI_0770_thumbnail.jpg', '2022-09-22 17:36:42'),
(52, 'files/468a004bb47a1a05f074acdc93af4074/Lower Compound Orbit DJI_0771.JPG', 'files/468a004bb47a1a05f074acdc93af4074/Lower Compound Orbit DJI_0771_thumbnail.jpg', '2022-09-22 17:36:42'),
(53, 'files/d98cc71d66cd0154add45a35de6f10d5/Lower Compound Orbit DJI_0773.JPG', 'files/d98cc71d66cd0154add45a35de6f10d5/Lower Compound Orbit DJI_0773_thumbnail.jpg', '2022-09-22 17:36:42'),
(54, 'files/b29ad291ce660ff65c1d5eeb596615df/Lower Compound Orbit DJI_0772.JPG', 'files/b29ad291ce660ff65c1d5eeb596615df/Lower Compound Orbit DJI_0772_thumbnail.jpg', '2022-09-22 17:36:42'),
(55, 'files/38b6a5793e0345fa0e6b5053dd4df241/Lower Compound Orbit DJI_0774.JPG', 'files/38b6a5793e0345fa0e6b5053dd4df241/Lower Compound Orbit DJI_0774_thumbnail.jpg', '2022-09-22 17:36:42'),
(56, 'files/690482ebfec0f927efb7a8f9e487928d/Lower Compound Orbit DJI_0775.JPG', 'files/690482ebfec0f927efb7a8f9e487928d/Lower Compound Orbit DJI_0775_thumbnail.jpg', '2022-09-22 17:36:42'),
(57, 'files/bb6d39a2fa64157e2fded0090e3b9d58/Lower Compound Orbit DJI_0776.JPG', 'files/bb6d39a2fa64157e2fded0090e3b9d58/Lower Compound Orbit DJI_0776_thumbnail.jpg', '2022-09-22 17:36:42'),
(58, 'files/2caaeabe275080d25cb769beef402f01/Lower Compound Orbit DJI_0777.JPG', 'files/2caaeabe275080d25cb769beef402f01/Lower Compound Orbit DJI_0777_thumbnail.jpg', '2022-09-22 17:36:42'),
(59, 'files/73ceff62f3579044dbcc526c6671ef2a/Lower Compound Orbit DJI_0778.JPG', 'files/73ceff62f3579044dbcc526c6671ef2a/Lower Compound Orbit DJI_0778_thumbnail.jpg', '2022-09-22 17:36:42'),
(60, 'files/d087769ad4b858ca6b02a783f8f245b0/Lower Compound Orbit DJI_0779.JPG', 'files/d087769ad4b858ca6b02a783f8f245b0/Lower Compound Orbit DJI_0779_thumbnail.jpg', '2022-09-22 17:36:42'),
(61, 'files/23dde372b9b1f445514855e5ad822a6c/Lower Compound Orbit DJI_0781.JPG', 'files/23dde372b9b1f445514855e5ad822a6c/Lower Compound Orbit DJI_0781_thumbnail.jpg', '2022-09-22 17:36:42'),
(62, 'files/782e8c3dd755e9b052bc5fc566c92427/Lower Compound Orbit DJI_0780.JPG', 'files/782e8c3dd755e9b052bc5fc566c92427/Lower Compound Orbit DJI_0780_thumbnail.jpg', '2022-09-22 17:36:42'),
(63, 'files/41520e614c57f740d03e530233c9cc7a/Lower Compound Orbit DJI_0782.JPG', 'files/41520e614c57f740d03e530233c9cc7a/Lower Compound Orbit DJI_0782_thumbnail.jpg', '2022-09-22 17:36:42'),
(64, 'files/a735fab36ba65fdf4b91d07ec6e88238/Lower Compound Orbit DJI_0783.JPG', 'files/a735fab36ba65fdf4b91d07ec6e88238/Lower Compound Orbit DJI_0783_thumbnail.jpg', '2022-09-22 17:36:42'),
(65, 'files/b762914bc66bbaf6ea5c35c5a4d643f8/Lower Compound Orbit DJI_0784.JPG', 'files/b762914bc66bbaf6ea5c35c5a4d643f8/Lower Compound Orbit DJI_0784_thumbnail.jpg', '2022-09-22 17:36:42'),
(66, 'files/14d1d1cc3b5014c1a9f1d9f2778c1113/Lower Compound Orbit DJI_0785.JPG', 'files/14d1d1cc3b5014c1a9f1d9f2778c1113/Lower Compound Orbit DJI_0785_thumbnail.jpg', '2022-09-22 17:36:42'),
(67, 'files/38fa83cbdc159d0002bc0ab3b9cc8ff1/Lower Compound Orbit DJI_0787.JPG', 'files/38fa83cbdc159d0002bc0ab3b9cc8ff1/Lower Compound Orbit DJI_0787_thumbnail.jpg', '2022-09-22 17:36:42'),
(68, 'files/e62fb3b3caac0f551d35a4385ed7ab56/Lower Compound Orbit DJI_0786.JPG', 'files/e62fb3b3caac0f551d35a4385ed7ab56/Lower Compound Orbit DJI_0786_thumbnail.jpg', '2022-09-22 17:36:42'),
(69, 'files/f2ae409f9ade1015aba2143f6d6345b6/Lower Compound Orbit DJI_0788.JPG', 'files/f2ae409f9ade1015aba2143f6d6345b6/Lower Compound Orbit DJI_0788_thumbnail.jpg', '2022-09-22 17:36:42'),
(70, 'files/bcf397639598aefa2c2c001ff8ed3b2e/Lower Compound Orbit DJI_0789.JPG', 'files/bcf397639598aefa2c2c001ff8ed3b2e/Lower Compound Orbit DJI_0789_thumbnail.jpg', '2022-09-22 17:36:42'),
(71, 'files/bc2d23eee036f0c6869b438d89baf02f/Lower Compound Orbit DJI_0790.JPG', 'files/bc2d23eee036f0c6869b438d89baf02f/Lower Compound Orbit DJI_0790_thumbnail.jpg', '2022-09-22 17:36:43'),
(72, 'files/00a70e4e0d17a305c092af39396d0d0f/Lower Compound Orbit DJI_0791.JPG', 'files/00a70e4e0d17a305c092af39396d0d0f/Lower Compound Orbit DJI_0791_thumbnail.jpg', '2022-09-22 17:36:43'),
(73, 'files/915368da072e476f3a09af34956d7c94/Lower Compound Orbit DJI_0792.JPG', 'files/915368da072e476f3a09af34956d7c94/Lower Compound Orbit DJI_0792_thumbnail.jpg', '2022-09-22 17:36:43'),
(74, 'files/94b7242c590d8e0b4a7437e0f8dbfde8/Lower Compound Orbit DJI_0794.JPG', 'files/94b7242c590d8e0b4a7437e0f8dbfde8/Lower Compound Orbit DJI_0794_thumbnail.jpg', '2022-09-22 17:36:43'),
(75, 'files/f390b8538928fc6c625ce17052aa144e/Lower Compound Orbit DJI_0793.JPG', 'files/f390b8538928fc6c625ce17052aa144e/Lower Compound Orbit DJI_0793_thumbnail.jpg', '2022-09-22 17:36:43'),
(76, 'files/e9f1ecd0b7261cd6bee11434ed7f47d0/Lower Compound Orbit DJI_0795.JPG', 'files/e9f1ecd0b7261cd6bee11434ed7f47d0/Lower Compound Orbit DJI_0795_thumbnail.jpg', '2022-09-22 17:36:43'),
(77, 'files/6f4a25dd62c8bc4b5c37a83a19611e08/Lower Compound Orbit DJI_0796.JPG', 'files/6f4a25dd62c8bc4b5c37a83a19611e08/Lower Compound Orbit DJI_0796_thumbnail.jpg', '2022-09-22 17:36:43'),
(78, 'files/7f621c8887d008483a5d00aef73657f6/Lower Compound Orbit DJI_0797.JPG', 'files/7f621c8887d008483a5d00aef73657f6/Lower Compound Orbit DJI_0797_thumbnail.jpg', '2022-09-22 17:36:43'),
(79, 'files/45c4bd04d7e59367edde4155d1a3ced6/Lower Compound Orbit DJI_0798.JPG', 'files/45c4bd04d7e59367edde4155d1a3ced6/Lower Compound Orbit DJI_0798_thumbnail.jpg', '2022-09-22 17:36:43'),
(80, 'files/49bd92862c538115b6cd88353d2017ac/Lower Compound Orbit DJI_0800.JPG', 'files/49bd92862c538115b6cd88353d2017ac/Lower Compound Orbit DJI_0800_thumbnail.jpg', '2022-09-22 17:36:43'),
(81, 'files/b8870481972fc6af1b021121f67f6cdb/Lower Compound Orbit DJI_0799.JPG', 'files/b8870481972fc6af1b021121f67f6cdb/Lower Compound Orbit DJI_0799_thumbnail.jpg', '2022-09-22 17:36:43'),
(83, 'files/c08d9d2c5e09a76b52bef0671f095946/Lower Compound Orbit DJI_0802.JPG', 'files/c08d9d2c5e09a76b52bef0671f095946/Lower Compound Orbit DJI_0802_thumbnail.jpg', '2022-09-22 17:36:43'),
(87, 'files/5487bd2362823bf55a4b2eb950107d86/Lower Compound Orbit DJI_0806.JPG', 'files/5487bd2362823bf55a4b2eb950107d86/Lower Compound Orbit DJI_0806_thumbnail.jpg', '2022-09-22 17:36:43'),
(89, 'files/04e15d4a12dd74343dbdffceacc1fbcc/Lower Compound Orbit DJI_0808.JPG', 'files/04e15d4a12dd74343dbdffceacc1fbcc/Lower Compound Orbit DJI_0808_thumbnail.jpg', '2022-09-22 17:36:43'),
(91, 'files/3c554440ece5cce069c0df3db907a9ae/Lower Compound Orbit DJI_0810.JPG', 'files/3c554440ece5cce069c0df3db907a9ae/Lower Compound Orbit DJI_0810_thumbnail.jpg', '2022-09-22 17:36:44'),
(95, 'files/ba5141a3eb194d4e7e83409511a55e98/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0001.JPG', 'files/ba5141a3eb194d4e7e83409511a55e98/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0001_thumbnail.jpg', '2022-09-22 17:36:44'),
(96, 'files/66bd0acb1fb2113d2b12e8dc98e9ac0a/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0003.JPG', 'files/66bd0acb1fb2113d2b12e8dc98e9ac0a/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0003_thumbnail.jpg', '2022-09-22 17:36:44'),
(97, 'files/539ea5538f38c41889b612ef24701fd0/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0002.JPG', 'files/539ea5538f38c41889b612ef24701fd0/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0002_thumbnail.jpg', '2022-09-22 17:36:44'),
(98, 'files/e45deebda09c25102bbe40be979227f5/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0004.JPG', 'files/e45deebda09c25102bbe40be979227f5/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0004_thumbnail.jpg', '2022-09-22 17:36:44'),
(99, 'files/0de7d3cb6f761462dc9b15e065a09e68/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0005.JPG', 'files/0de7d3cb6f761462dc9b15e065a09e68/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0005_thumbnail.jpg', '2022-09-22 17:36:44'),
(100, 'files/9d8fc3fa369dead1d206ca9e8b9c28f3/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0006.JPG', 'files/9d8fc3fa369dead1d206ca9e8b9c28f3/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0006_thumbnail.jpg', '2022-09-22 17:36:44'),
(101, 'files/d074d114395c765dc12ed9d434114f63/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0007.JPG', 'files/d074d114395c765dc12ed9d434114f63/Tower Orbits every 3 meter + Vertical Transition Photos Between Tower Orbits 2 DJI_0007_thumbnail.jpg', '2022-09-22 17:36:44'),
(102, 'files/8dcc1a30727855320388e94a009d0785/Access Road DJI_0841.JPG', 'files/8dcc1a30727855320388e94a009d0785/Access Road DJI_0841_thumbnail.jpg', '2022-09-22 18:11:52'),
(103, 'files/f09ee1fbf5acd6785547544e1cae3e14/Access Road DJI_0842.JPG', 'files/f09ee1fbf5acd6785547544e1cae3e14/Access Road DJI_0842_thumbnail.jpg', '2022-09-22 18:11:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
