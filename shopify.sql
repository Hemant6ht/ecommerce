-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2020 at 11:41 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopify`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

DROP TABLE IF EXISTS `ac`;
CREATE TABLE IF NOT EXISTS `ac` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `condendser` varchar(30) DEFAULT NULL,
  `power` varchar(30) DEFAULT NULL,
  `noise_level` varchar(30) DEFAULT NULL,
  `refrigerant` varchar(30) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`pid`, `name`, `condendser`, `power`, `noise_level`, `refrigerant`, `price`) VALUES
('ac001', 'Koryo 2.0 Ton 3 Star Split AC', 'COndenser Coil:Copper', 'Power Consumption:1000.0 W', 'Noise level:45.0 DB', 'Refrigerant:R32', 54990),
('ac002', 'Godrej 2.0 Ton 5 Star Split Inverter AC', 'Condenser Coil:Aluminium', 'Power Consumption:1770.0 W', 'Noise level:48.0 DB', 'Refrigerant:R290', 51990),
('ac003', 'LG 2 Ton 3 Star Split Dual Inverter AC', 'Condenser Coil:Copper', 'Power Consumption:2090.0 W', 'Noise level:34.0 DB', 'Refrigerant:R32', 51999),
('ac004', 'Blue Star 1.5 Ton 5 Star Split Inverter AC', 'Condenser Coil:Aluminium', 'Power Consumption:1420.0 W', 'Noise level:58.0 DB', 'Refrigerant:R32', 41400),
('ac005', 'Samsung 1 Ton 3 Star Split Inverter AC', 'Condenser Coil:Alloy', 'Power Consumption:1060.0 W', 'Noise level:28.0 DB', 'Refrigerant:R32', 41390),
('ac006', 'Lg 1.5 Ton 3 Star Split Inverter AC', 'Condenser Coil:Copper', 'Power Consumption:1740.0 W', 'Noise level:26.0 DB', 'Refrigerant:R28', 31490),
('ac007', 'O General 2 Ton 2 Star Split Inverter AC', 'Condenser Coil:Copper', 'Power Consumption:2200.0 W', 'Noise level:43.0 DB', 'Refrigerant:R58', 68790),
('ac008', 'O General 1.8 Ton 3 Star Split Inverter AC', '', '', 'Noise level:43.0 DB', 'Refrigerant:R410 A', 65490),
('ac009', 'Samsung 1.5 Ton 5 Star Split Inverter AC', 'Condenser Coil:Alloy', 'Power Consumption:1500.0 W', 'Noise level:33.0 DB', 'Refrigerant:R48', 58999),
('ac010', 'Daikin 1.4 Ton 4.8 Star Split Inverter AC', 'Condenser Coil:Copper', 'Power Consumption:1890.0 W', 'Noise level:38.0 DB', 'Refrigerant:R32', 56999);

-- --------------------------------------------------------

--
-- Table structure for table `babycare`
--

DROP TABLE IF EXISTS `babycare`;
CREATE TABLE IF NOT EXISTS `babycare` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cl1` varchar(100) DEFAULT NULL,
  `cl2` varchar(100) DEFAULT NULL,
  `cl3` varchar(100) DEFAULT NULL,
  `cl4` varchar(100) DEFAULT NULL,
  `cl5` varchar(100) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `babycare`
--

INSERT INTO `babycare` (`pid`, `name`, `cl1`, `cl2`, `cl3`, `cl4`, `cl5`, `price`) VALUES
('bc001', 'Little\'s Soft Cleansing Baby Wipes 80 Wipes (Pack of 5)', 'Little\'s soft cleansing baby wipes', 'the safest and best products for them ', 'Item Weight2.28 Kg', 'Product Dimensions10 x 10 x 25 cm', '', 599),
('bc002', 'Dabur Lal Tail - Ayurvedic Baby Massage Oil - 500ml', 'Manufactured by Dabur India Limited', 'Indications: Regular massage with Dabur Lal Tail ', 'It is clinically proven 2X faster physical growth', 'made from a combination of natural herbs ', 'Item Weight499 g', 350),
('bc003', 'Amardeep and Co Toddler Mattress with Mosquito Net ', 'Allows fresh air to breeze in while blocks out insects and mosquitoes', 'Supported by strong plastic wire frame', 'Ideal for newborns till 3 months', 'MaterialCotton', 'Product Dimensions10 x 10 x 5 cm', 1300),
('bc004', 'Himalaya Herbals Baby Lotion (400ml)', 'Excellent moisturizer with the power of herbs', ' Olive Oil: Vitamin E nourishes and keeps your baby\'s skin moisturized', 'Almond Oil: Natural moisturizer; makes skin soft & supple', 'Licorice & Country Mallow (Bala): Protect and soothe baby\'s dry or chapped skin', 'Free from Parabens, Mineral Oil & Synthetic Colors', 225),
('bc005', 'Cho Cho European Standard Inflatable Baby Bath Tub with Pump', 'Inflatable Size : 90 Cm x 60Cm x 27Cm', 'Tub Weight : 1.25 Kg', 'Suitable for New Norn Babies to 4 Years Old Babies', 'Safety warningKids can play under the Adults monitoring', 'Product Dimensions90 x 60 x 27 cm', 1300),
('bc006', 'Bey Bee Quick Dry Baby Bed Protector ', 'Features : Skin friendly and heat free soft fabric, UnInterrupted Sleep, Light Weight', 'Ultra Absorbency: Durable & Breathable, Waterproof Bed Protector, Dries Faster, No Feeling Of Heat', 'Easy Care : Machine/Hand Washable, Cozy, Smooth & Silky Feeling', 'Instruction : Wash prior use with mild detergents or soap', 'do not dry clean', 199),
('bc007', 'Biotique Disney Mickey Baby Tear Proof Shampoo', '100% soap free shampoo', ' natural blend of pure green apple extract', 'Special pH balanced', 'no-tear formula rinses easily for healthy, shining hair', 'Item Weight200 g', 175),
('bc008', 'Pampers Premium Care Pants Diapers, New Born ', ' cotton like softness', 'Lotion with aloe vera to protect your baby?s delicate skin', '3 air channels which help your baby?s skin breathe', 'Wetness indicator which turns from yellow to blue ', 'No.1 choice of doctors for diapers', 699);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `user_id` varchar(50) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `category`) VALUES
('hemantkumar852741@gmail.com', 'M001', 'mobile'),
('w@w', 'T001', 'tv'),
('hemant@1234', 'T006', 'tv'),
('we@we', 'mc004', 'womenclothing'),
('abc@abc.com', 'l003', 'laptop'),
('abc@abc.com', 'bc003', 'babycare'),
('abc@abc.com', 'ref001', 'refrigerator'),
('hk@yy.com', 'bc001', 'babycare');

