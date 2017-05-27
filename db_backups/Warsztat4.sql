SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `Admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

CREATE TABLE `Clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

CREATE TABLE `Images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `src` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `short_description` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `long_description` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

INSERT INTO `Products` (`id`, `name`, `amount`, `price`, `short_description`, `long_description`) VALUES
(1, 'testowy produkt', 0, '10.00', 'superprodukt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies ut eros eu ullamcorper. Aliquam lobortis leo turpis, at congue metus commodo ut. Vivamus a elementum nisi. Pellentesque vel vestibulum turpis, sed dictum enim. Nulla laoreet dolor semper leo vehicula luctus. Etiam sit amet nunc sed odio imperdiet ullamcorper. Nulla facilisi. Aliquam massa ante, vestibulum ac est quis, tempor eleifend nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam vel elit velit. Quisque nec egestas massa. Maecenas at vulputate nisl, vel aliquet enim. Maecenas placerat, turpis eu tincidunt vulputate, justo elit vehicula sapien, in ullamcorper erat ipsum ut ligula.'),
(2, 'testowy produkt2', 10, '100.00', 'jeszcze lepszy produkt', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ligula leo, suscipit non ultricies ac, interdum eget ligula. Morbi auctor orci ipsum, id ornare massa luctus nec. In pulvinar lacus vel quam pharetra pharetra. Mauris enim dui, laoreet vitae orci a, volutpat commodo felis. In commodo turpis id blandit pretium. Quisque placerat at odio id hendrerit. Donec sed nunc elementum, ullamcorper ante sit amet, condimentum ex. Aenean elementum auctor facilisis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris blandit nec nunc sit amet tempus. Suspendisse dignissim, ipsum quis pulvinar consequat, nisi dolor vestibulum orci, a fringilla velit magna ac mauris. Curabitur eget nulla fringilla, porttitor enim finibus, suscipit lacus.'),
(3, 'produkt testowy3', 5, '12345.00', 'testowy opis', 'Curabitur vulputate fringilla magna eget auctor. Pellentesque nunc massa, gravida a eros a, pulvinar interdum tortor. Sed a nunc vitae sem luctus sagittis ac nec nisl. Nullam dignissim varius risus ut commodo. Donec fermentum, mi id semper luctus, felis metus sodales arcu, non luctus nisi felis consectetur ipsum. Aliquam quis risus et lorem bibendum faucibus. Morbi efficitur finibus maximus. Praesent sem lacus, porttitor sit amet rutrum sed, vestibulum id nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quam ipsum, ultricies eu elementum vitae, volutpat eu nulla. Nam lobortis ullamcorper posuere. Nam eleifend nulla id metus placerat, sit amet dignissim lacus imperdiet. Vestibulum imperdiet mi non ligula vestibulum euismod. Integer aliquet tempus nisi, quis euismod felis. Cras rutrum et metus ut ullamcorper. Suspendisse lacus ipsum, suscipit et dui at, scelerisque imperdiet erat.'),
(4, 'testowy produkt4', 1000, '100000.00', 'kup go!', '');


ALTER TABLE `Admins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Images`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `Admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `Clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
