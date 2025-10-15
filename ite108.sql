-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2025 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ite108`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Jane Doe', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '5021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '5023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(10, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '5022', 'Mexico'),
(11, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(12, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(13, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(14, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(15, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(16, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(17, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(18, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(19, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(20, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(21, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(22, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(23, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(24, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(25, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(26, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '8022', 'Spain'),
(27, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(28, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(29, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(30, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(31, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(32, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(33, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(34, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
(35, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
(36, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(37, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(38, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(39, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(40, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(41, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(42, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(43, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '4179', 'Germany'),
(44, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
(45, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
(46, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
(47, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
(48, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
(49, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '5033', 'Mexico'),
(50, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '5021', 'Mexico'),
(51, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '5023', 'Mexico'),
(52, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(53, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(54, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(55, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(56, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(57, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(58, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '5022', 'Mexico'),
(59, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(60, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(61, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(62, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(63, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(64, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(65, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(66, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(67, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(68, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(69, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(70, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(71, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(72, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(73, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(74, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '8022', 'Spain'),
(75, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(76, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(77, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(78, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(79, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(80, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(81, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(82, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
(83, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
(84, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(85, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(86, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(87, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(88, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(89, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(90, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(91, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '4179', 'Germany'),
(287, 'John Doe', 'John', NULL, NULL, NULL, 'USA'),
(288, 'John Doe', 'John', NULL, NULL, NULL, 'USA'),
(289, 'John Doe', 'John', NULL, NULL, NULL, 'USA'),
(290, 'John Doe', 'John', NULL, NULL, NULL, 'USA');

--
-- Triggers `customers`
--
DELIMITER $$
CREATE TRIGGER `after_delete_customers` AFTER DELETE ON `customers` FOR EACH ROW BEGIN
    INSERT INTO Garcia_customer_trigger_logs (customer_id, action, description)
    VALUES (OLD.CustomerID, 'AFTER_DELETE', CONCAT('Deleted customer: ', OLD.CustomerName));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_customers` AFTER INSERT ON `customers` FOR EACH ROW BEGIN
    INSERT INTO Garcia_customer_trigger_logs (customer_id, action, description)
    VALUES (NEW.CustomerID, 'AFTER_INSERT', CONCAT('Inserted customer: ', NEW.CustomerName));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_customers` AFTER UPDATE ON `customers` FOR EACH ROW BEGIN
    INSERT INTO Garcia_customer_trigger_logs (customer_id, action, description)
    VALUES (NEW.CustomerID, 'AFTER_UPDATE', CONCAT('Updated customer: ', NEW.CustomerName));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_delete_customers` BEFORE DELETE ON `customers` FOR EACH ROW BEGIN
    DECLARE orderCount INT;
    SELECT COUNT(*) INTO orderCount FROM Orders WHERE CustomerID = OLD.CustomerID;
    IF orderCount > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete customer with existing orders.';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_customers` BEFORE INSERT ON `customers` FOR EACH ROW BEGIN
    IF NEW.CustomerName IS NULL OR TRIM(NEW.CustomerName) = '' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'CustomerName cannot be NULL or empty.';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_customers` BEFORE UPDATE ON `customers` FOR EACH ROW BEGIN
    IF NEW.CustomerName IS NULL OR TRIM(NEW.CustomerName) = '' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'CustomerName cannot be set to NULL or empty.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Photo` text DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`, `Notes`) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
(4, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
(5, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.'),
(6, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),
(7, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.'),
(8, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
(9, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.');

-- --------------------------------------------------------

--
-- Table structure for table `lastname_customer_trigger_logs`
--

CREATE TABLE `lastname_customer_trigger_logs` (
  `log_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `action_timestamp` datetime DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lastname_customer_trigger_logs`
--

INSERT INTO `lastname_customer_trigger_logs` (`log_id`, `customer_id`, `action`, `action_timestamp`, `description`) VALUES
(1, 287, 'AFTER_INSERT', '2025-10-15 19:28:24', 'Inserted customer: John Doe'),
(2, 1, 'AFTER_UPDATE', '2025-10-15 19:28:24', 'Updated customer: Jane Doe'),
(3, 288, 'AFTER_INSERT', '2025-10-15 19:29:27', 'Inserted customer: John Doe'),
(4, 1, 'AFTER_UPDATE', '2025-10-15 19:29:27', 'Updated customer: Jane Doe'),
(5, 289, 'AFTER_INSERT', '2025-10-15 19:29:44', 'Inserted customer: John Doe'),
(6, 1, 'AFTER_UPDATE', '2025-10-15 19:29:44', 'Updated customer: Jane Doe'),
(7, 290, 'AFTER_INSERT', '2025-10-15 19:30:11', 'Inserted customer: John Doe'),
(8, 1, 'AFTER_UPDATE', '2025-10-15 19:30:52', 'Updated customer: Jane Doe');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `ShipperID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipperID`) VALUES
(10248, 90, 5, '1996-07-04', 3),
(10249, 81, 6, '1996-07-05', 1),
(10250, 34, 4, '1996-07-08', 2),
(10251, 84, 3, '1996-07-08', 1),
(10252, 76, 4, '1996-07-09', 2),
(10253, 34, 3, '1996-07-10', 2),
(10254, 14, 5, '1996-07-11', 2),
(10255, 68, 9, '1996-07-12', 3),
(10256, 88, 3, '1996-07-15', 2),
(10257, 35, 4, '1996-07-16', 3),
(10258, 20, 1, '1996-07-17', 1),
(10259, 13, 4, '1996-07-18', 3),
(10260, 55, 4, '1996-07-19', 1),
(10261, 61, 4, '1996-07-19', 2),
(10262, 65, 8, '1996-07-22', 3),
(10263, 20, 9, '1996-07-23', 3),
(10264, 24, 6, '1996-07-24', 3),
(10265, 7, 2, '1996-07-25', 1),
(10266, 87, 3, '1996-07-26', 3),
(10267, 25, 4, '1996-07-29', 1),
(10268, 33, 8, '1996-07-30', 3),
(10269, 89, 5, '1996-07-31', 1),
(10270, 87, 1, '1996-08-01', 1),
(10271, 75, 6, '1996-08-01', 2),
(10272, 65, 6, '1996-08-02', 2),
(10273, 63, 3, '1996-08-05', 3),
(10274, 85, 6, '1996-08-06', 1),
(10275, 49, 1, '1996-08-07', 1),
(10276, 80, 8, '1996-08-08', 3),
(10277, 52, 2, '1996-08-09', 3),
(10278, 5, 8, '1996-08-12', 2),
(10279, 44, 8, '1996-08-13', 2),
(10280, 5, 2, '1996-08-14', 1),
(10281, 69, 4, '1996-08-14', 1),
(10282, 69, 4, '1996-08-15', 1),
(10283, 46, 3, '1996-08-16', 3),
(10284, 44, 4, '1996-08-19', 1),
(10285, 63, 1, '1996-08-20', 2),
(10286, 63, 8, '1996-08-21', 3),
(10287, 67, 8, '1996-08-22', 3),
(10288, 66, 4, '1996-08-23', 1),
(10289, 11, 7, '1996-08-26', 3),
(10290, 15, 8, '1996-08-27', 1),
(10291, 61, 6, '1996-08-27', 2),
(10292, 81, 1, '1996-08-28', 2),
(10293, 80, 1, '1996-08-29', 3),
(10294, 65, 4, '1996-08-30', 2),
(10295, 85, 2, '1996-09-02', 2),
(10296, 46, 6, '1996-09-03', 1),
(10297, 7, 5, '1996-09-04', 2),
(10298, 37, 6, '1996-09-05', 2),
(10299, 67, 4, '1996-09-06', 2),
(10300, 49, 2, '1996-09-09', 2),
(10301, 86, 8, '1996-09-09', 2),
(10302, 76, 4, '1996-09-10', 2),
(10303, 30, 7, '1996-09-11', 2),
(10304, 80, 1, '1996-09-12', 2),
(10305, 55, 8, '1996-09-13', 3),
(10306, 69, 1, '1996-09-16', 3),
(10307, 48, 2, '1996-09-17', 2),
(10308, 2, 7, '1996-09-18', 3),
(10309, 37, 3, '1996-09-19', 1),
(10310, 77, 8, '1996-09-20', 2),
(10311, 18, 1, '1996-09-20', 3),
(10312, 86, 2, '1996-09-23', 2),
(10313, 63, 2, '1996-09-24', 2),
(10314, 65, 1, '1996-09-25', 2),
(10315, 38, 4, '1996-09-26', 2),
(10316, 65, 1, '1996-09-27', 3),
(10317, 48, 6, '1996-09-30', 1),
(10318, 38, 8, '1996-10-01', 2),
(10319, 80, 7, '1996-10-02', 3),
(10320, 87, 5, '1996-10-03', 3),
(10321, 38, 3, '1996-10-03', 2),
(10322, 58, 7, '1996-10-04', 3),
(10323, 39, 4, '1996-10-07', 1),
(10324, 71, 9, '1996-10-08', 1),
(10325, 39, 1, '1996-10-09', 3),
(10326, 8, 4, '1996-10-10', 2),
(10327, 24, 2, '1996-10-11', 1),
(10328, 28, 4, '1996-10-14', 3),
(10329, 75, 4, '1996-10-15', 2),
(10330, 46, 3, '1996-10-16', 1),
(10331, 9, 9, '1996-10-16', 1),
(10332, 51, 3, '1996-10-17', 2),
(10333, 87, 5, '1996-10-18', 3),
(10334, 84, 8, '1996-10-21', 2),
(10335, 37, 7, '1996-10-22', 2),
(10336, 60, 7, '1996-10-23', 2),
(10337, 25, 4, '1996-10-24', 3),
(10338, 55, 4, '1996-10-25', 3),
(10339, 51, 2, '1996-10-28', 2),
(10340, 9, 1, '1996-10-29', 3),
(10341, 73, 7, '1996-10-29', 3),
(10342, 25, 4, '1996-10-30', 2),
(10343, 44, 4, '1996-10-31', 1),
(10344, 89, 4, '1996-11-01', 2),
(10345, 63, 2, '1996-11-04', 2),
(10346, 65, 3, '1996-11-05', 3),
(10347, 21, 4, '1996-11-06', 3),
(10348, 86, 4, '1996-11-07', 2),
(10349, 75, 7, '1996-11-08', 1),
(10350, 41, 6, '1996-11-11', 2),
(10351, 20, 1, '1996-11-11', 1),
(10352, 28, 3, '1996-11-12', 3),
(10353, 59, 7, '1996-11-13', 3),
(10354, 58, 8, '1996-11-14', 3),
(10355, 4, 6, '1996-11-15', 1),
(10356, 86, 6, '1996-11-18', 2),
(10357, 46, 1, '1996-11-19', 3),
(10358, 41, 5, '1996-11-20', 1),
(10359, 72, 5, '1996-11-21', 3),
(10360, 7, 4, '1996-11-22', 3),
(10361, 63, 1, '1996-11-22', 2),
(10362, 9, 3, '1996-11-25', 1),
(10363, 17, 4, '1996-11-26', 3),
(10364, 19, 1, '1996-11-26', 1),
(10365, 3, 3, '1996-11-27', 2),
(10366, 29, 8, '1996-11-28', 2),
(10367, 83, 7, '1996-11-28', 3),
(10368, 20, 2, '1996-11-29', 2),
(10369, 75, 8, '1996-12-02', 2),
(10370, 14, 6, '1996-12-03', 2),
(10371, 41, 1, '1996-12-03', 1),
(10372, 62, 5, '1996-12-04', 2),
(10373, 37, 4, '1996-12-05', 3),
(10374, 91, 1, '1996-12-05', 3),
(10375, 36, 3, '1996-12-06', 2),
(10376, 51, 1, '1996-12-09', 2),
(10377, 72, 1, '1996-12-09', 3),
(10378, 24, 5, '1996-12-10', 3),
(10379, 61, 2, '1996-12-11', 1),
(10380, 37, 8, '1996-12-12', 3),
(10381, 46, 3, '1996-12-12', 3),
(10382, 20, 4, '1996-12-13', 1),
(10383, 4, 8, '1996-12-16', 3),
(10384, 5, 3, '1996-12-16', 3),
(10385, 75, 1, '1996-12-17', 2),
(10386, 21, 9, '1996-12-18', 3),
(10387, 70, 1, '1996-12-18', 2),
(10388, 72, 2, '1996-12-19', 1),
(10389, 10, 4, '1996-12-20', 2),
(10390, 20, 6, '1996-12-23', 1),
(10391, 17, 3, '1996-12-23', 3),
(10392, 59, 2, '1996-12-24', 3),
(10393, 71, 1, '1996-12-25', 3),
(10394, 36, 1, '1996-12-25', 3),
(10395, 35, 6, '1996-12-26', 1),
(10396, 25, 1, '1996-12-27', 3),
(10397, 60, 5, '1996-12-27', 1),
(10398, 71, 2, '1996-12-30', 3),
(10399, 83, 8, '1996-12-31', 3),
(10400, 19, 1, '1997-01-01', 3),
(10401, 65, 1, '1997-01-01', 1),
(10402, 20, 8, '1997-01-02', 2),
(10403, 20, 4, '1997-01-03', 3),
(10404, 49, 2, '1997-01-03', 1),
(10405, 47, 1, '1997-01-06', 1),
(10406, 62, 7, '1997-01-07', 1),
(10407, 56, 2, '1997-01-07', 2),
(10408, 23, 8, '1997-01-08', 1),
(10409, 54, 3, '1997-01-09', 1),
(10410, 10, 3, '1997-01-10', 3),
(10411, 10, 9, '1997-01-10', 3),
(10412, 87, 8, '1997-01-13', 2),
(10413, 41, 3, '1997-01-14', 2),
(10414, 21, 2, '1997-01-14', 3),
(10415, 36, 3, '1997-01-15', 1),
(10416, 87, 8, '1997-01-16', 3),
(10417, 73, 4, '1997-01-16', 3),
(10418, 63, 4, '1997-01-17', 1),
(10419, 68, 4, '1997-01-20', 2),
(10420, 88, 3, '1997-01-21', 1),
(10421, 61, 8, '1997-01-21', 1),
(10422, 27, 2, '1997-01-22', 1),
(10423, 31, 6, '1997-01-23', 3),
(10424, 51, 7, '1997-01-23', 2),
(10425, 41, 6, '1997-01-24', 2),
(10426, 29, 4, '1997-01-27', 1),
(10427, 59, 4, '1997-01-27', 2),
(10428, 66, 7, '1997-01-28', 1),
(10429, 37, 3, '1997-01-29', 2),
(10430, 20, 4, '1997-01-30', 1),
(10431, 10, 4, '1997-01-30', 2),
(10432, 75, 3, '1997-01-31', 2),
(10433, 60, 3, '1997-02-03', 3),
(10434, 24, 3, '1997-02-03', 2),
(10435, 16, 8, '1997-02-04', 2),
(10436, 7, 3, '1997-02-05', 2),
(10437, 87, 8, '1997-02-05', 1),
(10438, 79, 3, '1997-02-06', 2),
(10439, 51, 6, '1997-02-07', 3),
(10440, 71, 4, '1997-02-10', 2),
(10441, 55, 3, '1997-02-10', 2),
(10442, 20, 3, '1997-02-11', 2),
(10443, 66, 8, '1997-02-12', 1),
(10444, 5, 3, '1997-02-12', 3),
(10445, 5, 3, '1997-02-13', 1),
(10446, 79, 6, '1997-02-14', 1),
(10547, 72, 3, '1997-05-23', 2),
(10548, 79, 3, '1997-05-26', 2),
(10549, 63, 5, '1997-05-27', 1),
(10550, 30, 7, '1997-05-28', 3),
(10551, 28, 4, '1997-05-28', 3),
(10552, 35, 2, '1997-05-29', 1),
(10553, 87, 2, '1997-05-30', 2),
(10554, 56, 4, '1997-05-30', 3),
(10555, 71, 6, '1997-06-02', 3),
(10556, 73, 2, '1997-06-03', 1),
(10557, 44, 9, '1997-06-03', 2),
(10558, 4, 1, '1997-06-04', 2),
(10559, 7, 6, '1997-06-05', 1),
(10560, 25, 8, '1997-06-06', 1),
(10561, 24, 2, '1997-06-06', 2),
(10562, 66, 1, '1997-06-09', 1),
(10563, 67, 2, '1997-06-10', 2),
(10564, 65, 4, '1997-06-10', 3),
(10565, 51, 8, '1997-06-11', 2),
(10566, 7, 9, '1997-06-12', 1),
(10567, 37, 1, '1997-06-12', 1),
(10568, 29, 3, '1997-06-13', 3),
(10569, 65, 5, '1997-06-16', 1),
(10570, 51, 3, '1997-06-17', 3),
(10571, 20, 8, '1997-06-17', 3),
(10572, 5, 3, '1997-06-18', 2),
(10573, 3, 7, '1997-06-19', 3),
(10574, 82, 4, '1997-06-19', 2),
(10575, 52, 5, '1997-06-20', 1),
(10576, 80, 3, '1997-06-23', 3),
(10577, 82, 9, '1997-06-23', 2),
(10578, 11, 4, '1997-06-24', 3),
(10579, 45, 1, '1997-06-25', 2),
(10580, 56, 4, '1997-06-26', 3),
(10581, 21, 3, '1997-06-26', 1),
(10582, 6, 3, '1997-06-27', 2),
(10583, 87, 2, '1997-06-30', 2),
(10584, 7, 4, '1997-06-30', 1),
(10585, 88, 7, '1997-07-01', 1),
(10586, 66, 9, '1997-07-02', 1),
(10587, 61, 1, '1997-07-02', 1),
(10588, 63, 2, '1997-07-03', 3),
(10589, 32, 8, '1997-07-04', 2),
(10590, 51, 4, '1997-07-07', 3),
(10591, 83, 1, '1997-07-07', 1),
(10592, 44, 3, '1997-07-08', 1),
(10593, 44, 7, '1997-07-09', 2),
(10594, 55, 3, '1997-07-09', 2),
(10595, 20, 2, '1997-07-10', 1),
(10596, 89, 8, '1997-07-11', 1),
(10597, 59, 7, '1997-07-11', 3),
(10598, 65, 1, '1997-07-14', 3),
(10599, 11, 6, '1997-07-15', 3),
(10600, 36, 4, '1997-07-16', 1),
(10601, 35, 7, '1997-07-16', 1),
(10602, 83, 8, '1997-07-17', 2),
(10603, 71, 8, '1997-07-18', 2),
(10604, 28, 1, '1997-07-18', 1),
(10605, 51, 1, '1997-07-21', 2),
(10606, 81, 4, '1997-07-22', 3),
(10607, 71, 5, '1997-07-22', 1),
(10608, 79, 4, '1997-07-23', 2),
(10609, 18, 7, '1997-07-24', 2),
(10610, 41, 8, '1997-07-25', 1),
(10611, 91, 6, '1997-07-25', 2),
(10612, 71, 1, '1997-07-28', 2),
(10613, 35, 4, '1997-07-29', 2),
(10614, 6, 8, '1997-07-29', 3),
(10615, 90, 2, '1997-07-30', 3),
(10616, 32, 1, '1997-07-31', 2),
(10617, 32, 4, '1997-07-31', 2),
(10618, 51, 1, '1997-08-01', 1),
(10619, 51, 3, '1997-08-04', 3),
(10620, 42, 2, '1997-08-05', 3),
(10621, 38, 4, '1997-08-05', 2),
(10622, 67, 4, '1997-08-06', 3),
(10623, 25, 8, '1997-08-07', 2),
(10624, 78, 4, '1997-08-07', 2),
(10625, 2, 3, '1997-08-08', 1),
(10626, 5, 1, '1997-08-11', 2),
(10627, 71, 8, '1997-08-11', 3),
(10628, 7, 4, '1997-08-12', 3),
(10629, 30, 4, '1997-08-12', 3),
(10630, 39, 1, '1997-08-13', 2),
(10631, 41, 8, '1997-08-14', 1),
(10632, 86, 8, '1997-08-14', 1),
(10633, 20, 7, '1997-08-15', 3),
(10634, 23, 4, '1997-08-15', 3),
(10635, 49, 8, '1997-08-18', 3),
(10636, 87, 4, '1997-08-19', 1),
(10637, 62, 6, '1997-08-19', 1),
(10638, 47, 3, '1997-08-20', 1),
(10639, 70, 7, '1997-08-20', 3),
(10640, 86, 4, '1997-08-21', 1),
(10641, 35, 4, '1997-08-22', 2),
(10642, 73, 7, '1997-08-22', 3),
(10643, 1, 6, '1997-08-25', 1),
(10644, 88, 3, '1997-08-25', 2),
(10645, 34, 4, '1997-08-26', 1),
(10646, 37, 9, '1997-08-27', 3),
(10647, 61, 4, '1997-08-27', 2),
(10648, 67, 5, '1997-08-28', 2),
(10649, 50, 5, '1997-08-28', 3),
(10650, 21, 5, '1997-08-29', 3),
(10651, 86, 8, '1997-09-01', 2),
(10652, 31, 4, '1997-09-01', 2),
(10653, 25, 1, '1997-09-02', 1),
(10654, 5, 5, '1997-09-02', 1),
(10655, 66, 1, '1997-09-03', 2),
(10656, 32, 6, '1997-09-04', 1),
(10657, 71, 2, '1997-09-04', 2),
(10658, 63, 4, '1997-09-05', 1),
(10659, 62, 7, '1997-09-05', 2),
(10660, 36, 8, '1997-09-08', 1),
(10747, 59, 6, '1997-11-19', 1),
(10748, 71, 3, '1997-11-20', 1),
(10749, 38, 4, '1997-11-20', 2),
(10750, 87, 9, '1997-11-21', 1),
(10751, 68, 3, '1997-11-24', 3),
(10752, 53, 2, '1997-11-24', 3),
(10753, 27, 3, '1997-11-25', 1),
(10754, 49, 6, '1997-11-25', 3),
(10755, 9, 4, '1997-11-26', 2),
(10756, 75, 8, '1997-11-27', 2),
(10757, 71, 6, '1997-11-27', 1),
(10758, 68, 3, '1997-11-28', 3),
(10759, 2, 3, '1997-11-28', 3),
(10760, 50, 4, '1997-12-01', 1),
(10761, 65, 5, '1997-12-02', 2),
(10762, 24, 3, '1997-12-02', 1),
(10763, 23, 3, '1997-12-03', 3),
(10764, 20, 6, '1997-12-03', 3),
(10765, 63, 3, '1997-12-04', 3),
(10766, 56, 4, '1997-12-05', 1),
(10767, 76, 4, '1997-12-05', 3),
(10768, 4, 3, '1997-12-08', 2),
(10769, 83, 3, '1997-12-08', 1),
(10770, 34, 8, '1997-12-09', 3),
(10771, 20, 9, '1997-12-10', 2),
(10772, 44, 3, '1997-12-10', 2),
(10773, 20, 1, '1997-12-11', 3),
(10774, 24, 4, '1997-12-11', 1),
(10775, 78, 7, '1997-12-12', 1),
(10776, 20, 1, '1997-12-15', 3),
(10777, 31, 7, '1997-12-15', 2),
(10778, 5, 3, '1997-12-16', 1),
(10779, 52, 3, '1997-12-16', 2),
(10780, 46, 2, '1997-12-16', 1),
(10781, 87, 2, '1997-12-17', 3),
(10782, 12, 9, '1997-12-17', 3),
(10783, 34, 4, '1997-12-18', 2),
(10784, 49, 4, '1997-12-18', 3),
(10785, 33, 1, '1997-12-18', 3),
(10786, 62, 8, '1997-12-19', 1),
(10787, 41, 2, '1997-12-19', 1),
(10788, 63, 1, '1997-12-22', 2),
(10789, 23, 1, '1997-12-22', 2),
(10790, 31, 6, '1997-12-22', 1),
(10791, 25, 6, '1997-12-23', 2),
(10792, 91, 1, '1997-12-23', 3),
(10793, 4, 3, '1997-12-24', 3),
(10794, 61, 6, '1997-12-24', 1),
(10795, 20, 8, '1997-12-24', 2),
(10796, 35, 3, '1997-12-25', 1),
(10797, 17, 7, '1997-12-25', 2),
(10798, 38, 2, '1997-12-26', 1),
(10799, 39, 9, '1997-12-26', 3),
(10800, 72, 1, '1997-12-26', 3),
(10801, 8, 4, '1997-12-29', 2),
(10802, 73, 4, '1997-12-29', 2),
(10803, 88, 4, '1997-12-30', 1),
(10804, 72, 6, '1997-12-30', 2),
(10805, 77, 2, '1997-12-30', 3),
(10806, 84, 3, '1997-12-31', 2),
(10807, 27, 4, '1997-12-31', 1),
(10808, 60, 2, '1998-01-01', 3),
(10809, 88, 7, '1998-01-01', 1),
(10810, 42, 2, '1998-01-01', 3),
(10811, 47, 8, '1998-01-02', 1),
(10812, 66, 5, '1998-01-02', 1),
(10813, 67, 1, '1998-01-05', 1),
(10814, 84, 3, '1998-01-05', 3),
(10815, 71, 2, '1998-01-05', 3),
(10816, 32, 4, '1998-01-06', 2),
(10817, 39, 3, '1998-01-06', 2),
(10818, 49, 7, '1998-01-07', 3),
(10819, 12, 2, '1998-01-07', 3),
(10820, 65, 3, '1998-01-07', 2),
(10821, 75, 1, '1998-01-08', 1),
(10822, 82, 6, '1998-01-08', 3),
(10823, 46, 5, '1998-01-09', 2),
(10824, 24, 8, '1998-01-09', 1),
(10825, 17, 1, '1998-01-09', 1),
(10826, 7, 6, '1998-01-12', 1),
(10827, 9, 1, '1998-01-12', 2),
(10828, 64, 9, '1998-01-13', 1),
(10829, 38, 9, '1998-01-13', 1),
(10830, 81, 4, '1998-01-13', 2),
(10831, 70, 3, '1998-01-14', 2),
(10832, 41, 2, '1998-01-14', 2),
(10833, 56, 6, '1998-01-15', 2),
(10834, 81, 1, '1998-01-15', 3),
(10835, 1, 1, '1998-01-15', 3),
(10836, 20, 7, '1998-01-16', 1),
(10837, 5, 9, '1998-01-16', 3),
(10838, 47, 3, '1998-01-19', 3),
(10839, 81, 3, '1998-01-19', 3),
(10840, 47, 4, '1998-01-19', 2),
(10841, 76, 5, '1998-01-20', 2),
(10842, 80, 1, '1998-01-20', 3),
(10843, 84, 4, '1998-01-21', 2),
(10844, 59, 8, '1998-01-21', 2),
(10845, 63, 8, '1998-01-21', 1),
(10846, 76, 2, '1998-01-22', 3),
(10847, 71, 4, '1998-01-22', 3),
(10848, 16, 7, '1998-01-23', 2),
(10849, 39, 9, '1998-01-23', 2),
(10850, 84, 1, '1998-01-23', 1),
(10851, 67, 5, '1998-01-26', 1),
(10852, 65, 8, '1998-01-26', 1),
(10853, 6, 9, '1998-01-27', 2),
(10854, 20, 3, '1998-01-27', 2),
(10855, 55, 3, '1998-01-27', 1),
(10856, 3, 3, '1998-01-28', 2),
(10857, 5, 8, '1998-01-28', 2),
(10858, 40, 2, '1998-01-29', 1),
(10859, 25, 1, '1998-01-29', 2),
(10860, 26, 3, '1998-01-29', 3),
(10861, 89, 4, '1998-01-30', 2),
(10862, 44, 8, '1998-01-30', 2),
(10863, 35, 4, '1998-02-02', 2),
(10864, 4, 4, '1998-02-02', 2),
(10865, 63, 2, '1998-02-02', 1),
(10866, 5, 5, '1998-02-03', 1),
(10867, 48, 6, '1998-02-03', 1),
(10868, 62, 7, '1998-02-04', 2),
(10869, 72, 5, '1998-02-04', 1),
(10870, 91, 5, '1998-02-04', 3),
(10871, 9, 9, '1998-02-05', 2),
(10872, 30, 5, '1998-02-05', 2),
(10873, 90, 4, '1998-02-06', 1),
(10874, 30, 5, '1998-02-06', 2),
(10875, 5, 4, '1998-02-06', 2),
(10876, 9, 7, '1998-02-09', 3),
(10877, 67, 1, '1998-02-09', 1),
(10878, 63, 4, '1998-02-10', 1),
(10879, 90, 3, '1998-02-10', 3),
(10880, 24, 7, '1998-02-10', 1),
(10881, 12, 4, '1998-02-11', 1),
(10882, 71, 4, '1998-02-11', 3),
(10883, 48, 8, '1998-02-12', 3),
(10884, 45, 4, '1998-02-12', 2),
(10885, 76, 6, '1998-02-12', 3),
(10886, 34, 1, '1998-02-13', 1),
(10887, 29, 8, '1998-02-13', 3),
(10888, 30, 1, '1998-02-16', 2),
(10889, 65, 9, '1998-02-16', 3),
(10890, 18, 7, '1998-02-16', 1),
(10891, 44, 7, '1998-02-17', 2),
(10892, 50, 4, '1998-02-17', 2),
(10893, 39, 9, '1998-02-18', 2),
(10894, 71, 1, '1998-02-18', 1),
(10895, 20, 3, '1998-02-18', 1),
(10896, 50, 7, '1998-02-19', 3),
(10897, 37, 3, '1998-02-19', 2),
(10898, 54, 4, '1998-02-20', 2),
(10899, 46, 5, '1998-02-20', 3),
(10900, 88, 1, '1998-02-20', 2),
(10901, 35, 4, '1998-02-23', 1),
(10902, 24, 1, '1998-02-23', 1),
(10903, 34, 3, '1998-02-24', 3),
(10904, 89, 3, '1998-02-24', 3),
(10905, 88, 9, '1998-02-24', 2),
(10906, 91, 4, '1998-02-25', 3),
(10907, 74, 6, '1998-02-25', 3),
(10908, 66, 4, '1998-02-26', 2),
(10909, 70, 1, '1998-02-26', 2),
(10910, 90, 1, '1998-02-26', 3),
(10911, 30, 3, '1998-02-26', 1),
(10912, 37, 2, '1998-02-26', 2),
(10913, 62, 4, '1998-02-26', 1),
(10914, 62, 6, '1998-02-27', 1),
(10915, 80, 2, '1998-02-27', 2),
(10916, 64, 1, '1998-02-27', 2),
(10917, 69, 4, '1998-03-02', 2),
(10918, 10, 3, '1998-03-02', 3),
(10919, 47, 2, '1998-03-02', 2),
(10920, 4, 4, '1998-03-03', 2),
(10921, 83, 1, '1998-03-03', 1),
(10922, 34, 5, '1998-03-03', 3),
(10923, 41, 7, '1998-03-03', 3),
(10924, 5, 3, '1998-03-04', 2),
(10925, 34, 3, '1998-03-04', 1),
(10926, 2, 4, '1998-03-04', 3),
(10927, 40, 4, '1998-03-05', 1),
(10928, 29, 1, '1998-03-05', 1),
(10929, 25, 6, '1998-03-05', 1),
(10930, 76, 4, '1998-03-06', 3),
(10931, 68, 4, '1998-03-06', 2),
(10932, 9, 8, '1998-03-06', 1),
(10933, 38, 6, '1998-03-06', 3),
(10934, 44, 3, '1998-03-09', 3),
(10935, 88, 4, '1998-03-09', 3),
(10936, 32, 3, '1998-03-09', 2),
(10937, 12, 7, '1998-03-10', 3),
(10938, 63, 3, '1998-03-10', 2),
(10939, 49, 2, '1998-03-10', 2),
(10940, 9, 8, '1998-03-11', 3),
(10941, 71, 7, '1998-03-11', 2),
(10942, 66, 9, '1998-03-11', 3),
(10943, 11, 4, '1998-03-11', 2),
(10944, 10, 6, '1998-03-12', 3),
(10945, 52, 4, '1998-03-12', 1),
(10946, 83, 1, '1998-03-12', 2),
(10947, 11, 3, '1998-03-13', 2),
(10948, 30, 3, '1998-03-13', 3),
(10949, 10, 2, '1998-03-13', 3),
(10950, 49, 1, '1998-03-16', 2),
(10951, 68, 9, '1998-03-16', 2),
(10952, 1, 1, '1998-03-16', 1),
(10953, 4, 9, '1998-03-16', 2),
(10954, 47, 5, '1998-03-17', 1),
(10955, 24, 8, '1998-03-17', 2),
(10956, 6, 6, '1998-03-17', 2),
(10957, 35, 8, '1998-03-18', 3),
(10958, 54, 7, '1998-03-18', 2),
(10959, 31, 6, '1998-03-18', 2),
(10960, 35, 3, '1998-03-19', 1),
(10961, 62, 8, '1998-03-19', 1),
(10962, 63, 8, '1998-03-19', 2),
(10963, 28, 9, '1998-03-19', 3),
(10964, 74, 3, '1998-03-20', 2),
(10965, 55, 6, '1998-03-20', 3),
(10966, 14, 4, '1998-03-20', 1),
(10967, 79, 2, '1998-03-23', 2),
(10968, 20, 1, '1998-03-23', 3),
(10969, 15, 1, '1998-03-23', 2),
(10970, 8, 9, '1998-03-24', 1),
(10971, 26, 2, '1998-03-24', 2),
(10972, 40, 4, '1998-03-24', 2),
(10973, 40, 6, '1998-03-24', 2),
(10974, 75, 3, '1998-03-25', 3),
(10975, 10, 1, '1998-03-25', 3),
(10976, 35, 1, '1998-03-25', 1),
(10977, 24, 8, '1998-03-26', 3),
(10978, 50, 9, '1998-03-26', 2),
(10979, 20, 8, '1998-03-26', 2),
(10980, 24, 4, '1998-03-27', 1),
(10981, 34, 1, '1998-03-27', 2),
(10982, 10, 2, '1998-03-27', 1),
(10983, 71, 2, '1998-03-27', 2),
(10984, 71, 1, '1998-03-30', 3),
(10985, 37, 2, '1998-03-30', 1),
(10986, 54, 8, '1998-03-30', 2),
(10987, 19, 8, '1998-03-31', 1),
(10988, 65, 3, '1998-03-31', 2),
(10989, 61, 2, '1998-03-31', 1),
(10990, 20, 2, '1998-04-01', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18.00),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.35),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.00),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31.00),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.00),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.00),
(13, 'Konbu', 6, 8, '2 kg box', 6.00),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.50),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.00),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.50),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.20),
(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 81.00),
(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.00),
(22, 'Gustaf\'s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21.00),
(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9.00),
(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.50),
(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.00),
(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.90),
(28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.60),
(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.50),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.00),
(33, 'Geitost', 15, 4, '500 g', 2.50),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.00),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.00),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19.00),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.00),
(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.50),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.00),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.40),
(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.00),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.00),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45),
(45, 'Røgede sild', 21, 8, '1k pkg.', 9.50),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.00),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.50),
(48, 'Chocolade', 22, 3, '10 pkgs.', 12.75),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.00),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.00),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.00),
(53, 'Perth Pasties', 24, 6, '48 pieces', 32.80),
(54, 'Tourtière', 25, 6, '16 pies', 7.45),
(55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24.00),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.00),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.50),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.00),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.00),
(61, 'Sirop d\'érable', 29, 2, '24 - 500 ml bottles', 28.50),
(62, 'Tarte au sucre', 29, 3, '48 pies', 49.30),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.90),
(64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.00),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.00),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.50),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.00),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.00),
(71, 'Fløtemysost', 15, 4, '10 - 500 g pkgs.', 21.50),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.80),
(73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15.00),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.00),
(75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75),
(76, 'Lakkalikööri', 23, 1, '500 ml', 18.00),
(77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13.00);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(100) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(100) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-2222'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822'),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA', '(313) 555-5735'),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011'),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 'Oviedo', '33007', 'Spain', '(98) 598 76 54'),
(6, 'Mayumi\'s', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877'),
(7, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 'Melbourne', '3058', 'Australia', '(03) 444-2343'),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 King\'s Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448'),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden', '031-987 65 43'),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil', '(11) 555 4640'),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany', '(010) 9984510'),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755'),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '27478', 'Germany', '(04721) 8713'),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323'),
(15, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010'),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 'Bend', '97101', 'USA', '(503) 555-9931'),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden', '08-123 45 67'),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France', '(1) 03.83.00.68'),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', '2134', 'USA', '(617) 555-3267'),
(20, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 'Singapore', '512', 'Singapore', '555-8787'),
(21, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108'),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212'),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956'),
(24, 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunter\'s Hill', 'Sydney', '2042', 'Australia', '(02) 555-5914'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022'),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy', '(089) 6547665'),
(27, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07'),
(28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06'),
(29, 'Forêts d\'érables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8', 'Canada', '(514) 555-2955');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `lastname_customer_trigger_logs`
--
ALTER TABLE `lastname_customer_trigger_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`),
  ADD KEY `ShipperID` (`ShipperID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `lastname_customer_trigger_logs`
--
ALTER TABLE `lastname_customer_trigger_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