-- --------------------------------------------------------

--
-- Table structure for table `homedechang`
--

DROP TABLE IF EXISTS `homedechang`;
CREATE TABLE IF NOT EXISTS `homedechang` (
  `hmh_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cl1` varchar(100) DEFAULT NULL,
  `cl2` varchar(100) DEFAULT NULL,
  `cl3` varchar(100) DEFAULT NULL,
  `cl4` varchar(100) DEFAULT NULL,
  `cl5` varchar(100) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`hmh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homedechang`
--

INSERT INTO `homedechang` (`hmh_id`, `name`, `cl1`, `cl2`, `cl3`, `cl4`, `cl5`, `price`) VALUES
('hm004', 'Asian Hobby Crafts Dream Catcher Wall Hanging ', 'Dream catcher wall hanging : odyssey', 'Size (lxb) 45x15 cm', 'Available in a variety of sizes and designs', '', '', 205),
('hm005', 'DreamKraft Paper Mache Handmade Big Bell with Elephant Door Hangings ', 'Material: Paper Mache, Colour: White, Technics: Handmade', 'Package Contents:1 Door Hanging', 'Item Size: Length 58 Cm Including Thread', 'This wall hanging gives a regal touch to your home ', '', 800),
('hmh001', 'archies Ganesha Statue with Clock Wall ', ' beautifully crafted Ganesha', 'clock has a brown dial with big roman number', 'must-have product for your study, living room or workplace.', ' Product colour may slightly vary due to photographic ', '', 975),
('hmh002', '100yellow Mom\'S Kitchen Wall Door Hanging ', 'Package Contains: 1 Wooden Plaque', 'Size: Please Refer To Size Guide Image In Images For Size.', ' Clean Simple And Colorfast', 'Fashionable Design.', 'Motivational & Meaningful: Be Inspired With Positive Messages About Love, Family ', 399),
('hmh003', 'Asian Hobby Crafts Dream Catcher Wall Hanging', 'Dream catcher wall hanging : blue lagoon', 'Size (lxb) 25x8cm', 'Available in a variety of sizes and designs', 'Product Dimensions20 x 20 x 3 cm', '', 375);

-- --------------------------------------------------------

--
-- Table structure for table `kidsclothing`
--

DROP TABLE IF EXISTS `kidsclothing`;
CREATE TABLE IF NOT EXISTS `kidsclothing` (
  `kc_id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `fittype` varchar(50) DEFAULT NULL,
  `lifestyle` varchar(50) DEFAULT NULL,
  `closure` varchar(50) DEFAULT NULL,
  `care` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`kc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kidsclothing`
--

INSERT INTO `kidsclothing` (`kc_id`, `name`, `material`, `fittype`, `lifestyle`, `closure`, `care`, `price`) VALUES
('kc001', 'AD & AV ONE Jeans and Cargo Combo_Boys_BLUEBADI_BLACKCHEX_AA', 'MATERIAL :- DENIM JEANS AND COTTON CARGO', 'FIT TYPE:- MID WAIST , REGULAR FIT', 'LIFESTLE : CASUAL AND FESTIVAL AND MOODS', 'CLOSURE TYPE:ZIP AND DURABLE FABRIC AND DUREABLE C', 'WASH CARE INSTRUCTIONS:WASH IN COLD WATER. DO NOT ', 745),
('kc002', 'FOCIL White shirt and jeans with denim jacket for kids', 'Fit Type: Regular Fit', 'FOCIL Is Originally A Brand From Amukta Fashions S', 'Colour: White', '', '', 699),
('kc003', 'Pepe Jeans Boy\'s Striped Regular fit Polo', 'Care Instructions: machine wash', 'Fit Type: regular fit', 'Color Name: White', '100% Cotton', 'Half sleeve', 799),
('kc004', 'Avistar Boys Cotton Blended Sherwani and Breeches Set', 'Care Instructions: Hand Wash Only', 'Fabric: Cotton Blend || Contents: Sherwani & Breec', 'Color: Off White & Maroon || Sleeve: Full Sleeve||', 'Disclaimer: Please Check The Size Chart Before Ord', 'Wash Care Instructions: Dry Clean preferably or co', 699),
('kc005', 'JBN Creation Boys Cotton Silk Kurta and Pyjama Set ', 'Fabric: Cotton Silk | Contents: a Kurta and Pyjama', 'Suitable for: Party, Weddings, Regular Wear, Celeb', 'Wash Care Instructions: Dry Clean preferably or co', 'Fit:Regular Fit', '', 799),
('kc006', 'Cotton Sherwani Suit With Patiala Style Cowl Dhoti Pant ', 'Fabric: Silk Blend ', 'Contents: a Sherwani Style Kurta Set', 'Suitable for: Party, Weddings, Regular Wear, Celeb', 'Our kurtas are Medium length and Regular Fit.', 'Wash Care Instructions: Dry Clean preferably or co', 2100),
('kc007', 'GOLDEN GIRL Girl\'s Cotton Top and Shorts Set', 'Top and Shorts Set', 'Designed Kids Dress', 'Material: Cotton', '', '', 599),
('kc008', 'SMRITY Baby Girls Denim Skirt', 'Material: denim', 'Colour: blue', 'Fabric : 80% Cotton', 'zip and button closure', 'New fashion Design Denim skirt', 850),
('kc009', 'United Colors of Benetton Girl\'s Plain Regular fit T-Shirt', 'Fit Type: regular fit', 'Color Name: Medieval Blue', 'Material: Cotton', 'Short sleeve', 'Machine wash', 799),
('kc010', 'Bidhan Girl\'s Cotton Dress with Bow', 'Fabric : cotton', 'Sleeve type: sleeveless', 'Occasion : casual', 'Colour: Multi', '', 1240);

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
CREATE TABLE IF NOT EXISTS `laptop` (
  `pid` varchar(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `ram_rom` varchar(40) DEFAULT NULL,
  `software` varchar(50) DEFAULT NULL,
  `size` varchar(40) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `processor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`pid`, `name`, `ram_rom`, `software`, `size`, `price`, `processor`) VALUES
('l001', 'iBall CompBook M500 Celeron Dual Core', '4GB DDR3 RAM/1TB HDD', '64 bit Windows 10 Operating System', '35-56 cm (in inch) Display', '10990', 'Intel Celeron Dual Core Processor'),
('l002', 'iBall CompBook M500 Celeron Dual Core', '3GB DDR3 RAM/1TB HDD', '64 bit Windows 10 Operating System', '29.4cm(11.6 inch) Display', '8990', 'Intel Celeron Dual Core Processor'),
('l003', 'Acer Aspire 3 Pentium Quad Core', '4GB DDR3 RAM/500GB HDD', '64 bit Windows 10 Operating System', '39.62cm(15.6 inch) Display', '17990', 'Intel pentium Quad Core Processor'),
('l004', 'Lenevo Yoga 730 Core i7 8th Gen', '8GB DDR4 RAM/512GB HDD', '64 bit Windows 10 Operating System', '33.78cm(13.3 inch) Touchscreen Display', '109990', 'Intel yoga 730 i7 Processor'),
('l005', 'Apple MacBook Air Core i5 5th Gen', '8GB DDR4 RAM/512GB HDD', '64 bit Mac Operating System', '33.78cm(13.3 inch) Touchscreen Display', '68990', 'Intel core i5 Processor (5th Gen)'),
('l006', 'Asus X Series Core i3 7th Gen', '4GB DDR4 RAM/1TB HDD', '64 bit Endless Operating System', '39.78cm(15.3 inch) Touchscreen Display', '58990', 'Intel core i3 Processor'),
('l007', 'Lenevo IdeadPad 330 Ryzon 5 Quad Core', '8GB DDR4 RAM/1TB HDD', '64 bit Endless Operating System', '39.64cm(15.28 inch) Touchscreen Display', '74990', 'AMD Ryzon 5 Quad Core Processor'),
('l008', 'Acer Predator Hehos 300 Core i5 8th Gen', '8GB DDR4 RAM/1TB HDD', '64 bit Endless Operating System', '39.64cm(15.28 inch) Touchscreen Display', '64990', 'intel Core i5 Processor'),
('l009', 'Dell Inspiron 14 300 Core i7 7th Gen', '4GB DDR4 RAM/1TB HDD', 'Linux/Ubuntu Operating System', '35.56cm(15.28 inch) Touchscreen Display', '39990', 'intel Core i3 Processor'),
('l010', 'Lenevo Ideapad 330 Core i3 6th Gen', '4GB DDR4 RAM/1TB HDD', 'DOS Operating System', '39.62cm(17.28 inch) Touchscreen Display', '25490', 'intel Core i3 Processor'),
('L047', 'mi notebook 1', '8gb|256gb ssd', 'ubentu ', '14 inch', '25000', 'intel i7 4th gen'),
('l9090', 'uhyug', 'bhhh', 'gguhbh', 'ggugu', '8989', 'ugu');

-- --------------------------------------------------------

--
-- Table structure for table `mensclothing`
--

DROP TABLE IF EXISTS `mensclothing`;
CREATE TABLE IF NOT EXISTS `mensclothing` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `material` varchar(30) DEFAULT NULL,
  `quality` varchar(30) DEFAULT NULL,
  `fit` varchar(30) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mensclothing`
--

INSERT INTO `mensclothing` (`pid`, `name`, `company`, `type`, `material`, `quality`, `fit`, `price`) VALUES
('mc001', 'Abstract Men Hooded Neck Dark BLue Shirt', 'By Roadstar', 'Type:Hooded', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 359),
('mc002', 'Graphic Print Men Round Or Multicolour TShirt', 'By Londaon Hills', 'Type:Rounded Neck', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 251),
('mc003', 'Self Design Men Round Neck BLue TShirt', 'By Londaon Hills', 'Type:Rounded Neck', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 449),
('mc004', 'Men Solid Casual Regular Shirt', 'By Allen solly', 'Type:Casual Shirt', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 499),
('mc005', 'Men Solid Casual Shirt', 'By Allen solly', 'Type:Party Wear Shirt', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 503),
('mc006', 'Men  Casual Mandarine Shirt', 'By Allen solly', 'Type:Casual Wear Shirt', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 559),
('mc007', 'Slim Men Dark Blue Jeans', 'Denim jEans', 'Type:Casual Wear Jeans', 'Material:Denim Fabric ', 'Best QUality', 'Fit-Slim Fit', 1039),
('mc008', 'Skinny Mens Dark Blue Jeans', 'Denim jEans', 'Type:Casual Wear Jeans', 'Material:Denim Fabric ', 'Best QUality', 'Fit-Slim Fit', 1499),
('mc009', 'Skinny Mens Blue Jeans', 'Denim jEans', 'Type:Casual Wear Jeans', 'Material:Denim Fabric ', 'Best QUality', 'Fit-Slim Fit', 2199),
('mc010', 'Slim FIt Mens Brown Trouser', 'allen Trouser', 'Type:Casual Wear Jeans', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 1199),
('mc011', 'Regular FIt Mens Grey Trouser', 'allen Trouser', 'Type:Casual Wear Trouser', 'Material:Cotton ', 'Best QUality', 'Fit-Regular Fit', 1299),
('mc012', 'Mens Solid Ankle Length(pack of 3)', '', 'Type:Casual Wear', 'Material:Cotton ', 'Best QUality', '', 299),
('mc013', 'Solid Men Raincoat', 'Puma', '', '', 'Best QUality', 'Fit-Regular Fit', 2299),
('mc014', 'StyleRide Polka Print Tie', '', 'Type:Casual Wear', 'Material:Cotton ', 'Best QUality', 'Fit-Regular Fit', 299),
('mc015', 'Men Solid Straight Kurta(Dark Blue)', '', 'Type:Party Wear', 'Material:Cotton ', 'Best QUality', 'Fit-Slim Fit', 3299);

-- --------------------------------------------------------

--
-- Table structure for table `mensgrooming`
--

DROP TABLE IF EXISTS `mensgrooming`;
CREATE TABLE IF NOT EXISTS `mensgrooming` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `quantity` varchar(40) DEFAULT NULL,
  `working` varchar(100) DEFAULT NULL,
  `howtouse` varchar(100) DEFAULT NULL,
  `App_area` varchar(100) DEFAULT NULL,
  `package_contains` varchar(100) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mensgrooming`
--

INSERT INTO `mensgrooming` (`pid`, `name`, `quantity`, `working`, `howtouse`, `App_area`, `package_contains`, `price`) VALUES
('mg001', 'Qraa MEN D-TAN Cleanser+Scrub+Face PAck', 'Quantity: 100g Item Form: Foam', 'Removes dead skin and pollution soot', 'Howto use:take desired quantitys,apply massage gently ,rinse off with water', 'Application Area: Face', 'Package Contents: Pack of 3', 591),
('mg002', 'Park Avenue Essential Grooming Kit', 'Quantity: Park Avenue Shave cream (70g),', 'Park Avenue takes care of a man?s grooming needs and brings this kit that contains all the must-have', '', 'Application Area:Body', 'Package Contents: Park Avenue Shave cream, Talc, Soap, After Shave Lotion, Shave Brush, Razor and Ba', 420),
('mg003', 'BEARDO HAIR WAX - Strong Hold (75gm) & Beardo Godfather Oil (30ml) Combo', 'Qty:-Stronghold (75gm) And Godfather (30', 'Best For-Perfect for men hair styling which provides separation, hold and humidity resistance ,It is', 'Use as per Direction Given', 'Easy To Use', 'Ingredients:-Aqua Acrylates copolymer Carbomer Glycerin Pvk-30 Peg40 hydrogenated castor oil Ceteart', 553),
('mg004', 'X-Men Combo Set Face Wash+Fairness Cream', 'Enriched with goodness of Charcoal & Cla', 'Removes Dust & Pollution 4Gives Brighter looking skin', 'Howto use:take desired quantitys,apply massage gently ,rinse off with water', 'Application Area: Face', 'Set Contains: 1 Face Wash 50gm,a FAirness Cream 60gm', 210),
('mg005', 'Beardo Face Care Combo', '', 'De-Tan Removes tan and dead cells  Deep cleanses skin Under Eye Gel Reduces eye bags and puffiness', '', 'Application Area: Face', 'Set Contents : 1 Beardo Under Eye Gel and 1 Beardo De-Tan Face Scrub', 1065),
('mg006', '2 Legend Deodorant and 2 Forest Spice Soap', 'by Wild Stone', '', '', '', 'Set Contents :Deodrants and Soap', 4050),
('mg007', 'Philips QT3310/15 Cordless Trimmer For Men', 'Blade Material:Stainless Steel', 'Trimming Range:0.5-10 mm', '30 min Run Time', '11 Length Settings', 'For body Grooming Beard & Moustache', 1050),
('mg008', 'Panasonic ER417K44B Cordless Trimmer For Men', 'Blade Material:Stainless Steel', 'Trimming Range:1-10 mm', '45 min Run Time', '4 Length Settings', 'For body Grooming Beard & Moustache', 731),
('mg009', 'Park Avenue TRANQUIL & Shiny Bouncy', '8 hours freshness with freshness lock te', 'India\'s first shampoo made From Real Beer', 'Natural proteins and vitamin B increases strength of hair strand', '', 'Quantity: 150ml', 299);

-- --------------------------------------------------------

--
-- Table structure for table `menswatch`
--

DROP TABLE IF EXISTS `menswatch`;
CREATE TABLE IF NOT EXISTS `menswatch` (
  `mw_id` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `proof` varchar(30) DEFAULT NULL,
  `diameter` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `material` varchar(30) DEFAULT NULL,
  `design` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`mw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menswatch`
--

INSERT INTO `menswatch` (`mw_id`, `name`, `brand`, `proof`, `diameter`, `height`, `material`, `design`, `price`) VALUES
('mw001', '01 111 770  4065-SET 8 23 79 Analog Watch', 'Brand-Oris', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 312675),
('mw002', '01 733 7720  4057-07 5 21 45 Analog Watch', 'Brand-Oris', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 1130255),
('mw003', '01 733 7594  4331-07 8 20 63 Culture Analog Watch', 'Brand-Oris', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 74250),
('mw004', '83909 S-063 Analog Watch', 'Brand-Oris', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 58800),
('mw005', 'AR11201 Aviator Analog Watch', 'Brand: Amporio-Armani', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 29995),
('mw006', 'SSB177P1  Analog Watch', 'Brand: Seiko', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 18275),
('mw007', 'G660 G-SHOCK Mud Master  Analog-Digital Watch', 'Brand:G-Shock', 'Waterproof', '38-44 mm', '2 cm', '', 'Comfortable wrist band design, smooth snag free in', 15995),
('mw008', 'K7B216G6  Analog Watch', 'Brand:Calvin Clein', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 15700),
('mw009', 'TH17914849  Analog Watch', 'Brand: HILFIGER', 'Waterproof', '38-42 mm', '1.5 cm', 'Material:Stainless steel', 'Comfortable wrist band design, smooth snag free in', 10500),
('mw010', 'DK11257-6  Analog Watch', 'Brand: DAniel Clein', 'Waterproof', '38-42 mm', '1.5 cm', '', 'Comfortable wrist band design, smooth snag free in', 7200);

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
CREATE TABLE IF NOT EXISTS `mobile` (
  `pid` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ram_rom` varchar(100) DEFAULT NULL,
  `battery` varchar(10) DEFAULT NULL,
  `camera` varchar(10) DEFAULT NULL,
  `processor` varchar(40) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`pid`, `name`, `ram_rom`, `battery`, `camera`, `processor`, `price`) VALUES
('M001', 'Redmi Note 7s', '3GB RAM | 32GB ROM', '4000 mAH', '48MP + 5MP', 'Snapdragon 660', 10999),
('M002', 'Realme 3', '4GB RAM | 64GB ROM', '4230 mAH', '13MP + 2MP', 'Helio P70', 10999),
('M003', 'Apple iphone X', '4GB RAM | 64GB ROM', '4530 mAH', '12MP+ 12MP', 'A11 Bionic', 66499),
('M004', 'Apple iphone XR', '6GB RAM | 128GB ROM', '3500 mAH', '12MP', 'A12 Bionic', 64900),
('M005', 'Google Pixel 3 XL', '4GB RAM | 64GB ROM', '3430 mAH', '12MP', 'Snapdragon 845', 54900),
('M006', 'Samsung Galaxy S10', '12GB RAM | 1TB ROM', '4100 mAH', '16MP +12MP', 'Snapdragon 855', 117900),
('M007', 'Vivo V15 Pro', '6GB RAM | 64TB ROM', '4000 mAH', '12MP +8MP', 'Helio P70', 19990),
('M008', 'Oppo F11', '4GB RAM | 1287TB ROM', '4020 mAH', '48MP +5MP', 'Helio P70', 17990),
('M009', 'Oppo A3s', '4GB RAM | 64GB ROM', '4230 mAH', '13MP +2MP', 'Snapdragon 450', 10190),
('M010', 'Redmi 6', '3GB RAM | 64GB ROM', '3000 mAH', '12MP +5MP', 'Mediatech P22', 7499),
('M011', 'nokia', '3gb', '382mah', '43mp', 'meditech', 28778),
('M032', 'Xiomi redmi k20 pro', '6GB|128GB', '4230mAh', '48MP | 8MP', 'Snapdragon 845', 26990),
('M034', 'k20 pro', '6|128 gb', '4000mah', '48|8mp', 'snapdragon 845', 26999),
('M97', 'Redmi 5 a', '1 gb|16gb', '2350mah', '8mp|2mp', 'snapdragon 440', 8000),
('M03210', 'micromax', '3|64', '2350', '2+5', '435', 2999);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10021 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `pname`, `quantity`, `price`, `mobile`, `address`) VALUES
(10001, 'hemant', 'oil', 1, 230, 2131, 'varanasi'),
(10010, 'w@w', 'Acer Aspire 3 Pentium Quad Core', 1, 17990, 111, 'ddc'),
(10009, 'w@w', 'Acer Aspire 3 Pentium Quad Core', 1, 17990, 111, 'ddc'),
(10008, 'w@w', 'Samsung Galaxy S10', 1, 117900, 111, 'varanasi'),
(10011, 'w@w', 'Realme 3', 1, 10999, 111, 'ddc'),
(10012, 'hemant@1234', 'Apple iphone X', 1, 66499, 7007293039, 'malokhar , mughalsarai'),
(10013, 'hemant@1234', 'Godrej 2.0 Ton 5 Star Split Inverter AC', 1, 51990, 7007293039, 'malokhar , mughalsarai'),
(10014, 'hk@yy.com', 'Redmi Note 7s', 1, 10999, 7298781, 'maokahr'),
(10015, 'abc@abc.com', 'Samsung Q Series Curved QLED Smart Tv', 1, 522990, 7876, 'kites'),
(10016, 'abc@abc.com', 'mi notebook 1', 1, 25000, 7876, 'kites'),
(10017, 'abc@abc.com', 'Samsung 253 L Frost Double Door Refrigerator', 1, 23490, 7876, 'kites'),
(10018, 'we@we', 'Mitra Creations Summer Letter Print Jeans for Wome', 1, 1590, 8400289703, 'malokhar'),
(10019, 'we@we', 'Graphic Print Men Round Or Multicolour TShirt', 2, 502, 313, 'videsh'),
(10020, 'we@we', 'Samsung Galaxy S10', 1, 117900, 313, 'cdnsn');

-- --------------------------------------------------------

--
-- Table structure for table `refrigerator`
--

DROP TABLE IF EXISTS `refrigerator`;
CREATE TABLE IF NOT EXISTS `refrigerator` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `compressor` varchar(50) DEFAULT NULL,
  `star` varchar(30) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `stabilizer` varchar(30) DEFAULT NULL,
  `glass_shelves` varchar(40) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refrigerator`
--

INSERT INTO `refrigerator` (`pid`, `name`, `compressor`, `star`, `volume`, `stabilizer`, `glass_shelves`, `price`) VALUES
('ref001', 'Samsung 253 L Frost Double Door Refrigerator', 'Advance DIT Compressor', '4 Star', '253L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 23490),
('ref002', 'LG Frost Free Double Door Refrigerator', 'Smart Inverter Compressor', '4 Star', '260L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 24990),
('ref003', 'Wirlpool 240L Frost Free Triple Door Refrigerator', 'Reciprocatory Compressor', '4 Star', '240L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 23990),
('ref004', 'Panasonic 268L Frost Free Double Door Refrigerator', 'Inverter Compressor', '3 Star', '268L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 20490),
('ref005', 'Samsung 253L Frost Free Double Door Convertible Refrigerator', 'Digital Inverter Compressor', '4 Star : ForEnergy Saving Uptp', '253L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 24999),
('ref006', 'Panasonic 335L Frost Free Double Door Refrigerator', 'Inverter Compressor', '3 Star', '335L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 27990),
('ref007', 'LG 235L Direct Cool Single Door Refrigerator', 'Smart Inverter Compressor', '5 Star', '235L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 20790),
('ref008', 'Wirlpool 340L Frost Free Double Door Convertible Refrigerator', 'Smart Inverter Compressor', '5 Star', '340L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 31490),
('ref009', 'Haier 278L Frost Free Double Door Top Mount Convertible Refrigerator', 'Normal Compressor', '3 Star', '278L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 26250),
('ref010', 'Bosch  348L Frost Free Double Door Refrigerator', 'Sensor based Compressor', '3 Star', '348L', 'Built-in-Stabilizer', 'Toughened Glass Shelves', 32499);

-- --------------------------------------------------------

--
-- Table structure for table `tablet`
--

DROP TABLE IF EXISTS `tablet`;
CREATE TABLE IF NOT EXISTS `tablet` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ram_rom` varchar(50) DEFAULT NULL,
  `size` varchar(40) DEFAULT NULL,
  `camera` varchar(40) DEFAULT NULL,
  `software` varchar(40) DEFAULT NULL,
  `processor` varchar(40) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablet`
--

INSERT INTO `tablet` (`pid`, `name`, `ram_rom`, `size`, `camera`, `software`, `processor`, `price`) VALUES
('Tab_1001', 'Alcatel Tablet', '2GB RAM|16GB ROM', '20.32 cm(8 inch) HD Display', '8MP Primary|5MP Front', 'Android 8.1(Oreo)', 'MT8765', 5999),
('Tab_1002', 'Apple ipad(Space Grey)', '4GB RAM|32GB ROM', '24.64 cm(9.7 inch) HD Display', '8MP Primary|1.2MP Front', 'iOS 11', 'A10 Fusion Chip with 64-bit Architecture', 26999),
('Tab_1003', 'Mirosoft Surface Go Pentium Gold', '4GB DDR3 RAM|32GB ROM', '25.4 cm(10 inch) HD Display', '8MP Primary|5MP Front', 'Windows 10', 'Intel Pentium Gold Processro', 37999),
('Tab_1004', 'Honor MediaPad Tablet', '3GB RAM|32GB ROM', '24.38 cm(9.6 inch) HD Display', '5MP Primary|2MP Front', 'Android 7.0', 'Qualcum MSM8917 Quad Core Processor', 13999),
('Tab_1005', 'Apple ipad(6th Gen) Tablet', '3GB RAM|32GB ROM', '24.38 cm(9.6 inch) Quad HD Display', '8MP Primary|1.2MP Front', 'iOS 11', 'A10 Fusion Chip with embedded M10 CoProc', 26999),
('Tab_1006', 'Lenevo Yoga 3 Tablet', '2GB RAM|16GB ROM', '20.38 cm(8 inch) HD Display', '8MP Primary', 'Android 5.1', 'Qualcomm MSM8909 Quad Processor', 13990);

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

DROP TABLE IF EXISTS `toys`;
CREATE TABLE IF NOT EXISTS `toys` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `rechargeable` varchar(5) DEFAULT NULL,
  `assembly_required` varchar(5) DEFAULT NULL,
  `scale` varchar(5) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `minimum_age` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toys`
--

INSERT INTO `toys` (`pid`, `name`, `type`, `rechargeable`, `assembly_required`, `scale`, `material`, `minimum_age`) VALUES
('TY001', 'Zurie offroad monster car(black)', 'car & bike', 'no', 'no', '2:1', 'plastic', '3 years');

-- --------------------------------------------------------

--
-- Table structure for table `tv`
--

DROP TABLE IF EXISTS `tv`;
CREATE TABLE IF NOT EXISTS `tv` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pixel` varchar(50) DEFAULT NULL,
  `speaker` varchar(50) DEFAULT NULL,
  `refresh_rate` varchar(50) DEFAULT NULL,
  `hdmi` varchar(50) DEFAULT NULL,
  `price` int(6) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv`
--

INSERT INTO `tv` (`pid`, `name`, `pixel`, `speaker`, `refresh_rate`, `hdmi`, `price`) VALUES
('T001', 'Samsung Q Series Curved QLED Smart Tv', 'Ultra HD(4K) 3840x2160 Pixel', '40W Speaker Output', '200 Hz Refresh Rate', '4 x HDMI|3 x USB', 522990),
('T002', 'MarQ by Shopify LED Smart Android Tv', 'Ultra HD(4K) 3840x2160 Pixel', '20W Speaker Output', '60 Hz Refresh Rate', '3 x HDMI|2 x USB', 28999),
('T003', 'Panasonic HD Ready LED Tv', 'HD Ready 1366x768 Pixel', '20W Speaker Output', '200 Hz Refresh Rate', '3 x HDMI|2 x USB', 29990),
('T004', 'TCL S6500 Series HD Ready LED Tv', 'HD Ready 1366x768 Pixel', '16W Speaker Output', '60 Hz Refresh Rate', '3 x HDMI|1 x USB', 29990),
('T005', 'MI LED Smart TV 4A Pro With Android', 'Full HD 1920x1080 Pixel', '20W Speaker Output', '60 Hz Refresh Rate', '3 x HDMI|2 x USB', 29990),
('T006', 'Hyundai LED Smart TV ', 'Ultra HD(4K) 3840x2160 Pixel', '20W Speaker Output', '60 Hz Refresh Rate', '3 x HDMI|4 x USB', 29990),
('T007', 'Haier LED Full TV ', 'Full HD(4K) 1920x1080 Pixel', '16W Speaker Output', '60 Hz Refresh Rate', '2 x HDMI|2 x USB', 30990),
('T008', 'Thomson UD9 LED Smart TV ', 'Ultra HD(4K) 3840x2160 Pixels', '20W Speaker Output', '60 Hz Refresh Rate', '3 x HDMI|2 x USB', 29990),
('T009', 'Sony Full HD LED Smart TV ', 'Full HD 1920x1080 Pixels', '10W Speaker Output', '50 Hz Refresh Rate', '3 x HDMI|2 x USB', 49990),
('T010', 'LG Full HD LED Smart TV ', 'Full HD 1920x1080 Pixels', '20W Speaker Output', '60 Hz Refresh Rate', '3 x HDMI|2 x USB', 49990);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE IF NOT EXISTS `userinfo` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`name`, `email`, `mobile`, `password`, `address`) VALUES
('Hemant Kumar', 'w@w', 111, '111', 'ddc'),
('Rahul GUpta', 'rahul@123', 7007293039, '111', 'hno. 40 chandauli u.p'),
('hemant', 'hemant@1234', 7007293039, 'hemant', 'malokhar , mughalsarai'),
('Ramashre', 'rAM@123', 87654, '123', 'Malokhar'),
('Hemant', 'hk@yy.com', 7298781, '123', 'maokahr'),
('rampyare', 'ramu@123', 87676765, '123', 'videhs'),
('sultan', 'sultan@xx.com', 78965765, '9090', 'china'),
('ftyfty', 'abc@abc.com', 7876, '9090', 'kites'),
('ghumantu', 'ghum@123', 9090909090, '123', 'bilayat'),
('Kedar', 'kd@123', 9090, '321', 'south indai'),
('chandramohan', 'cm@123', 767, '123', 'baglore'),
('fdada', 'fefe@fd', 23214, 'e42', 'sgers'),
('hemant', 'we@we', 313, '234', 'cdnsn'),
('Ramdulare', 'ramd@123', 89908990, '4321', 'madiya par');

-- --------------------------------------------------------

--
-- Table structure for table `womenclothing`
--

DROP TABLE IF EXISTS `womenclothing`;
CREATE TABLE IF NOT EXISTS `womenclothing` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `fit` varchar(50) DEFAULT NULL,
  `neck` varchar(50) DEFAULT NULL,
  `style` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `pattern` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `womenclothing`
--

INSERT INTO `womenclothing` (`pid`, `name`, `quality`, `fit`, `neck`, `style`, `material`, `pattern`, `price`) VALUES
('mc004', 'Mitra Creations Summer Letter Print Jeans for Wome', '', 'Fit Type: slim fit', '', 'Pant Type: Straight Leg', 'Fabric: Fabric has no stretch', 'Closure Type: Drawstring Waist', 1590),
('mc005', 'Miss Chase Women\'s Skinny Fit Jeans', 'Color Name: Light Blue', 'Fit Type:Skinny fit', '', 'Pant Type: Straight Leg', '78% Cotton 21% Polyester & 1% Elastane', 'Inseam Length: 26 inches', 1990),
('mc006', 'AKA CHIC Women\'s Flared Jeans', 'Machine wash', 'Flared', 'Printed fabric tie up belt', '', '100% Cotton', '', 1990),
('mc007', 'Generic Women\'s Maa Fashion Georgette Fashionable ', 'Care Instructions: Hand Wash Dry Clean Only', 'Color Available on all Saree: Royal Blue, Red, Gre', 'Georette', 'Package Content-1 Saree With 1 Blouse Piece. Sari ', '100% Cotton', '', 195000),
('mc008', 'Satya Paul Georgette Saree With Blouse Piece', 'Care Instructions: dry clean only', 'With blouse piece', '', 'saree Length: 5.50 meters ; Blouse length: 0.80 me', '100% Cotton', 'casual wear', 26090),
('mc009', 'Myx Women\'s Pyjama', 'Care Instructions: Machine wash cold, wash dark co', 'Material: Cotton', 'pyjamas', 'Number of items: 1', '100% Cotton', 'colour:Fuchsia', 990),
('mc010', 'Tanzal Creation Women\'s Art Silk Unstitched Lehang', 'Care Instructions: Machine wash cold, wash dark co', 'Material: Art Silk', '', 'Number of items: 1', '100% Cotton', '', 66600),
('wc001', 'Krave Women Striped Regular fit Top', 'Size-Medium', 'Fit Type: regular fit', 'Round Neck', 'tyle: Round neck with 3/4 Sleeves Top', 'Material : Soft Poly Crepe material with comfortab', 'Pattern: Striper Regular Fit Fashion Top', 1024),
('wc002', 'GRITSTONES Round Neck Printed Top GSWPNTTP1950', '', 'Fit Type: slim fit', 'Round Neck', 'style: Round neck with 3/4 Sleeves Top', 'Material :Cotton', 'Suitable for everyday and formal occasions, such a', 590),
('wc003', 'ANTS Womens Round Neck Sleeveless Frill Top', '', 'Fit Type: Regular Fit', 'Color : Olive', 'Sleeves Type : Sleeveless', 'Material :Cotton', 'Suitable for everyday and formal occasions, such a', 2999);

-- --------------------------------------------------------

--
-- Table structure for table `womenfootwear`
--

DROP TABLE IF EXISTS `womenfootwear`;
CREATE TABLE IF NOT EXISTS `womenfootwear` (
  `wf_id` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `style` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `womenfootwear`
--

INSERT INTO `womenfootwear` (`wf_id`, `name`, `color`, `material`, `style`, `type`, `height`, `price`) VALUES
('wf001', 'Clarks Women\'s Shola Curtain Fashion Sandals', 'Color: Black', 'Material: Suede', 'Lifestyle: Casual', 'Heel Type: Stiletto', 'Heel Height: 9.5 centimeters', 5499),
('wf002', 'Naturalizer Women\'s Nicolette Fashion Sandals', 'Closure: Buckle', 'Material Type: Leather', 'Lifestyle: Casual', 'Heel Type: Stiletto', 'Heel Height:3 inches', 5499),
('wf003', 'Forever 21 Women\'s Slippers', 'Closure: Slip_On', 'Material Type: Synthetic', 'Lifestyle: Casual', 'Heel Height: 0.5 inches', 'Heel Type: Flats', 1999),
('wf004', 'Forever 21 Women\'s Fashion Sandals', 'Closure: Slip_On', 'Lifestyle: Casual', 'Heel Type: Block heel', 'Heel Height: 1 inches', 'No warranty', 2299),
('wf005', 'FLITE Women\'s Slippers', 'Closure: Slip_On', 'Material Type: Vinyl', 'Lifestyle: Casual', 'Closure Type: Slip On', 'Heel Type: Flats', 399),
('wf006', 'FLITE Women\'s Flip-Flops', 'Closure: Slip_On', 'Material Type: Synthetic', 'Lifestyle: Casual', 'Closure Type: Slip On', 'Heel Type: Flats', 159),
('wf007', 'Catwalk Women\'s Fashion Sandals', 'Closure: Slip On', 'Material Type: Synthetic', 'Lifestyle: Casual', 'Closure Type: Slip On', 'Heel Type: Stiletto', 1099),
('wf008', 'Catwalk Women Espadrille Flats', 'Closure: Slip On', 'Material Type: Synthetic', 'Lifestyle: Casual', 'Closure Type: Slip On', 'Heel Type: Flats', 1048),
('wf009', 'Thari Choice Women\'s Velvet Shoes', 'Sole: TPR', 'Closure: Zip', 'Outer Material : Velvet, Inner Material : Syntheti', 'Lifestyle: Casual Wear Smart and Stylish', 'Light Weight', 499),
('wf010', 'Bruno Manetti Women Suede Black Heel Boots', 'Sole: manmade', 'Closure: Slip On', 'Upper Material : Suede, Sole Material :Sheet Sole', 'Toe Shape: Round Toe', 'Heel Height: 3', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `womenmakeup`
--

DROP TABLE IF EXISTS `womenmakeup`;
CREATE TABLE IF NOT EXISTS `womenmakeup` (
  `pid` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `shades` varchar(100) DEFAULT NULL,
  `uses` varchar(100) DEFAULT NULL,
  `cases` varchar(100) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `womenmakeup`
--

INSERT INTO `womenmakeup` (`pid`, `name`, `color`, `shades`, `uses`, `cases`, `price`) VALUES
('wm001', 'Segolike 9 Earth Warm Color Natural Matte Shimmer Glitter Eyeshadow Palette Cosmetic Makeup Set Kit ', 'New 9 colors eyeshadow eyebrow powder palette', 'Highly pigmented shades, can last for all day long', 'Perfect for both professional salon or home use', 'The compact case makes it easy for storing and traveling', 1511),
('wm002', 'Mars Fashion Make-Up Kit With Eye/Lipliner & Adbeni Accessories', '48 Eyeshadow : 3 blusher : 4 compact powder : 6 lip color : mirror puff brush : 1 eye and lip liner ', 'Size: 80gx1pcs', 'Makeup kit, eye/lipliner, adbeni hair ruber band', '', 799),
('wm003', 'Colorbar Ultimate Eye Liner, Black, 1ml', 'Quantity: 1ml; Color: Black; Item Form: Pencil', 'Unique product which is perfect for defining your eyes in a lightning speed without any application ', 'Professional flexible brush offers great accuracy to line and define the eyes, ensuring an even appl', 'Usage: Hold Ultimate Eyeliner like a sketch pen, and draw a line starting from the inner corner of t', 550),
('wm004', 'Music Flower Gel Eyeliner, Black -01, Brown- 01, 6 Grams', 'Non organic eyeliner', 'Waterproof', 'Smudge proof', 'Tip type: dip tip', 299),
('wm005', 'Lakme Eyeconic Curling Mascara', 'Intense royal blue shade', 'Smart curl brush', 'Gives volume to your lashes every day', 'Light and easy to remove', 375),
('wm006', 'ADS Waterproof Mascara Free Laperla Kajal-POPO', 'Best For : Curling', 'Colour : Black', 'Water Proof', 'Brush Type : Comb,Environment Friendly', 349),
('wm007', 'L\'Oreal Paris Kajal Magique, Bold, 0.35g', 'Smudge proof for up to 12 hours non transfer waterproof', 'A new generation formula powered with mineral pigments for deep intense colour', 'A new generation formula powered with mineral pigments for deep intense colour', 'Suitable for sensitive eyes and contact lenses', 375),
('wm008', 'Blue Heaven Artisto Kajal, Black, 3.25g', 'Quantity: 3.25g; Color: Black', 'Gives your eyes a cooling effect and define your eyes for a dramatic magnified looks; It is gel base', '8 hr Smudge Proof', 'Suitable for sensitive eyes and contact lenses', 125),
('wm009', 'Hilary Rhoda Double Eyebrow Pencil with Eyebrows Brush (Black)', 'Lasting US-Based 3D', 'Eyebrow pencil with brush at other end', 'Natural Color', 'Black eyebrow', 199),
('wm010', 'Digital Shoppy Double-Headed Eyebrow Pencil Waterproof Sweat-proof Automatic Rotation Triangle Eyebr', 'Blending brush softens lines for a natural, fuller eyebrow look', 'SMOOTH AND NATURAL', 'SMOOTH AND NATURAL', 'EASY TO MAKEUP/REMOVE ', 1199),
('wm011', 'Lakme Absolute Matte Melt Liquid Lip Color ', 'Velvet matte finish; delivers a lush, suede-like finish', 'Long wear; vivid colours that last through the day', 'Transfer proof', 'Intense, bold color pay off ', 750);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
