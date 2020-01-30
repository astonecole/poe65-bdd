-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : database
-- Généré le : jeu. 30 jan. 2020 à 22:45
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `address_id` int UNSIGNED NOT NULL,
  `customer_id` mediumint UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`address_id`, `customer_id`, `title`, `street`, `zipcode`, `city`, `country`, `note`, `is_main`, `created_at`) VALUES
(1, 1, 'Domicile', '93 rue du Clair Bocage', '33260', 'LA TESTE-DE-BUCH', 'France', '', 1, '2020-01-30 22:44:56'),
(2, 13, 'Domicile', '52 rue Porte d\'Orange', '97300', 'CAYENNE', 'France', '', 1, '2020-01-30 22:44:56'),
(3, 2, 'Domicile', '2 rue de Penthièvre', '92800', 'PUTEAUX', 'France', '', 0, '2020-01-30 22:44:56'),
(4, 4, 'Domicile', '67 rue Petite Fusterie', '62200', 'BOULOGNE-SUR-MER', 'France', '', 1, '2020-01-30 22:44:56'),
(5, 5, 'Domicile', '27 rue Adolphe Wurtz', '76140', 'LE PETIT-QUEVILLY', 'France', '', 1, '2020-01-30 22:44:56'),
(6, 3, 'Domicile', '67 boulevard de la Liberation', '13015', 'MARSEILLE', 'France', '', 1, '2020-01-30 22:44:56'),
(7, 6, 'Domicile', '89 rue de l\'Aigle', '97419', 'LA POSSESSION', 'France', '', 1, '2020-01-30 22:44:56'),
(8, 7, 'Domicile', '5 Avenue De Marlioz', '06600', 'ANTIBES', 'France', '', 1, '2020-01-30 22:44:56'),
(9, 8, 'Domicle', '6 rue des Coudriers', '68200', 'MULHOUSE', 'France', '', 1, '2020-01-30 22:44:56'),
(10, 9, 'Domicile', '57 Chemin Du Lavarin Sud', '06800', 'CAGNES-SUR-MER', 'France', '', 1, '2020-01-30 22:44:56'),
(11, 3, 'Bureau', '61 cours Franklin Roosevelt', '13007', 'MARSEILLE', 'France', '', 0, '2020-01-30 22:44:56'),
(12, 2, 'Bureau', '87 rue Saint Germain', '92230', 'GENNEVILLIERS', 'France', '', 1, '2020-01-30 22:44:56'),
(13, 11, 'Domicile', '78 avenue de Provence', '56000', 'VANNES', 'France', '', 1, '2020-01-30 22:44:56'),
(14, 12, 'Domicile', '31 Quai des Belges', '13500', 'MARTIGUES', 'France', '', 1, '2020-01-30 22:44:56'),
(15, 13, 'Bureau', '85 rue Porte d\'Orange', '97300', 'CAYENNE', 'France', '', 0, '2020-01-30 22:44:56'),
(16, 14, 'Domicile', '71 place de Miremont', '47300', 'VILLENEUVE-SUR-LOT', 'France', '', 1, '2020-01-30 22:44:56'),
(17, 15, 'Domicile', '64 Rue Joseph Vernet', '84000', 'AVIGNON', 'France', '', 1, '2020-01-30 22:44:56'),
(18, 16, 'Domicile', '42 boulevard Amiral Courbet', '69600', 'OULLINS', 'France', '', 1, '2020-01-30 22:44:56'),
(19, 10, 'Domicile', '85 Faubourg Saint Honoré', '75019', 'PARIS', 'France', '', 1, '2020-01-30 22:44:56'),
(20, 17, 'Domicile', '10 rue des Nations Unies', '92210', 'SAINT-CLOUD', 'France', '', 1, '2020-01-30 22:44:56'),
(21, 18, 'Domicile', '60 rue Clement Marot', '66000', 'PERPIGNAN', 'France', '', 1, '2020-01-30 22:44:56'),
(22, 10, 'Bureau', '52 Faubourg Saint Honoré', '75019', 'PARIS', 'France', '', 0, '2020-01-30 22:44:56'),
(23, 19, 'Domicile', '87 avenue Voltaire', '78600', 'MAISONS-LAFFITTE', 'France', '', 1, '2020-01-30 22:44:56'),
(24, 20, 'Domicile', '33 place Stanislas', '92000', 'NANTERRE', 'France', '', 1, '2020-01-30 22:44:56'),
(25, 3, 'Domicile Secondaire', '24 boulevard de la Liberation', '13014', 'MARSEILLE', 'France', '', 0, '2020-01-30 22:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `category_id` smallint UNSIGNED NOT NULL,
  `category_parent_id` smallint DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`category_id`, `category_parent_id`, `name`, `created_at`) VALUES
