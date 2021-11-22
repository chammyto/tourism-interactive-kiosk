-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 06:55 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiosk`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `town`, `street`, `deleted_at`) VALUES
(7, 'Eco Tourism', 'Explore  eco tourism spots in Bohol.', 'public/category/6aX1YK5Q44Vb2ROVZeG1zT9XijLz1TYrd9fKdgP2.jpeg', '2020-02-12 20:00:18', '2020-11-09 22:23:50', NULL, NULL, '2020-11-09 22:23:50'),
(8, 'Beaches', 'Explore Bohol\'s beautiful beaches.', 'public/category/WwQhkQIyRzh0btUYuk2tlEpBTNCIGMWjqxVanAgL.jpeg', '2020-02-12 20:13:07', '2020-11-09 22:23:54', NULL, NULL, '2020-11-09 22:23:54'),
(11, 'Hotels', 'Best Hotels to stay in Bohol.', 'public/category/aSRcLE8lPibH0Z6XN1iZXoin9qpkGAGqDnVmvnNF.jpeg', '2020-02-19 17:02:41', '2020-11-09 22:24:00', 'Panglao', 'Ahfoeof', '2020-11-09 22:24:00'),
(12, 'Restaurants', 'Explore Bohol\'s finest resto.', 'public/category/Av52a8bUmn2ot7I7VSoChqPOewqqtJOyn465lKjb.jpeg', '2020-02-28 03:39:22', '2020-11-06 01:35:20', 'Tagbilaran City', 'CPG Avenue', '2020-11-06 01:35:20'),
(13, 'Car Rentals', 'Where to rent a car or motorcyle?', 'public/category/8RAMEKZYuILI4lrwxz4DMJF3ZcFOhijy4IHJFwDG.jpeg', '2020-03-08 03:55:13', '2020-11-09 22:24:04', 'Panglao', 'afkanofn', '2020-11-09 22:24:04'),
(16, 'Restaurants', 'Search for the finest restaurants here in Bohol.', 'public/category/kiLyeyqpx2B47pWY1dibD7hfTV6NO1oHKsUheGKd.jpeg', '2020-11-06 02:19:22', '2020-11-09 22:24:09', NULL, NULL, '2020-11-09 22:24:09'),
(17, 'What\'s Hot?', 'Want to know the hottest destinations?', 'public/category/def21BhtIImMuyFbJdxoho7AUbdNMdTcnKK6klUH.jpeg', '2020-11-06 02:21:34', '2020-11-09 22:24:13', NULL, NULL, '2020-11-09 22:24:13'),
(18, 'Eco Tourism', 'Lorem Ipsum', 'public/category/Cj6kurNJ5RYd1rtpEzm8U2hPHXc7JS60nM3T53Oa.jpeg', '2020-11-09 22:25:36', '2020-11-15 22:47:01', NULL, NULL, '2020-11-15 22:47:01'),
(19, 'Water Activities', 'Enjoy different water activities', 'public/category/87NARY93yIt03x6KEB46rpfGvIwjAx4Dk1hhr4Q6.jpeg', '2020-11-09 23:53:57', '2020-11-15 22:47:07', NULL, NULL, '2020-11-15 22:47:07'),
(20, 'Restaurants', 'apwjfapowf', 'public/category/35ylNcpPYrTCyG8UnFdTOyPwvbrzGdarTnpHZ6M0.jpeg', '2020-11-10 00:03:52', '2020-11-15 22:47:10', NULL, NULL, '2020-11-15 22:47:10'),
(21, 'Underwater Activities', 'anfoaiw seowf', 'public/category/GeS6a334zgpRqm5lRjC1shElDdazUQYO9V5InjR6.jpeg', '2020-11-10 00:04:38', '2020-11-15 22:47:13', NULL, NULL, '2020-11-15 22:47:13'),
(22, 'Shopping', 'aknfiajef- fjq', 'public/category/GwYDvZ4XrJwyH0r2d7DssZiUZgdglNOh2vDHk8ob.jpeg', '2020-11-10 00:05:25', '2020-11-15 22:47:18', NULL, NULL, '2020-11-15 22:47:18'),
(23, 'Transportation', 'paepegp', 'public/category/1TKXXI0J7g9p5HxtmaCfSncW9aQLEyCOcKcgPCGa.jpeg', '2020-11-10 00:08:48', '2020-11-15 22:47:20', NULL, NULL, '2020-11-15 22:47:20'),
(24, 'Hotels', 'ewpe', 'public/category/QXAW0ZVYWhIlD8ub4ALX0BXft0HGP4lUTh1tXTfC.jpeg', '2020-11-10 00:09:37', '2020-11-15 22:47:24', NULL, NULL, '2020-11-15 22:47:24'),
(25, 'Ecotourism', 'Get up close and personal with the natural world.', 'public/category/z9ETmejWIuL4sd6c8WSHEXUTSrAkkUcJgp5MGC9v.jpeg', '2020-11-15 22:48:45', '2020-12-01 03:56:23', NULL, NULL, NULL),
(26, 'Sightseeing', 'Explore some of the best eco-destinations that offer comfortable accommodations in addition to exciting experiences. Bohol is filled with countless historical exhibits, unique architecture and magnificent landmarks.', 'public/category/W5pQlv12ca9L6QUZ1GMBAPJi3PzEXIZgN9l2qFIy.jpeg', '2020-11-15 22:49:53', '2020-12-01 03:56:49', NULL, NULL, NULL),
(27, 'Adventure', 'Need an adventure vacation but don\'t know where to go? Start here. We\'ve carefully curated the best hotspots to get your adrenaline fix — from bouldering to backpacking, trekking, rappelling, ATV rides, and caving, we\'ve got you covered.', 'public/category/nGxN9nAXNpXye3U49axvd30sKediIgF5Qh2wLeYi.jpeg', '2020-11-15 22:50:41', '2020-12-01 03:57:22', NULL, NULL, NULL),
(28, 'Hotel', 'Lorem Ipsum', 'public/category/cfV8vAsDWizg6wMRxFZvWSld26H1wZ2C3CDP3LN4.jpeg', '2020-11-15 22:56:02', '2020-11-27 04:02:04', NULL, NULL, '2020-11-27 04:02:04'),
(29, 'Restaurant', 'Lorem Ipsum', 'public/category/JslVmEbNogNfQMpTMcC5mCpE0XTs4H9yPit5sNiM.jpeg', '2020-11-15 22:57:26', '2020-11-27 04:02:16', NULL, NULL, '2020-11-27 04:02:16'),
(30, 'Money Changer', 'Lorem Ipsum', 'public/category/cquSXv4iv0YwtqExAwscQGfluZxieaFgx0TLeDsH.jpeg', '2020-11-15 23:10:52', '2020-11-27 04:02:22', NULL, NULL, '2020-11-27 04:02:22'),
(31, 'Transportation', 'Lorem Ipsum', 'public/category/VNt3c1SiZBn729EEJ2cw9hk4kQIgCeBaVS4zBvc8.jpeg', '2020-11-15 23:14:21', '2020-11-27 04:02:30', NULL, NULL, '2020-11-27 04:02:30'),
(32, 'HEALTH & WELLNESS', 'Lorem Ipsum', 'public/category/rdzDrL5ACS56g9sDu7MwyvpkqRewm6MwmaoRidXI.jpeg', '2020-11-15 23:22:40', '2020-11-15 23:35:29', NULL, NULL, '2020-11-15 23:35:29'),
(33, 'PRAYER TIME', 'Lorem Ipsum', 'public/category/ksxuIhsCAkY8pnVlqeOR0sdE1KDfiJySmIyIhkzx.jpeg', '2020-11-15 23:24:55', '2020-11-15 23:39:21', NULL, NULL, '2020-11-15 23:39:21'),
(34, 'Spa/Massage', 'Spa/Massage', 'public/category/6nTtxpF6bgu5h179hVHZpUq9FpPTUOSONVuESLaP.jpeg', '2020-11-15 23:36:13', '2020-11-27 04:02:35', NULL, NULL, '2020-11-27 04:02:35'),
(35, 'Church', 'Lorem Ipsum', 'public/category/bYO6o5QhiOX8141ls6PDZvFaOjPbyobPs4ApqdWs.jpeg', '2020-11-15 23:39:57', '2020-11-27 03:30:06', NULL, NULL, '2020-11-27 03:30:06'),
(36, 'Shopping', 'Lorem Ipsum', 'public/category/P0XmSJCMW52fGfwuiaKJeiemA1s61fXHb5MEpDhV.jpeg', '2020-11-15 23:40:48', '2020-11-27 04:02:40', NULL, NULL, '2020-11-27 04:02:40'),
(37, 'Church', 'Lorem Ipsum', 'public/category/kEwrXX3nokrfuzAReEiHyBLj4u98hnMtpJODVlby.jpeg', '2020-11-27 03:32:21', '2020-11-27 04:02:45', NULL, NULL, '2020-11-27 04:02:45'),
(38, 'Beach', 'Enjoy the white sand beaches our province has to offer.', 'public/category/VlpmOFtT7g109eXymDBamMVdfgVezRuvJFganrPL.jpeg', '2020-11-27 04:11:00', '2020-12-01 03:59:38', NULL, NULL, NULL),
(39, 'Hotel', 'Need rooms to stay while here in Bohol? Check these out.', 'public/category/1cLH8ORZSLpYqKUBXtmQzhMXNfWxIfYuX5ZcMUVa.jpeg', '2020-11-27 04:11:47', '2020-12-01 03:58:43', NULL, NULL, NULL),
(40, 'Restaurant', 'Check out some of the delicious foods of Bohol.', 'public/category/LTCmDVt1sTHGrsvsmOwbjAnwxTlBf0oUMRDIpRIE.jpeg', '2020-11-27 04:12:14', '2020-12-01 04:00:31', NULL, NULL, NULL),
(41, 'Bank', 'Money matters! If you need money transactions like changing currencies, then check these out.', 'public/category/jWwlC3RzHmWdGsEuAuWJ5QM2c5L3jObKfr9aUXjg.jpeg', '2020-11-27 04:13:31', '2020-12-01 04:01:43', NULL, NULL, NULL),
(42, 'Transportation', 'Van, SUV, car, and motorcycle rentals? Check these!', 'public/category/teTxCW3z5lHIljUZoZrVbOxPpDLUt1cwxh69pXfT.jpeg', '2020-11-27 04:14:03', '2020-12-01 04:03:47', NULL, NULL, NULL),
(43, 'Medical/Spa', 'Massage, Spa and other medical matters can be found here.', 'public/category/9FDL5wMMVg5rMgwfwW5KPdXXMhmudRxLydVxmDxR.jpeg', '2020-11-27 04:15:05', '2020-12-01 04:04:37', NULL, NULL, NULL),
(44, 'Shopping', 'This is all about shopping malls.', 'public/category/4dIeQUyW23mgCntqtSiimiOXTSwOHZ6cLbb22kx3.jpeg', '2020-11-27 04:20:28', '2020-12-01 04:05:35', NULL, NULL, NULL),
(45, 'Church', 'Need time for prayer and reflections? You can find the churches here.', 'public/category/1qM73YQ7mxXTT77PPQffV57XdcFfMbRw7GjjK6OB.jpeg', '2020-11-27 04:21:05', '2020-12-01 04:06:50', NULL, NULL, NULL),
(46, 'New Attraction', 'Newly established tourist attractions are here. Check them out.', 'public/category/HVKLhCyEnCaOE9RWAQiioKLN8BS1gzLnzMBYoIlW.jpeg', '2020-11-27 04:24:31', '2020-12-01 04:07:29', NULL, NULL, NULL),
(47, 'Spa/Massage', 'Lorem Ipsum', 'public/category/QillipEwZt0fhTjSRD9eGAm313NZN8BPXjeeihiH.jpeg', '2020-11-27 05:18:13', '2020-11-30 03:26:57', NULL, NULL, '2020-11-30 03:26:57'),
(48, 'Ports/Bus Terminal', 'Sea Ports, Airport, and Bus Terminals around Bohol', 'public/category/R5QmhTmZFHzerfBKwHyGN1KNJRKbsEssrmIEnJW5.jpeg', '2020-12-02 17:50:21', '2021-02-15 09:53:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `category`, `town`, `street`, `lat`, `lng`) VALUES
(15, 'Antequera Basket Weaving', 'Antequera is famously known for its basket weaving industry. It is the major source of livelihood. Basket weaving skills has been passed down from older generations to younger generations in Antequera since 1900s.', 'public/destination/QJX0QppbTKuDXYULwcvNcyMFG1AMdMY24J8Af5Hs.jpeg', '2020-11-18 19:22:41', '2020-11-18 19:22:41', 25, 'Antequera', 'Maribojoc-Antequera-Catagbacan Road', '9.781294334606075', '123.89795335903167'),
(16, 'Stand Up Paddling Eco Adventure', 'Stand Up Paddling Yoga Retreats are offered on a regular basis by Stand Up Paddling Tours Philippines.  A unique retreat that combines the practice of traditional yoga and applying on a SUP combined with a tour of the Loboc River.\r\nPlease Contact : Joan Christine Pablo / Soupart Frederic\r\n0385379011 or 09478933022\r\ninfo@suptoursphilippines.com', 'public/destination/O9R33W7lW4XcYJgqiWDR90Tldkwj4nwDCtwgYEU1.jpeg', '2020-11-18 19:45:12', '2020-11-18 19:45:12', 25, 'Loboc', 'Bgry Road, Valladolid', '9.633748998704409', '124.02618977203369'),
(17, 'Chocolate Hills', 'One can go by public bus going to the Chocolate Hills Complex in the town of Carmen available at the Dao Integrated Bus Terminal in Tagbilaran City. The complex is about 55 kilometers away and 1 hour & 30 minutes travel away from the city. Travel time may be shorter if one travels by private vehicle as stops are lesser if none at all before reaching the spot.', 'public/destination/cpOXbSo2lXxlBW1tZ3GmQFG8qBbWUzkfz0btE9Uz.png', '2020-11-18 20:09:25', '2020-11-20 00:58:17', 26, 'Carmen', 'Chocolate Hills Road', '9.798778436757283', '124.1673333100915'),
(21, 'Loboc River Cruise & Floating Restaurant', 'One of the popular destinations in Bohol is The Loboc River where one can get on board a floating restaurant and enjoy the Loboc River cruise with buffet meal. The cruise and buffet costs P450.00 per person and this includes a short cultural show by the local community. Buses and jeepneys are available at the Tagbilaran City Dao Integrated Bus Terminal. It takes approximately one hour travel by public transportation from the city, and around 40 minutes travel by private transportation. Loboc town is located approximately 24 kilometers from Tagbilaran City.', 'public/destination/KjX0Qe07DcP6gYnMQ1882EkhAaSR63cMiab8UKyn.jpeg', '2020-11-18 20:44:18', '2020-11-18 20:44:18', 26, 'Loboc', 'Loay Interior Road', '9.634841788425822', '124.03064693286419'),
(22, 'Abatan River Firefly Tour', 'This hour long tour will take you gently up the beautiful Abatan River for an amazing light show of fireflies.\r\nGuest may choose to take a kayak or traditional bandong boat.\r\nTelephone: +63 38 503 9655 or +63 908 873 8304\r\nEmail: abatanriver@gmail.com\r\nWebsite: www.riverlife.ph', 'public/destination/QQMJGHQD6P4nfvUvid2XlKv4AgA9aVTzJhTFGxm8.jpeg', '2020-11-18 21:01:32', '2020-11-18 21:01:32', 27, 'Cortes', 'National Highway-Junction, Salvador', '9.714819999651864', '123.87410583868026'),
(23, 'ATV Eco Adventure', 'Get to see the amazing Chocolate Hills in a muddy and adventurous way with the ATV (All-Terrain Vehicle) Eco-Adventure Tour. Get ready to get down and dirty with your family, friends, and loved ones and have an exhilarating experience through an ATV ride.', 'public/destination/k6JC23BPHOljL7TJExNehFmVJpUmCDfuKtTg0BLY.jpeg', '2020-11-18 21:54:33', '2020-11-18 21:54:33', 27, 'Carmen', 'Chocolate Hills Road', '9.79980956661552', '124.1667992152214'),
(24, 'Bohol Sunset Villa', 'Bohol Sunset Villa offers air-conditioned room and suites, an outdoor pool and restaurant in Tagbilaran City. Free WiFi is available in all rooms.\r\n\r\nBohol Sunset Villa is a 30-minute drive to Bohol-Panglao International Airport and a 10-minute drive to Tagbilaran Seaport. It takes 15 minutes to drive to Island City Mall.\r\n\r\nEach room and suite has a cable TV, mini-bar and electric kettle. A wardrobe and clothes rack is available. Private bathroom comes with a shower and free toiletries.\r\n\r\nOther facilities include a 24-hour front desk, luggage storage and a childrens playground. The property offers free private parking.\r\n\r\nWe speak your language!', 'public/destination/ObVAwKAkVJK43HgEEO3jD2rnXhu0BJkBWGYit7NS.webp', '2020-11-20 01:27:43', '2020-11-27 04:30:47', 39, 'Tagbilaran City', '0939, Manga Coastal Rd, Taloto District', '9.68106427553909', '123.85345685257911'),
(25, 'Alona Hidden Dream Resort', 'Set in a lively area offering restaurants, bars and cafes, this unassuming resort is 2 minutes\' walk from Alona Beach, 5 km from the Nova Shell Museum and 2.9 km from Panglao International Airport.\r\n\r\nThe straightforward rooms come with Wi-Fi access, cable TV and air-conditioning.\r\n\r\nA woodsy restaurant with a tropical vibe features open-air dining. Other amenities consist of an outdoor pool, a terrace and a garden.', 'public/destination/82XUY2q6Gjk14EGhHkYpuY3cdhx5ypcEx9580bCY.jpeg', '2020-11-20 06:35:17', '2020-11-27 04:33:00', 39, 'Panglao', 'Tawala', '9.550441660130668', '123.77262144311666'),
(26, 'Garden Cafe', 'Nestled in the heart of Tagbilaran City’s Historic District, the Garden Café is a beloved Boholano institution that has been serving quality food for a great cause to locals and visitors alike since 1983. Most of the restaurant’s employees are deaf and the profits are used to help fund the education of Bohol’s impoverished deaf children. It has a combined Vintage American West and Nostalgic Boholano theme that is reflected in the delicious variety of food served. From American, to Filipino, to Asian classics, if you’re looking for quality food and want to support a great cause, eat at Garden Café.', 'public/destination/pJaJzPi5piDqy0aDgt3r2xGZvZqsH633HGLmeBTZ.png', '2020-11-20 07:06:52', '2020-12-02 16:52:13', 40, 'Tagbilaran City', 'No. 8 J.S. Torralba Street', '9.639738474230224', '123.85543229951858'),
(27, 'Giuseppe Pizzeria & Sicilian Roast', 'Experience traditional Sicilian food that is good, filling and fresh at Giuseppe Pizzeria & Sicilian Roast. It is the combination of casual ambiance and fine food which makes the Giuseppe’s experience exceptional. The dishes are homemade, the ingredients are fresh, and the flavors are undoubtedly authentic. Portions are generous. Ask the staff or Giuseppe himself for recommendations, and you cannot go wrong. Order an appetizer, salad and pizza (to be shared by two) and you probably won’t have enough room for dessert—which you shouldn’t miss. Really, a pleasant dilemma to have, or just another reason to go back. \r\nPhone : (038) 502 4255', 'public/destination/djmrpMGVYXIJopJe2UZ9E1QKri1sMGhLfrqLieOo.jpeg', '2020-11-20 07:28:58', '2020-11-27 04:40:02', 40, 'Panglao', 'Tawala', '9.557863212252537', '123.77484398856163'),
(28, 'Philippine National Bank', 'We are a leading, dynamic Filipino financial services group with a global presence committed to delivering a whole range of quality products and services that will create value and enrich the lives of our customers, employees, shareholders and the communities we serve.\r\nOpens 9AM - 4PM. We have also branches at CPG Ave. and Island City Mall.', 'public/destination/xMC5sSSYONauznKf495kRht6nAhkm3wGDHjz2UFZ.jpeg', '2020-11-23 00:13:38', '2020-11-27 04:45:17', 41, 'Tagbilaran City', 'G/F, Stall 10 Alturas Mall B. lnting St, C.P Carlos P. Garcia Ave', '9.643640170293324', '123.85639755948782'),
(29, 'Core Pacific Money Exchange', 'The Philippines\'. Most Trusted Currency Exchange.\r\nAddress: LG 22B Island City, Mall M. Parras St. Dampas, Tagbilaran City\r\n\r\nContact Number : 0933-396-9949\r\n\r\nStore Hours : 09:30 am to 07:00 pm\r\n\r\nAlturas Mall Tagbilaran\r\n\r\nCore Pacific Money Exchange\r\n\r\nAddress: 3F07 Alturas Mall, B. Inting St. Tagbilaran City, Bohol\r\n\r\nContact Number : 0942-603-7103\r\n\r\nStore Hours : 09:30 am to 07:00 pm', 'public/destination/2f132MrlzYYvCtweXX5vghVngS1XtZs2rMglT8HH.jpeg', '2020-11-23 00:41:46', '2020-11-27 04:50:04', 41, 'Tagbilaran City', 'Island City Mall, Rajah Sikatuna Ave, Dao', '9.655310612746494', '123.86966342999935'),
(30, 'Bohol Car Van Rentals', 'Bohol Car Van for Hire with driver & fuel already Car 2k / Van 2500. Place to visit: Chocolate hills, Tarsier, Loboc River, ATV Ride & Zipline, Man Made Forest, Butterfly Garden, Blood Compact Site, Baclayon Old Church. For reservation call or txt 09267103220 globe 09106123168 smart. We are open 24 hours.', 'public/destination/bg8VvUEJDYt0Sal7UzKn2anct2ujaYJsfYqaMGze.jpeg', '2020-11-23 01:11:12', '2020-11-27 04:52:13', 42, 'Tagbilaran City', 'UTC compound varescon, San Jose Street', '9.653689705408587', '123.85105325802564'),
(31, 'Mike\'s Island Motorcycle Rentals', 'We specialize in renting top-of-the-line, late model Touring/Cruising Honda’s and Yamaha’s road bikes to visitors from Philippines as well as all over the world. Our reputation for top quality service and knowledgeable, courteous staff is worldwide.\r\n\r\nWe are proud that repeat customers come back to us time and again for their Bohol Motorcycle Rental needs. Not only are we a motorcycle rental shop, but we offer an extensive array of information about tours around Bohol and can accommodate you with information on the best places to go in Bohol .\r\nCall or Text @ +63-906-249-3199.\r\nEmail:  500.taylor@gmail.com', 'public/destination/HFu4gbe3a4YkdCK04RK3Tkk8eqEqvUsxRlolrIFe.jpeg', '2020-11-23 01:42:41', '2020-11-27 04:54:36', 42, 'Baclayon', 'Tagbilaran East Road, Montana', '9.617960007276993', '123.92633750065565'),
(35, 'Gov. Celestino Gallares Memorial Hospital', 'A government owned, non-profit, designated regional hospital of Central Visayas on July 01, 1973 and as Teaching/Training Hospital under Regional Health Office VII, Ministry of Health per A.O. 83 series of 1980.\r\nTelephone:\r\n(038) 411 – 4869 / 4868\r\n501 – 7531 / 7540\r\nMobile:\r\nGlobe - 0917 320 4922\r\nSmart - 0998 548 7508\r\nIf you need further information, please feel free to email us at gcgmh_bohol@yahoo.com.ph', 'public/destination/Eq9EWIp8ziM5K4mewPILT2DWNK18E4CJxLjcFwLn.jpeg', '2020-11-23 04:19:20', '2020-11-27 04:56:30', 43, 'Tagbilaran City', '0053 Miguel Parrast St.', '9.644205720763317', '123.85705805345773'),
(36, 'Kai Spa - Henann Resort', 'Ideally located near the beachfront, Kai Spa embodies its translation “soothing”. We, together with the help of our well-trained therapists, aim to help you find your serenity while on vacation. With a soothing and oriental-themed environment, this is the ultimate destination for pampering and relaxation.\r\nAside from our signature massages, hand & foot choices, aesthetic wraps with scrubs including dedicated area for facial treatments, all awaits for a holistic spa approach and experience the \"Touch of Kai.\"\r\nTelephone (Resort) : (63) (38) 502 9141 to 44\r\nEmail: reservations.hbl@henann.com\r\n\r\nOperating hours: \r\n10:00 AM - 12:00 MN', 'public/destination/WsO7qt8NOuw6sIxFj8RnZaQOMPiH6aLpTtBhWy90.jpeg', '2020-11-23 08:16:00', '2020-11-30 03:24:28', 43, 'Panglao', 'Alona Beach, Tawala', '9.548976639120518', '123.77436219676733'),
(37, 'St. Joseph Cathedral', 'The seat of the Diocese of Tagbilaran. Mass Schedules:\r\nMonday, Tuesday, Thursday, Friday, Saturday Mass Schedule — 5:15AM (Vernacular) — 6:15AM (Vernacular) — 7:15AM (English) — 12:00NN (Vernacular) — 3:00PM (Vernacular) — 5:15PM (Vernacular)\r\nCall: (038) 411 0192.', 'public/destination/ZZJchUtjcdf6DowwyY5cefyHRRdiWfd7rrwcwS1o.jpeg', '2020-11-23 08:42:29', '2020-11-27 04:59:16', 45, 'Tagbilaran City', 'Bohol Circumferential Road (94.49 mi)', '9.639539818385849', '123.85596404745579'),
(38, 'Immaculate Heart of Mary (Taloto)', 'Mass Schedules: Monday-Saturday 6:00 AM Sunday 7:00 AM 5:00 PM\r\nTelephone Number: (038) 411-5768, (038) 235-3754\r\n\r\nFounded: 1890\r\nProclaimed Parish: 1966\r\nTitular: Immaculate Heart of Mary\r\nFeast Day: August 22', 'public/destination/JTNguzObEYR3A9udSgTies65ro3GFODwXZjLF8HF.jpeg', '2020-11-23 09:00:17', '2020-11-27 05:01:05', 45, 'Tagbilaran City', 'Peñaflor St. ,Taloto District', '9.67508875540236', '123.85354000105858'),
(39, 'Island City Mall', 'The most modern shopping mall in the city of Tagbilaran started operations in 2004 serving the Class A, B & C market with national market players as part of its tenant mix like Jollibee, Greenwich, Chowking, KFC, National Bookstore, Guess, Mossimo, Rusty Lopez, Bench, Kamiseta and Abenson.\r\nTelephone Numbers: 038-5016255, 038-5013000 local 1336/1337', 'public/destination/Q6CI1bTQeaYQkDBYZWbJsSbeo6Nvdpmcm3rBXcI0.jpeg', '2020-11-23 09:21:07', '2020-11-27 05:03:39', 44, 'Tagbilaran City', 'Rajah Sikatuna Ave.', '9.655460010827916', '123.86990415825844'),
(41, 'Bohol Vintage Cars', 'Bohol Vintage Cars is arguably the Vintage Car “Park” in the province currently situated in Laya, Baclayon, Bohol. At Bohol Vintage Cars you can walk through a lot filled with various vintage cars ranging from muscle cars, sports cars to even post-war cars, majority of which are associated with historical origins. On top of this, their vintage collectibles are classically showcased in the Display Room. The classicism of this area is embodied in their age-old magazines, telephones, televisions, car plate numbers, car parts and etc. Key areas of the site such as the comfort rooms, ticketing booth and “native” lounge are designed in a manner that will spice up the classic aesthetic and ambience of the whole site. There is also free Wifi offered.\r\n\r\nTo date, Bohol Vintage Cars has 41 vintage cars, 8 of which are in running condition and the rest are under on-going restoration.\r\n\r\nBridal Car Rentals are also available in the Tagbilaran area (Baclayon, Albur, Dauis) and in the Panglao area. Schedule:	Monday-Friday 8:00AM-5:00PM (Everyday).  Entrance Fee :	Php 50. Bookings : Bridal Car, Groom Car and Prenup Car Rentals. Contact Info:	0912 439 6033 or 0927 195 6890\r\nFacebook Page: Bohol Vintage Cars', 'public/destination/aRBq1lfFV2jxx9uWILc37beoftP5XlPVDpaIrCA2.jpeg', '2020-11-24 05:18:49', '2020-11-24 05:18:49', 26, 'Baclayon', 'Laya', '9.61803967304446', '123.92935934438705'),
(42, 'Bohol Quality Mall', 'Stalwart, 5-story indoor shopping plaza with diverse stores & a dining area with fast food. Here you can find cinemas. Bohol Quality Mall has always positioned itself not only as a reliable shopping haven for top-notch quality items but also as a family-oriented shopping destination.  Opens : 8:30AM. Closes: 10PM daily. Phone: (038) 411 3164', 'public/destination/xAQms9XP51mkBOLI82vgPDscAaCPccQ0oBwP3qHO.jpeg', '2020-11-24 05:51:27', '2020-11-27 05:11:47', 44, 'Tagbilaran City', 'Carlos P. Garcia East Avenue', '9.642076059670986', '123.85552081241607'),
(43, 'Alona Beach', 'The Alona Beach is one of the most famous tourist spots in Bohol province, Philippines, because of its white sand and the rocky cliffs. The beach is located near a \"house\" reef, where corals and colorful fishes can be seen even without diving equipment. It is a popular scuba-diving and snorkeling spot. It is situated less than two miles from the new Bohol-Panglao International airport.', 'public/destination/4ujoAQAMsLHEBze0SmPiqtj5G6PfMPs4tlOrzp6d.jpeg', '2020-11-30 04:14:46', '2020-11-30 23:53:37', 38, 'Panglao', 'Ester A. Lim Drive, Brgy. Tawala', '9.548556076745545', '123.77403194978237'),
(44, 'Dumaluan Beach', 'The beauty of Dumaluan Beach is on the same level as Alona Beach, it offers the same magnificent waters that stretch far into the horizon.  It is not for passionate swimmers, but if you like to enjoy the white sand and clean water this is the place for you. The charm of this beach is that it offers the perfect calm place to sleep on a hammock and read your favorite book.', 'public/destination/yxM1sTJA1OcT4L2geb4LezH3sDXJNHEy3rD4PWin.jpeg', '2020-11-30 04:44:20', '2020-11-30 16:09:32', 38, 'Panglao', 'Sapa Bolod', '9.55658833157393', '123.80531790628433'),
(45, 'Anda Long Beach', 'It a beautiful beach and crystal clear waters located at Barangay Bacong Sitio Dagohoy in Anda, Bohol.', 'public/destination/THGjGPYXHWf7KzQxagMWnn1xjuTjfOMggeefNmHi.jpeg', '2020-11-30 06:00:47', '2020-11-30 06:00:47', 38, 'Anda', 'Brgy. Bacong, Sitio Dagohoy', '9.7405135773961', '124.57524868621826'),
(46, 'Bohol South Beach Hotel', 'This modern hotel with a laid-back vibe is set in tree-lined gardens on Danao Beach. It\'s 13 km from the limestone Hinagdanan Cave and lagoon.\r\n\r\nBright, relaxed rooms feature flat-screen TVs, minifridges, and tea and coffeemakers. Upgraded rooms add sitting areas, floor-to-ceiling windows, and balconies with beach views. Room service is available.\r\n\r\nLoaner bikes and local shuttle service are complimentary. There are 3 bars, including 1 on the rooftop and another beside an infinity pool. There\'s also a restaurant and direct beach access.', 'public/destination/34qzbuRuD6Iz5TmGV8o5dIuWVwke3V2BT3nNhX0z.jpeg', '2020-11-30 16:27:09', '2020-11-30 16:32:54', 39, 'Panglao', 'Sitio Daurong', '9.546152380880002', '123.75587976499796'),
(47, 'Bolod Beach', 'Bolod Beach offers the same breathtaking and magnificent scenery as the other beaches from Panglao. The main thing that sets it apart from the other beaches, however, is the touch of nipa huts and shacks that is very evident on the beach.', 'public/destination/7MYEre1T2PcDTRRTiTVbkFaJ3yZK1chVaAz4Rsyy.jpeg', '2020-11-30 17:00:14', '2020-11-30 17:00:14', 38, 'Panglao', 'Brgy. Bolod', '9.556492450831858', '123.80483510866165'),
(48, 'Jagna Calamay Industry Tour', 'Calamay, sometimes called “kalamay” is made from well-milled glutinous rice mixed with coconut milk and sugar. It is the signature delicacy and pasalubong from Bohol. One of the island’s most iconic images, that brown spoke-shaved coconut shell with a red band. Jagna is known as the “Calamay County” of Bohol and is famed for the production of the finest Calamays in the province. According to a report, the calamay industry has been giving the members of Jagna Calamay Makers and Vendors Association (JACAMAVEA) enough income to bring food to their tables.\r\n\r\nOpen – 9:00 a.m.-6:00 evening on daily basis (including Saturdays & Sundays)\r\nTour Fee: Php 25.00\r\nContact Person: Ms. Elizabeth O. Balaba\r\n09395976316/038)531-8005\r\nElizabeth.balaba@yahoo.com', 'public/destination/JWABo7VFIgnNMlZDJYyo78BKgoTEqsXfxhod3MN6.jpeg', '2020-11-30 17:19:04', '2020-11-30 17:19:04', 25, 'Jagna', 'Can-upao', '9.644117136649472', '124.3621877483964'),
(49, 'Philippine Tarsier Sanctuary', 'They are noctural but are also mildly awake in daytime. Take pictures with no flashes and keep your distance because sometimes they are very close. The entire family can enjoy trekking. Ask questions after the tour. Trek into the real tarsier habitat. Just make sure to be extra quiet.\r\nTour Fee : Php 50.00.\r\nContact Person: Joannie Mary Cabillo. Mobile: 09089378094. Email: joanniemaryc@yahoo.com', 'public/destination/ZP7Su9KoA2bNx3BgvZGBiSTghUKBzHTv3COrKPqC.jpeg', '2020-11-30 17:29:55', '2020-11-30 17:29:55', 25, 'Corella', 'Km.14, Canapnapan', '9.69078286177981', '123.95268986895084'),
(50, 'Bilar Man Made Forest', 'Bilar Man made Forest mostly of mahogany is located on the border of Loboc and Bilar towns. It is about 40 kilometers away and approximately 50 minutes travel from Tagbilaran City. Vehicles going to Chocolate Hills in Carmen regularly pass along this route making it a popular stop for tourists.', 'public/destination/krc4yB8CLnWoQTfDxJ0yPMJhIsyvQS3FayVQ0lUi.jpeg', '2020-11-30 18:35:07', '2020-11-30 18:35:07', 26, 'Bilar', 'Loay Interior Road', '9.664235379162143', '124.07847440763712'),
(51, 'Blood Compact Shrine', 'Located at Barangay Bool, Tagbilaran City, it is only 3 kilometer and a short 10 minute ride away from downtown Tagbilaran. One may take a tricycle, a public bus or jeep coming from Dao Bus Terminal or from the Plaza Rizal Park to get to the Blood Compact Commemorative Shrine. A private car to get there is another convenient option.', 'public/destination/3c2KrJJZs6RnYv9DL8ZXTxxlz1c0nZRAsqQpMryl.jpeg', '2020-11-30 18:53:05', '2020-11-30 18:53:05', 26, 'Tagbilaran City', 'Brgy. Bool', '9.627451010057928', '123.87917655482292'),
(52, 'Pamilacan Island Dolphin & Whale Watching', 'Perfect for island life, Bohol boasts of a number of gorgeous beaches and islands. One such marvel is Pamilacan Island with its white sand beaches and rich biodiversity. Its curious name comes from the local word “pilak”, a large hooked tool used for capturing whale and manta ray, a practice called “mamalak”. Hunting these animals is no longer popular, however as the creatures are now under full protection of the Philippine law.\r\nSchedule: Monday – Sunday, 5:30 AM – 2:00 PM.\r\nFor other information regarding the Dolphin & Whale Watching Tour, feel free to visit to the Municipal Tourism Office of Baclayon. The MTO will also accept bookings for the tour. Guests can also contact directly to the boat operators from Pamilacan Island. They can also have an arrangement at some travel agencies. \r\nContact: Sandra Marie B. Taladoc / Municipal Tourism Officer. Tel. : (038) 540-9280 / 09462964297', 'public/destination/88I79AVzREaV3qzlRKoeObZGQ6A58BgFAIR4cgsm.jpeg', '2020-12-01 10:13:57', '2020-12-01 10:13:57', 25, 'Baclayon', 'Baluarte Port', '9.620769784410902', '123.91294422521591'),
(54, 'Simply Butterflies Conservation Center', 'Simply Butterflies Conservation Center is the first butterfly livelihood breeding and conservation program in Bohol. Its main goal is to protect and strengthen the natural environment of the butterflies through plant research, breeding and releasing. The Center is located along the highway en route to Chocolate Hills. There is signage at the highway. The Center is just 5 minutes after the Man Made Forest, and about 1km before the Bilar public market.\r\nEmail: simplybutterflies@gmail.com', 'public/destination/v3EinptitNeuSq5hYXd1HQDcHLFf2HOn4lwOXI4z.jpeg', '2020-12-01 10:41:47', '2020-12-01 10:41:47', 26, 'Bilar', 'Loay Interior Road, Poblacion', '9.697753525026162', '124.1003169767499'),
(55, 'Ship Haus', 'Ship Haus is one of Bohol’s new tourist attractions, which is located in Poblacion Norte, Batuan along the highway.\r\nIt is uniquely shaped like a shipping vessel. The entrance fee is P20.00 only. To get there, you can ride Bus at Dao Integrated Bus Terminal.\r\n You can also ride your own car and it will take you 40 mins or 39 kilometers away from the city.', 'public/destination/L4UwULtkT0Mkoc4ufcrAeXogtC8PFP2eeNJXAltd.jpeg', '2020-12-01 11:02:22', '2020-12-01 11:02:22', 26, 'Batuan', 'Poblacion Norte', '9.782451732047317', '124.14880829825401'),
(56, 'Vita Isola Leisure Farm', 'Vita Isola means “Island Living”. It’s a way of life. More than just a premier destination north of Bohol, but its a place to reconnect with yourselves. Their Organic Garden, Aqua Farm, and sprawling lawn allows you to slow down, enjoy the view. This is a sanctuary built away from the noise and chaos of the city. Experience the beautiful Island Life at Vita Isola!', 'public/destination/eMq6hSUjKJUQvTaK3EVZx2PYSXSy6R8hrTkVm8lv.jpeg', '2020-12-01 11:20:08', '2020-12-01 11:20:08', 26, 'Loon', 'Sandingan Brgy. Road, Ubujan, Sandingan', '9.855029296607205', '123.8086974896431'),
(57, 'Chocolate Hills Adventure Park', 'Chocolate Hills Adventure Park is an adventure park that will be fun for both adults and children. It offers thrill rides to adults and obstacle courses for children to enjoy. Located approximately 55km from Tagbilaran City, it is only 1 hour and 45 minutes away travel by either public bus or private car. Regular public buses take the route going to Chocolate Hills Adventure Park or CHAP, in Barangay Buenos Aires. Entrance Fee is only PhP 60 pesos. Rides are charged separately.', 'public/destination/eSxsS8fMVFNXZK7BeQ1ZLdAvEoMR3BI7Ii4UAGN6.jpeg', '2020-12-01 11:36:07', '2020-12-01 11:36:07', 27, 'Carmen', 'Chocolate Hills Adventure Park Road, Barangay Buenos Aires', '9.790498225581487', '124.15784834846258'),
(58, 'Danao Adventure Park', 'E.A.T. Danao is a tourism concept set up to benefit the municipality of Danao and its people. The tour involves responsible tour of Danao’s God-given gifts. It is the town’s major task to conserve these gifts and enhance them to sustain the well-being of all its constituents.\r\n\r\nDanao offers unique and exhilarating activities in different categories set amidst verdant valleys framed by the majestic expanse of mountain ranges. To trim down the choices for the individual tourist, specific activities were grouped into three: Extreme, Economic, and Educational. So “E” stands for any of the three; “A” for Adventure; then “T” for Tour. All these activities converged in one place which the town calls the Danao Adventure Park.\r\n\r\nThe Park is located at barangay Magtangtang, 72 kilometers from the City of Tagbilaran and only about two (2) hours ride away.', 'public/destination/4Fvv0nnA0uqgLPttrkyTHPKMuLhOQCrdHFlqULi1.jpeg', '2020-12-01 11:47:24', '2020-12-01 11:47:24', 27, 'Danao', 'Buenavista-Carmen-Danao-Jetafe Road', '9.95783531597716', '124.1789637036562'),
(59, 'Bohol in the Sky Aerial Tour', 'The best way to discover the Island of Bohol.  It is an amazing possibility to experience and see these beautiful destinations of Bohol from up above.  This aerial tour takes off and lands in Tagbilaran City airport, the first and only of its kind in Bohol. \r\n1.) Panglao Island Tour - Panglao Island is a home to one of the top beaches and relaxing area to go to. A 30 minute birds eye view of Panglao and some of its nearby islands is more than enough to appreciate the fascinating sand bar of the Virgin Island, beautiful island of Balicasag and world class resorts of Panglao Island.\r\n2.)  Chocolate Hills Tour \r\n\r\nChocolate Hills is one of the most beautiful natural wonder of the world compose of 1,268 unique cone-shaped hills on the interior Island of Bohol. This Flight tour takes approximate 45 minutes to complete.\r\n3.)', 'public/destination/6PLlEKzLjFmDxghX1xa74wPBB8AXmKrcpcrCM9kY.jpeg', '2020-12-01 12:15:14', '2020-12-01 12:15:14', 27, 'Dauis', 'Bohol Bee Farm, Purok 1, Dao', '9.57580592345206', '123.82693516983986'),
(60, 'Camugao Falls', 'The Camugao Falls has a superb top view but it’s foot is more amazing. Fun starts in 10-minute walk through a rough trail that would take you down to its base where you can appreciate the magnificent ambience of lush green plants that adorn the falls.\r\n\r\nYou can dive and swim in this natural-made pool with cold water cascading from the falls. Swimming with family and friends are made easy for there are tables and chairs available, all for free! It is advisable, however, for young children to be accompanied by an adult as the water is steep. For extreme adventure seekers, they may climb at the elevated part at the right side of the falls and jumped with extreme caution.', 'public/destination/L7hU5Y0NQlFYikGpmXc2hirzldIOUcDha4Sad3kv.jpeg', '2020-12-02 03:22:33', '2020-12-02 03:22:33', 27, 'Balilihan', 'Brgy. San Isidro', '9.780962940876764', '123.96615154072046'),
(61, 'Bugwak Spring', 'Bugwak Spring is a great place who loves to have fun in the water where you can swim in the natural cold spring waters. It is approximately 34KM from city of Tagbilaran to Bugwak Spring Via Corella to Balilihan then from Balilihan proper ride a motor habal habal.. \"pakyawan price\" less than 300 if you have a car or motor vehicle much better...\r\nIf you have your own vehicle from Tagbilaran City to Corella to Balilihan then Balilihan to Batuan Road... stop at Hanopol proper.. then from Hanopol proper to Bugwak Spring approximately 4KM...', 'public/destination/IGHH4TIP8ImSIHBiwBd9lkJzWApbj6UFIBllC4gq.jpeg', '2020-12-02 03:49:05', '2020-12-02 03:49:05', 27, 'Balilihan', 'Hanopol', '9.775561143467895', '124.05971537306309'),
(62, 'Kawasan Falls', 'The Kawasan Falls in the municipality of Balilihan is situated about 5 kilometers from the Poblacion and likewise 22 kilometers from Tagbilaran City. The falls is accentuated by a green backdrop of tropical plants and rugged cliffs which is beautiful to behold and cascades into a natural pool. The falls is much shorter compared to Camugao Falls but wider. The falls sits at the center of a network of hiking trails which poses a great challenge to trekkers.', 'public/destination/e1oXNUlcdpl8HKINS8mankHsTp2LWU8BgNKNGZ9J.jpeg', '2020-12-02 04:17:48', '2020-12-02 04:17:48', 27, 'Balilihan', 'Brgy. Candasig', '9.767020316015575', '123.94426840319633'),
(63, 'Sikatuna Mirror of the World', 'See internationally-famous landmarks at Sikatuna’s Mirror of the World and Botanical Gardens! This must-visit attraction in Sikatuna, Bohol features a landscaped garden dotted with replicas of world-renowned statues, such as the Statue of Liberty in New York, Christ the Redeemer in Rio de Janeiro, the Merlion in Singapore, and more. Stroll along the water fountain or enjoy the sight of the manicured park grounds, complete with picturesque hills and curved walkways for a one-of-a-kind experience. Behold the wonders of Bohol and beyond!', 'public/destination/Le53cJJ6auZBDf03Of5eMwWm2nlEsmQkz8u1M0kv.jpeg', '2020-12-02 04:25:31', '2020-12-02 04:25:31', 46, 'Sikatuna', 'Barangay Libjo', '9.670724707742838', '123.97551144435405'),
(64, 'Pahangog Twin Falls & Cavern', 'This waterfalls is surrounded with big trees and lush vegetation giving the picturesque mountain scenery a cool and invigorating atmosphere. Its distinctive peculiarity features does not ebb even during the peak of the summer months, and its water glide gently in three streams over crags and ridges that form a semi-circle water, without fear of being carried away by strong current. One of them has a pool that catches fresh cool waters gushing from its sides.  The largest cascade is 50 ft. high more or less.  One can easily take a dip in its nature-made lagoon. One phenomenon very near the cataract are two caverns.  Both nature and time seem to have their tricky crafts combined to produce a bizarre interior in this cave with the gleaning stalactites and stalagmites of different shapes and sizes.', 'public/destination/QJPNw2zmMAWX9EfAS9c3tZXgpiJj8NiOKHlcWxA5.jpeg', '2020-12-02 04:44:12', '2020-12-02 04:44:12', 25, 'Dimiao', 'Guingoyuran', '9.645364253392794', '124.15904494895935'),
(65, 'Bagobo Beach', 'It is a beach with very fine white sand and fringed by tall coconut palm trees and other tropical varieties. The water is crystal clear and reveals an underwater world of such beauty that made divers and snorkelers come back from time to time bringing in their friends and acquaintances.\r\n\r\nSlowly the beach has gained recognition and now two beach resorts cater to guests lured by the tranquil beauty of the place. Offering first-class accommodations and excellent services are the Amarela Resort and the Bagobo Beach Resort. Further out from the beach is a famous dive spot, Arco Point where a cave teems with Cardinal and Sergeant Major fishes, white-eyed moray eels, black-finned snake eels, Raggy Scorpion fish as well as groupers, wrasse, angel, frog and butterfly fishes.', 'public/destination/R42eZtdyFdsxQOHi3ytbDSD6CNCAFV6SPcJEWkAz.jpeg', '2020-12-02 05:11:37', '2020-12-02 05:11:37', 38, 'Panglao', 'Barangay Libaong', '9.54899383191095', '123.77793825193643'),
(66, 'Momo Beach', 'Momo Beach is likewise blessed with white sand and cool crystal blue waters. It is located in the northern part of Panglao Island, specifically in the Barangay of Tangnan of Panglao town. The beach is relatively unknown of and is patronized by the locals.\r\n\r\nMomo beach is nearer to Doljo beach than to Alona Beach which is 20km away; a 40min ride away by motorized banca or 20min by car. There are no resorts as yet at Momo Beach.  A wonderful wall and slope diving site can be found near the beach with a depth of 40m where nudibranches, leaf fishes, red-eyed goby, harlequin file fish, pajama cardinal fish and many kinds of juvenile wrasse are sighted.', 'public/destination/bMQkNrqaEU2Jgwtbukl9eI35FPZLeYPaC7myClPa.jpeg', '2020-12-02 05:34:11', '2020-12-02 05:34:11', 38, 'Panglao', 'Bgry. Tangnan', '9.600328949500009', '123.75411587729454'),
(67, 'Anda Quinale White Sand Beach', 'When it comes to pristine, white sand beaches, Boracay, Puerto Galera or Puerto Princessa are often listed as the most favored destinations. Nonetheless, people looking for an alternative destination should consider Anda Quinale White Sand Beach in Bohol. Pamper your work-enslaved self, you deserve a break.\r\n\r\nIn terms of fineness and whiteness, the white sand of Anda Quinale wins by a large margin when compared to the other destinations. The white sand in Anda Quinale White Sand Beach is on par if not better than Boracay White Beach or Entalula Beach in El Nido. In fact, a visitor from the United Nations World Tourism Organization has once praised it as the “finest sand” he has ever seen. Stretch on a recliner, ease your aching muscles, grab a book and be lost in this palm-fringed tropical beach hideaway.\r\n\r\nAnda Quinale is also a great place to read up on your favorite book or simply stretch and relax your muscles with the tropical paradise as your background. How about exploring the vast stretch of the beach while you look for corals washed ashore? Or you can simply appreciate the setting of the sun and the gushing of the waves?', 'public/destination/vWQrfg8AeqN5XsXelkYZtAmpVwH7MRvMEJVftYkt.jpeg', '2020-12-02 05:56:20', '2020-12-02 05:56:20', 38, 'Anda', 'Poblacion', '9.742394452596729', '124.57619818820953'),
(69, 'Doljo Beach', 'Doljo Beach is located at Barangay Doljo, Panglao Island. It lies on the northwest side of the island and at its very tip. It is 15 kilometers from Alona Beach; 35 minutes by outrigger boat and 10 minutes away by car. The place is noted for its beautiful and exquisite seashells. With calm, deep and clear waters and the sea bed free of sea grasses plus myriads of colorful marine life, it is a favorite hang-out of local folks.\r\n\r\nSome private residences have put up native huts with seats and rent them out to the picnickers. A place where we had our reunion way back in 2005 (sorry but i forgot the name of the resort) had long cement tables and a covered pavilion aside from native huts. Old Talisay trees abound aside from the coconut palm trees. Further out to the sea of Doljo Beach can be found some beautiful dive spots: the Doljo House Reef and the Doljo Point dive site. Different kinds of corals and multi-colored fishes abound in the area. Diving and snorkelling in the area is a good alternative when the Habagat wind is strong at the Alona side.', 'public/destination/R8hIOzuUWtepqffcATr3wBf7x5fs1i4KNmBYaZxr.jpeg', '2020-12-02 06:23:51', '2020-12-02 06:23:51', 38, 'Panglao', 'Brgy. Doljo', '9.589024226355608', '123.72854067906141'),
(70, 'Sunshine Village Resort', 'This hotel has 30 rooms. The front desk is open daily from 8 AM - 8 PM. If you are planning to arrive after 8 PM please contact the property in advance using the information on the booking confirmation. Front desk staff will greet guests on arrival.', 'public/destination/whtfgZE1AHnoVhStr0OJ23o0DaWnw62bk1k6Bc15.jpeg', '2020-12-02 06:47:41', '2020-12-02 06:47:41', 39, 'Panglao', 'Sunshine Village, Purok 4, Barangay Bolod', '9.566778647281348', '123.79726859703064'),
(71, 'Henann Resort', 'It is a 5-star hotel that is set on 7 hectares of tropical grounds along Alona Beach, this upscale resort is 6 km from the Nova Shell Museum.', 'public/destination/5Q91Y0r02n1lu87RgdkPPiak6UL9odVxusvBPIiq.jpeg', '2020-12-02 07:08:20', '2020-12-02 07:09:49', 39, 'Panglao', 'Alona Beach', '9.548957131914882', '123.77443495168686'),
(72, 'Panglao Tropical Villas', 'About this hotel...\r\nOverlooking the Bohol Sea on the south coast of the island, this tropical beach resort is 3 km from Alona Beach, popular for snorkeling and scuba diving.\r\n\r\nCheck-in time: 14:00\r\nCheck-out time: 12:00\r\nPopular amenities\r\nPool\r\nWi-Fi\r\nfree\r\nParking\r\nfree\r\nBeach access', 'public/destination/wiGq7mBUCvZi4XWhI96JCsByvkNjRRmmDyxSOoCU.jpeg', '2020-12-02 07:29:06', '2020-12-02 07:29:06', 39, 'Panglao', 'Daorong Blvd.', '9.547383657194565', '123.75258467122316'),
(73, 'Amorita Resort', 'Set on a clifftop overlooking the Bohol Sea, this relaxed all-suite resort on 5 hectares bordering Alona Beach is 13 km from Hinagdanan Cave.\r\nBright, informal suites come with free Wi-Fi, flat-screen TVs, rainfall showers and minibars, as well as tea and coffeemaking facilities. Some upgraded quarters add balconies offering tubs and sea views. Room service is available. Kids age 11 and under stay at no cost with an adult.\r\n\r\nA breakfast buffet and loaner bikes are included. There’s a casual restaurant and a tapas bar. Other amenities include a private beach, a spa and a gym, plus 2 infinity pools offering sea views. Diving tours are available.', 'public/destination/V9MPIwIDkQDM97FPeAW9vz5l8N5IKZPNtDCGhn8a.jpeg', '2020-12-02 07:43:54', '2020-12-02 07:43:54', 39, 'Panglao', '1 Ester A. Lim Drive, Barangay Tawala', '9.54910426250578', '123.77620453908443'),
(74, 'Vanilla Sky Resort', 'An 11-minute walk from Alona Beach on Panglao Island, this relaxed Italian-inspired hotel is 13 km from Hinagdanan Cave.\r\nLaid-back rooms with pool-view balconies feature free Wi-Fi, satellite TV and minibars. Suites with sleeping lofts and sofabeds accommodate up to 6, and apartments offer separate living areas and kitchenettes. Room service is available.\r\n\r\nThere\'s a thatched-roof, open-air restaurant and bar adjacent to the outdoor pool. Other amenities include a volleyball court and free parking.\r\n\r\nCheck-in time: 14:00\r\nCheck-out time: 00:00', 'public/destination/R0p4wdMc9EvJerIC0SkTp53fQvxHk1owjWqRWqLi.jpeg', '2020-12-02 08:01:29', '2020-12-02 08:01:29', 39, 'Panglao', 'Alona', '9.550717404748104', '123.766895262146'),
(75, 'Gerarda\'s Place', 'Inside a historic family house with antiques, polished floorboards, sparkling cutlery and ambient jazz lies a restaurant that serves Filipino food with a twist. What sets Gerarda’s apart is its sheer confidence about the quality of its food – you don’t have to pay for it if you don’t like it. Associated with Alison’s Seafood Park chain, Gerarda’s provides an idyllic gastronomic experience that pays homage to Filipino cuisine.', 'public/destination/TKY7TgWHhlyEwHd37HR4wE5ERBeVRVLLaf8Uia0K.jpeg', '2020-12-02 08:18:40', '2020-12-02 08:18:40', 40, 'Tagbilaran City', '30 J.S. Torralba St.', '9.643227658306092', '123.85837870612144'),
(76, 'Lantaw Native Restaurant', 'An overlooking restaurant facing Dauis Island. The food are taste according to Filipino cooking culture like Cordova Express, Tinolang Manok Bisaya, Crispy Kare-kare, Sinugba Favorites and many more. \r\nContact Info: (038) 427 2485 / 0917 318 7305', 'public/destination/9UKmnaCZNAcREIFuueY6XDmwFEKk3SZo4343QtDC.jpeg', '2020-12-02 08:38:48', '2020-12-02 08:38:48', 40, 'Tagbilaran City', 'V.P. Inting Avenue, corner Mansasa-Dampas Road', '9.634245150798078', '123.86553953363895'),
(77, 'Socorro\'s Gourmanderia', 'The food is served carendaria style by checking out the pots they have cooked for the day and buying small plates. This gives you the flexibility to eat a variety of filipino flavours all in one meal. Unlike most carendarias, Socorro’s uses small slow cooker pots to keep the food warm and fresh whereas most places cook their food early and serve it cold.\r\n\r\nGet there before 12 noon to beat the rush and get the best options. The places is popular and many people go there on their lunch breaks. They’re also open for dinner but I’ve only been there for lunch so I’m not sure if the food offered is different.', 'public/destination/kJlQDNC5VOJMiqrIxuvZDZvTksQ36Wcs7i3lT5JO.jpeg', '2020-12-02 08:52:35', '2020-12-02 08:52:35', 40, 'Tagbilaran City', '10 P. Del Rosario St.', '9.638028575752825', '123.85975635572672'),
(79, 'Alimungaw Beach', 'JSpahpigps aojfpaf aihfihfqie wifhqoihfq qiwhf q', 'public/destination/73vir1pdfWHlO7I3YREwxS6HWFCNy6Zv0RiiwgGK.jpeg', '2020-12-12 00:47:18', '2020-12-12 00:47:18', 38, 'Panglao', 'Doljo', '9.546938626043408', '123.76805397644043'),
(80, 'Tagbilaran City Sea Port', 'The port of Tagbilaran is the city’s main seaport and is located on the northern edge of the city. Travelers to and from Bohol uses the port as its main mode of entry, more so than the airport. The port attends to more or less 5,000 passengers daily coming from Cebu on board fast crafts and regular ferries coming from Cagayan de Oro, Iligan, Dipolog, Dumaguete, and Cebu; not to mention cargo ships.', 'public/destination/q2pAsJ6z4NePuPR2tJbi0LBnoieGD41LNu86tuZp.png', '2021-02-15 09:11:06', '2021-02-15 09:11:06', 48, 'Tagbilaran City', 'Wharf Area', '9.648840157925243', '123.84699675216675'),
(81, 'Dao Integrated Bus Terminal', 'The Integrated Bus Terminal (IBT) located in the city district of Dao serves as the terminal point for public transport vehicles serving the inter-city routes within the province and also serves as the embarkation point for passengers taking the Pan-Philippine Highway (AH26) bus route from Tagbilaran to Metro Manila. There is also a long-distance bus station within Cogon market.', 'public/destination/0eFZLKuatgmrUvFr7L2WmaQH0fGlpS6GsuUGH4Ch.jpeg', '2021-02-15 09:24:36', '2021-02-15 09:24:36', 48, 'Tagbilaran City', 'Alfonso L. Uy St., Dao', '9.656394738912292', '123.87154969348907'),
(82, 'Bohol-Panglao Internation Airport', 'Bohol-Panglao International Airport  is an international airport in Panglao Island in the province of Bohol, Philippines. It replaced Tagbilaran Airport to support Bohol\'s increased passenger traffic due to tourism. The airport is dubbed as the first eco-airport in the Philippines and the country\'s green gateway.\r\n\r\nThe airport is officially classified as an international airport by the Civil Aviation Authority of the Philippines.\r\n\r\nThe airport serves as the gateway to Tagbilaran and the rest of mainland Bohol for domestic air travellers. It also is less than an hour\'s flight from Mactan–Cebu International Airport, which is a gateway to the Central Philippines for international tourists.', 'public/destination/Da93dWFWS1pPQkoBowvYsaRFeDmcbAPOp3D0wtGN.jpeg', '2021-02-15 09:33:59', '2021-02-15 09:33:59', 48, 'Panglao', 'Tawala', '9.570531748705934', '123.77157303466797'),
(83, 'Cogon Bus Terminal', 'Cogon Bus Terminal is a bus station located in Tagbilaran City. This terminal is for buses bound to nearby municipalities only. It\'s nearest landmark is the Plaza Marcela Supermarket and only 3 minutes away from the Tagbilaran City Sea Port.', 'public/destination/BFnWfZU6qgvVga8ohxgU4YfF2Qs95qWVdTqZkNOU.jpeg', '2021-02-15 09:46:03', '2021-02-15 09:46:03', 48, 'Tagbilaran City', 'Pamaong St. ,Cogon', '9.651648355869606', '123.85248991622925');

-- --------------------------------------------------------

--
-- Table structure for table `destination_media`
--

CREATE TABLE `destination_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `destination_id` int(11) NOT NULL DEFAULT 0,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_media`
--

INSERT INTO `destination_media` (`id`, `created_at`, `updated_at`, `destination_id`, `source`) VALUES
(5, '2020-11-16 08:45:56', '2020-11-16 08:45:56', 8, 'public/destination/rVJlglJPnMHwgLnQd0nOmvicTwLk4Ah3bHGdCQqF.jpeg'),
(6, '2020-11-16 08:45:56', '2020-11-16 08:45:56', 8, 'public/destination/gBcE1JGYb3iZvWVFmNcxnPcTvQhueyYs5NranEW5.jpeg'),
(7, '2020-11-16 08:45:56', '2020-11-16 08:45:56', 8, 'public/destination/ybettYvuX8I8vinKStpIFTlGIsBAqxNVOMpq1vAq.jpeg'),
(8, '2020-11-16 09:03:27', '2020-11-16 09:03:27', 9, 'public/destination/PE3hC1UCqfMz6d6cfN0oHLUuvVIWQ2UCX6L6wIPn.jpeg'),
(9, '2020-11-16 09:03:27', '2020-11-16 09:03:27', 9, 'public/destination/iwCV4akOFAnrlrfDaDQqLvyCk8pu9OetHhzKet2t.jpeg'),
(10, '2020-11-16 09:03:27', '2020-11-16 09:03:27', 9, 'public/destination/XaLKRuad5EMrUrlmvXfxiekg80SDXNmaK5KtXjQO.jpeg'),
(11, '2020-11-16 09:13:45', '2020-11-16 09:13:45', 7, 'public/destination/YAYYVTLktgIcBpfFZBuGdXpoZQhpluFF5ZQ4dIia.jpeg'),
(12, '2020-11-16 09:13:45', '2020-11-16 09:13:45', 7, 'public/destination/dyH7QlSELKlOR1nKSY4OwL5Hwcod4pfizHh6DwEb.jpeg'),
(13, '2020-11-16 09:13:45', '2020-11-16 09:13:45', 7, 'public/destination/57BZD5WYpISlph6IMlROxQdyyGZI9LBJPckv7wlc.jpeg'),
(14, '2020-11-16 09:28:57', '2020-11-16 09:28:57', 10, 'public/destination/AoHhJQyuyI7lIjgK4dbxbJmZdfYdqAVueJoSCQwt.jpeg'),
(15, '2020-11-16 09:28:57', '2020-11-16 09:28:57', 10, 'public/destination/ihv5MBOQhLDEDqjUJ9CEJs1w7FoU37QngiTLeWtG.jpeg'),
(16, '2020-11-16 09:28:57', '2020-11-16 09:28:57', 10, 'public/destination/N2EOMazz3yY46SdnpkxF6rbQ26yGFYilFkzJk58k.jpeg'),
(17, '2020-11-16 18:11:29', '2020-11-16 18:11:29', 11, 'public/destination/dTWpc17HGHu3ALZfdiuWr9HLXmld2EWQYynTRN9L.jpeg'),
(18, '2020-11-16 18:13:38', '2020-11-16 18:13:38', 12, 'public/destination/t6GnIwzdLQ4I9KnXyTTUJvaGRPlTMYzja0B7564J.jpeg'),
(19, '2020-11-16 18:14:28', '2020-11-16 18:14:28', 13, 'public/destination/365QAQLiQPXnVNovVpfIkqgMgnyr1lAb8ydoT200.jpeg'),
(20, '2020-11-16 18:14:29', '2020-11-16 18:14:29', 13, 'public/destination/tAKa0SS8AXUSZhNG2MMaX7LzE7ioBJmMXisBGLkY.jpeg'),
(21, '2020-11-16 18:14:29', '2020-11-16 18:14:29', 13, 'public/destination/YfO88YU1u28KQ5CXqBjpNH10lKCFVnhtWD7s6EQr.jpeg'),
(22, '2020-11-18 19:13:11', '2020-11-18 19:13:11', 14, 'public/destination/bJECLgX9Ol3NI3y3vZmtZHSw8MCJo9LOkbhLOMIJ.jpeg'),
(23, '2020-11-18 19:13:11', '2020-11-18 19:13:11', 14, 'public/destination/aU09osl5118QDnoKWEy3L7eZDdjjcMFwbB4JK54p.jpeg'),
(24, '2020-11-18 19:13:12', '2020-11-18 19:13:12', 14, 'public/destination/GodWMVHZUq6JTNTNpGUHy2aMQkCPm4RJXIFfwGAs.jpeg'),
(25, '2020-11-18 19:22:41', '2020-11-18 19:22:41', 15, 'public/destination/MJRrU5HWb2qmyukHcovrbl2LPiW2X7IR6874v9G3.jpeg'),
(26, '2020-11-18 19:22:41', '2020-11-18 19:22:41', 15, 'public/destination/qpSlUlaHEcb3Os0cb6WslHdi0yogR2j20wXNafKI.jpeg'),
(27, '2020-11-18 19:22:41', '2020-11-18 19:22:41', 15, 'public/destination/5HwxXItxZ0yoYU2TqPk4gHD0Pyh56JChluzRrozf.jpeg'),
(28, '2020-11-18 19:45:12', '2020-11-18 19:45:12', 16, 'public/destination/La1MjUTuqcbMFi046c0kOSH0Qrn7LdxULJ9e30dJ.jpeg'),
(29, '2020-11-18 19:45:12', '2020-11-18 19:45:12', 16, 'public/destination/me6QeOH7b5OyMHK9X9lz3DFnTNWOTaLIvVmckAeW.jpeg'),
(30, '2020-11-18 19:45:12', '2020-11-18 19:45:12', 16, 'public/destination/NpYRwIz2kbjd5KlxFCxEOtdkEga25Exwk1J38LZC.jpeg'),
(31, '2020-11-18 20:09:26', '2020-11-18 20:09:26', 17, 'public/destination/OPErsB2nZmMr7A7NC2pVVJaGcN6Zkup547GJWx74.jpeg'),
(32, '2020-11-18 20:09:26', '2020-11-18 20:09:26', 17, 'public/destination/MbrY1hLAhIU7mzh8A1S9BPBOih3WcWyj8BicYp9U.jpeg'),
(33, '2020-11-18 20:09:26', '2020-11-18 20:09:26', 17, 'public/destination/OKJ2Zkg3Wyf694nIJgNHTjXxm3E4oMo1bt1bHpGZ.jpeg'),
(34, '2020-11-18 20:34:10', '2020-11-18 20:34:10', 18, 'public/destination/ZwfW9LB5HYKMwH4om6NVg7BINlsOSgR4avAwvYVT.jpeg'),
(35, '2020-11-18 20:34:10', '2020-11-18 20:34:10', 18, 'public/destination/265g3Fvuh8532AzUqimmeluEJPq4tExtP4kCzJN2.jpeg'),
(36, '2020-11-18 20:35:40', '2020-11-18 20:35:40', 19, 'public/destination/6i4aVypYi8Ej0xm4Sxqc0qC1c6Oi2QkSdp0qPjZu.jpeg'),
(37, '2020-11-18 20:35:40', '2020-11-18 20:35:40', 19, 'public/destination/mUWxk6EnVrvXGbS5sOYtw4TbWA72XgB0FkbSLO5T.webp'),
(38, '2020-11-18 20:37:22', '2020-11-18 20:37:22', 20, 'public/destination/8uiwvoWMrGLMUzqfCLFlEvC6X4WkQYnVcnyzThtW.jpeg'),
(39, '2020-11-18 20:37:22', '2020-11-18 20:37:22', 20, 'public/destination/UpyzMc1NGvdlfV4G0hNBK9uBAKUxnTiZK1Dk5TVf.jpeg'),
(40, '2020-11-18 20:44:19', '2020-11-18 20:44:19', 21, 'public/destination/BONpmVKuHY5lAn1BwVFFnm3jdy8tTN0E7gB68m2B.jpeg'),
(41, '2020-11-18 20:44:19', '2020-11-18 20:44:19', 21, 'public/destination/fcDUPpoJm2DP5pLjX3ErV6QBoaRTXePvQqmR3H2F.jpeg'),
(42, '2020-11-18 20:44:19', '2020-11-18 20:44:19', 21, 'public/destination/1qXsjYjCgXeIrh0cp6ZlOYqzzG40kUop4k3Jx6qg.jpeg'),
(43, '2020-11-18 21:01:32', '2020-11-18 21:01:32', 22, 'public/destination/I70M1IUuoDS8nssl8S0aP5jeCVKoUCoVIWerc9Ri.jpeg'),
(44, '2020-11-18 21:01:32', '2020-11-18 21:01:32', 22, 'public/destination/KVlDzr6kmSK2KfVTSVDP9BosQGEvOqOqd3Q54tYs.jpeg'),
(45, '2020-11-18 21:01:33', '2020-11-18 21:01:33', 22, 'public/destination/BhrBBl4Wpfd7CJevYX5JfQdIAktPxVWezCkQyBhj.jpeg'),
(46, '2020-11-18 21:54:33', '2020-11-18 21:54:33', 23, 'public/destination/epF60ofW6EaK2zKVtXcEzDwd5D6uXNHyOtMPCIRI.jpeg'),
(47, '2020-11-18 21:54:33', '2020-11-18 21:54:33', 23, 'public/destination/B6IwO4llVkjlb7sKYT5aXCzGqnEgZPoIxcJUMfS1.jpeg'),
(48, '2020-11-18 21:54:33', '2020-11-18 21:54:33', 23, 'public/destination/CpQXIdCDYbJ4VlUGCy5scRyllxUQ0txT6wk6wBf8.jpeg'),
(49, '2020-11-20 01:27:43', '2020-11-20 01:27:43', 24, 'public/destination/f3rblBgepDEJa81B1930D46SZHUwO95zgKRO55k8.webp'),
(50, '2020-11-20 01:27:43', '2020-11-20 01:27:43', 24, 'public/destination/ZBoyR2chhRv0r4O8uy1bGCqW15FSVSLXEamWPCEx.webp'),
(51, '2020-11-20 01:27:43', '2020-11-20 01:27:43', 24, 'public/destination/WRtBBW9cAEeiyb2IYFFWW21GK9FA7gPHKAcJvXxy.webp'),
(52, '2020-11-20 06:35:17', '2020-11-20 06:35:17', 25, 'public/destination/DNQxxOe92DySF7goRUmdVUJKKbDJFtskjZSLCJq3.jpeg'),
(53, '2020-11-20 06:35:17', '2020-11-20 06:35:17', 25, 'public/destination/sPRD3vL5YuwFC4EEQRWKly0rJlNDrIg3SNF6DDrs.jpeg'),
(54, '2020-11-20 06:35:17', '2020-11-20 06:35:17', 25, 'public/destination/Y1RjQYK9kwjjBW1yDR9KyXcBjIH4FNSE3c37WC7m.jpeg'),
(55, '2020-11-20 07:06:52', '2020-11-20 07:06:52', 26, 'public/destination/wVinIufhG6drO8eZ3M7GvRfcdLE6zWv8jnoe4X1M.jpeg'),
(56, '2020-11-20 07:06:52', '2020-11-20 07:06:52', 26, 'public/destination/REjmkFSfFHXdKRrnTKkLpLFvwsZlOMu43DdsJVCp.jpeg'),
(57, '2020-11-20 07:06:52', '2020-11-20 07:06:52', 26, 'public/destination/ZAUqPhhioEYorbNRsgzQwmvMSECNvN1hj2Wr0vQH.jpeg'),
(58, '2020-11-20 07:28:58', '2020-11-20 07:28:58', 27, 'public/destination/zZe2VtkH7D9EAXGTydxri363R3IyYujtKx6IBDV4.jpeg'),
(59, '2020-11-20 07:28:58', '2020-11-20 07:28:58', 27, 'public/destination/ZeAHezdt36tTzGs73dSscYZkwjJON0nFVCpte0Jf.jpeg'),
(60, '2020-11-20 07:28:58', '2020-11-20 07:28:58', 27, 'public/destination/xdQorkzkvRoQ2RgR6ikgTZTrQH4lOsAufmdg2h55.jpeg'),
(61, '2020-11-23 00:13:38', '2020-11-23 00:13:38', 28, 'public/destination/Md2VtlheUITwgA3iQ2T6GimeLxFZrF887xby5PE8.jpeg'),
(62, '2020-11-23 00:13:38', '2020-11-23 00:13:38', 28, 'public/destination/mUtRBJvze7BpStDmyfPLlc0N4efxcC0WleXurFPB.jpeg'),
(63, '2020-11-23 00:13:39', '2020-11-23 00:13:39', 28, 'public/destination/r8VjdaENDNmZexeqFah4r0iQ3he1kNeffiZNQOfb.jpeg'),
(64, '2020-11-23 00:41:46', '2020-11-23 00:41:46', 29, 'public/destination/GrDbzHiPrLDrb4JLi0Djm5axG71YVKvwDSisNL47.jpeg'),
(65, '2020-11-23 00:41:46', '2020-11-23 00:41:46', 29, 'public/destination/HdvDbwydNax7Cnqdn6fJayxMU48gjCnrUs17pVwk.jpeg'),
(66, '2020-11-23 00:41:47', '2020-11-23 00:41:47', 29, 'public/destination/qIsCODeZ1TRI7uhZkMQma0WBKwKV6gZ1n5eLsQpN.jpeg'),
(67, '2020-11-23 01:11:13', '2020-11-23 01:23:49', 30, 'public/destination/npSCkeoujvA6IWBDUox1iCNFN75sG7uzwu3ydFgJ.jpeg'),
(68, '2020-11-23 01:11:13', '2020-11-23 01:23:49', 30, 'public/destination/lVLbIsetpX31Z9HfNPWtDcKNILQ6ORART7BA7LJK.jpeg'),
(69, '2020-11-23 01:11:13', '2020-11-23 01:23:49', 30, 'public/destination/KchcydzikQHh1AYPqe7QqNE1nr9v1sfq2njAFxTA.jpeg'),
(70, '2020-11-23 01:42:41', '2020-11-23 01:42:41', 31, 'public/destination/CBqKaKoxZYJugILEiBDRMtW5IW6MPzimy6qD5Aar.jpeg'),
(71, '2020-11-23 01:42:41', '2020-11-23 01:42:41', 31, 'public/destination/4gptyAQzd8bCAA2BbI2yPF9e2d3I2UZbMor9ASX3.jpeg'),
(72, '2020-11-23 01:42:41', '2020-11-23 01:42:41', 31, 'public/destination/RXkBJXXl13V5YUUAItY4tUOZRFA1bpkJGDzFUoVQ.jpeg'),
(73, '2020-11-23 04:04:13', '2020-11-23 04:04:13', 32, 'public/destination/z9mqr6qHTcbuiwIWlnu4TxgjNy4Cq5Qu3ECrrYoF.jpeg'),
(74, '2020-11-23 04:04:45', '2020-11-23 04:04:45', 33, 'public/destination/GQpdHs9Ho4gdlxEhqNTKf68LGl9cPLAItIMfyDWf.jpeg'),
(75, '2020-11-23 04:05:50', '2020-11-23 04:06:53', 34, 'public/destination/qRVwDjAAu89uXEldOQcK5UDgtfKVGzkQ77JQX8dc.jpeg'),
(76, '2020-11-23 04:05:50', '2020-11-23 04:06:53', 34, 'public/destination/uu472EJ8FvtEhR2Q3YPAMMSxxfcJf8xmx4oUyYIG.jpeg'),
(78, '2020-11-23 04:19:20', '2020-11-23 04:19:20', 35, 'public/destination/s8ilo8b38pua7rdA0zurAGbRUFiO0JmTc68pmwpB.jpeg'),
(79, '2020-11-23 04:19:20', '2020-11-23 04:19:20', 35, 'public/destination/AauJkuWBfWEv9UMtOlKVKuFGeAxUovrMsTAZZHwJ.jpeg'),
(80, '2020-11-23 04:19:20', '2020-11-23 04:19:20', 35, 'public/destination/WDHPvRQevSHhU0lzyhjKLl3n71mTECKoHNkqQW6Y.jpeg'),
(81, '2020-11-23 08:16:00', '2020-11-23 08:16:00', 36, 'public/destination/Vpy4mkdYunasopoKjlNqh3I2HhD2mvgXBNsGg0Un.jpeg'),
(82, '2020-11-23 08:16:01', '2020-11-23 08:16:01', 36, 'public/destination/OpVzLo6qGGeBpDYXpEHl9QAqV2RBHjyCaE9cmpFL.jpeg'),
(83, '2020-11-23 08:16:01', '2020-11-23 08:16:01', 36, 'public/destination/31t0OooEAmfl4Ek5DdZiuxpaNzBYjjrRe01G8xX7.jpeg'),
(84, '2020-11-23 08:42:29', '2020-11-23 08:42:29', 37, 'public/destination/vGMlpJdj1krrDiYZ75kb3escX6dFCCh67lpPTMY2.jpeg'),
(85, '2020-11-23 08:42:29', '2020-11-23 08:42:29', 37, 'public/destination/vdqYVReoURI9e3IocMtCcCS6ik2FGNA2oqMcOInI.jpeg'),
(86, '2020-11-23 08:42:29', '2020-11-23 08:42:29', 37, 'public/destination/7KbvhDMumw1Vpon8C2bKRMvKOeCMWU8c3JuVn0Hj.jpeg'),
(87, '2020-11-23 09:00:17', '2020-11-23 09:00:17', 38, 'public/destination/ifiMF3PwwhqkHr0l3mbQQaPPjTfsvyc1HWYn4KBR.jpeg'),
(88, '2020-11-23 09:00:18', '2020-11-23 09:00:18', 38, 'public/destination/qXIHlhAfPWJExo5inUMhMcCjbp7YpgSdfRyIu2QE.jpeg'),
(89, '2020-11-23 09:00:18', '2020-11-23 09:00:18', 38, 'public/destination/57NOgeJkrFUhqjdnRU14kz6bseZGwSwRsz8ulJpV.jpeg'),
(90, '2020-11-23 09:21:07', '2020-11-23 09:21:07', 39, 'public/destination/dRzt7TIGaYFU3IaiJDQUFX9RJvA6lSTR6Sh2kZjA.jpeg'),
(91, '2020-11-23 09:21:07', '2020-11-23 09:21:07', 39, 'public/destination/iC9MvVhfZP2LjeuV5aEcg9fGGQm9sU7EYA2GsR5s.jpeg'),
(92, '2020-11-23 09:21:07', '2020-11-23 09:21:07', 39, 'public/destination/zZPYYIAmeqX7rThpy0Va88d6Z42ipMSFLLFYrRwW.jpeg'),
(93, '2020-11-23 19:33:45', '2020-11-23 19:33:45', 40, 'public/destination/ktMor54mTtCZYf83BusZ0g4bVEPOyuP4NojJoZzT.jpeg'),
(94, '2020-11-23 19:33:46', '2020-11-23 19:33:46', 40, 'public/destination/92dZz8szTmBvw9bMdVoOpGjxzadQdgCaVnEgL219.jpeg'),
(95, '2020-11-23 19:33:46', '2020-11-23 19:33:46', 40, 'public/destination/XCV9PEINjYhG8IJ10CwSlschEZghW1vD67F6PlYm.jpeg'),
(96, '2020-11-24 05:18:50', '2020-11-24 05:18:50', 41, 'public/destination/MKo5Hdn3KoTizyScR3jGDgN0IPnpmuV0RFNcQDjP.jpeg'),
(97, '2020-11-24 05:18:50', '2020-11-24 05:18:50', 41, 'public/destination/wVKTs8kOR2ebi1RoTlyMOo8ZKGwZfvOiFfgWJ8pH.jpeg'),
(98, '2020-11-24 05:18:50', '2020-11-24 05:18:50', 41, 'public/destination/yo1GLjSWI35MhrlCXpJNtAyCkQkvwlQUpRDmmIMb.jpeg'),
(99, '2020-11-24 05:51:27', '2020-11-24 05:51:27', 42, 'public/destination/4DGjNdIOg9mSsr0yLC4BGgsenVpNJ45f9VPjnjLc.jpeg'),
(100, '2020-11-24 05:51:27', '2020-11-24 05:51:27', 42, 'public/destination/RtKkTrsNfYmuqrIJi3grvcq5A6LuE1eCMUWgiD89.jpeg'),
(101, '2020-11-24 05:51:27', '2020-11-24 05:51:27', 42, 'public/destination/RjXVlVWHLMJX8rueLoqlKiQnKjGVFY1jdl7Ydylu.jpeg'),
(102, '2020-11-30 04:14:47', '2020-11-30 04:14:47', 43, 'public/destination/VJxnU0zDZo98IM3oC8QkhIFBhbSv9jFUgPtu9kfa.jpeg'),
(103, '2020-11-30 04:14:47', '2020-11-30 04:14:47', 43, 'public/destination/4P0n6nOmNgVjpAYtytHUnqSRi6uhJj4YURawhu1g.jpeg'),
(104, '2020-11-30 04:14:47', '2020-11-30 04:14:47', 43, 'public/destination/7sxeht7ujwREdPvgLLqVzsXsHwRjReTKA0ofv9Kx.jpeg'),
(105, '2020-11-30 04:44:20', '2020-11-30 16:09:33', 44, 'public/destination/lsIKR0N5cmmeiUEMiyASXVeyYceZTgkDgQepm9fY.jpeg'),
(106, '2020-11-30 04:44:20', '2020-11-30 16:09:33', 44, 'public/destination/xyKfJAorLryIV6inIWBHFHfhSznU8edaQGBvLj7N.jpeg'),
(107, '2020-11-30 04:44:21', '2020-11-30 16:09:33', 44, 'public/destination/1hoAAFaQa8QERJUSOMareBkJB0keJEBf40vfpMrx.jpeg'),
(108, '2020-11-30 06:00:47', '2020-11-30 06:00:47', 45, 'public/destination/qY61MPauzuZ0EwyhxHCqmuyCdELIRQcOS492gRjN.jpeg'),
(109, '2020-11-30 06:00:47', '2020-11-30 06:00:47', 45, 'public/destination/iNHhoImE7IT8Ph2Cn3y6Gdy8qq7f2FvjMOX3s5EB.jpeg'),
(110, '2020-11-30 06:00:47', '2020-11-30 06:00:47', 45, 'public/destination/unkdN5OEY7r63VCgR2bitQS3Sd4xiCafYNodVvHE.jpeg'),
(111, '2020-11-30 16:27:09', '2020-11-30 16:32:54', 46, 'public/destination/oU8wx9ErqtUr9B87qmDrnGzxt4AD0a4riwlKCT5Z.jpeg'),
(112, '2020-11-30 16:27:09', '2020-11-30 16:32:54', 46, 'public/destination/PY1iMVMXrr1X0FQz2k0Pq3yj6mg0aekXZ4cq66cx.jpeg'),
(113, '2020-11-30 16:32:54', '2020-11-30 16:32:54', 46, 'public/destination/HOSvT0RLBaEBTZ4ymsk7ZZk4TWW9eDsnKl0FtVXf.jpeg'),
(114, '2020-11-30 17:00:14', '2020-11-30 17:00:14', 47, 'public/destination/2LIkbETKPSXJUdlCtxTQy5j1tSKpM46WHjQgOcCr.jpeg'),
(115, '2020-11-30 17:00:15', '2020-11-30 17:00:15', 47, 'public/destination/PgFd8BrqrpoMneaMflgsyiKF1H0rb45WHCjHUq54.jpeg'),
(116, '2020-11-30 17:00:15', '2020-11-30 17:00:15', 47, 'public/destination/ysl3znE8CXZQNwf3wiFrEJeqVtUFVHCZpZxnRAQa.jpeg'),
(117, '2020-11-30 17:19:04', '2020-11-30 17:19:04', 48, 'public/destination/RcsyRVCXV6iwbvCSZeb0gjMoG7dTZX8FBFi9vChn.jpeg'),
(118, '2020-11-30 17:19:04', '2020-11-30 17:19:04', 48, 'public/destination/bX9xWac8WuSGz9wZNFy5kwLaiuog0FmwqbhkkFIF.jpeg'),
(119, '2020-11-30 17:19:04', '2020-11-30 17:19:04', 48, 'public/destination/wegsToeuBdMXRo0GGNI3YilBEEYZT7wVGtYiFGPR.jpeg'),
(120, '2020-11-30 17:29:55', '2020-11-30 17:29:55', 49, 'public/destination/G77zsuo1dU5aDOdeDRLuAmNHJ3I1h9pxi8sa4ibp.jpeg'),
(121, '2020-11-30 17:29:55', '2020-11-30 17:29:55', 49, 'public/destination/eq5aPmdasD1rSoeriztcKYvO8CbuhyLmXHRVCjZB.jpeg'),
(122, '2020-11-30 17:29:55', '2020-11-30 17:29:55', 49, 'public/destination/F8avtav9uoIFcejYZdTXLIdgJKnZPrKtztdvu04I.jpeg'),
(123, '2020-11-30 18:35:07', '2020-11-30 18:35:07', 50, 'public/destination/XswfkGU7exDlC3q4pOQT1xLaj7oZoRND2MwPX8uK.jpeg'),
(124, '2020-11-30 18:35:07', '2020-11-30 18:35:07', 50, 'public/destination/FAz6MY5hNA1hvu3VANvccLRH5gQuXVLzZAndvPCy.jpeg'),
(125, '2020-11-30 18:35:07', '2020-11-30 18:35:07', 50, 'public/destination/nioxQ4kFjNAG936sGSOFJY3Olz3UZZGa5nrSrY0I.jpeg'),
(126, '2020-11-30 18:53:05', '2020-11-30 18:53:05', 51, 'public/destination/ZmfrajQUZ5rG6xZIJX18TgzH1gFMngrJSzizl3n0.jpeg'),
(127, '2020-11-30 18:53:05', '2020-11-30 18:53:05', 51, 'public/destination/mJRFLjPmyck8cUk1KbkL3rz4o8wi7zxSxm9KzRDj.jpeg'),
(128, '2020-11-30 18:53:05', '2020-11-30 18:53:05', 51, 'public/destination/nj51n4FDsEi3VTz2VtzG5A3Z0tzvtXVBoUK3MOPX.jpeg'),
(129, '2020-12-01 10:13:57', '2020-12-01 10:13:57', 52, 'public/destination/4NhAf1LdByYaJu3uZSPnRt272kvCy6dhIijJcDOw.jpeg'),
(130, '2020-12-01 10:13:57', '2020-12-01 10:13:57', 52, 'public/destination/mpNEZsk3jgWwug5uV1CBu2m79ogFGGgWnKl4CetZ.jpeg'),
(131, '2020-12-01 10:13:57', '2020-12-01 10:13:57', 52, 'public/destination/EztPKpg8nc70HgVUbwDokinQ1JWRpKKXbCARiAul.jpeg'),
(132, '2020-12-01 10:37:22', '2020-12-01 10:37:22', 53, 'public/destination/akfzvlZr13FUmIiAzGzueyevzBza6xBCjqRsf8VJ.jpeg'),
(133, '2020-12-01 10:41:47', '2020-12-01 10:41:47', 54, 'public/destination/ZzO2r48DKCmwnRv2mZwCFq1AfyvlC68U5lqKmRLO.jpeg'),
(134, '2020-12-01 10:41:47', '2020-12-01 10:41:47', 54, 'public/destination/b9qhewSSVxDA3b8NFMMX4oDfUdlIMcGa1SeXBMpO.jpeg'),
(135, '2020-12-01 10:41:48', '2020-12-01 10:41:48', 54, 'public/destination/WtoKUQcqL8XJH3HK0Za3E9BKF6kalfHYSmNgqQXQ.jpeg'),
(136, '2020-12-01 11:02:22', '2020-12-01 11:02:22', 55, 'public/destination/QtefK1NBum5pnH3N32yr7lEQRoHJKayOBGqZpueV.jpeg'),
(137, '2020-12-01 11:02:22', '2020-12-01 11:02:22', 55, 'public/destination/iXGQHDSuMtdQq7E4ukvh2IEhvSU0X8beyzJaq4Yz.jpeg'),
(138, '2020-12-01 11:02:22', '2020-12-01 11:02:22', 55, 'public/destination/OUx9PRB7aeR6gNC37UpH7Z3GF5VYb93AwzHi6bMM.jpeg'),
(139, '2020-12-01 11:20:08', '2020-12-01 11:20:08', 56, 'public/destination/EbpKSmNc94JzDPZgwaelcaGf3aeLTeLZScdqq4Az.png'),
(140, '2020-12-01 11:20:08', '2020-12-01 11:20:08', 56, 'public/destination/m08xDy6dItGw88M407iyvVVb3GKWZPjCSdk9RRZi.jpeg'),
(141, '2020-12-01 11:20:09', '2020-12-01 11:20:09', 56, 'public/destination/Q9K5cdkzrFyV3STPdFP7rXPkFExc531bHl0mZyQ4.jpeg'),
(142, '2020-12-01 11:36:07', '2020-12-01 11:36:07', 57, 'public/destination/loT77vuzmFog8t75Jc6ujfqTzAVFdrmpetPeifC3.jpeg'),
(143, '2020-12-01 11:36:07', '2020-12-01 11:36:07', 57, 'public/destination/2K7fuBiTQcNyk3OqecQaHusm93uL90Vsdll7Ph5U.jpeg'),
(144, '2020-12-01 11:36:07', '2020-12-01 11:36:07', 57, 'public/destination/xgWa7ZJiWeqZlGatXmJ2WoTcZJjgiUcxe3Tt9j6J.jpeg'),
(145, '2020-12-01 11:47:25', '2020-12-01 11:47:25', 58, 'public/destination/Yi8zcvSJ5QdzfexMEJNRBW93oXmmpyEcE5gkJLNO.jpeg'),
(146, '2020-12-01 11:47:25', '2020-12-01 11:47:25', 58, 'public/destination/4n3qJamX0XBVxUIZHxLE7x3L2ofJH9nKsmLNttm8.jpeg'),
(147, '2020-12-01 11:47:25', '2020-12-01 11:47:25', 58, 'public/destination/ZKoOsjIdgx9fUbmwI2FLV2Fu3vCH3BH9lTKHOvqX.jpeg'),
(148, '2020-12-01 12:15:14', '2020-12-01 12:15:14', 59, 'public/destination/l6h2Kil8mHIG9w7eQrhhzXB15QxKZhNwF1xadaXb.jpeg'),
(149, '2020-12-01 12:15:14', '2020-12-01 12:15:14', 59, 'public/destination/Ma94fZjlfCwOA1nM1W4oCYBgMNukkBct3bcVbrDH.jpeg'),
(150, '2020-12-01 12:15:15', '2020-12-01 12:15:15', 59, 'public/destination/b4v3M74zL49q9eUm9Hm1TA2RNNGC6jOggpIxnLhl.jpeg'),
(151, '2020-12-02 03:22:34', '2020-12-02 03:22:34', 60, 'public/destination/Q0OiPO68AUwlaOu4p7aVdkS2ssVxRQ0qfP3m4PfY.jpeg'),
(152, '2020-12-02 03:22:34', '2020-12-02 03:22:34', 60, 'public/destination/GOBDLTdhi5BfdFwoTlLer3ahEqIJOKS3vKtBoVed.jpeg'),
(153, '2020-12-02 03:22:34', '2020-12-02 03:22:34', 60, 'public/destination/HxGITr0EBJw7nNfJ03TzHZFSRHOfhDi1j30xy6Qr.jpeg'),
(154, '2020-12-02 03:49:06', '2020-12-02 03:49:06', 61, 'public/destination/YwNtAZQJa5RdKsL5uFt8XEzMKF5z42tGf7KvLS9o.jpeg'),
(155, '2020-12-02 03:49:06', '2020-12-02 03:49:06', 61, 'public/destination/8uhSZ1aF70xCp06efqVjtjqDU0LLXAf6NFQVJL4j.jpeg'),
(156, '2020-12-02 03:49:06', '2020-12-02 03:49:06', 61, 'public/destination/y6Pz0HxELtvm8G1w8I0CZ2vqZsXQaQDK2FAfAa79.jpeg'),
(157, '2020-12-02 04:17:48', '2020-12-02 04:17:48', 62, 'public/destination/Eh1TiD4qnCQaS1QZmZJ4ealV0owt23FdvGOS6PGj.jpeg'),
(158, '2020-12-02 04:17:48', '2020-12-02 04:17:48', 62, 'public/destination/FfTojp3awUlQvndBktiYvtnpSJ9qcLj6BKvuny6v.jpeg'),
(159, '2020-12-02 04:17:48', '2020-12-02 04:17:48', 62, 'public/destination/pkfsrpUPvtliTa3QS56ouHubz4InYez8dzfgnblX.jpeg'),
(160, '2020-12-02 04:25:32', '2020-12-02 04:25:32', 63, 'public/destination/JtItfQhzcVSRruMBtH3gd4jR3j0UgnFZpGMjDGZy.webp'),
(161, '2020-12-02 04:25:32', '2020-12-02 04:25:32', 63, 'public/destination/U4vrIQrGd9Vat9EFtjcku4DC4PoWFYqrvVjR1G4p.jpeg'),
(162, '2020-12-02 04:25:32', '2020-12-02 04:25:32', 63, 'public/destination/ylHfbdyHaqGrwI6JF4aXPT08WBLLgd6AkMMnqC31.jpeg'),
(163, '2020-12-02 04:44:12', '2020-12-02 04:44:12', 64, 'public/destination/P3eKeTMVPaijWqgjRPBdN8ZNpnBHA5TdeHisAQpI.jpeg'),
(164, '2020-12-02 04:44:12', '2020-12-02 04:44:12', 64, 'public/destination/ciFtDK3F7dXMenDfw0yNwiDOSPhCqLequKEvUqUB.jpeg'),
(165, '2020-12-02 04:44:12', '2020-12-02 04:44:12', 64, 'public/destination/O0JKK1vS1UoyP4ctQ3aVZJFkc6xrT72XR6ltaaYb.jpeg'),
(166, '2020-12-02 05:11:37', '2020-12-02 05:11:37', 65, 'public/destination/PEZRMXIKq5InaOvpdvIlGxZ3oPzQd0RDftQhjkWN.jpeg'),
(167, '2020-12-02 05:11:37', '2020-12-02 05:11:37', 65, 'public/destination/w3fL9TLX0jOqXTXM0ZG4OMAYzrgw9AjOAkQQDZbu.jpeg'),
(168, '2020-12-02 05:11:37', '2020-12-02 05:11:37', 65, 'public/destination/4uVWUUkDPTz75jky9I3RXIadPanetqb692KrSVgk.jpeg'),
(169, '2020-12-02 05:34:11', '2020-12-02 05:34:11', 66, 'public/destination/tTSxbSOBoCXh8lltBmCOcGq99RJIPTzPRikx5D80.jpeg'),
(170, '2020-12-02 05:34:11', '2020-12-02 05:34:11', 66, 'public/destination/Ejk8BC1l1HVty9wzTULnVBoeK9609XUy0Oxy3xKZ.jpeg'),
(171, '2020-12-02 05:34:11', '2020-12-02 05:34:11', 66, 'public/destination/cqcw7N8UdezTa719XAdBKHntJTbtUgdYAmfWGDtP.jpeg'),
(172, '2020-12-02 05:56:20', '2020-12-02 05:56:20', 67, 'public/destination/uqBq5brHNNEafs8N2dfcbSaf2fjkWwGPwRuuKBIv.jpeg'),
(173, '2020-12-02 05:56:21', '2020-12-02 05:56:21', 67, 'public/destination/EaMfGKeH3xK0p5wMTiiORlk3FCv1cGl2lY5M4caN.jpeg'),
(174, '2020-12-02 05:56:21', '2020-12-02 05:56:21', 67, 'public/destination/x0W2L82bd1atfTd1kbtFcS7G4zG6drmFTB1sRRt1.jpeg'),
(175, '2020-12-02 06:17:42', '2020-12-02 06:17:42', 68, 'public/destination/e6FKQvDqSf8Yw4KY9FayrzV644ndZmCtB88y2oJk.jpeg'),
(176, '2020-12-02 06:17:42', '2020-12-02 06:17:42', 68, 'public/destination/BNpDfrPUhoEyYXZfwkVKVZxKzvDpvyM0mql3XcDA.jpeg'),
(177, '2020-12-02 06:23:52', '2020-12-02 06:23:52', 69, 'public/destination/igNNKTBK2AaGuTrV6r1A2TuGr7vTwy6wxGTPnoRI.jpeg'),
(178, '2020-12-02 06:23:52', '2020-12-02 06:23:52', 69, 'public/destination/SCdaVMfU8FLMrDemrZLhgwwfAOEXpfYW2rNAB63I.jpeg'),
(179, '2020-12-02 06:23:52', '2020-12-02 06:23:52', 69, 'public/destination/O1RTHc3nNEi0ljgqyEA9RRpSxwTpdpK8N2eO2Wqz.jpeg'),
(180, '2020-12-02 06:47:41', '2020-12-02 06:47:41', 70, 'public/destination/gscAA9WAxHiOV4prECna2E5SVk1h1CQ4VBSHMtDl.jpeg'),
(181, '2020-12-02 06:47:41', '2020-12-02 06:47:41', 70, 'public/destination/a9T0gEfIdPTWYkOjchIkSUe1O8Zher7xwL4wy7T5.jpeg'),
(182, '2020-12-02 06:47:42', '2020-12-02 06:47:42', 70, 'public/destination/Fp45jW5olMLbKo87o73wCumP7Pp3kGh2jPRvA8Aa.jpeg'),
(183, '2020-12-02 07:08:20', '2020-12-02 07:08:20', 71, 'public/destination/dltXsG5ygT9GXsxUqtkGiNh0yjrSy0evq3Vzw5IY.jpeg'),
(184, '2020-12-02 07:08:20', '2020-12-02 07:08:20', 71, 'public/destination/owyYWqV0RkCVbpddc7xwGoMc5GjQN2084zrGJzK3.jpeg'),
(185, '2020-12-02 07:08:20', '2020-12-02 07:08:20', 71, 'public/destination/drtEwTPlNPpUcUgBowXnPaQTP27jYzpOTJtPyyJm.jpeg'),
(186, '2020-12-02 07:29:06', '2020-12-02 07:29:06', 72, 'public/destination/25fzCXsWKx1eEGKMoARr5NkchHl5r6EgbNre1Xbr.jpeg'),
(187, '2020-12-02 07:29:06', '2020-12-02 07:29:06', 72, 'public/destination/eI1Ar84mQaK9wiq8JyXVnSFlndQqSF0n46vBf0v6.jpeg'),
(188, '2020-12-02 07:29:07', '2020-12-02 07:29:07', 72, 'public/destination/5KCLKLT1eP1nyXZSUv7CzdcykpWU1WbVx1CPgw2P.jpeg'),
(189, '2020-12-02 07:43:54', '2020-12-02 07:43:54', 73, 'public/destination/oaWPeSehFm4JaRzzG4o0VlHjysvPnz836uN6a574.jpeg'),
(190, '2020-12-02 07:43:54', '2020-12-02 07:43:54', 73, 'public/destination/ZmHK6tosetWZhAhyRjOE4yI7cm1wrEiuL8BL7MVi.jpeg'),
(191, '2020-12-02 07:43:54', '2020-12-02 07:43:54', 73, 'public/destination/q2dBqk3suHQlZAeKOzsil1sBCBPYt94G3YdUDjW8.jpeg'),
(192, '2020-12-02 08:01:29', '2020-12-02 08:01:29', 74, 'public/destination/VIfD3NbuZOP9uXZbvFHSRYaFHXT8GPdu0ddKl5zb.jpeg'),
(193, '2020-12-02 08:01:29', '2020-12-02 08:01:29', 74, 'public/destination/UuOrHKaGRbPSG4bapIibHSeIFki7Oc1V71kx3vUr.jpeg'),
(194, '2020-12-02 08:01:29', '2020-12-02 08:01:29', 74, 'public/destination/fAL2oZvLaJ2XUwMnDPiH3cwJYZCrl50zQAamOpr5.jpeg'),
(195, '2020-12-02 08:18:40', '2020-12-02 08:18:40', 75, 'public/destination/iZIMj0AWVwLVBB7zi4YdzxWH8LFjrpP0UikwOkwL.jpeg'),
(196, '2020-12-02 08:18:40', '2020-12-02 08:18:40', 75, 'public/destination/K2xEEu7QGry8H5mrEVd4YaYj8oZA5BWaysKqspeE.jpeg'),
(197, '2020-12-02 08:18:40', '2020-12-02 08:18:40', 75, 'public/destination/BD0o7n6Qv1vHNKSv1BYr2jLf9VPmpVzH2unSbIlX.jpeg'),
(198, '2020-12-02 08:38:48', '2020-12-02 08:38:48', 76, 'public/destination/MKolcyFVG0xa1JAHpHTeyGCh1YiDdC89hRhkDWww.jpeg'),
(199, '2020-12-02 08:38:48', '2020-12-02 08:38:48', 76, 'public/destination/3zyMhYOPEcgeqxG02r5NjLAT8R241hAiAP6lzrpo.jpeg'),
(200, '2020-12-02 08:38:48', '2020-12-02 08:38:48', 76, 'public/destination/BkOeZ41EJNwXQlWcBAO6592ailBsrUcDOGqCdls5.jpeg'),
(201, '2020-12-02 08:52:35', '2020-12-02 08:52:35', 77, 'public/destination/TeSWS5nFPEmWviUUlpg3OxCvP4iO2vwfA3U7bC4m.jpeg'),
(202, '2020-12-02 08:52:35', '2020-12-02 08:52:35', 77, 'public/destination/wC9mT3D7dugTECgqsfaNkH2BmQ5aK3drLZI4xFnu.jpeg'),
(203, '2020-12-02 08:52:35', '2020-12-02 08:52:35', 77, 'public/destination/i0PQ3C1lGfHDxBu72Lsu47BjxNlpQxodfSdodau8.jpeg'),
(204, '2020-12-02 17:55:16', '2021-01-10 00:27:07', 78, 'public/destination/cNY7gKC9TRUBqkpWKpkwA3BF6LyyIrd1JUo8IBwQ.jpeg'),
(205, '2020-12-02 17:55:16', '2021-01-10 00:27:07', 78, 'public/destination/leORdPExEiOkoeNNxYtc3xJL7gIfTcFPvFTrR14X.jpeg'),
(206, '2020-12-02 17:55:16', '2021-01-10 00:27:07', 78, 'public/destination/CdRNflr5eH9imJbTr5irsFXMDO1TxIsfAFOtRBPX.jpeg'),
(207, '2020-12-12 00:47:18', '2020-12-12 00:47:18', 79, 'public/destination/oMw5YGR0iGy4kHz3dbiIucRgKDF1Gwp9sNYtQjoU.jpeg'),
(208, '2020-12-12 00:47:18', '2020-12-12 00:47:18', 79, 'public/destination/EFDggnYCefpGjFj94lI04X9oeTmorKJHrqeKlUky.jpeg'),
(209, '2020-12-12 00:47:18', '2020-12-12 00:47:18', 79, 'public/destination/4kRfWk1R9mv6JR7lBNJ8Uirz3bsBb4WP4H0DBaUi.jpeg'),
(210, '2021-01-10 00:27:07', '2021-01-10 00:27:07', 78, 'public/destination/5GSULTkvqcwcC9pUaYuGxtse97dfKzZUheY5IENc.jpeg'),
(211, '2021-01-10 00:27:07', '2021-01-10 00:27:07', 78, 'public/destination/vmn9gBnkKPHcVpmX2CTqnWg239g94363aAGOgWTV.jpeg'),
(212, '2021-02-15 09:11:06', '2021-02-15 09:11:06', 80, 'public/destination/Fs9WY1feLvT0gOMjNx5m4DHsnvsbv0xcV1dYMjRH.png'),
(213, '2021-02-15 09:11:06', '2021-02-15 09:11:06', 80, 'public/destination/Qs3QCju3oICK1bDnBmQ55uYrjiIGMZ6DUJGoOeII.jpeg'),
(214, '2021-02-15 09:11:06', '2021-02-15 09:11:06', 80, 'public/destination/xeGomtqwuyvCioeJpWIaqZeaTeErrMHCb8ShVqzx.jpeg'),
(215, '2021-02-15 09:24:36', '2021-02-15 09:24:36', 81, 'public/destination/7at9PAMGpf7uDc68c9FE4BOyYxQ7hkltfCbY0Mtu.jpeg'),
(216, '2021-02-15 09:24:36', '2021-02-15 09:24:36', 81, 'public/destination/UkrloHjDZJGqBHftCdRF6PrWZYjs7ae6WjDKpxwS.jpeg'),
(217, '2021-02-15 09:24:36', '2021-02-15 09:24:36', 81, 'public/destination/0dsK6pOqnD9KEdnP9nHnd6vLGkeUygMnROcltnrr.jpeg'),
(218, '2021-02-15 09:33:59', '2021-02-15 09:33:59', 82, 'public/destination/cthAnTMWkLUBN5WQXIjMkV6oQ3qtFj4lKcoMdNYx.jpeg'),
(219, '2021-02-15 09:34:00', '2021-02-15 09:34:00', 82, 'public/destination/Hnqs445Oc9uV56J2S0agyLuaOsn68pYqwOy6cJXr.jpeg'),
(220, '2021-02-15 09:34:00', '2021-02-15 09:34:00', 82, 'public/destination/sNkEO6gwJbzpz9Af3SeT1Tvxw4naEVMklJSoa79x.jpeg'),
(221, '2021-02-15 09:34:00', '2021-02-15 09:34:00', 82, 'public/destination/TrUBlZn1UY6LvIWg2HkPysHUbwvRSGGMNGCKYwE9.webp'),
(222, '2021-02-15 09:46:03', '2021-02-15 09:46:03', 83, 'public/destination/0xoa6FYRm7dFSwp88uenrmhCBntVK8Lmg6aLC7Ro.jpeg'),
(223, '2021-02-15 09:46:03', '2021-02-15 09:46:03', 83, 'public/destination/zYvJvTgaf7vY4o2c77bOj4K8wuf4JXjp8XCw7j67.jpeg'),
(224, '2021-02-15 09:46:03', '2021-02-15 09:46:03', 83, 'public/destination/t2SIUe5Z7I8zqVbENNhUkz1EKvDijqXjIC6pwIcV.jpeg'),
(225, '2021-02-15 09:46:03', '2021-02-15 09:46:03', 83, 'public/destination/tFzjzASY9beTMxXnM6N3V6YotsIFfmDZyl1yjoBv.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `destination_ratings`
--

CREATE TABLE `destination_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL DEFAULT 0,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_ratings`
--

INSERT INTO `destination_ratings` (`id`, `destination_id`, `stars`, `comment`, `created_at`, `updated_at`) VALUES
(1, 15, 0, 'Wow.. this is amazing..', '2021-01-09 23:02:52', '2021-01-09 23:02:52'),
(2, 15, 0, 'I love how they make baskets. They are good at what they are doing..', '2021-01-09 23:06:24', '2021-01-09 23:06:24'),
(3, 15, 0, 'This is great.. I learn how to make these baskets with them. Such an amazing experience.', '2021-01-09 23:07:12', '2021-01-09 23:07:12'),
(4, 15, 0, 'Wow.. I am amazed by their skills.', '2021-01-09 23:24:42', '2021-01-09 23:24:42'),
(5, 15, 0, 'They are so fast in making these kind of stuff. Unbelievable.', '2021-01-09 23:25:09', '2021-01-09 23:25:09'),
(6, 15, 0, 'I was overwhelmed I experience this.', '2021-01-09 23:26:19', '2021-01-09 23:26:19'),
(7, 15, 0, 'They are great...', '2021-01-09 23:26:40', '2021-01-09 23:26:40'),
(8, 78, 0, 'This port is very clean and well organized.', '2021-01-10 00:28:37', '2021-01-10 00:28:37'),
(9, 16, 0, 'I really enjoyed this activity. It is highly recommended to my friends.', '2021-01-19 06:47:15', '2021-01-19 06:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_data`
--

