-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 11, 2023 at 12:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exorcistpunisher`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) DEFAULT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '1234567890', 'first message', '2023-10-26 01:27:44'),
(2, 'todd', 'todd89@gmail.com', '4545454545', 'love your blog!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '2023-10-31 04:45:14'),
(3, 'wwwwwwwwww', 'xxxxxxxxxxxxx@gmail.com', 'eeeeeeeeeeeeee', 'ooooooooooooooooooooooooooo', '2023-11-07 21:20:32'),
(4, 'wwwwwwwwww', 'xxxxxxxxxxxxx@gmail.com', 'eeeeeeeeeeeeee', 'oooooooooooooooooooooooooooooo', '2023-11-07 21:24:07'),
(5, 'slijnil iv sdl d', 'todd89@gmail.com', '44444444444', 'oiiiiiiiiiiiiiiiiiiiiioioioioioio', '2023-11-07 21:35:11'),
(6, 'John Nash', 'johnnash777@gmail.com', '9999888822', 'Well done Vatsalya... email is working now. Kudos!!!!!!!!', '2023-11-07 21:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(25) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Let\'s learn about stock marketing', 'tagline of first post ', 'first-post', 'Stocks (also capital stock, or sometimes interchangeably, shares) consist of all the shares[a] by which ownership of a corporation or company is divided.[1] A single share of the stock means fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the shareholder (stockholder) to that fraction of the company\'s earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt),[3] or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. Not all stock is necessarily equal, as certain classes of stock may be issued, for example, without voting rights, with enhanced voting rights, or with a certain priority to receive profits or liquidation proceeds before or after other classes of shareholders.', 'about-bg.jpg', '2023-11-11 16:16:20'),
(2, 'Asian Games 2023: India\'s records in Hangzhou at a glance - full list', '#IsBaar100Paar', 'asian-games-india-2023', 'Athletics\r\nTejaswin Shankar - national record in men’s decathlon (7666 points)\r\nVithya Ramraj - equalled national record in women\'s 400m hurdles (55.42s)\r\nVithya Ramraj, Muhammad Ajmal, Rajesh Ramesh and Subha Venkatesan - national record in mixed 4x400m relay (3:14.34)\r\nAvinash Sable - Asian Games record in men\'s 3000m steeplechase (8:19:53)\r\nShooting\r\nSift Kaur Samra - world record in women’s 50m rifle 3 positions final (469.6 points)\r\nSift Kaur Samra - Asian Games record in women’s 50m rifle 3 positions qualification (594)\r\nRudrankksh Patil, Aishwary Pratap Singh Tomar and Divyansh Singh - world record in men’s 10m air rifle team (1893.7)\r\nAishwary Pratap Singh Tomar, Swapnil Kusale and Akhil Sheoran - world record in men’s 50m rifle 3 positions team (1769)\r\nAishwary Pratap Singh Tomar - Asian Games record in 50m rifle 3 positions men\'s qualification (591)\r\nManu Bhaker, Esha Singh and Rhythm Sangwan - junior world record in women’s 25m pistol (1759) \r\nPalak Gulia - Asian Games record in women’s 10m air pistol (242.1)\r\nKynan Chenai, Zoravar Singh Sandhu and Prithviraj Toindaman - Asian Games record in men’s trap team (361)\r\nSarabjot Singh, Divya TS - Asian Games record in 10m air pistol mixed team qualification (577)\r\nSwimming \r\nSrihari Nataraj - national record in men’s 200m freestyle (1:49.05)\r\nSrihari Nataraj, Tanish George Mathew, Vishal Grewal and Anand Shylaja  - national record in men’s 4x100m freestyle (3:21.22) \r\nAryan Nehra, Aneesh Gowda, Kushagra Rawat and Tanish George Mathew - national record in men’s 4x200m freestyle (7:29.04)\r\nSrihari Nataraj, SP Likith, Sajan Prakash, Tanish George Matthew - national record in men’s 4x100m medley (3:40.20)\r\nMaana Patel, Dhinidhi Desinghu, Janhvi Choudhary and Shivangi Sarma - national record in women’s 4x100m freestyle (3:53.80)\r\nDhinidhi Desinghu, Shivangi Sarma, Vritti Agarwal and Hashika Ramachandra - national record in women’s 4x200m freestyle (8:37.58)\r\nCycling\r\nMen\'s sprint team (Yanglem Rojit Singh, David Beckham Elkatohchoongo, Ronaldo Singh Laitonjam and Esow Alben) - national record (44.609)\r\nArchery\r\nAditi Gopichand Swami - Asian Games record in women’s compound archery (149) \r\nJyothi Surekha Vennam - equalled the Asian Games record in women’s compound archery (149)\r\nOjas Pravin Deotale - Asian Games record in men’s individual compound archery (150-7x)\r\nOjas Pravin Deotale and Jyothi Surekha Vennam - Asian Games record in mixed team compound ranking round (1413)\r\nOjas Pravin Deotale and Jyothi Surekha Vennam - Asian Games record in mixed team compound match - 159', 'home-bg.jpg', '2023-11-11 15:59:08'),
(3, 'India Gate', 'Pride of India', 'india-gate', 'The India Gate (formerly known as All India War Memorial) is a war memorial located near the Kartavya path on the eastern edge of the \"ceremonial axis\" of New Delhi, formerly called Rajpath. It stands as a memorial to 84,000 soldiers of the Indian Army who died between 1914 and 1921 in the First World War, in France, Flanders, Mesopotamia, Persia, East Africa, Gallipoli and elsewhere in the Near and the Far East, and the Third Anglo-Afghan War. 13,300 servicemen\'s names, including some soldiers and officers from the United Kingdom, are inscribed on the gate.[2] Designed by Sir Edwin Lutyens, the gate evokes the architectural style of the ancient Roman triumphal arches such as the Arch of Constantine in Rome, and later memorial arches; it is often compared to the Arc de Triomphe in Paris, and the Gateway of India in Mumbai.\r\n\r\nFollowing the Bangladesh Liberation war in 1972, a structure consisting of a black marble plinth with a reversed rifle, capped by a war helmet and bounded by four eternal flames, was built beneath the archway. This structure, called Amar Jawan Jyoti (Flame of the Immortal Soldier), has since 1971 served as India\'s tomb of the unknown soldier. India Gate is counted amongst the largest war memorials in India and every Republic Day, the Prime Minister visits the gate to pay their tributes to the Amar Jawan Jyoti, following which the Republic Day parade starts. India Gate is often a location for civil society protests.', 'home-bg.jpg', '2023-11-10 20:01:14'),
(4, 'Inidan Space Research Organization', 'Making India a space superpower', 'isro-india', 'Indian Space Research Organisation (ISRO) is the space agency of India. The organisation is involved in science, engineering and technology to harvest the benefits of outer space for India and the mankind. ISRO is a major constituent of the Department of Space (DOS), Government of India. The department executes the Indian Space Programme primarily through various Centres or units within ISRO.\r\n\r\nISRO was previously the Indian National Committee for Space Research (INCOSPAR), set up by the Government of India in 1962, as envisioned by Dr. VikramA Sarabhai. ISRO was formed on August 15, 1969 and superseded INCOSPAR with an expanded role to harness space technology. DOS was set up and ISRO was brought under DOS in 1972.\r\n\r\nThe prime objective of ISRO/DOS is the development and application of space technology for various national needs. To fulfil this objective, ISRO has established major space systemsfor communication, television broadcasting and meteorological services; resources monitoring and management; space-based navigation services. ISRO has developed satellite launch vehicles, PSLV and GSLV, to place the satellites in the required orbits.\r\n\r\nAlongside its technological advancement, ISRO contributes to science and science education in the country. Various dedicated research centres and autonomous institutions for remote sensing, astronomy and astrophysics, atmospheric sciences and space sciences in general function under the aegis of Department of Space. ISRO\'s own Lunar and interplanetary missions along with other scientific projects encourage and promote science education, apart from providing valuable data to the scientific community which in turn enriches science.', 'home-bg.jpg', '2023-11-10 20:04:15'),
(5, 'Formula One Championship', 'Need for Speed!!!', 'f1-race', 'Formula One (more commonly known as Formula 1 or F1) is the highest class of international racing for open-wheel single-seater formula racing cars sanctioned by the Fédération Internationale de l\'Automobile (FIA). The FIA Formula One World Championship has been one of the premier forms of racing around the world since its inaugural season in 1950. The word formula in the name refers to the set of rules to which all participants\' cars must conform.[1] A Formula One season consists of a series of races, known as Grands Prix. Grands Prix take place in multiple countries and continents around the world on either purpose-built circuits or closed public roads.\r\n\r\nA points system is used at Grands Prix to determine two annual World Championships: one for the drivers, and one for the constructors (the teams). Each driver must hold a valid Super Licence, the highest class of racing licence issued by the FIA,[2] and the races must be held on tracks graded \"1\", the highest grade-rating issued by the FIA for tracks.[2]\r\n\r\nFormula One cars are the fastest regulated road-course racing cars in the world, owing to very high cornering speeds achieved through generating large amounts of aerodynamic downforce. Much of this downforce is generated by front and rear wings, which have the side effect of causing severe turbulence behind each car. The turbulence reduces the downforce generated by the cars following directly behind, making it hard to overtake. Major changes made to the cars for the 2022 season have resulted in greater use of ground effect aerodynamics and modified wings to reduce the turbulence behind the cars, with the goal of making overtaking easier.[3] The cars are dependent on electronics, aerodynamics, suspension and tyres. Traction control, launch control, and automatic shifting, plus other electronic driving aids, were first banned in 1994. They were briefly reintroduced in 2001, and have more recently been banned since 2004 and 2008, respectively.[4]', 'home-bg.jpg', '2023-11-10 20:05:33'),
(6, '\"Your savior is here.\" - LOKI', 'Burdened with glorious purpose', 'loki-mcu', 'After stealing the Tesseract during the events of Avengers: Endgame (2019), an alternate version of Loki is brought to the mysterious Time Variance Authority (TVA), a bureaucratic organization that exists outside of time and space and monitors the timeline. They give Loki a choice: face being erased from existence due to being a \"time variant\", or help fix the timeline and stop a greater threat. Loki ends up in his own crime thriller, traveling through time,[2][3][4] hunting a female version of himself named Sylvie.[5]\r\n\r\nAfter the first season ends with the timeline breaking and the creation of a multiverse,[6] the second season shows Loki teaming up with Mobius M. Mobius, Hunter B-15, and other TVA agents \"in a battle for the soul\" of the TVA. This includes a search through the multiverse for Sylvie, Ravonna Renslayer, and Miss Minutes.[7]', 'home-bg.jpg', '2023-11-10 20:07:29'),
(7, 'Wolverine', 'A mutant with an unstoppable healing power, adamantium metal claws and no-nonsense attitude makes the man called Logan, one of the most ferocious heroes in the universe.', 'logan-jameshowlett', 'James Howlett was born to wealthy John and Elizabeth Howlett in Alberta, Canada, during the last years of the 19th century. As a child, he was frail and unhealthy due to his overactive mutant immune system and was neglected by his mother, who had been institutionalized following the death of her first son, John Jr., in 1897. James’s mutant abilities were triggered when his father was shot by the Howlett groundskeeper Thomas Logan, whom he did not know was his real father. James killed Logan, slashed the face of Logan’s son and his friend Dog, and left Alberta with a childhood friend, Rose O’Hara.\r\n\r\nHis healing abilities drove trauma from his memories, leaving him partially amnesiac. He and Rose found refuge at a British Columbia stone quarry, where Rose, claiming James was her cousin, gave his name as “Logan.” Within months, Logan’s powers were heightening due to the environment around him. He became healthier and gained senses to rival those of an animal, but also became more violent. To divert some of this pent-up rage, Logan partook in cage fights where his prowess earned him the nickname “Wolverine.” After accidentally killing Rose with his claws, Logan retreated into the woods where he lived as a feral beast, losing all of his former memories.\r\n\r\nHe would later reenter society and travel the world, partaking in every major conflict of the 20th century (WWI, WWII, the Spanish Civil War, the Vietnam War) as a soldier, criminal, or mercenary for hire. This caused him to coin the phrase \"I\'m the best there is at what I do, but what I do best isn\'t very nice.”\r\n\r\nWhile on the run from the law, he was abducted by the Canadian super soldier program known as “Weapon X.” He had previously been a willing participant in the program in the early 1960s as an international operative of Team X. Logan was a prime candidate for this new iteration of Weapon X due to his incredibly fast healing and endurance, which allowed Doctor Cornelius and his team to fuse adamantium to his skeleton. The experiment was successful and gave Logan more control over his berserker nature, but also wiped him of any residual memories he had lingering in his head.\r\n\r\nWhen the Hulk blundered his way into Canadian territory, Logan was mobilized against the green gargantuan. He was also used to kill the entire population of a small town in a field test, but eventually broke loose from his captors, slaying almost everyone at the Weapon X facility. Despite this, they still had his DNA and were able to create new mutants like Avery Connor and clawed clone called X-23 (aka Laura Kinney).\r\n\r\nHis real sense of belonging would not arrive until he joined the X-Men.', '', '2023-11-11 16:24:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