(1, NULL, 'Divers', '2020-01-30 22:44:56'),
(2, 1, 'Autres', '2020-01-30 22:44:56'),
(3, NULL, 'Loisirs', '2020-01-30 22:44:56'),
(4, 3, 'DVD', '2020-01-30 22:44:56'),
(5, 3, 'CD', '2020-01-30 22:44:56'),
(6, 3, 'Collection', '2020-01-30 22:44:56'),
(7, 3, 'Hobbies', '2020-01-30 22:44:56'),
(8, 3, 'Instruments de musique', '2020-01-30 22:44:56'),
(9, 3, 'Jeux', '2020-01-30 22:44:56'),
(10, 3, 'Livres', '2020-01-30 22:44:56'),
(11, 3, 'Vélos', '2020-01-30 22:44:56'),
(12, 3, 'Sports', '2020-01-30 22:44:56'),
(13, 3, 'Vins', '2020-01-30 22:44:56'),
(14, NULL, 'Maison', '2020-01-30 22:44:56'),
(15, 14, 'Ameublement', '2020-01-30 22:44:56'),
(16, 14, 'Art de la table', '2020-01-30 22:44:56'),
(17, 14, 'Bricolage', '2020-01-30 22:44:56'),
(18, 14, 'Électroménager', '2020-01-30 22:44:56'),
(19, 14, 'Décoration', '2020-01-30 22:44:56'),
(20, 14, 'Linge de Maison', '2020-01-30 22:44:56'),
(21, 14, 'Jardinage', '2020-01-30 22:44:56'),
(22, NULL, 'Matériel Professionnel', '2020-01-30 22:44:56'),
(23, 22, 'Fournitures de Bureau', '2020-01-30 22:44:56'),
(24, NULL, 'Mode', '2020-01-30 22:44:56'),
(25, 24, 'Accessoires', '2020-01-30 22:44:56'),
(26, 24, 'Bagagerie', '2020-01-30 22:44:56'),
(27, 24, 'Bijoux', '2020-01-30 22:44:56'),
(28, 24, 'Chaussures', '2020-01-30 22:44:56'),
(29, 24, 'Équipement Bébé', '2020-01-30 22:44:56'),
(30, 24, 'Luxe et Tendance', '2020-01-30 22:44:56'),
(31, 24, 'Montre', '2020-01-30 22:44:56'),
(32, 24, 'Vêtements', '2020-01-30 22:44:56'),
(33, 24, 'Vêtement Bébé', '2020-01-30 22:44:56'),
(34, NULL, 'Multimédia', '2020-01-30 22:44:56'),
(35, 34, 'Consoles', '2020-01-30 22:44:56'),
(36, 34, 'Films', '2020-01-30 22:44:56'),
(37, 34, 'Image & Son', '2020-01-30 22:44:56'),
(38, 34, 'Informatique', '2020-01-30 22:44:56'),
(39, 34, 'Jeux Vidéo', '2020-01-30 22:44:56'),
(40, 34, 'Jouets', '2020-01-30 22:44:56'),
(41, 34, 'Téléphonie', '2020-01-30 22:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `customer_id` mediumint UNSIGNED NOT NULL,
  `email` varchar(80) NOT NULL,
  `company` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`customer_id`, `email`, `company`, `password`, `gender`, `firstname`, `lastname`, `is_active`, `created_at`) VALUES