CREATE TABLE `guest_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_data`
--

INSERT INTO `guest_data` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'chamzpana@gmail.com', '2020-11-21 22:58:34', '2020-11-21 22:58:34'),
(2, 'cbcatayong@gmail.com', '2020-11-21 23:13:44', '2020-11-21 23:13:44'),
(3, 'chamzbueno@gmail.com', '2020-11-21 23:23:45', '2020-11-21 23:23:45'),
(4, 'iamchammyto@gmail.com', '2020-11-21 23:33:53', '2020-11-21 23:33:53'),
(5, 'buenojustine28@gmail.com', '2020-11-21 23:49:35', '2020-11-21 23:49:35'),
(6, 'chamz_pana@yahoo.com', '2020-11-22 01:52:00', '2020-11-22 01:52:00'),
(7, 'gshanan@hshs.com', '2020-11-22 04:08:59', '2020-11-22 04:08:59'),
(8, 'angelbertbaquero1@gmail.com', '2020-11-23 19:24:50', '2020-11-23 19:24:50'),
(9, 'dgabrene@gmail.com', '2020-11-25 19:05:13', '2020-11-25 19:05:13'),
(10, 'champana@gmail.com', '2020-11-27 05:23:11', '2020-11-27 05:23:11'),
(11, 'reychampana@gmail.com', '2020-11-30 23:41:02', '2020-11-30 23:41:02'),
(12, 'benjamin.omamalin@gmail.com', '2020-12-02 17:30:07', '2020-12-02 17:30:07'),
(13, 'winzeal.agoc@bisu.edu.ph', '2020-12-02 17:32:19', '2020-12-02 17:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `description`, `created_at`, `updated_at`, `title`) VALUES
(1, '<p>Located at the heart of Central Visayas, the Island province of Bohol is the 10th largest island in the Philippines. With a total land area of 4,117.3 square kilometers, it is composed of an oval-shaped mainland surrounded by 72 smaller islands. A popular tourist destination, the province is abundant of beaches and resorts. Its well-known beaches are found in Panglao island, which is situated south-west of the province, and in Anda, located on the island&#39;s east side. Bohol is composed of 1 city and 47 municipalities.</p><p>Tagbilaran City, the capital of Bohol, is known as the &quot;City of Friendship&quot;. Situated in the southwestern part of the province, it has a total land area of 32.70 square kilometers and a coastline of 13 km. The city shares its boundaries with the municipalities of Cortes, Corella, and Baclayon. It is 630 kilometers southwest of the national capital of Manila and 72 kilometers south of regional capital, Cebu City.</p><p>Tagbilaran City&#39;s name is derived from &quot;Tagu Bilaan&quot; which means TAGU (to hide) and BILAAN (a muslim marauder tribe) - hence its name means to hide from muslim marauders.</p>', '2020-02-15 23:45:56', '2020-11-16 18:54:49', 'General Information'),
(4, '<p>TARSIER 117<br />(Telephone &amp; Radio System Integrated Emergency Response) is Bohol&rsquo;s Emergency Response Unit</p><p>Hotline:</p><ul><li>Globe Landline 038-117</li><li>Globe Mobile 09175101490</li><li>Smart Mobile 09497955530</li></ul>', '2020-11-16 06:20:45', '2020-11-16 06:21:57', 'Emergency Details'),
(5, '<p><em><strong>Airplane:</strong></em></p><p><strong>Flights to and from Panglao International Airport, Bohol</strong></p><p>DOMESTIC FLIGHTS</p><ul><li>Manila &harr; Panglao, Bohol</li><li>Clark&nbsp;&harr; Panglao, Bohol</li><li>Cagayan De Oro&nbsp;&harr; Panglao, Bohol</li><li>Davao&nbsp;&harr; Panglao, Bohol</li></ul><p><em><strong>Ferry:</strong></em></p><p><strong>Trips to and from ports around&nbsp;Bohol:</strong></p><ul><li>Tagbilaran &harr;&nbsp;Cebu&nbsp;- Daily</li><li>Tagbilaran&nbsp;&harr;&nbsp;Dumaguete - Daily</li><li>Tagbilaran &harr;&nbsp;Larena, Siquijor - Daily</li><li>Tagbilaran&nbsp;&harr; Argao - Daily</li><li>Tagbilaran&nbsp;&rarr;&nbsp;Plaredel - Mon/Wed/Sat</li><li>Plaredel&nbsp;&rarr; Tagbilaran - Sun/Tue/Thu</li></ul>', '2020-11-16 06:44:04', '2020-11-20 06:06:33', 'Getting To and From Bohol'),
(6, '<p>Lorem Ipsum</p>', '2021-01-26 19:41:50', '2021-01-26 19:41:50', 'Travel Advisory'),
(7, '<p>Lorem Ipsum Dolor</p>', '2021-01-26 19:42:17', '2021-01-26 19:42:17', 'Updates'),
(8, '<p>Lorem Ipsum</p>', '2021-01-26 19:43:36', '2021-01-26 19:43:36', 'Travel Tips');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_26_060522_create_categories_table', 2),
(5, '2020_02_09_045358_create_destinations_table', 3),
(6, '2020_02_09_051103_add_category_to_destination', 3),
(7, '2020_02_16_030146_create_infos_table', 4),
(8, '2020_02_23_061508_add_st_town_to_categories', 5),
(9, '2020_02_23_061713_add_location_to_destination', 5),
(10, '2020_08_21_025410_add_lat_lng_to_destination', 6),
(11, '2020_09_05_122707_add_title_to_infos', 6),
(12, '2020_10_24_140349_create_destination_media_table', 7),
(13, '2020_11_02_071036_add_soft_delete', 7),
(14, '2020_11_06_123910_create_visitors_table', 8),
(15, '2020_11_06_133601_add_source_to_destination_media', 8),
(16, '2020_11_17_021148_create_guest_data_table', 9),
(17, '2021_01_10_014833_create_destination_ratings_table', 10),
(18, '2021_01_10_021358_create_settings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'background', 'public/settings/SBBmacNf3bCKCn6mDRfDWC6PnQijkPvSjL2f0iLd.jpeg', '0000-00-00 00:00:00', '2021-01-19 01:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reycham Pana', 'chamzpana@gmail.com', NULL, '$2y$10$ZtiInZDkCBjXUvxhK45.A.89RdGWgWcJ7Bkb1X2pysjQy2dOtaI5W', NULL, '2020-02-08 23:26:12', '2020-02-08 23:26:12'),
(2, 'Administrator', 'admin@admin.com', NULL, '$2y$10$OcGB8YIRfkcLoRsIUlcq/OAYgFWrdCpFgIjZvtuQ.380qOT1T8xN6', NULL, '2020-02-08 23:49:05', '2020-02-08 23:49:05'),
(3, 'Administrator', 'kiosk_admin@gmail.com', NULL, '$2y$10$adqqcjLJ3nH6AiPYfVapnuaJOKojj.Q2nthmDlcBUnxSXtP1QTY/y', NULL, '2020-02-08 23:49:20', '2020-02-08 23:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `created_at`, `updated_at`) VALUES
(1, '2020-11-09 21:58:47', '2020-11-09 21:58:47'),
(2, '2020-11-09 21:59:38', '2020-11-09 21:59:38'),
(3, '2020-11-09 22:10:50', '2020-11-09 22:10:50'),
(4, '2020-11-09 22:23:30', '2020-11-09 22:23:30'),
(5, '2020-11-09 22:31:11', '2020-11-09 22:31:11'),
(6, '2020-11-09 23:39:10', '2020-11-09 23:39:10'),
(7, '2020-11-09 23:46:16', '2020-11-09 23:46:16'),
(8, '2020-11-10 00:23:02', '2020-11-10 00:23:02'),
(9, '2020-11-10 00:35:25', '2020-11-10 00:35:25'),
(10, '2020-11-10 00:42:07', '2020-11-10 00:42:07'),
(11, '2020-11-10 00:46:40', '2020-11-10 00:46:40'),
(12, '2020-11-10 00:57:25', '2020-11-10 00:57:25'),
(13, '2020-11-15 22:45:00', '2020-11-15 22:45:00'),
(14, '2020-11-15 22:45:03', '2020-11-15 22:45:03'),
(15, '2020-11-15 23:34:06', '2020-11-15 23:34:06'),
(16, '2020-11-15 23:47:08', '2020-11-15 23:47:08'),
(17, '2020-11-15 23:50:59', '2020-11-15 23:50:59'),
(18, '2020-11-15 23:53:17', '2020-11-15 23:53:17'),
(19, '2020-11-16 00:07:46', '2020-11-16 00:07:46'),
(20, '2020-11-16 00:13:02', '2020-11-16 00:13:02'),
(21, '2020-11-16 00:34:51', '2020-11-16 00:34:51'),
(22, '2020-11-16 00:39:24', '2020-11-16 00:39:24'),
(23, '2020-11-16 00:44:17', '2020-11-16 00:44:17'),
(24, '2020-11-16 00:45:49', '2020-11-16 00:45:49'),
(25, '2020-11-16 00:54:54', '2020-11-16 00:54:54'),
(26, '2020-11-16 00:55:26', '2020-11-16 00:55:26'),
(27, '2020-11-16 05:30:01', '2020-11-16 05:30:01'),
(28, '2020-11-16 05:40:18', '2020-11-16 05:40:18'),
(29, '2020-11-16 05:43:16', '2020-11-16 05:43:16'),
(30, '2020-11-16 07:02:50', '2020-11-16 07:02:50'),
(31, '2020-11-16 07:22:15', '2020-11-16 07:22:15'),
(32, '2020-11-16 07:25:08', '2020-11-16 07:25:08'),
(33, '2020-11-16 10:02:51', '2020-11-16 10:02:51'),
(34, '2020-11-16 10:49:24', '2020-11-16 10:49:24'),
(35, '2020-11-16 10:51:33', '2020-11-16 10:51:33'),
(36, '2020-11-16 10:53:15', '2020-11-16 10:53:15'),
(37, '2020-11-16 10:57:34', '2020-11-16 10:57:34'),
(38, '2020-11-16 10:58:18', '2020-11-16 10:58:18'),
(39, '2020-11-16 18:01:39', '2020-11-16 18:01:39'),
(40, '2020-11-16 19:34:24', '2020-11-16 19:34:24'),
(41, '2020-11-16 19:43:44', '2020-11-16 19:43:44'),
(42, '2020-11-16 19:46:29', '2020-11-16 19:46:29'),
(43, '2020-11-16 19:47:51', '2020-11-16 19:47:51'),
(44, '2020-11-16 19:55:40', '2020-11-16 19:55:40'),
(45, '2020-11-16 19:56:30', '2020-11-16 19:56:30'),
(46, '2020-11-17 06:26:47', '2020-11-17 06:26:47'),
(47, '2020-11-17 06:31:30', '2020-11-17 06:31:30'),
(48, '2020-11-17 06:49:48', '2020-11-17 06:49:48'),
(49, '2020-11-17 07:18:14', '2020-11-17 07:18:14'),
(50, '2020-11-17 07:20:20', '2020-11-17 07:20:20'),
(51, '2020-11-17 07:22:25', '2020-11-17 07:22:25'),
(52, '2020-11-17 07:26:45', '2020-11-17 07:26:45'),
(53, '2020-11-17 07:37:45', '2020-11-17 07:37:45'),
(54, '2020-11-17 07:51:21', '2020-11-17 07:51:21'),
(55, '2020-11-17 07:55:22', '2020-11-17 07:55:22'),
(56, '2020-11-17 07:58:52', '2020-11-17 07:58:52'),
(57, '2020-11-17 08:03:15', '2020-11-17 08:03:15'),
(58, '2020-11-17 08:05:59', '2020-11-17 08:05:59'),
(59, '2020-11-17 08:08:09', '2020-11-17 08:08:09'),
(60, '2020-11-17 08:08:38', '2020-11-17 08:08:38'),
(61, '2020-11-17 08:10:18', '2020-11-17 08:10:18'),
(62, '2020-11-17 08:10:25', '2020-11-17 08:10:25'),
(63, '2020-11-17 08:14:26', '2020-11-17 08:14:26'),
(64, '2020-11-17 08:17:30', '2020-11-17 08:17:30'),
(65, '2020-11-17 08:24:55', '2020-11-17 08:24:55'),
(66, '2020-11-17 08:27:33', '2020-11-17 08:27:33'),
(67, '2020-11-17 08:28:47', '2020-11-17 08:28:47'),
(68, '2020-11-17 08:30:03', '2020-11-17 08:30:03'),
(69, '2020-11-17 08:30:52', '2020-11-17 08:30:52'),
(70, '2020-11-17 08:31:52', '2020-11-17 08:31:52'),
(71, '2020-11-17 08:32:44', '2020-11-17 08:32:44'),
(72, '2020-11-17 08:35:02', '2020-11-17 08:35:02'),
(73, '2020-11-17 08:40:34', '2020-11-17 08:40:34'),
(74, '2020-11-17 08:41:55', '2020-11-17 08:41:55'),
(75, '2020-11-17 08:43:37', '2020-11-17 08:43:37'),
(76, '2020-11-17 08:44:22', '2020-11-17 08:44:22'),
(77, '2020-11-17 08:48:32', '2020-11-17 08:48:32'),
(78, '2020-11-17 21:26:48', '2020-11-17 21:26:48'),
(79, '2020-11-17 21:30:24', '2020-11-17 21:30:24'),
(80, '2020-11-17 21:31:47', '2020-11-17 21:31:47'),
(81, '2020-11-17 21:31:49', '2020-11-17 21:31:49'),
(82, '2020-11-17 21:32:50', '2020-11-17 21:32:50'),
(83, '2020-11-17 21:33:34', '2020-11-17 21:33:34'),
(84, '2020-11-17 21:34:06', '2020-11-17 21:34:06'),
(85, '2020-11-17 21:36:31', '2020-11-17 21:36:31'),
(86, '2020-11-17 21:44:44', '2020-11-17 21:44:44'),
(87, '2020-11-17 21:47:59', '2020-11-17 21:47:59'),
(88, '2020-11-17 21:48:02', '2020-11-17 21:48:02'),
(89, '2020-11-17 21:48:48', '2020-11-17 21:48:48'),
(90, '2020-11-17 21:49:47', '2020-11-17 21:49:47'),
(91, '2020-11-17 21:50:05', '2020-11-17 21:50:05'),
(92, '2020-11-17 21:52:06', '2020-11-17 21:52:06'),
(93, '2020-11-17 21:56:20', '2020-11-17 21:56:20'),
(94, '2020-11-18 19:13:46', '2020-11-18 19:13:46'),
(95, '2020-11-18 19:29:44', '2020-11-18 19:29:44'),
(96, '2020-11-18 19:45:23', '2020-11-18 19:45:23'),
(97, '2020-11-18 21:23:18', '2020-11-18 21:23:18'),
(98, '2020-11-18 21:54:41', '2020-11-18 21:54:41'),
(99, '2020-11-18 21:55:59', '2020-11-18 21:55:59'),
(100, '2020-11-19 23:24:19', '2020-11-19 23:24:19'),
(101, '2020-11-19 23:27:23', '2020-11-19 23:27:23'),
(102, '2020-11-19 23:33:35', '2020-11-19 23:33:35'),
(103, '2020-11-19 23:39:37', '2020-11-19 23:39:37'),
(104, '2020-11-20 00:05:34', '2020-11-20 00:05:34'),
(105, '2020-11-20 00:08:11', '2020-11-20 00:08:11'),
(106, '2020-11-20 00:11:05', '2020-11-20 00:11:05'),
(107, '2020-11-20 00:13:27', '2020-11-20 00:13:27'),
(108, '2020-11-20 00:58:35', '2020-11-20 00:58:35'),
(109, '2020-11-20 01:01:44', '2020-11-20 01:01:44'),
(110, '2020-11-20 01:28:01', '2020-11-20 01:28:01'),
(111, '2020-11-20 01:30:29', '2020-11-20 01:30:29'),
(112, '2020-11-20 01:49:04', '2020-11-20 01:49:04'),
(113, '2020-11-20 01:49:07', '2020-11-20 01:49:07'),
(114, '2020-11-20 02:45:49', '2020-11-20 02:45:49'),
(115, '2020-11-20 02:48:15', '2020-11-20 02:48:15'),
(116, '2020-11-20 04:52:01', '2020-11-20 04:52:01'),
(117, '2020-11-20 04:52:04', '2020-11-20 04:52:04'),
(118, '2020-11-20 05:14:04', '2020-11-20 05:14:04'),
(119, '2020-11-20 05:20:18', '2020-11-20 05:20:18'),
(120, '2020-11-20 05:39:29', '2020-11-20 05:39:29'),
(121, '2020-11-20 06:43:24', '2020-11-20 06:43:24'),
(122, '2020-11-20 06:44:24', '2020-11-20 06:44:24'),
(123, '2020-11-20 06:46:48', '2020-11-20 06:46:48'),
(124, '2020-11-20 06:47:13', '2020-11-20 06:47:13'),
(125, '2020-11-20 07:07:04', '2020-11-20 07:07:04'),
(126, '2020-11-20 07:29:37', '2020-11-20 07:29:37'),
(127, '2020-11-20 07:39:37', '2020-11-20 07:39:37'),
(128, '2020-11-20 08:39:11', '2020-11-20 08:39:11'),
(129, '2020-11-20 08:41:32', '2020-11-20 08:41:32'),
(130, '2020-11-20 08:50:22', '2020-11-20 08:50:22'),
(131, '2020-11-20 08:50:24', '2020-11-20 08:50:24'),
(132, '2020-11-21 11:45:43', '2020-11-21 11:45:43'),
(133, '2020-11-21 11:45:45', '2020-11-21 11:45:45'),
(134, '2020-11-21 11:47:42', '2020-11-21 11:47:42'),
(135, '2020-11-21 11:54:05', '2020-11-21 11:54:05'),
(136, '2020-11-21 12:31:54', '2020-11-21 12:31:54'),
(137, '2020-11-21 12:36:30', '2020-11-21 12:36:30'),
(138, '2020-11-21 12:37:22', '2020-11-21 12:37:22'),
(139, '2020-11-21 12:42:26', '2020-11-21 12:42:26'),
(140, '2020-11-21 12:44:28', '2020-11-21 12:44:28'),
(141, '2020-11-21 12:48:11', '2020-11-21 12:48:11'),
(142, '2020-11-21 12:49:46', '2020-11-21 12:49:46'),
(143, '2020-11-21 12:52:50', '2020-11-21 12:52:50'),
(144, '2020-11-21 13:05:20', '2020-11-21 13:05:20'),
(145, '2020-11-21 22:23:31', '2020-11-21 22:23:31'),
(146, '2020-11-21 22:57:44', '2020-11-21 22:57:44'),
(147, '2020-11-21 23:04:14', '2020-11-21 23:04:14'),
(148, '2020-11-21 23:08:29', '2020-11-21 23:08:29'),
(149, '2020-11-21 23:33:22', '2020-11-21 23:33:22'),
(150, '2020-11-21 23:49:09', '2020-11-21 23:49:09'),
(151, '2020-11-21 23:53:29', '2020-11-21 23:53:29'),
(152, '2020-11-22 00:02:05', '2020-11-22 00:02:05'),
(153, '2020-11-22 00:11:23', '2020-11-22 00:11:23'),
(154, '2020-11-22 00:18:55', '2020-11-22 00:18:55'),
(155, '2020-11-22 00:21:12', '2020-11-22 00:21:12'),
(156, '2020-11-22 01:13:48', '2020-11-22 01:13:48'),
(157, '2020-11-22 01:33:04', '2020-11-22 01:33:04'),
(158, '2020-11-22 01:38:10', '2020-11-22 01:38:10'),
(159, '2020-11-22 01:43:29', '2020-11-22 01:43:29'),
(160, '2020-11-22 01:48:59', '2020-11-22 01:48:59'),
(161, '2020-11-22 01:55:43', '2020-11-22 01:55:43'),
(162, '2020-11-22 02:25:36', '2020-11-22 02:25:36'),
(163, '2020-11-22 03:16:43', '2020-11-22 03:16:43'),
(164, '2020-11-22 03:33:28', '2020-11-22 03:33:28'),
(165, '2020-11-22 03:34:49', '2020-11-22 03:34:49'),
(166, '2020-11-22 03:37:32', '2020-11-22 03:37:32'),
(167, '2020-11-22 03:42:09', '2020-11-22 03:42:09'),
(168, '2020-11-22 03:50:03', '2020-11-22 03:50:03'),
(169, '2020-11-22 03:59:30', '2020-11-22 03:59:30'),
(170, '2020-11-22 04:19:06', '2020-11-22 04:19:06'),
(171, '2020-11-22 04:20:29', '2020-11-22 04:20:29'),
(172, '2020-11-22 04:25:54', '2020-11-22 04:25:54'),
(173, '2020-11-22 04:26:19', '2020-11-22 04:26:19'),
(174, '2020-11-22 04:30:05', '2020-11-22 04:30:05'),
(175, '2020-11-22 05:02:21', '2020-11-22 05:02:21'),
(176, '2020-11-22 14:32:38', '2020-11-22 14:32:38'),
(177, '2020-11-22 18:32:37', '2020-11-22 18:32:37'),
(178, '2020-11-22 18:56:36', '2020-11-22 18:56:36'),
(179, '2020-11-22 20:24:28', '2020-11-22 20:24:28'),
(180, '2020-11-22 20:27:19', '2020-11-22 20:27:19'),
(181, '2020-11-22 20:29:21', '2020-11-22 20:29:21'),
(182, '2020-11-22 20:31:35', '2020-11-22 20:31:35'),
(183, '2020-11-22 20:32:48', '2020-11-22 20:32:48'),
(184, '2020-11-22 20:36:13', '2020-11-22 20:36:13'),
(185, '2020-11-22 20:39:34', '2020-11-22 20:39:34'),
(186, '2020-11-22 20:41:16', '2020-11-22 20:41:16'),
(187, '2020-11-22 20:46:39', '2020-11-22 20:46:39'),
(188, '2020-11-22 20:48:22', '2020-11-22 20:48:22'),
(189, '2020-11-22 20:50:09', '2020-11-22 20:50:09'),
(190, '2020-11-22 20:50:25', '2020-11-22 20:50:25'),
(191, '2020-11-22 20:52:25', '2020-11-22 20:52:25'),
(192, '2020-11-22 20:53:01', '2020-11-22 20:53:01'),
(193, '2020-11-22 20:54:04', '2020-11-22 20:54:04'),
(194, '2020-11-22 20:55:52', '2020-11-22 20:55:52'),
(195, '2020-11-22 21:19:57', '2020-11-22 21:19:57'),
(196, '2020-11-22 21:22:13', '2020-11-22 21:22:13'),
(197, '2020-11-22 21:22:36', '2020-11-22 21:22:36'),
(198, '2020-11-22 21:22:59', '2020-11-22 21:22:59'),
(199, '2020-11-22 21:23:36', '2020-11-22 21:23:36'),
(200, '2020-11-22 21:25:05', '2020-11-22 21:25:05'),
(201, '2020-11-22 21:28:10', '2020-11-22 21:28:10'),
(202, '2020-11-22 21:29:30', '2020-11-22 21:29:30'),
(203, '2020-11-22 21:46:23', '2020-11-22 21:46:23'),
(204, '2020-11-22 21:49:18', '2020-11-22 21:49:18'),
(205, '2020-11-22 21:51:10', '2020-11-22 21:51:10'),
(206, '2020-11-22 21:53:13', '2020-11-22 21:53:13'),
(207, '2020-11-22 21:55:03', '2020-11-22 21:55:03'),
(208, '2020-11-22 22:15:20', '2020-11-22 22:15:20'),
(209, '2020-11-22 22:37:58', '2020-11-22 22:37:58'),
(210, '2020-11-22 22:43:27', '2020-11-22 22:43:27'),
(211, '2020-11-22 22:43:35', '2020-11-22 22:43:35'),
(212, '2020-11-22 22:48:30', '2020-11-22 22:48:30'),
(213, '2020-11-22 22:49:27', '2020-11-22 22:49:27'),
(214, '2020-11-22 22:58:50', '2020-11-22 22:58:50'),
(215, '2020-11-23 00:13:57', '2020-11-23 00:13:57'),
(216, '2020-11-23 00:41:50', '2020-11-23 00:41:50'),
(217, '2020-11-23 00:46:02', '2020-11-23 00:46:02'),
(218, '2020-11-23 01:11:17', '2020-11-23 01:11:17'),
(219, '2020-11-23 01:12:25', '2020-11-23 01:12:25'),
(220, '2020-11-23 01:13:52', '2020-11-23 01:13:52'),
(221, '2020-11-23 01:16:42', '2020-11-23 01:16:42'),
(222, '2020-11-23 01:19:03', '2020-11-23 01:19:03'),
(223, '2020-11-23 01:23:56', '2020-11-23 01:23:56'),
(224, '2020-11-23 01:29:41', '2020-11-23 01:29:41'),
(225, '2020-11-23 01:41:52', '2020-11-23 01:41:52'),
(226, '2020-11-23 01:44:06', '2020-11-23 01:44:06'),
(227, '2020-11-23 01:47:22', '2020-11-23 01:47:22'),
(228, '2020-11-23 01:59:38', '2020-11-23 01:59:38'),
(229, '2020-11-23 02:01:06', '2020-11-23 02:01:06'),
(230, '2020-11-23 02:04:04', '2020-11-23 02:04:04'),
(231, '2020-11-23 02:06:35', '2020-11-23 02:06:35'),
(232, '2020-11-23 02:49:25', '2020-11-23 02:49:25'),
(233, '2020-11-23 03:10:54', '2020-11-23 03:10:54'),
(234, '2020-11-23 03:14:10', '2020-11-23 03:14:10'),
(235, '2020-11-23 03:20:16', '2020-11-23 03:20:16'),
(236, '2020-11-23 03:20:45', '2020-11-23 03:20:45'),
(237, '2020-11-23 03:21:58', '2020-11-23 03:21:58'),
(238, '2020-11-23 03:26:11', '2020-11-23 03:26:11'),
(239, '2020-11-23 03:40:21', '2020-11-23 03:40:21'),
(240, '2020-11-23 03:49:48', '2020-11-23 03:49:48'),
(241, '2020-11-23 04:14:27', '2020-11-23 04:14:27'),
(242, '2020-11-23 04:19:36', '2020-11-23 04:19:36'),
(243, '2020-11-23 04:20:55', '2020-11-23 04:20:55'),
(244, '2020-11-23 04:22:26', '2020-11-23 04:22:26'),
(245, '2020-11-23 04:26:20', '2020-11-23 04:26:20'),
(246, '2020-11-23 04:36:34', '2020-11-23 04:36:34'),
(247, '2020-11-23 04:56:35', '2020-11-23 04:56:35'),
(248, '2020-11-23 05:01:22', '2020-11-23 05:01:22'),
(249, '2020-11-23 05:05:27', '2020-11-23 05:05:27'),
(250, '2020-11-23 05:17:23', '2020-11-23 05:17:23'),
(251, '2020-11-23 05:18:12', '2020-11-23 05:18:12'),
(252, '2020-11-23 05:22:22', '2020-11-23 05:22:22'),
(253, '2020-11-23 05:28:01', '2020-11-23 05:28:01'),
(254, '2020-11-23 05:45:52', '2020-11-23 05:45:52'),
(255, '2020-11-23 05:48:43', '2020-11-23 05:48:43'),
(256, '2020-11-23 05:50:18', '2020-11-23 05:50:18'),
(257, '2020-11-23 05:55:24', '2020-11-23 05:55:24'),
(258, '2020-11-23 05:56:10', '2020-11-23 05:56:10'),
(259, '2020-11-23 06:22:00', '2020-11-23 06:22:00'),
(260, '2020-11-23 06:26:54', '2020-11-23 06:26:54'),
(261, '2020-11-23 06:41:28', '2020-11-23 06:41:28'),
(262, '2020-11-23 06:42:13', '2020-11-23 06:42:13'),
(263, '2020-11-23 06:47:23', '2020-11-23 06:47:23'),
(264, '2020-11-23 06:48:57', '2020-11-23 06:48:57'),
(265, '2020-11-23 06:53:38', '2020-11-23 06:53:38'),
(266, '2020-11-23 06:55:49', '2020-11-23 06:55:49'),
(267, '2020-11-23 06:59:24', '2020-11-23 06:59:24'),
(268, '2020-11-23 07:09:33', '2020-11-23 07:09:33'),
(269, '2020-11-23 07:10:18', '2020-11-23 07:10:18'),
(270, '2020-11-23 07:11:14', '2020-11-23 07:11:14'),
(271, '2020-11-23 07:11:27', '2020-11-23 07:11:27'),
(272, '2020-11-23 07:12:32', '2020-11-23 07:12:32'),
(273, '2020-11-23 07:12:45', '2020-11-23 07:12:45'),
(274, '2020-11-23 07:14:08', '2020-11-23 07:14:08'),
(275, '2020-11-23 07:26:47', '2020-11-23 07:26:47'),
(276, '2020-11-23 07:28:43', '2020-11-23 07:28:43'),
(277, '2020-11-23 07:38:49', '2020-11-23 07:38:49'),
(278, '2020-11-23 07:47:22', '2020-11-23 07:47:22'),
(279, '2020-11-23 07:52:30', '2020-11-23 07:52:30'),
(280, '2020-11-23 08:16:06', '2020-11-23 08:16:06'),
(281, '2020-11-23 08:18:06', '2020-11-23 08:18:06'),
(282, '2020-11-23 08:18:39', '2020-11-23 08:18:39'),
(283, '2020-11-23 08:27:17', '2020-11-23 08:27:17'),
(284, '2020-11-23 08:28:09', '2020-11-23 08:28:09'),
(285, '2020-11-23 08:42:35', '2020-11-23 08:42:35'),
(286, '2020-11-23 09:00:24', '2020-11-23 09:00:24'),
(287, '2020-11-23 09:04:46', '2020-11-23 09:04:46'),
(288, '2020-11-23 09:21:16', '2020-11-23 09:21:16'),
(289, '2020-11-23 09:22:05', '2020-11-23 09:22:05'),
(290, '2020-11-23 09:24:16', '2020-11-23 09:24:16'),
(291, '2020-11-23 09:27:14', '2020-11-23 09:27:14'),
(292, '2020-11-23 09:32:24', '2020-11-23 09:32:24'),
(293, '2020-11-23 09:40:02', '2020-11-23 09:40:02'),
(294, '2020-11-23 09:40:25', '2020-11-23 09:40:25'),
(295, '2020-11-23 19:18:42', '2020-11-23 19:18:42'),
(296, '2020-11-23 19:34:04', '2020-11-23 19:34:04'),
(297, '2020-11-23 19:36:42', '2020-11-23 19:36:42'),
(298, '2020-11-23 21:53:50', '2020-11-23 21:53:50'),
(299, '2020-11-23 22:02:07', '2020-11-23 22:02:07'),
(300, '2020-11-23 22:07:15', '2020-11-23 22:07:15'),
(301, '2020-11-23 22:08:43', '2020-11-23 22:08:43'),
(302, '2020-11-23 22:17:37', '2020-11-23 22:17:37'),
(303, '2020-11-23 22:28:34', '2020-11-23 22:28:34'),
(304, '2020-11-23 22:39:48', '2020-11-23 22:39:48'),
(305, '2020-11-23 22:41:10', '2020-11-23 22:41:10'),
(306, '2020-11-24 00:10:07', '2020-11-24 00:10:07'),
(307, '2020-11-24 00:13:38', '2020-11-24 00:13:38'),
(308, '2020-11-24 00:13:53', '2020-11-24 00:13:53'),
(309, '2020-11-24 00:19:18', '2020-11-24 00:19:18'),
(310, '2020-11-24 00:19:59', '2020-11-24 00:19:59'),
(311, '2020-11-24 00:20:24', '2020-11-24 00:20:24'),
(312, '2020-11-24 00:22:24', '2020-11-24 00:22:24'),
(313, '2020-11-24 00:22:26', '2020-11-24 00:22:26'),
(314, '2020-11-24 00:24:48', '2020-11-24 00:24:48'),
(315, '2020-11-24 00:28:35', '2020-11-24 00:28:35'),
(316, '2020-11-24 00:28:50', '2020-11-24 00:28:50'),
(317, '2020-11-24 00:42:30', '2020-11-24 00:42:30'),
(318, '2020-11-24 00:47:12', '2020-11-24 00:47:12'),
(319, '2020-11-24 00:59:20', '2020-11-24 00:59:20'),
(320, '2020-11-24 00:59:59', '2020-11-24 00:59:59'),
(321, '2020-11-24 02:12:54', '2020-11-24 02:12:54'),
(322, '2020-11-24 02:14:20', '2020-11-24 02:14:20'),
(323, '2020-11-24 05:19:07', '2020-11-24 05:19:07'),
(324, '2020-11-24 05:52:48', '2020-11-24 05:52:48'),
(325, '2020-11-24 05:58:46', '2020-11-24 05:58:46'),
(326, '2020-11-24 06:06:53', '2020-11-24 06:06:53'),
(327, '2020-11-24 06:08:16', '2020-11-24 06:08:16'),
(328, '2020-11-24 06:11:15', '2020-11-24 06:11:15'),
(329, '2020-11-24 06:12:50', '2020-11-24 06:12:50'),
(330, '2020-11-24 06:56:21', '2020-11-24 06:56:21'),
(331, '2020-11-24 07:37:11', '2020-11-24 07:37:11'),
(332, '2020-11-24 08:17:58', '2020-11-24 08:17:58'),
(333, '2020-11-24 08:19:33', '2020-11-24 08:19:33'),
(334, '2020-11-24 08:20:14', '2020-11-24 08:20:14'),
(335, '2020-11-24 08:24:44', '2020-11-24 08:24:44'),
(336, '2020-11-24 08:24:44', '2020-11-24 08:24:44'),
(337, '2020-11-24 08:24:44', '2020-11-24 08:24:44'),
(338, '2020-11-24 08:24:56', '2020-11-24 08:24:56'),
(339, '2020-11-24 08:25:22', '2020-11-24 08:25:22'),
(340, '2020-11-24 08:45:22', '2020-11-24 08:45:22'),
(341, '2020-11-24 09:00:05', '2020-11-24 09:00:05'),
(342, '2020-11-24 09:00:13', '2020-11-24 09:00:13'),
(343, '2020-11-24 20:52:02', '2020-11-24 20:52:02'),
(344, '2020-11-24 20:56:40', '2020-11-24 20:56:40'),
(345, '2020-11-24 21:20:53', '2020-11-24 21:20:53'),
(346, '2020-11-24 21:45:26', '2020-11-24 21:45:26'),
(347, '2020-11-24 21:52:14', '2020-11-24 21:52:14'),
(348, '2020-11-24 22:15:10', '2020-11-24 22:15:10'),
(349, '2020-11-24 22:17:49', '2020-11-24 22:17:49'),
(350, '2020-11-24 22:18:53', '2020-11-24 22:18:53'),
(351, '2020-11-25 02:20:51', '2020-11-25 02:20:51'),
(352, '2020-11-25 02:31:04', '2020-11-25 02:31:04'),
(353, '2020-11-25 02:40:19', '2020-11-25 02:40:19'),
(354, '2020-11-25 02:40:22', '2020-11-25 02:40:22'),
(355, '2020-11-25 02:40:22', '2020-11-25 02:40:22'),
(356, '2020-11-25 03:18:43', '2020-11-25 03:18:43'),
(357, '2020-11-25 03:33:55', '2020-11-25 03:33:55'),
(358, '2020-11-25 03:41:39', '2020-11-25 03:41:39'),
(359, '2020-11-25 04:01:42', '2020-11-25 04:01:42'),
(360, '2020-11-25 04:02:13', '2020-11-25 04:02:13'),
(361, '2020-11-25 08:40:16', '2020-11-25 08:40:16'),
(362, '2020-11-25 08:40:39', '2020-11-25 08:40:39'),
(363, '2020-11-25 08:43:40', '2020-11-25 08:43:40'),
(364, '2020-11-25 08:45:57', '2020-11-25 08:45:57'),
(365, '2020-11-25 08:51:44', '2020-11-25 08:51:44'),
(366, '2020-11-25 08:55:18', '2020-11-25 08:55:18'),
(367, '2020-11-25 09:00:59', '2020-11-25 09:00:59'),
(368, '2020-11-25 18:34:01', '2020-11-25 18:34:01'),
(369, '2020-11-25 18:34:03', '2020-11-25 18:34:03'),
(370, '2020-11-25 19:01:47', '2020-11-25 19:01:47'),
(371, '2020-11-25 19:09:58', '2020-11-25 19:09:58'),
(372, '2020-11-25 19:12:05', '2020-11-25 19:12:05'),
(373, '2020-11-25 19:14:21', '2020-11-25 19:14:21'),
(374, '2020-11-25 22:05:05', '2020-11-25 22:05:05'),
(375, '2020-11-26 01:41:42', '2020-11-26 01:41:42'),
(376, '2020-11-26 01:41:50', '2020-11-26 01:41:50'),
(377, '2020-11-26 01:44:12', '2020-11-26 01:44:12'),
(378, '2020-11-26 01:44:13', '2020-11-26 01:44:13'),
(379, '2020-11-26 01:44:13', '2020-11-26 01:44:13'),
(380, '2020-11-26 01:44:15', '2020-11-26 01:44:15'),
(381, '2020-11-26 01:45:45', '2020-11-26 01:45:45'),
(382, '2020-11-26 01:48:01', '2020-11-26 01:48:01'),
(383, '2020-11-26 01:49:09', '2020-11-26 01:49:09'),
(384, '2020-11-26 02:09:48', '2020-11-26 02:09:48'),
(385, '2020-11-26 02:16:30', '2020-11-26 02:16:30'),
(386, '2020-11-26 02:48:41', '2020-11-26 02:48:41'),
(387, '2020-11-26 02:52:29', '2020-11-26 02:52:29'),
(388, '2020-11-26 02:57:45', '2020-11-26 02:57:45'),
(389, '2020-11-26 03:00:52', '2020-11-26 03:00:52'),
(390, '2020-11-27 03:14:42', '2020-11-27 03:14:42'),
(391, '2020-11-27 03:14:44', '2020-11-27 03:14:44'),
(392, '2020-11-27 03:17:32', '2020-11-27 03:17:32'),
(393, '2020-11-27 03:17:52', '2020-11-27 03:17:52'),
(394, '2020-11-27 03:19:27', '2020-11-27 03:19:27'),
(395, '2020-11-27 03:22:22', '2020-11-27 03:22:22'),
(396, '2020-11-27 03:23:48', '2020-11-27 03:23:48'),
(397, '2020-11-27 03:28:02', '2020-11-27 03:28:02'),
(398, '2020-11-27 03:32:44', '2020-11-27 03:32:44'),
(399, '2020-11-27 03:42:03', '2020-11-27 03:42:03'),
(400, '2020-11-27 03:59:47', '2020-11-27 03:59:47'),
(401, '2020-11-27 04:02:46', '2020-11-27 04:02:46'),
(402, '2020-11-27 04:24:59', '2020-11-27 04:24:59'),
(403, '2020-11-27 04:25:33', '2020-11-27 04:25:33'),
(404, '2020-11-27 04:29:19', '2020-11-27 04:29:19'),
(405, '2020-11-27 04:33:06', '2020-11-27 04:33:06'),
(406, '2020-11-27 04:36:17', '2020-11-27 04:36:17'),
(407, '2020-11-27 04:37:56', '2020-11-27 04:37:56'),
(408, '2020-11-27 04:40:06', '2020-11-27 04:40:06'),
(409, '2020-11-27 04:42:13', '2020-11-27 04:42:13'),
(410, '2020-11-27 05:05:07', '2020-11-27 05:05:07'),
(411, '2020-11-27 05:11:59', '2020-11-27 05:11:59'),
(412, '2020-11-27 05:14:38', '2020-11-27 05:14:38'),
(413, '2020-11-27 05:16:47', '2020-11-27 05:16:47'),
(414, '2020-11-27 05:18:27', '2020-11-27 05:18:27'),
(415, '2020-11-27 05:22:42', '2020-11-27 05:22:42'),
(416, '2020-11-27 05:26:18', '2020-11-27 05:26:18'),
(417, '2020-11-27 05:37:01', '2020-11-27 05:37:01'),
(418, '2020-11-27 05:41:08', '2020-11-27 05:41:08'),
(419, '2020-11-27 05:45:10', '2020-11-27 05:45:10'),
(420, '2020-11-27 15:54:47', '2020-11-27 15:54:47'),
(421, '2020-11-27 15:56:27', '2020-11-27 15:56:27'),
(422, '2020-11-27 15:58:51', '2020-11-27 15:58:51'),
(423, '2020-11-27 15:59:01', '2020-11-27 15:59:01'),
(424, '2020-11-27 16:01:44', '2020-11-27 16:01:44'),
(425, '2020-11-27 16:03:23', '2020-11-27 16:03:23'),
(426, '2020-11-27 16:05:03', '2020-11-27 16:05:03'),
(427, '2020-11-27 16:06:21', '2020-11-27 16:06:21'),
(428, '2020-11-27 16:09:22', '2020-11-27 16:09:22'),
(429, '2020-11-27 16:11:38', '2020-11-27 16:11:38'),
(430, '2020-11-27 16:17:09', '2020-11-27 16:17:09'),
(431, '2020-11-27 16:18:01', '2020-11-27 16:18:01'),
(432, '2020-11-27 16:19:11', '2020-11-27 16:19:11'),
(433, '2020-11-27 16:22:58', '2020-11-27 16:22:58'),
(434, '2020-11-27 16:26:10', '2020-11-27 16:26:10'),
(435, '2020-11-27 16:27:45', '2020-11-27 16:27:45'),
(436, '2020-11-27 16:34:48', '2020-11-27 16:34:48'),
(437, '2020-11-27 16:42:32', '2020-11-27 16:42:32'),
(438, '2020-11-27 16:45:09', '2020-11-27 16:45:09'),
(439, '2020-11-27 16:46:53', '2020-11-27 16:46:53'),
(440, '2020-11-27 16:50:13', '2020-11-27 16:50:13'),
(441, '2020-11-27 16:57:28', '2020-11-27 16:57:28'),
(442, '2020-11-27 16:57:31', '2020-11-27 16:57:31'),
(443, '2020-11-27 17:00:05', '2020-11-27 17:00:05'),
(444, '2020-11-27 17:01:30', '2020-11-27 17:01:30'),
(445, '2020-11-27 17:02:47', '2020-11-27 17:02:47'),
(446, '2020-11-27 17:06:06', '2020-11-27 17:06:06'),
(447, '2020-11-27 17:10:48', '2020-11-27 17:10:48'),
(448, '2020-11-27 17:14:19', '2020-11-27 17:14:19'),
(449, '2020-11-27 17:16:31', '2020-11-27 17:16:31'),
(450, '2020-11-27 17:18:40', '2020-11-27 17:18:40'),
(451, '2020-11-27 17:20:42', '2020-11-27 17:20:42'),
(452, '2020-11-27 17:39:50', '2020-11-27 17:39:50'),
(453, '2020-11-27 17:43:22', '2020-11-27 17:43:22'),
(454, '2020-11-28 03:54:10', '2020-11-28 03:54:10'),
(455, '2020-11-28 03:58:08', '2020-11-28 03:58:08'),
(456, '2020-11-28 04:00:14', '2020-11-28 04:00:14'),
(457, '2020-11-28 04:07:46', '2020-11-28 04:07:46'),
(458, '2020-11-28 04:16:58', '2020-11-28 04:16:58'),
(459, '2020-11-28 04:25:19', '2020-11-28 04:25:19'),
(460, '2020-11-28 04:27:43', '2020-11-28 04:27:43'),
(461, '2020-11-28 04:30:21', '2020-11-28 04:30:21'),
(462, '2020-11-28 04:33:53', '2020-11-28 04:33:53'),
(463, '2020-11-28 04:35:39', '2020-11-28 04:35:39'),
(464, '2020-11-28 04:37:20', '2020-11-28 04:37:20'),
(465, '2020-11-28 04:46:12', '2020-11-28 04:46:12'),
(466, '2020-11-28 04:50:08', '2020-11-28 04:50:08'),
(467, '2020-11-28 04:51:48', '2020-11-28 04:51:48'),
(468, '2020-11-28 04:52:31', '2020-11-28 04:52:31'),
(469, '2020-11-28 04:53:59', '2020-11-28 04:53:59'),
(470, '2020-11-28 04:56:46', '2020-11-28 04:56:46'),
(471, '2020-11-28 04:56:55', '2020-11-28 04:56:55'),
(472, '2020-11-28 05:00:36', '2020-11-28 05:00:36'),
(473, '2020-11-28 05:01:11', '2020-11-28 05:01:11'),
(474, '2020-11-28 05:02:24', '2020-11-28 05:02:24'),
(475, '2020-11-28 05:03:05', '2020-11-28 05:03:05'),
(476, '2020-11-28 05:04:07', '2020-11-28 05:04:07'),
(477, '2020-11-28 05:06:13', '2020-11-28 05:06:13'),
(478, '2020-11-28 05:06:50', '2020-11-28 05:06:50'),
(479, '2020-11-28 05:08:22', '2020-11-28 05:08:22'),
(480, '2020-11-28 05:11:41', '2020-11-28 05:11:41'),
(481, '2020-11-28 05:12:04', '2020-11-28 05:12:04'),
(482, '2020-11-28 05:15:34', '2020-11-28 05:15:34'),
(483, '2020-11-28 05:17:04', '2020-11-28 05:17:04'),
(484, '2020-11-28 05:18:09', '2020-11-28 05:18:09'),
(485, '2020-11-28 05:19:04', '2020-11-28 05:19:04'),
(486, '2020-11-28 05:22:16', '2020-11-28 05:22:16'),
(487, '2020-11-28 05:23:33', '2020-11-28 05:23:33'),
(488, '2020-11-28 05:25:58', '2020-11-28 05:25:58'),
(489, '2020-11-28 05:26:00', '2020-11-28 05:26:00'),
(490, '2020-11-28 05:27:16', '2020-11-28 05:27:16'),
(491, '2020-11-28 05:29:49', '2020-11-28 05:29:49'),
(492, '2020-11-28 05:29:58', '2020-11-28 05:29:58'),
(493, '2020-11-28 05:57:31', '2020-11-28 05:57:31'),
(494, '2020-11-28 06:00:30', '2020-11-28 06:00:30'),
(495, '2020-11-28 06:14:33', '2020-11-28 06:14:33'),
(496, '2020-11-28 06:20:05', '2020-11-28 06:20:05'),
(497, '2020-11-28 06:55:10', '2020-11-28 06:55:10'),
(498, '2020-11-28 06:59:51', '2020-11-28 06:59:51'),
(499, '2020-11-28 07:04:38', '2020-11-28 07:04:38'),
(500, '2020-11-28 07:09:17', '2020-11-28 07:09:17'),
(501, '2020-11-28 07:18:44', '2020-11-28 07:18:44'),
(502, '2020-11-28 07:25:38', '2020-11-28 07:25:38'),
(503, '2020-11-28 07:36:02', '2020-11-28 07:36:02'),
(504, '2020-11-28 07:51:46', '2020-11-28 07:51:46'),
(505, '2020-11-28 07:52:05', '2020-11-28 07:52:05'),
(506, '2020-11-28 07:55:06', '2020-11-28 07:55:06'),
(507, '2020-11-28 07:56:57', '2020-11-28 07:56:57'),
(508, '2020-11-28 07:59:26', '2020-11-28 07:59:26'),
(509, '2020-11-28 08:05:24', '2020-11-28 08:05:24'),
(510, '2020-11-28 09:00:01', '2020-11-28 09:00:01'),
(511, '2020-11-28 09:00:02', '2020-11-28 09:00:02'),
(512, '2020-11-28 09:33:32', '2020-11-28 09:33:32'),
(513, '2020-11-28 09:45:00', '2020-11-28 09:45:00'),
(514, '2020-11-28 09:59:55', '2020-11-28 09:59:55'),
(515, '2020-11-28 09:59:56', '2020-11-28 09:59:56'),
(516, '2020-11-28 10:47:10', '2020-11-28 10:47:10'),
(517, '2020-11-28 10:50:43', '2020-11-28 10:50:43'),
(518, '2020-11-28 10:53:37', '2020-11-28 10:53:37'),
(519, '2020-11-28 10:57:34', '2020-11-28 10:57:34'),
(520, '2020-11-28 11:00:18', '2020-11-28 11:00:18'),
(521, '2020-11-28 11:02:36', '2020-11-28 11:02:36'),
(522, '2020-11-28 11:08:35', '2020-11-28 11:08:35'),
(523, '2020-11-28 11:16:43', '2020-11-28 11:16:43'),
(524, '2020-11-28 11:18:59', '2020-11-28 11:18:59'),
(525, '2020-11-28 11:20:00', '2020-11-28 11:20:00'),
(526, '2020-11-28 11:26:46', '2020-11-28 11:26:46'),
(527, '2020-11-28 11:31:07', '2020-11-28 11:31:07'),
(528, '2020-11-28 11:41:08', '2020-11-28 11:41:08'),
(529, '2020-11-28 11:42:00', '2020-11-28 11:42:00'),
(530, '2020-11-28 12:24:17', '2020-11-28 12:24:17'),
(531, '2020-11-28 12:28:30', '2020-11-28 12:28:30'),
(532, '2020-11-28 12:37:44', '2020-11-28 12:37:44'),
(533, '2020-11-28 12:53:40', '2020-11-28 12:53:40'),
(534, '2020-11-30 03:08:06', '2020-11-30 03:08:06'),
(535, '2020-11-30 03:21:21', '2020-11-30 03:21:21'),
(536, '2020-11-30 03:24:48', '2020-11-30 03:24:48'),
(537, '2020-11-30 03:29:59', '2020-11-30 03:29:59'),
(538, '2020-11-30 04:14:58', '2020-11-30 04:14:58'),
(539, '2020-11-30 04:44:25', '2020-11-30 04:44:25'),
(540, '2020-11-30 04:46:20', '2020-11-30 04:46:20'),
(541, '2020-11-30 06:03:41', '2020-11-30 06:03:41'),
(542, '2020-11-30 06:26:36', '2020-11-30 06:26:36'),
(543, '2020-11-30 15:55:15', '2020-11-30 15:55:15'),
(544, '2020-11-30 16:09:39', '2020-11-30 16:09:39'),
(545, '2020-11-30 16:28:04', '2020-11-30 16:28:04'),
(546, '2020-11-30 16:30:11', '2020-11-30 16:30:11'),
(547, '2020-11-30 16:33:16', '2020-11-30 16:33:16'),
(548, '2020-11-30 17:02:07', '2020-11-30 17:02:07'),
(549, '2020-11-30 17:19:23', '2020-11-30 17:19:23'),
(550, '2020-11-30 17:30:10', '2020-11-30 17:30:10'),
(551, '2020-11-30 18:35:47', '2020-11-30 18:35:47'),
(552, '2020-11-30 18:53:27', '2020-11-30 18:53:27'),
(553, '2020-11-30 23:36:57', '2020-11-30 23:36:57'),
(554, '2020-11-30 23:36:59', '2020-11-30 23:36:59'),
(555, '2020-11-30 23:44:36', '2020-11-30 23:44:36'),
(556, '2020-11-30 23:53:52', '2020-11-30 23:53:52'),
(557, '2020-12-01 02:33:26', '2020-12-01 02:33:26'),
(558, '2020-12-01 02:56:55', '2020-12-01 02:56:55'),
(559, '2020-12-01 03:43:43', '2020-12-01 03:43:43'),
(560, '2020-12-01 03:45:15', '2020-12-01 03:45:15'),
(561, '2020-12-01 03:46:14', '2020-12-01 03:46:14'),
(562, '2020-12-01 03:57:33', '2020-12-01 03:57:33'),
(563, '2020-12-01 04:02:41', '2020-12-01 04:02:41'),
(564, '2020-12-01 04:08:33', '2020-12-01 04:08:33'),
(565, '2020-12-01 04:15:05', '2020-12-01 04:15:05'),
(566, '2020-12-01 05:06:52', '2020-12-01 05:06:52'),
(567, '2020-12-01 05:09:57', '2020-12-01 05:09:57'),
(568, '2020-12-01 09:31:36', '2020-12-01 09:31:36'),
(569, '2020-12-01 09:38:11', '2020-12-01 09:38:11'),
(570, '2020-12-01 09:39:26', '2020-12-01 09:39:26'),
(571, '2020-12-01 09:48:50', '2020-12-01 09:48:50'),
(572, '2020-12-01 10:14:06', '2020-12-01 10:14:06'),
(573, '2020-12-01 10:41:53', '2020-12-01 10:41:53'),
(574, '2020-12-01 10:43:55', '2020-12-01 10:43:55'),
(575, '2020-12-01 11:02:29', '2020-12-01 11:02:29'),
(576, '2020-12-01 11:03:45', '2020-12-01 11:03:45'),
(577, '2020-12-01 11:03:47', '2020-12-01 11:03:47'),
(578, '2020-12-01 11:21:17', '2020-12-01 11:21:17'),
(579, '2020-12-01 11:21:19', '2020-12-01 11:21:19'),
(580, '2020-12-01 11:23:44', '2020-12-01 11:23:44'),
(581, '2020-12-01 11:36:14', '2020-12-01 11:36:14'),
(582, '2020-12-01 11:47:32', '2020-12-01 11:47:32'),
(583, '2020-12-01 12:17:24', '2020-12-01 12:17:24'),
(584, '2020-12-02 00:54:49', '2020-12-02 00:54:49'),
(585, '2020-12-02 01:00:40', '2020-12-02 01:00:40'),
(586, '2020-12-02 01:06:15', '2020-12-02 01:06:15'),
(587, '2020-12-02 03:23:17', '2020-12-02 03:23:17'),
(588, '2020-12-02 03:28:39', '2020-12-02 03:28:39'),
(589, '2020-12-02 03:30:29', '2020-12-02 03:30:29'),
(590, '2020-12-02 03:33:07', '2020-12-02 03:33:07'),
(591, '2020-12-02 03:43:25', '2020-12-02 03:43:25'),
(592, '2020-12-02 04:17:50', '2020-12-02 04:17:50'),
(593, '2020-12-02 04:36:39', '2020-12-02 04:36:39'),
(594, '2020-12-02 04:37:31', '2020-12-02 04:37:31'),
(595, '2020-12-02 04:44:26', '2020-12-02 04:44:26'),
(596, '2020-12-02 04:49:51', '2020-12-02 04:49:51'),
(597, '2020-12-02 05:12:09', '2020-12-02 05:12:09'),
(598, '2020-12-02 05:25:49', '2020-12-02 05:25:49'),
(599, '2020-12-02 05:34:18', '2020-12-02 05:34:18'),
(600, '2020-12-02 05:56:52', '2020-12-02 05:56:52'),
(601, '2020-12-02 06:12:27', '2020-12-02 06:12:27'),
(602, '2020-12-02 06:24:14', '2020-12-02 06:24:14'),
(603, '2020-12-02 06:54:06', '2020-12-02 06:54:06'),
(604, '2020-12-02 07:10:56', '2020-12-02 07:10:56'),
(605, '2020-12-02 07:32:23', '2020-12-02 07:32:23'),
(606, '2020-12-02 07:44:15', '2020-12-02 07:44:15'),
(607, '2020-12-02 07:45:57', '2020-12-02 07:45:57'),
(608, '2020-12-02 08:01:37', '2020-12-02 08:01:37'),
(609, '2020-12-02 08:06:51', '2020-12-02 08:06:51'),
(610, '2020-12-02 08:39:21', '2020-12-02 08:39:21'),
(611, '2020-12-02 08:52:47', '2020-12-02 08:52:47'),
(612, '2020-12-02 08:56:06', '2020-12-02 08:56:06'),
(613, '2020-12-02 16:44:55', '2020-12-02 16:44:55'),
(614, '2020-12-02 16:45:14', '2020-12-02 16:45:14'),
(615, '2020-12-02 16:54:57', '2020-12-02 16:54:57'),
(616, '2020-12-02 16:56:07', '2020-12-02 16:56:07'),
(617, '2020-12-02 16:58:05', '2020-12-02 16:58:05'),
(618, '2020-12-02 17:10:18', '2020-12-02 17:10:18'),
(619, '2020-12-02 17:10:29', '2020-12-02 17:10:29'),
(620, '2020-12-02 17:18:25', '2020-12-02 17:18:25'),
(621, '2020-12-02 17:24:23', '2020-12-02 17:24:23'),
(622, '2020-12-02 17:34:48', '2020-12-02 17:34:48'),
(623, '2020-12-02 17:55:25', '2020-12-02 17:55:25'),
(624, '2020-12-02 17:55:25', '2020-12-02 17:55:25'),
(625, '2020-12-02 18:01:49', '2020-12-02 18:01:49'),
(626, '2020-12-02 18:03:26', '2020-12-02 18:03:26'),
(627, '2020-12-02 18:08:01', '2020-12-02 18:08:01'),
(628, '2020-12-02 18:11:41', '2020-12-02 18:11:41'),
(629, '2020-12-06 00:22:22', '2020-12-06 00:22:22'),
(630, '2020-12-06 00:22:38', '2020-12-06 00:22:38'),
(631, '2020-12-06 00:26:13', '2020-12-06 00:26:13'),
(632, '2020-12-06 00:37:51', '2020-12-06 00:37:51'),
(633, '2020-12-06 00:39:35', '2020-12-06 00:39:35'),
(634, '2020-12-06 00:46:24', '2020-12-06 00:46:24'),
(635, '2020-12-06 01:00:41', '2020-12-06 01:00:41'),
(636, '2020-12-06 01:03:38', '2020-12-06 01:03:38'),
(637, '2020-12-06 01:12:25', '2020-12-06 01:12:25'),
(638, '2020-12-06 01:19:13', '2020-12-06 01:19:13'),
(639, '2020-12-06 01:25:36', '2020-12-06 01:25:36'),
(640, '2020-12-07 18:10:43', '2020-12-07 18:10:43'),
(641, '2020-12-07 18:15:57', '2020-12-07 18:15:57'),
(642, '2020-12-07 18:22:01', '2020-12-07 18:22:01'),
(643, '2020-12-07 18:35:09', '2020-12-07 18:35:09'),
(644, '2020-12-07 18:49:20', '2020-12-07 18:49:20'),
(645, '2020-12-07 18:52:08', '2020-12-07 18:52:08'),
(646, '2020-12-07 19:04:12', '2020-12-07 19:04:12'),
(647, '2020-12-07 19:39:29', '2020-12-07 19:39:29'),
(648, '2020-12-07 19:42:56', '2020-12-07 19:42:56'),
(649, '2020-12-11 23:37:56', '2020-12-11 23:37:56'),
(650, '2020-12-11 23:37:59', '2020-12-11 23:37:59'),
(651, '2020-12-12 00:40:48', '2020-12-12 00:40:48'),
(652, '2020-12-12 00:47:33', '2020-12-12 00:47:33'),
(653, '2020-12-14 06:16:30', '2020-12-14 06:16:30'),
(654, '2020-12-14 06:26:39', '2020-12-14 06:26:39'),
(655, '2020-12-14 06:43:08', '2020-12-14 06:43:08'),
(656, '2020-12-14 06:43:09', '2020-12-14 06:43:09'),
(657, '2021-01-09 20:32:49', '2021-01-09 20:32:49'),
(658, '2021-01-09 20:34:30', '2021-01-09 20:34:30'),
(659, '2021-01-09 21:07:41', '2021-01-09 21:07:41'),
(660, '2021-01-09 21:08:58', '2021-01-09 21:08:58'),
(661, '2021-01-09 21:10:23', '2021-01-09 21:10:23'),
(662, '2021-01-09 21:20:15', '2021-01-09 21:20:15'),
(663, '2021-01-09 21:25:00', '2021-01-09 21:25:00'),
(664, '2021-01-09 21:31:23', '2021-01-09 21:31:23'),
(665, '2021-01-09 21:33:09', '2021-01-09 21:33:09'),
(666, '2021-01-09 21:36:18', '2021-01-09 21:36:18'),
(667, '2021-01-09 21:44:16', '2021-01-09 21:44:16'),
(668, '2021-01-09 21:59:03', '2021-01-09 21:59:03'),
(669, '2021-01-09 22:04:49', '2021-01-09 22:04:49'),
(670, '2021-01-09 22:05:20', '2021-01-09 22:05:20'),
(671, '2021-01-09 22:16:34', '2021-01-09 22:16:34'),
(672, '2021-01-09 22:28:37', '2021-01-09 22:28:37'),
(673, '2021-01-09 22:36:35', '2021-01-09 22:36:35'),
(674, '2021-01-09 22:47:22', '2021-01-09 22:47:22'),
(675, '2021-01-09 22:51:17', '2021-01-09 22:51:17'),
(676, '2021-01-09 23:10:19', '2021-01-09 23:10:19'),
(677, '2021-01-09 23:16:32', '2021-01-09 23:16:32'),
(678, '2021-01-09 23:20:33', '2021-01-09 23:20:33'),
(679, '2021-01-10 00:24:23', '2021-01-10 00:24:23'),
(680, '2021-01-10 00:27:33', '2021-01-10 00:27:33'),
(681, '2021-01-10 00:46:40', '2021-01-10 00:46:40'),
(682, '2021-01-10 00:48:37', '2021-01-10 00:48:37'),
(683, '2021-01-10 00:55:44', '2021-01-10 00:55:44'),
(684, '2021-01-10 00:58:31', '2021-01-10 00:58:31'),
(685, '2021-01-10 01:03:08', '2021-01-10 01:03:08'),
(686, '2021-01-10 01:04:50', '2021-01-10 01:04:50'),
(687, '2021-01-10 01:08:27', '2021-01-10 01:08:27'),
(688, '2021-01-10 01:12:51', '2021-01-10 01:12:51'),
(689, '2021-01-10 01:14:27', '2021-01-10 01:14:27'),
(690, '2021-01-10 01:16:06', '2021-01-10 01:16:06'),
(691, '2021-01-10 01:20:40', '2021-01-10 01:20:40'),
(692, '2021-01-18 07:12:11', '2021-01-18 07:12:11'),
(693, '2021-01-18 07:12:11', '2021-01-18 07:12:11'),
(694, '2021-01-18 07:17:00', '2021-01-18 07:17:00'),
(695, '2021-01-18 07:27:36', '2021-01-18 07:27:36'),
(696, '2021-01-18 07:33:18', '2021-01-18 07:33:18'),
(697, '2021-01-18 07:38:18', '2021-01-18 07:38:18'),
(698, '2021-01-18 07:45:22', '2021-01-18 07:45:22'),
(699, '2021-01-18 08:08:08', '2021-01-18 08:08:08'),
(700, '2021-01-18 08:20:56', '2021-01-18 08:20:56'),
(701, '2021-01-18 22:14:19', '2021-01-18 22:14:19'),
(702, '2021-01-18 22:14:20', '2021-01-18 22:14:20'),
(703, '2021-01-18 22:14:21', '2021-01-18 22:14:21'),
(704, '2021-01-18 22:14:21', '2021-01-18 22:14:21'),
(705, '2021-01-18 22:28:01', '2021-01-18 22:28:01'),
(706, '2021-01-18 22:38:06', '2021-01-18 22:38:06'),
(707, '2021-01-18 22:38:07', '2021-01-18 22:38:07'),
(708, '2021-01-18 22:46:24', '2021-01-18 22:46:24'),
(709, '2021-01-18 22:53:10', '2021-01-18 22:53:10'),
(710, '2021-01-18 22:53:11', '2021-01-18 22:53:11'),
(711, '2021-01-18 22:59:40', '2021-01-18 22:59:40'),
(712, '2021-01-18 23:06:11', '2021-01-18 23:06:11'),
(713, '2021-01-18 23:09:10', '2021-01-18 23:09:10'),
(714, '2021-01-18 23:12:59', '2021-01-18 23:12:59'),
(715, '2021-01-18 23:17:18', '2021-01-18 23:17:18'),
(716, '2021-01-18 23:22:45', '2021-01-18 23:22:45'),
(717, '2021-01-18 23:27:22', '2021-01-18 23:27:22'),
(718, '2021-01-18 23:31:47', '2021-01-18 23:31:47'),
(719, '2021-01-18 23:36:50', '2021-01-18 23:36:50'),
(720, '2021-01-18 23:41:47', '2021-01-18 23:41:47'),
(721, '2021-01-18 23:46:19', '2021-01-18 23:46:19'),
(722, '2021-01-18 23:50:37', '2021-01-18 23:50:37'),
(723, '2021-01-18 23:56:08', '2021-01-18 23:56:08'),
(724, '2021-01-19 00:03:15', '2021-01-19 00:03:15'),
(725, '2021-01-19 00:14:24', '2021-01-19 00:14:24'),
(726, '2021-01-19 00:22:28', '2021-01-19 00:22:28'),
(727, '2021-01-19 00:32:14', '2021-01-19 00:32:14'),
(728, '2021-01-19 00:34:28', '2021-01-19 00:34:28'),
(729, '2021-01-19 00:42:56', '2021-01-19 00:42:56'),
(730, '2021-01-19 00:45:17', '2021-01-19 00:45:17'),
(731, '2021-01-19 00:51:22', '2021-01-19 00:51:22'),
(732, '2021-01-19 00:58:47', '2021-01-19 00:58:47'),
(733, '2021-01-19 01:02:01', '2021-01-19 01:02:01'),
(734, '2021-01-19 01:03:29', '2021-01-19 01:03:29'),
(735, '2021-01-19 01:06:20', '2021-01-19 01:06:20'),
(736, '2021-01-19 01:15:56', '2021-01-19 01:15:56'),
(737, '2021-01-19 01:24:12', '2021-01-19 01:24:12'),
(738, '2021-01-19 01:29:37', '2021-01-19 01:29:37'),
(739, '2021-01-19 05:37:22', '2021-01-19 05:37:22'),
(740, '2021-01-19 05:58:08', '2021-01-19 05:58:08'),
(741, '2021-01-19 06:04:09', '2021-01-19 06:04:09'),
(742, '2021-01-19 06:04:10', '2021-01-19 06:04:10'),
(743, '2021-01-19 06:04:10', '2021-01-19 06:04:10'),
(744, '2021-01-19 06:04:12', '2021-01-19 06:04:12'),
(745, '2021-01-19 06:04:12', '2021-01-19 06:04:12'),
(746, '2021-01-19 06:04:14', '2021-01-19 06:04:14'),
(747, '2021-01-19 06:05:50', '2021-01-19 06:05:50'),
(748, '2021-01-19 06:07:33', '2021-01-19 06:07:33'),
(749, '2021-01-19 06:09:27', '2021-01-19 06:09:27'),
(750, '2021-01-19 06:11:35', '2021-01-19 06:11:35'),
(751, '2021-01-19 06:18:25', '2021-01-19 06:18:25'),
(752, '2021-01-19 06:30:57', '2021-01-19 06:30:57'),
(753, '2021-01-19 06:45:45', '2021-01-19 06:45:45'),
(754, '2021-01-26 19:37:46', '2021-01-26 19:37:46'),
(755, '2021-01-26 19:42:45', '2021-01-26 19:42:45'),
(756, '2021-01-26 19:42:45', '2021-01-26 19:42:45'),
(757, '2021-01-26 19:49:37', '2021-01-26 19:49:37'),
(758, '2021-01-26 19:49:37', '2021-01-26 19:49:37'),
(759, '2021-01-26 19:55:20', '2021-01-26 19:55:20'),
(760, '2021-01-26 19:55:23', '2021-01-26 19:55:23'),
(761, '2021-02-06 07:16:26', '2021-02-06 07:16:26'),
(762, '2021-02-15 09:11:32', '2021-02-15 09:11:32'),
(763, '2021-02-15 09:24:50', '2021-02-15 09:24:50'),
(764, '2021-02-15 09:34:12', '2021-02-15 09:34:12'),
(765, '2021-02-15 09:46:36', '2021-02-15 09:46:36'),
(766, '2021-02-15 09:53:22', '2021-02-15 09:53:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_media`
--
ALTER TABLE `destination_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_ratings`
--
ALTER TABLE `destination_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_data`
--
ALTER TABLE `guest_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `destination_media`
--
ALTER TABLE `destination_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `destination_ratings`
--
ALTER TABLE `destination_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_data`
--
ALTER TABLE `guest_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=767;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
