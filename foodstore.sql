-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: ינואר 17, 2020 בזמן 06:54 AM
-- גרסת שרת: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodstore`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `cart item`
--

CREATE TABLE `cart item` (
  `Item ID` int(5) NOT NULL,
  `Product ID` int(10) NOT NULL,
  `Quantity` int(2) NOT NULL,
  `Total sum` int(5) NOT NULL,
  `Cart ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `categories`
--

CREATE TABLE `categories` (
  `Product ID` int(11) NOT NULL,
  `Category name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `categories`
--

INSERT INTO `categories` (`Product ID`, `Category name`) VALUES
(111, 'Milk and Eggs'),
(222, 'Vegetables and Fruit'),
(333, 'Meat and Fish'),
(444, 'Wine and Beverages');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `clients`
--

CREATE TABLE `clients` (
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(8) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `City` text NOT NULL,
  `Address` varchar(50) NOT NULL,
  `IDnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `clients`
--

INSERT INTO `clients` (`firstName`, `lastName`, `Email`, `Password`, `City`, `Address`, `IDnumber`) VALUES
('null', 'null', 'null', 'null', 'null', 'null', 0),
('rere', 'ererr', 'rerere@c.com', '1234451t', 'werrtertr', 'gtgfvds', 35897563),
('Oscar', 'Grouch', 'OGrouch@SSS.co.il', '3333', 'Jerusalem', 'Rehov Sumsum 3', 35897617),
('Tzipora', 'Bird', 'Tbird@sss.co.il', '2222', 'Jerusalem', 'Rehov Sumsum 2', 35897717),
('Moshe', 'Ufnik', 'Mufnik@SSS.co.il', '1111', 'Jerusalem', 'Rehov Sumsum', 35897897),
('Aryeh', 'Savir', 'as@as.com', '1234451t', 'Efrat', '49', 35897898),
('3dfdsardsf', 'edwewerf', '21332434231', '111111', 'Ashdod', 'fewewqewq', 2147483647);

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `orders`
--

CREATE TABLE `orders` (
  `Order ID` int(6) NOT NULL,
  `Client ID` int(20) NOT NULL,
  `Cart ID` int(20) NOT NULL,
  `Final total` int(5) NOT NULL,
  `City` text NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Shipment Date` date NOT NULL,
  `Order date` date NOT NULL,
  `Last 4 CC digits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `products`
--

CREATE TABLE `products` (
  `ProductID` int(10) NOT NULL,
  `ProductName` text NOT NULL,
  `CategoryID` int(8) NOT NULL,
  `Price` int(4) NOT NULL,
  `Picture` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `CategoryID`, `Price`, `Picture`) VALUES
(567618, 'Milk', 111, 5, 'https://m.pricez.co.il/ProductPictures/7290000042442.jpg'),
(567619, 'Eggs', 111, 12, 'https://www.cacklehatchery.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/w/h/whiteegg1.jpg'),
(567621, 'Apple', 222, 2, 'https://healthjade.com/wp-content/uploads/2017/10/apple-fruit.jpg'),
(567622, 'Carrot', 222, 1, 'https://images.wagwalkingweb.com/media/articles/dog/carrots-allergies/carrots-allergies.jpg'),
(567624, 'Beaf', 333, 25, 'https://thumbs.dreamstime.com/b/raw-beaf-steaks-white-background-60591511.jpg\r\n'),
(567626, 'Fish', 333, 20, 'https://cdn.shopify.com/s/files/1/0110/9278/7257/products/Whole-Salmon_1200x1200.jpg?v=1533063063\r\n'),
(567628, 'Bottled Water', 444, 8, 'http://il.gzxilineo.com/Content/upload/2019363916/201901161626048664690.jpg'),
(567630, 'Red Wine', 444, 35, 'https://theathleticrider.com/wp-content/uploads/sites/47/2013/12/Kozzi-red_wine_and_grapes-3264x4896.jpg');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `CartID` int(20) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `shoppingcart`
--

INSERT INTO `shoppingcart` (`CartID`, `ClientID`, `Date`) VALUES
(0, 2147483647, '2020-01-15 20:03:35');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `cart item`
--
ALTER TABLE `cart item`
  ADD PRIMARY KEY (`Item ID`);

--
-- אינדקסים לטבלה `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Product ID`);

--
-- אינדקסים לטבלה `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`IDnumber`);

--
-- אינדקסים לטבלה `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order ID`);

--
-- אינדקסים לטבלה `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- אינדקסים לטבלה `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`CartID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567631;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
