

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



-- Database: `farmnet`
--
CREATE DATABASE IF NOT EXISTS `farmnet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farmnet`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `address`, `email`, `password`, `type`) VALUES
(1, 'admin', 'user', 'Infinite Loop', 'admin@admin.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `seedlings` (
  `id` int(15) NOT NULL,
  `seedling_code` varchar(255) NOT NULL,
  `seedling_name` varchar(255) NOT NULL,
  `seedling_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `seedling_payments` (
  `id` int(15) NOT NULL,
  `seedling_code` varchar(255) NOT NULL,
  `seedling_name` varchar(255) NOT NULL,
  `seedling_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `payed` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `plants&trees` (
  `id` int(11) NOT NULL,
  `seedling_code` varchar(60) NOT NULL,
  `seedling_name` varchar(60) NOT NULL,
  `seedling_desc` tinytext NOT NULL,
  `seedling_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seedling_code`, `seedling_name`, `seedling_desc`, `seedling_img_name`, `qty`, `price`) VALUES
(1, '01', 'Haas Avocado', 'Hass Avocado trees are propagated through grafting, which means the stem of hass avocado variety is spliced onto another avocado variety. The technique yields quicker harvests, consistent fruit quality and disease-resistant avocado trees. .', 'avocado.jpg', 69, '7000.00'),
(2, '02', 'Orange seedlings', 'Oranges grows over a wide range of soils but light, well drained (sandy) soils are most ideal. For good production oranges require well distributed rainfall or supplementary irrigation throughout the year.', 'orange.jpg', 71, '4000.00'),
(3, '03', 'Apple seedlings', 'Apples trees can grow in a wide range of soils from medium textured clays to gravelly sands. However, poor soils will produce poor results and the best crops are found on fertile sandy soils and loams.', 'apples.jpg', 79, '5000.00'),
(4, '04', 'Tangerines', 'Tangerines grow well in areas that don’t have harsh winters and will produce an abundance of flavorful fruit every year with just a little bit of help.\'s. ', 'tangerine.jpg', 40, '9000.00'),
(5, '05', 'Macadamia', 'Macadamia is a beautiful tree, very forgiving; resilient to all weather, accommodative for old people; they don’t need to work so hard nor climb to pick the nuts but wait for them to fall.\'s.  ', 'macadamia.jpg', 100, '450000.00'),
(6, '06', 'Pepino melon seedlings', 'The fruits is typically a bright green or yellow green and often has some red or purple stations. Mainly grown for its many health benefits and does well in areas where tomaoes can grow.', 'pepino.jpg', 70, '34000.00'),
(7, '07', 'Kiwi fruits', 'Kiwi fruits grow on large vines that are like grapevines in their general growth and fruiting habits as well as their training and trellising requirements.', 'kiwi.jpg', 60, '80000.00'),
(8, '08', 'Grapes', 'Grapes are often ignored in home gardens, and yet are one of the most widely produced fruit in the world—as well as beautifully ornamental plants.', 'grapes.jpg', 68, '60000.00'),
(9, '09', 'Grafted Tree tomatoes', 'Tamarillo best known by the name tree-tomatoes in Kenya is a fast-growing tree that grows up to 5 meters. Peak production is reached after 1-3 years, and the life expectancy is about 12 years. ', 'treetomatoe.jpg', 60, '450.00'),
(10, '10', 'Mangoes', 'The mango is a deep-rooted, evergreen plant which can develop into huge trees, especially on deep soils. The height and shape varies considerably among seedlings and cultivars.', 'mangoes.jpeg', 40, '599.00'),
(11, '11', 'Apricots seedlings', 'Apricots must be the most desirable of all the fruit trees to grow and often appear as number 1 one of the wish list. But they are also unquestionably the least hardy of all the fruit trees that may be grown in Kenya so planting Apricot trees requires some thought and planning.', 'apricot.jpg', 67, '230.00'),
(12, '12', 'Bananas', 'Bananas do well from a sea level of 1800M with a minimum rainfall of 1000m per year which is appropriate during flowering.', 'banana.jpg', 56, '199.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `email`, `password`, `type`) VALUES
(1, 'First', 'User', 'Infinite Loop', 'user@user.com', 'user', 'user');

-- --------------------------------------------------------
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `seedlings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `plants&trees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seedling_code` (`seedling_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `seedling_payment`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