(1, 'burnell.beauchamp@hotmail.com', 'NULL', 'Lee5Boo0ji5', 'male', 'Burnell', 'Beauchamp', 1, '2020-01-30 22:44:56'),
(2, 'rochflamand@gmail.com', 'NULL', 'biTheith7', 'male', 'Roch', 'Flamand', 1, '2020-01-30 22:44:56'),
(3, 'thomas.ayot@hotmail.com', 'Harmony House', 'ahShiRi6', 'male', 'Thomas', 'Ayot', 1, '2020-01-30 22:44:56'),
(4, 'darcy-cantin@superrito.com', 'NULL', 'WaichaeKe8ee', 'male', 'D\'Arcy', 'Cantin', 0, '2020-01-30 22:44:56'),
(5, 'yvesbegin@yahoo.com', 'NULL', 'eeY6phie', 'male', 'Yves', 'Begin', 1, '2020-01-30 22:44:56'),
(6, 'christabel.boucher@rhyta.com', 'Shoe Kicks', 'RieSahn1', 'female', 'Christabel', 'Boucher', 1, '2020-01-30 22:44:56'),
(7, 'dorenesabourin@einrot.com', 'Elek-Tek', 'Daiz2Ohvito', 'female', 'Dorene', 'Sabourin', 1, '2020-01-30 22:44:56'),
(8, 'maslin.moreau@cuvox.de', 'NULL', 'Moh2hiem1d', 'male', 'Maslin', 'Moreau', 1, '2020-01-30 22:44:56'),
(9, 'elise-frappier@armyspy.com', 'Zany Brainy', 'iupo4buta4Hoh', 'female', 'Élise', 'Frappier', 1, '2020-01-30 22:44:56'),
(10, 'gregoire.camus@gmail.com', 'NULL', 'eiYachu0', 'male', 'Grégoire', 'Camus', 1, '2020-01-30 22:44:56'),
(11, 'algernonde-launay@superrito.com', 'The Goose and Duck', 'iep7Ephei', 'male', 'Algernon', 'de Launay', 1, '2020-01-30 22:44:56'),
(12, 'aubreycrete@hotmail.com', 'Simple Solutions', 'ohK5oiYoh7', 'male', 'Aubrey', 'Crête', 1, '2020-01-30 22:44:56'),
(13, 'troy.mailhot@gmail.com', 'NULL', 'lei6Eu0ah', 'male', 'Troy', 'Mailhot', 1, '2020-01-30 22:44:56'),
(14, 'vail-mailly@hotmail.com', 'NULL', 'nah6xioChoo', 'male', 'Vail', 'Mailly', 1, '2020-01-30 22:44:56'),
(15, 'maureen.chartre@gustr.com', 'Planet Profit', 'Xae7ahn9ee', 'female', 'Maureen', 'Chartré', 1, '2020-01-30 22:44:56'),
(16, 'franck-jodoin@yahoo.com', 'Farmer Jack', 'rae2ohWuixoh', 'male', 'Franck', 'Jodoin', 1, '2020-01-30 22:44:56'),
(17, 'michel.chalut@einrot.com', 'Happy Bear Investment', 'ka1Epe3ez', 'male', 'Michel', 'Chalut', 1, '2020-01-30 22:44:56'),
(18, 'normandcouet@superrito.com', 'NULL', 'ok4WoXieFee', 'male', 'Normand', 'Couet', 1, '2020-01-30 22:44:56'),
(19, 'jeoffroigarceau@armyspy.com', 'Lafayette Radio', 'iequit2Yaub', 'male', 'Jeoffroi', 'Garceau', 1, '2020-01-30 22:44:56'),
(20, 'marcellemethot@yahoo.com', 'Farmer Jack', 'ahVaxil0L', 'female', 'Marcelle', 'Méthot', 0, '2020-01-30 22:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE `order` (
  `order_id` int UNSIGNED NOT NULL,
  `customer_id` mediumint UNSIGNED NOT NULL,
  `order_status_id` tinyint UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `order_status_id`, `created_at`) VALUES
(1, 15, 4, '2020-01-30 22:44:56'),
(2, 6, 4, '2020-01-30 22:44:56'),
(3, 18, 5, '2020-01-30 22:44:56'),
(4, 9, 7, '2020-01-30 22:44:56'),
(5, 3, 4, '2020-01-30 22:44:56'),
(6, 13, 4, '2020-01-30 22:44:56'),
(7, 19, 9, '2020-01-30 22:44:56'),
(8, 9, 7, '2020-01-30 22:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `order_has_product`
--

CREATE TABLE `order_has_product` (
  `order_has_product_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `price` decimal(7,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `quantity` smallint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_has_product`
--

INSERT INTO `order_has_product` (`order_has_product_id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
(3, 2, 4, '147.59', 1),
(4, 3, 5, '1299.00', 1),
(5, 4, 6, '29.00', 2),
(6, 4, 7, '54.00', 1),
(7, 4, 8, '32.00', 1),
(8, 4, 9, '39.00', 1),
(9, 4, 10, '29.90', 2),
(1, 1, 11, '241.30', 1),
(2, 1, 12, '69.99', 1),
(10, 5, 19, '6.00', 1),
(11, 5, 20, '9.73', 3),
(12, 6, 21, '235.00', 1),
(13, 7, 24, '109.99', 1),
(14, 8, 29, '69.25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `order_status`
--

CREATE TABLE `order_status` (
  `order_status_id` tinyint UNSIGNED NOT NULL,
  `label` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `label`, `created_at`) VALUES
(1, 'abandonnée', '2020-01-30 22:44:56'),
(2, 'bloquée', '2020-01-30 22:44:56'),
(3, 'annulé', '2020-01-30 22:44:56'),
(4, 'confirmé', '2020-01-30 22:44:56'),
(5, 'livré', '2020-01-30 22:44:56'),
(6, 'fermé', '2020-01-30 22:44:56'),
(7, 'en attente', '2020-01-30 22:44:56'),
(8, 'fournisseur en attente', '2020-01-30 22:44:56'),
(9, 'client en attente', '2020-01-30 22:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product_id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `quantity_stock` smallint UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `quantity_stock`, `active`, `created_at`, `updated_at`) VALUES
(1, 'The Good Place - Saison 1- 2 DVD', 'Après une mort aussi tragique que ridicule, Eleanor Shellstrop, arrive dans l\'au-delà. Lorsque Michael, l\'Architecte des lieux, lui apprend qu\'elle est au \"Bon Endroit\" compte-tenu de ces bonnes actions, elle réalise rapidement qu\'elle a été confondue avec quelqu\'un d\'autre', '14.20', 13, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(2, 'Samsung Galaxy A10', 'Samsung se lance dans le bas de gamme et nous surprend avec ce Galaxy A10, un smartphone simple mais puissant à parts égales.', '132.99', 4, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(3, 'Samsung Disque Dur Externe SSD Portable T5 (500 Go)', 'Le SSD Portable T5 de Samsung offre des vitesses de transfert élevées et permet une gestion externe facile et agréable des données.', '169.19', 7, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(4, 'Canon Objectif EF 50 mm f/1.8 STM', 'Un objectif haute qualité abordable adapté aux portraits, vidéos et scènes en basse lumière.canon.', '147.59', 2, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(5, 'Panasonic Lumix GH5', 'Une véritable révolution pour le monde de la photographie et du cinéma Photos. Vidéos. Dépassez les frontières.', '1299.00', 3, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(6, 'Programmer en Go : Pourquoi ? Comment ?', 'Ce livre vise à donner une compréhension intelligente de pourquoi écrire du Go et comment mettre à profit ses points forts afin de l\'utiliser de manière pertinente sur des projets réels ; et de savoir aussi quand ne pas l\'utiliser.', '29.00', 17, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(7, 'MongoDB - Comprendre et optimiser l\'exploitation de vos données', 'Ce livre sur la base de données NoSQL MongoDB, qui s\'est rapidement imposée comme une des alternatives les plus crédibles au modèle relationnel peu adapté aux enjeux du Big Data, est destiné aux développeurs qui souhaitent disposer d\'une base de données capable de stocker et de traiter de manière très rapide de gros volumes de données.', '54.00', 3, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(8, 'Nodejs - Apprendre par la pratique', 'La limite entre front-end et back-end est mouvante et floue : écrire et compiler en JavaScript est un must, et devient la deuxième langue vivante à parler à l\'école.', '32.00', 2, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(9, 'Angular - Développez vos applications web avec le framework JavaScript de Google', 'Ce livre permet aux lecteurs de se lancer dans le développement d\'applications web avec le framework Angular.', '39.00', 4, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(10, 'Docker - Pratique des architectures à base de conteneurs', 'Cet ouvrage s’adresse aux développeurs, aux architectes  logiciels, aux administrateurs système, aux responsables  opérationnels des déploiements qui sont impliqués dans la  livraison de nouvelles applications.', '29.90', 8, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(11, 'Console Nintendo Switch Lite', 'Nintendo Switch Lite, Special Edition Zacian + Zamazen. Plateforme: Nintendo Switch.', '241.30', 6, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(12, 'Pokémon Bouclier', 'Des Pokémon jamais vus auparavant, les vastes Terres Sauvages, les raids Dynamax où jusqu\'à quatre joueurs peuvent s\'amuser en ligne ou en local sans fil, ou encore un nouveau phénomène appelé \"Dynamax\".', '69.99', 7, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(13, 'Luigi\'s Mansion 3', 'Après avoir reçu une invitation à séjourner dans un hôtel luxueux, Luigi se prépare à passer des vacances de rêve avec Mario et ses amis.', '69.99', 11, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(14, 'The Legend of Zelda : Breath of the Wild', 'Oubliez tout ce que vous savez sur es jeux The Legend of Zelda. Plongez dans un monde de découverte, d\'exploration et d\'aventure dans The Legend of Zelda', '52.99', 23, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(15, 'New Super Mario Bros. U Deluxe', 'Un Super Mario intemporel où, quand et avec qui vous voulez ! Courez, sautez et bondissez à travers plus de 160 stages en 2D à défilement latéral dans le plus pur style des jeux Super Mario avec New Super Mario Bros.', '64.99', 16, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(16, 'Super Smash Bros Ultimate', 'Des mondes de jeux et des combattants légendaires se retrouvent pour l’affrontement ultime dans le nouvel opus de la série Super Smash Bros.', '51.99', 14, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(17, 'Mario Kart 8 Deluxe', 'Appuyez sur le champignon et affûtez vos carapaces, Mario Kart 8 Deluxe va tout retourner sur Nintendo Switch !', '44.49', 31, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(18, 'Nintendo Switch Paire de manettes Joy-Con gauche vert néon & droite rose néon', 'Nintendo Joy-Con. Type d\'appareil: Manette de jeu, Plates-formes de jeux prises en charge: Nintendo Switch, Technologie de contrôle des jeux: Analogique/Numérique.', '64.90', 5, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(19, 'Tipp-Ex Mini Pocket Mouse Rubans Correcteurs', 'Une souris Tipp-Ex, qui courrait dans l\'herbe. Je l\'attrape dans ma main, je la montre à ces messieurs. Ces messieurs me disent : avec ses 6 mètres de ruban, elle efface sur une largeur de 5 mm.', '6.00', 5, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(20, 'Post-it Pack de 5 Bloc-notes repositionnables', 'Notes Super Sticky Post-it Jaune 76x127 5+1 Gratuit', '9.73', 6, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(21, 'Tableau blanc magnétique mobile - 100 x 60 cm - Double face effaçable', 'Parfait pour l\'enseignement, les entraînements, les présentations, les activités intérieures ou extérieures, et plus encore.', '235.00', 2, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(22, 'Lot de 10 Corbeilles à courrier - 200+ - Cristal', 'Avec son design élancé, cette corbeille trouvera sa place sur tout style de bureau.', '29.32', 15, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(23, 'Poubelle métal maille Corbeille à papier bureau treillis métallique 20 litres, 30 cm Ø, hauteur 35 cm, argenté', 'Si vous souhaitez disposer d’une corbeille à papier qui en plus de remplir ses fonctions de base est élégante, alors cette poubelle est faite pour vous.', '17.99', 3, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(24, 'Fauteuil gamer Fauteuil de bureau, Accoudoirs pliables, Dossier haut, Hauteur réglable, Ergonomique, Noir', 'L\'entreprise Songmics se concentre toujours sur le produit de haute qualité, sur votre demande et sur l\'amélioration de l\'expérience utilisateur. Cette chaise de bureau joint l\'utile à l\'agréable!', '109.99', 11, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(25, 'Caisson de Bureau Mobile, Verrouillable, avec 2 Tiroirs', 'Si vous cherchez un meuble spacieux pour mieux organiser votre vie au bureau, n’allez pas plus loin, vous l’avez trouvé !', '90.99', 3, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(26, 'Armoire de Bureau Metallique avec 4 Portes Battantes et 2 Tiroirs Verrouillable 180x90x40cm Noir', 'Rangez tous vos Documents et Matériel de Bureau grâce à cette Armoire de Bureau Métallique Verrouillable comprenant 2 Compartiments (Niches) + 2 Tiroirs de Rangement.', '204.90', 2, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(27, 'Support de Moniteur de 13\'\'-27\'\' pour Bureau pour 2 moniteurs Moniteur de Bureau réglable en Hauteur inclinable et pivotant Ergonomique', '1home Support moniteur de double bras est parfait pour tout téléviseur ou écran de moniteur de 13 à 27 pouces avec une capacité de charge maximale de 10 kg pour chaque bras.', '32.99', 12, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(28, 'PROCESSEUR INTEL i7-9700K Coffee Lake R LGA1151 3.6Ghz/12M', 'Intel i7-9700k, Core. Famille de processeur: Intel Core i7-9xxx, fréquence du processeur: 3, 6 GHz, Socket de processeur', '399.90', 2, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(29, 'Western Digital Disque dur externe 2 To USB 3.0', 'Pour que le disque dur puisse être lu et écrit à la fois sur un PC et un Mac, il doit être formaté au format de fichier ExFAT ou FAT32.', '69.25', 29, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(30, 'Asus Vivobook S S432FA-EB052T PC Portable 14\" FHD (Intel Core i7-10510U, 8Go de RAM, 512Go SSD, Windows 10) Clavier AZERTY Français', 'Un deuxième écran à portée de doigts, le Vivobook S14 est le compagnon idéal pour un étudiant. Grce à son petit format et à son poids léger, vous pourrez emmener partout lors de vos déplacements.', '879.00', 3, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(31, 'Microsoft Manette Xbox One sans fil + câble pour PC et Xbox', 'La meilleure manette de jeu C\'est encore améliorée> Découvrez le confort amélioré de la nouvelle manette sans fil Xbox, qui bénéficie d\'un design plus fin et plus optimisé ainsi que d\'une surface adhérente texturée.', '49.99', 29, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(32, 'True Detective-Saisons 1 à 3 DVD', 'Interrogés par les autorités, Martin Hart et Rust Cohle se remémorent leur enquête la plus célèbre.', '29.99', 4, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(33, 'Joker DVD', 'Le film, qui relate une histoire originale inédite sur grand écran, se focalise sur la figure emblématique de l\'ennemi juré de Batman.', '19.99', 6, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(34, 'Matrix - La Trilogie - Coffret Blu-Ray', 'Dans un avenir proche, un pirate informatique du nom de Neo découvre que la réalité n\'est qu\'une immense simulation créée par la Matrice, réduisant l\'espèce humaine en esclavage.', '12.49', 10, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(35, 'Xiaomi Redmi Note 8T Dual Sim 64GB 4GB RAM Gray', 'Redmi NOTE 8T 64 GB gris, 48 MP, la star quad-caméra. ', '168.80', 25, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(36, 'OnePlus 7 Pro - Smartphone Débloqué 4G (Ecran: 6,67 pouces - 12Go Ram - 256Go Stockage) Nebula Blue', 'Profitez de la fluidité et de l\'immersion de l\'écran incurvé AMOLED 6, 7\'\' du OnePlus 7 Pro sans encoche ni trou.', '699.00', 2, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56'),
(37, 'Gobe - Filtre ND64 (6 Stops) pour Objectif 46 mm', 'Le Gobe 46mm ND64 2Peak réduit l’apport de lumière pour éliminer les images excessivement brillantes et rend possible toute une gamme de possibilités au niveau créatif.', '27.00', 16, 1, '2020-01-30 22:44:56', '2020-01-30 22:44:56');

-- --------------------------------------------------------

--
-- Structure de la table `product_has_category`
--

CREATE TABLE `product_has_category` (
  `product_id` int UNSIGNED NOT NULL,
  `category_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product_has_category`
--

INSERT INTO `product_has_category` (`product_id`, `category_id`) VALUES
(1, 4),
(32, 4),
(33, 4),
(34, 4),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(24, 15),
(25, 15),
(26, 15),
(27, 15),
(19, 23),
(21, 23),
(22, 23),
(23, 23),
(11, 35),
(18, 35),
(31, 35),
(4, 37),
(5, 37),
(37, 37),
(3, 38),
(28, 38),
(29, 38),
(30, 38),
(12, 39),
(13, 39),
(14, 39),
(15, 39),
(16, 39),
(17, 39),
(2, 41),
(35, 41),
(36, 41);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `fk_address_customer1_idx` (`customer_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  ADD KEY `fk_order_customer_idx` (`customer_id`),
  ADD KEY `fk_order_order_status1_idx` (`order_status_id`);

--
-- Index pour la table `order_has_product`
--
ALTER TABLE `order_has_product`
  ADD PRIMARY KEY (`product_id`,`order_id`),
  ADD UNIQUE KEY `order_has_product_id_UNIQUE` (`order_has_product_id`),
  ADD KEY `fk_order_has_product_product1_idx` (`product_id`),
  ADD KEY `fk_order_has_product_order1_idx` (`order_id`);

--
-- Index pour la table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Index pour la table `product_has_category`
--
ALTER TABLE `product_has_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `fk_product_has_category_category1_idx` (`category_id`),
  ADD KEY `fk_product_has_category_product1_idx` (`product_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `order_has_product`
--
ALTER TABLE `order_has_product`
  MODIFY `order_has_product_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_address_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `fk_order_order_status1` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`);

--
-- Contraintes pour la table `order_has_product`
--
ALTER TABLE `order_has_product`
  ADD CONSTRAINT `fk_order_has_product_order1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_order_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Contraintes pour la table `product_has_category`
--
ALTER TABLE `product_has_category`
  ADD CONSTRAINT `fk_product_has_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_product_has_category_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
