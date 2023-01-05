-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 oct. 2022 à 20:36
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `concours`
--

CREATE TABLE `concours` (
  `num` int(11) NOT NULL,
  `nometabli` varchar(150) NOT NULL,
  `dates_b` date NOT NULL,
  `titre_form` varchar(50) NOT NULL,
  `photo` varchar(40) NOT NULL,
  `Intitulforma` varchar(100) NOT NULL,
  `date_f` date DEFAULT NULL,
  `icone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `concours`
--

INSERT INTO `concours` (`num`, `nometabli`, `dates_b`, `titre_form`, `photo`, `Intitulforma`, `date_f`, `icone`) VALUES
(1, 'Faculté des Sciences, Juridiques, Économiques, et ', '2022-09-14', 'LICENCE PROFESSIONNELLE', 'anonce1.pdf', 'agent commerciale chargé de la clientèle', '2022-09-20', 'icone1.png');

-- --------------------------------------------------------

--
-- Structure de la table `docteurs`
--

CREATE TABLE `docteurs` (
  `num` int(11) NOT NULL,
  `nometabli` varchar(150) NOT NULL,
  `nomlabo` varchar(150) NOT NULL,
  `logoetab` varchar(30) NOT NULL,
  `datesou` date NOT NULL,
  `type_eve` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `fpdf` varchar(40) NOT NULL,
  `Intitulforma` varchar(100) NOT NULL,
  `dateeven` date DEFAULT NULL,
  `photoanonce` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `docteurs`
--

INSERT INTO `docteurs` (`num`, `nometabli`, `nomlabo`, `logoetab`, `datesou`, `type_eve`, `titre`, `fpdf`, `Intitulforma`, `dateeven`, `photoanonce`) VALUES
(1, 'FACULTÉ DES SCIENCES JURIDIQUES,\r\nÉCONOMIQUES ET SOCIALES AIN CHOCK\r\nUNIVERSITÉ MASSAN II DE CASABLANCA\r\n', ' Laboratoire de Modélisation et Analyse Économique des Politiques Publiques\r\n(MAEPP)\r\n', 'icone1.jpg', '2022-11-18', 'Colloques et Conférences ', 'l\'Economie du Développement et l\'Analyse des Polit', 'pdf1.pdf', '', '2022-12-08', 'anonce1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `ecole_prive`
--

CREATE TABLE `ecole_prive` (
  `id` int(11) NOT NULL,
  `NomEtab` varchar(255) NOT NULL,
  `SigleEtab` varchar(255) NOT NULL,
  `VilleUni` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `AdresseUni` varchar(255) NOT NULL,
  `image` varchar(20) NOT NULL,
  `liensite` varchar(20) NOT NULL,
  `NomUni` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ecole_prive`
--

INSERT INTO `ecole_prive` (`id`, `NomEtab`, `SigleEtab`, `VilleUni`, `type`, `AdresseUni`, `image`, `liensite`, `NomUni`) VALUES
(1, 'Institut Supérieur de Gestion', 'ISG', 'Casablanca', 'Privé', '', '', '', ''),
(2, 'Institut Supérieur du Génie Appliqué', 'IGA', 'Casablanca', 'Privé', '', '', '', ''),
(3, 'Ecole Supérieure Internationale de Gestion', 'ESIG', 'Casablanca', 'Privé', '', '', '', ''),
(4, 'Groupe Ecole Supérieure de Gestion  - Maroc', 'ESG', 'Casablanca', 'Privé', '', '', '', ''),
(5, 'Ecole des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Casablanca', 'Privé', '', '', '', ''),
(6, 'Ecole Marocaine des Sciences de l\'Ingénieur en', 'EMSI Informatique de Gestion et en Informatique Industrielle', 'Casablanca', 'Privé', '', '', '', ''),
(7, 'Sup de co Ecole Supérieure de Commerce', '', 'Marrakech', 'Privé', '', '', '', ''),
(8, 'High Technology School in Morocco', 'HIGH-TECH', 'Rabat', 'Privé', '', '', '', ''),
(9, 'International Institute for Higher Education in Morocco', 'IIHEM', 'Rabat', 'Privé', '', '', '', ''),
(10, 'Institut des Hautes Etudes de Management', 'HEM', 'Casablanca', 'Privé', '', '', '', ''),
(11, 'Institut Supérieur de Gestion et de Commerce', 'ISGC', 'Casablanca', 'Privé', '', '', '', ''),
(12, 'Ecole  des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Rabat', 'Privé', '', '', '', ''),
(13, 'ESCA Ecole de Managment', '', 'Casablanca', 'Privé', '', '', '', ''),
(14, 'Ecole des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Meknès', 'Privé', '', '', '', ''),
(15, 'Ecole des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Fès', 'Privé', '', '', '', ''),
(16, 'Ecole Polyvalente Supérieure dInformatique et', 'EPSIEL.M d\'Electronique et de Management', 'Fès', 'Privé', '', '', '', ''),
(17, 'Ecole des Hautes Etudes de Commerce', 'HEC', 'Rabat', 'Privé', '', '', '', ''),
(18, 'Institut des Hautes Etudes de Management', 'HEM Institut Supérieur de Formation en Technologie', 'Rabat', 'Privé', '', '', '', ''),
(19, 'nstitut Supérieur de Formation en Technologie \r\nAlimentaire et Biopharmaceutique', 'ISFORT', 'Casablanca', 'Privé', '', '', '', ''),
(20, 'Ecole Supérieure de Management, du Commerce et', 'Sup-Management', 'Fès', 'Privé', '', '', '', ''),
(21, 'Institut des Hautes Etudes Bancaires, Financières et', 'HBFG', 'Casablanca', 'Privé', '', '', '', ''),
(22, 'Ecole Supérieure d\'Optique et de Lunetterie', 'ESOL', 'Fès', 'Privé', '', '', '', ''),
(23, 'Institut Supérieur d\'Ingénierie et des Affaires', 'ISGA-Rabat', 'Rabat', 'Privé', '', '', '', ''),
(24, 'Ecole Marocaine des Sciences de l\'Ingénieur en', 'EMSI Informatique de Gestion et en Informatique Industrielle', 'Rabat', 'Privé', '', '', '', ''),
(25, 'Ecole des Hautes Etudes de Biotechnologie et de Santé', 'EHEB', 'Casablanca', 'Privé', '', '', '', ''),
(26, 'Ecole des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Agadir', 'Privé', '', '', '', ''),
(27, 'Ecole Supérieure de Management et de Technologie Informatique Appliqués Privée', 'ESMA', 'Marrakech', 'Privé', '', '', '', ''),
(28, 'Ecole Supérieure des Réseaux Informatiques et de Management', 'ESRIM', 'Settat', 'Privé', '', '', '', ''),
(29, 'Institute for Leadership and communication Studies', 'ILCS', 'Rabat', 'Privé', '', '', '', ''),
(30, 'Ecole des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Kénitra', 'Privé', '', '', '', ''),
(31, 'Ecole Supérieure de Communication et de Publicité', 'Com\'Sup', 'Casablanca', 'Privé', '', '', '', ''),
(32, 'Ecole des Hautes Etudes Economiques,  Commerciales et d\'Ingénierie', 'HEEC', 'Marrakech', 'Privé', '', '', '', ''),
(33, 'Moroccan Computer Sciences And Management Business School  Private', 'MMBS', 'Mohammadia', 'Privé', '', '', '', ''),
(34, 'Institut des Hautes Etudes Bancaires, Financières et Managériales', 'HBFG', 'Oujda', 'Privé', '', '', '', ''),
(35, 'Ecole Marocaine de Banque et de Commerce International', 'EMBCI', 'Rabat', 'Privé', '', '', '', ''),
(36, 'Ecole Supérieure d\'Optique Appliquée et du Paramédicale', 'ESO', 'Rabat', 'Privé', '', '', '', ''),
(37, 'Institut Supérieur Maghrébin d\'Optique et d\'Optométrie', 'ISMOO', 'Casablanca', 'Privé', '', '', '', ''),
(38, 'Ecole Supérieure d\'Orthoptie - Rafiki', 'ESOR', 'Fès', 'Privé', '', '', '', ''),
(39, 'Ecole Supérieure d\'Architecture d\'Intérieur', 'ESAI', 'Rabat', 'Privé', '', '', '', ''),
(40, 'Ecole Supérieure d\'Ingénierie en Sciences Appliquées', 'ESISA', 'Fès', 'Privé', '', '', '', ''),
(41, 'Ecole Supérieure de Kinésithérapie', 'ESK', 'Casablanca', 'Privé', '', '', '', ''),
(42, 'Ecole des Hautes études de l\'Ingénierie Commerciale et', 'EHESICOM Management', 'Kénitra', 'Privé', '', '', '', ''),
(43, 'Haute Ecole de Kinésithérapie', 'HEK', 'Casablanca', 'Privé', '', '', '', ''),
(44, 'Ecole Supérieure en Ingénierie d\'Information,', 'ESTEM Télécommunication, Management et Génie Civil', 'Casablanca', 'Privé', '', '', '', ''),
(45, 'Ecole Supérieure des Sciences Techniques et de', 'SUPTEM Management', 'Tanger', 'Privé', '', '', '', ''),
(46, 'Institut Polytechnique Privé de Casablanca', '', 'Casablanca', 'Privé', '', '', '', ''),
(47, 'Institut Supérieur du Journalisme et de Communication', 'ISJC', 'Casablanca', 'Privé', '', '', '', ''),
(48, 'Ecole des Hautes Etudes Commerciales et Informatiques', 'HECI', 'Oujda', 'Privé', '', '', '', ''),
(49, 'Institut Supérieur des sciences de TechnologieInstitut Supérieur Vinci d\'Ingénierie Informatique et de', 'SIST', 'Casablanca', 'Privé', '', '', '', ''),
(50, 'Réseaux de Télécommunications', 'ISVIRT', 'Rabat', 'Privé', '', '', '', ''),
(51, 'Institut Supérieur du Journalisme et de l\'Information', 'IFJSUP', 'Casablanca', 'Privé', '', '', '', ''),
(52, 'Institut des Hautes Etudes de Management', 'HEM', 'Marrakech', 'Privé', '', '', '', ''),
(53, 'Ecole Supérieure de Psychologie', 'ESP', 'Casablanca', 'Privé', '', '', '', ''),
(54, 'Ecole des Hautes Etudes comptables et Financières', 'HECF', 'Fès', 'Privé', '', '', '', ''),
(55, 'Ecole Supérieure des Multimédia, Informatique et Réseaux', 'SUPEMIR', 'Casablanca', 'Privé', '', '', '', ''),
(56, 'Ecole Supérieure des Etudes Juridiques et Economiques', 'ESEJE', 'Mohammadia', 'Privé', '', '', '', ''),
(57, 'Ecole Marocaine des Sciences de l\'Ingénieur en Informatique de Gestion et en Informatique Industrielle', 'EMSI', 'Marrakech', 'Privé', '', '', '', ''),
(58, 'Institut Supérieur d\'Optique Théorique et Appliquée Privé', 'ISOTA', 'Casablanca', 'Privé', '', '', '', ''),
(59, 'Ecole  Supérieure de Design', 'Art Com-Sup', 'Casablanca', 'Privé', '', '', '', ''),
(60, 'Ecole des Hautes Etudes Poly Management', 'HEP Management', 'Oujda', 'Privé', '', '', '', ''),
(61, 'Institut Supérieur d\'Ingénierie et des Affaires', 'ISGA-Marrakech', 'Marrakech', 'Privé', '', '', '', ''),
(62, 'Ecole  Supérieure de Telécommunication et deManagement', 'SUPTEMA', 'Fès', 'Privé', '', '', '', ''),
(63, 'Ecole Supérieure d’  rchitecture de Casablanca', 'EAC', 'Casablanca', '', '', '', '', ''),
(64, 'Private International Institut of Management And \r\nTechnologie', 'PIIMT', 'Rabat', 'Privé', '', '', '', ''),
(65, 'Ecole Supérieure des Hautes Etudes en Technologie de', 'Sup Technology l\'Information et de la Communication Privée', 'Casablanca', 'Privé', '', '', '', ''),
(66, 'Institut Supérieur  du Transport et de la Logistique', 'ISTL', 'Casablanca', 'Privé', '', '', '', ''),
(67, 'Institut Spécialié Privé des Sciences de la Santé', 'ISPS', 'Casablanca', 'Privé', '', '', '', ''),
(68, 'Ecole Supérieure de Management et de Communication', 'ESMC', 'Casablanca', 'Privé', '', '', '', ''),
(69, 'Ecole Supérieure de Design', 'Art com sup', 'Rabat', 'Privé', '', '', '', ''),
(70, 'Ecole Supérieure de Design et des Arts Visuels', 'ESDAV', 'Casablanca', 'Privé', '', '', '', ''),
(71, 'Ecole Supérieure Marocaine de Traduction et d\'Interprétariat', 'ESMTI', 'Casablanca', 'Privé', '', '', '', ''),
(72, 'Ecole Supérieure de Management, Informatique et Télécommunication', 'SUPMTI', 'Rabat', 'Privé', '', '', '', ''),
(73, 'Ecole d\'Ingénierie en Génie des Systèmes Industriels de Casablanca', 'EIGSICA', 'Casablanca', 'Privé', '', '', '', ''),
(74, 'Institut des Hautes Etudes en Paramédical du Sud', 'IHEPS', 'Marrakech', 'Privé', '', '', '', ''),
(75, 'Ecoles des Hautes Etudes des Sciences et Techniques de l\'Ingénierie et du Management Privée', 'HESTIM', 'Casablanca', 'Privé', '', '', '', ''),
(76, 'Ecole Supérieure de Commerce et de Gestion des Affaires Privée', 'ESCGA', 'Tanger', 'Privé', '', '', '', ''),
(77, 'Ecole Supérieure Privée des Hautes Etudes Managériales de Tanger', 'HEMT', 'Tanger', 'Privé', '', '', '', ''),
(78, 'Ecole de Management et d\'Administration des Affaires', '', 'Agadir', 'Privé', '', '', '', ''),
(79, 'Ecole des Métiers, de Commerce, de Gestion et d\'Informatique Privée', 'EMCGI', 'Tanger', 'Privé', '', '', '', ''),
(80, 'Institut Supérieur des Hautes Etudes en Développement ', 'ISHEDD', 'Rabat', 'Privé', '', '', '', ''),
(81, 'The International Institute Of information Technologie', 'SUPINFO', 'Casablanca', 'Privé', '', '', '', ''),
(82, 'Ecole Supérieure de Management  et de Gestion des Ressources Humaines', 'SUP\'RH', 'Casablanca', 'Privé', '', '', '', ''),
(83, 'Ecole Supérieure du  Management des Entreprises du Détroit', 'MEDSUP', 'Tanger', 'Privé', '', '', '', ''),
(84, 'Ecole Supérieure des Arts Visuels Privée', 'ESAV', 'Marrakech', 'Privé', '', '', '', ''),
(85, 'Ecole Supérieure de Journalisme et   de Communication', 'ESJC', 'Casablanca', 'Privé', '', '', '', ''),
(86, 'Institut Supérieur des Etudes de la Santé Privé Mohammedia', 'ISESMO', 'Mohammadia', 'Privé', '', '', '', ''),
(87, 'Institut Supérieur Privé de Génie Informatique', 'SUP ISI', 'Tétouan', 'Privé', '', '', '', ''),
(88, 'Ecole des Hautes Etudes Comptables et Financières', 'HECF', 'Meknès', 'Privé', '', '', '', ''),
(89, 'The International Institute Of information Technologie', 'SUPINFO', 'Rabat', 'Privé', '', '', '', ''),
(90, 'Ecole Marocaine d\'Ingénierie', 'EMG', 'Rabat', 'Privé', '', '', '', ''),
(91, 'Institut Supérieur de Comptabilité ͘ d’  dministration et de Commerce', 'ICACSUP', 'Kénitra', 'Privé', '', '', '', ''),
(92, 'Ecole des Nouvelles Sciences et Ingénierie', 'ENSIT', 'Tanger', 'Privé', '', '', '', ''),
(93, 'Ecole Supérieure de Management Informatique et élécommunications Privée d\'Oujda', 'SUPMTI Oujda', 'Oujda', 'Privé', '', '', '', ''),
(94, 'Hautes Etudes de Commerce, de Gestion et d’Informatique', 'HECGI', 'Kénitra', 'Privé', '', '', '', ''),
(95, 'Ecole Supérieure de Management et d\'Ingénierie de l\'Orient', 'Orient Sup de Management', 'Taza', 'Privé', '', '', '', ''),
(96, 'Institut des Hautes Etudes de Management', 'HEM', 'Fès', 'Privé', '', '', '', ''),
(97, 'Institut Supérieur du d\'Ingénierie et des Affaires', 'ISGA-Fès', 'Fès', 'Privé', '', '', '', ''),
(98, 'Superior Institutions Of Sciences And Technology', 'SIST', 'Rabat', 'Privé', '', '', '', ''),
(99, 'Ecole des Hautes Etudes d\'Ingénierie', 'EHEIO', 'Oujda', 'Privé', '', '', '', ''),
(100, 'Ecole Supérieure d\'Ingénierie de la santé et de Management de Projets', 'ESISMP', 'Casablanca', 'Privé', '', '', '', ''),
(101, 'Ecole Supérieure de Rabat en Management et Ingénierie', 'ESRMI', 'Rabat', 'Privé', '', '', '', ''),
(102, 'Ecole Supérieure de Management du Sud Privée', 'ESMS', 'Agadir', 'Privé', '', '', '', ''),
(103, 'Ecole Supérieure de Management, Informatique et Télécommunication Privée de Beni Mellal', 'SUPMTI Beni-Mellal', 'Beni-Mellal', 'Privé', '', '', '', ''),
(104, 'Ecole Supérieure d\'Ingénierie Informatique et Multimédia', 'ES2IM', 'Casablanca', 'Privé', '', '', '', ''),
(105, 'Ecole Marocaine Supérieure d\'Informatique et  Gesion', 'EMSIG', 'Meknès', 'Privé', '', '', '', ''),
(106, 'Ecole  Supérieure d’  rchitecture d’Intérieur', 'ESAI', 'Marrakech', 'Privé', '', '', '', ''),
(107, 'Grande Ecole de Commerce de Marrakech', 'GECM', 'Marrakech', 'Privé', '', '', '', ''),
(108, 'Ecole Supérieure des Sciences et Technologies de l’Ingénierie', 'ESSTI', 'Rabat', 'Privé', '', '', '', ''),
(109, 'Private International Institute of Management and Technology', 'PIIMT', 'Casablanca', 'Privé', '', '', '', ''),
(110, 'Institut Supérieur de Management et des Médias', 'SUP’MM', 'Tanger', 'Privé', '', '', '', ''),
(111, 'Superior Institutions of Sciences and Technology', 'SIST', 'Tanger', 'Privé', '', '', '', ''),
(112, 'Ecole Supérieure d’Ingénierie   utomobile et   éronautique', 'ESI2A', 'Fès', 'Privé', '', '', '', ''),
(113, 'Institut Supérieur de Management, d\'Administration et de Génie Informatique', 'ISMAGI', 'Rabat', 'Privé', '', '', '', ''),
(114, 'Ecole Supérieure de Génie Civil et des NouvellesTechnologies', 'ESGCNT', 'Meknès', 'Privé', '', '', '', ''),
(115, 'ecole Supérieure de de l\'Aeronautique et la Haute \r\nTechnologie', 'AEROSUP', 'Casablanca', 'Privé', '', '', '', ''),
(116, 'Ecole Supérieure de Finance et d\'Audit Ecole Supérieure des Sciences Economiques et de', 'FINAN SUP', 'Tanger', 'Privé', '', '', '', ''),
(117, 'Ecole Supérieure des Sciences Economiques et de \r\nManagement ', 'ESSEM', 'Casablanca', 'Privé', '', '', '', ''),
(118, 'Ecole Supérieure des Sciences de la Santé', 'ESSS', 'Casablanca', 'Privé', '', '', '', ''),
(119, 'Ecole Supérieure des Sciences Commerciales et de Gestion', 'ESSCG', 'Tanger', 'Privé', '', '', '', ''),
(120, 'Ecole Supérieure de Management, Informatique et Télécommunication', 'SUPMTI', 'Meknès', 'Privé', '', '', '', ''),
(121, 'Ecole Centrale de Casablanca', 'ECC', 'Casablanca', 'Créé dans le cadre du', '', '', '', ''),
(122, 'Institut Supérieur du Journalisme et de l\'Information', 'IFJSUP', 'Marrakech', 'Privé', '', '', '', ''),
(123, 'ADALIA Private Institute of Management', 'ADALIA', 'Casablanca', 'Privé', '', '', '', ''),
(124, 'Ecole Supérieure Business de Berrechid Privée', '', 'BERRECHID', 'Privé', '', '', '', ''),
(125, 'Ecole des Sciences Economiques et Commerciales', 'ESSEC', 'Salé ', 'Privé', '', '', '', ''),
(126, 'YNCREA Maroc Ecole d\'Ingénierie Privée', '', 'Rabat', 'Privé', '', '', '', ''),
(127, 'MED Métiers- Institut Supérieur Privé des Métiers Industriels', '', 'Tanger', 'Privé', '', '', '', ''),
(128, 'EMLC business school', 'EMLC', 'Casablanca', 'Privé', '', '', '', ''),
(129, 'Institut des Hautes Etudes en Paramédicales et Sociales', 'IHEPS Casablanca', 'Casablanca', 'Privé', '', '', '', ''),
(130, 'TBS Casablanca- Business School', '', 'Casablanca', 'Privé', '', '', '', ''),
(131, 'Institut Supérieur du d\'Ingénierie et des Affaires', 'ISGA-Casablanca', 'Casablanca', 'Privé', '', '', '', ''),
(132, 'Ostelea Rabat, School of Tourism et Hospitality', '', 'Rabat', 'Privé', '', '', '', ''),
(133, 'Ecole Supérieure d’Ingénierie en Génie Civil Privée', 'ESIGCP', 'Oujda', 'Privé', '', '', '', ''),
(134, 'EDGE Private Businees Shool', 'EDGE', 'Casablanca', 'Privé', '', '', '', ''),
(135, 'ESLSCA, Business School', 'ESLSCA', 'Rabat', 'Privé', '', '', '', ''),
(136, 'Institut Supérieur Privé des Sciences de l’Ingénieur', 'Technologia Privée', 'Rabat', 'Privé', '', '', '', ''),
(137, 'Ecole Marocaine des Sciences de l\'Ingénieur en Informatique de Gestion et en Informatique Industrielle', 'EMSI Tanger', 'Tanger', 'Privé', '', '', '', ''),
(138, 'Institut Privé des Hautes Etudes Marocaines d\'Ingénierie', 'HEM Engineering School', 'Casablanca', 'Privé', '', '', '', ''),
(139, 'Ecole Supérieure des Affaires de Casablanca', 'ESAC', 'Casablanca', 'Privé', '', '', '', ''),
(140, 'Institut Supérieur des Etudes Paramédicales de Casablanca', 'ISEP casablanca', 'Casablanca', 'Privé', '', '', '', ''),
(141, 'Institut des Hautes Etudes Paramédicales Souss', 'IHEPS Agadir', 'Agadir', 'Privé', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `ecole_public`
--

CREATE TABLE `ecole_public` (
  `id` int(11) NOT NULL,
  `NomEtab` varchar(255) NOT NULL,
  `SigleEtab` varchar(255) NOT NULL,
  `VilleUni` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `AdresseUni` varchar(255) NOT NULL,
  `image` varchar(20) NOT NULL,
  `liensite` varchar(20) NOT NULL,
  `NomUni` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `métier`
--

CREATE TABLE `métier` (
  `idActivité` int(11) NOT NULL,
  `libellea` varchar(255) DEFAULT NULL,
  `imagea` varchar(25) DEFAULT NULL,
  `secteur` varchar(255) DEFAULT NULL,
  `métier` varchar(255) DEFAULT NULL,
  `id_grpact` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `TextMetier` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `métier`
--

INSERT INTO `métier` (`idActivité`, `libellea`, `imagea`, `secteur`, `métier`, `id_grpact`, `imagem`, `TextMetier`) VALUES
(1, 'Agriculture et Pêche, Espaces naturels et Espaces verts, Soins aux animaux', 'a1.jpeg', 'Engins agricoles et forestiers', NULL, 1, 'a11.jpg', 'Choisir de faire carrière dans l’agriculture, c’est opter pour des métiers essentiels et indétrônables. Ce domaine couvre plusieurs secteurs d’activités en perpétuelle évolution aussi bien au maroc qu’à l’international.Au cours des dernières années,le Maroc a misé sur l\'augmentation du nombre  d’agriculteurs, l\'extension des terres cultivées, la diversification des produits et des récoltes, la modernisation et la mécanisation du secteur et naturellement  l\'optimisation de la rentabilité.Le développement du Maroc reste tributaire de ce secteur qui contribue bon an mal an grandement  au PIB et à la croissance du pays.L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur  qui vous convient le mieux.'),
(2, 'Agriculture et Pêche, Espaces naturels et Espaces verts, Soins aux animaux', 'a1.jpeg', 'Espaces naturels et espaces verts', NULL, 1, 'a11.jpg', 'Choisir de faire carrière dans l’agriculture, c’est opter pour des métiers essentiels et indétrônables. Ce domaine couvre plusieurs secteurs d’activités en perpétuelle évolution aussi bien au maroc qu’à l’international.Au cours des dernières années,le Maroc a misé sur l\'augmentation du nombre  d’agriculteurs, l\'extension des terres cultivées, la diversification des produits et des récoltes, la modernisation et la mécanisation du secteur et naturellement  l\'optimisation de la rentabilité.Le développement du Maroc reste tributaire de ce secteur qui contribue bon an mal an grandement  au PIB et à la croissance du pays.L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur  qui vous convient le mieux.'),
(3, 'Agriculture et Pêche, Espaces naturels et Espaces verts, Soins aux animaux', 'a1.jpeg', 'Etudes et assistance technique', NULL, 1, 'a11.jpg', 'Choisir de faire carrière dans l’agriculture, c’est opter pour des métiers essentiels et indétrônables. Ce domaine couvre plusieurs secteurs d’activités en perpétuelle évolution aussi bien au maroc qu’à l’international.Au cours des dernières années,le Maroc a misé sur l\'augmentation du nombre  d’agriculteurs, l\'extension des terres cultivées, la diversification des produits et des récoltes, la modernisation et la mécanisation du secteur et naturellement  l\'optimisation de la rentabilité.Le développement du Maroc reste tributaire de ce secteur qui contribue bon an mal an grandement  au PIB et à la croissance du pays.L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur  qui vous convient le mieux.'),
(4, 'Agriculture et Pêche, Espaces naturels et Espaces verts, Soins aux animaux', 'a1.jpeg', 'Production', NULL, 1, 'a11.jpg', 'Choisir de faire carrière dans l’agriculture, c’est opter pour des métiers essentiels et indétrônables. Ce domaine couvre plusieurs secteurs d’activités en perpétuelle évolution aussi bien au maroc qu’à l’international.Au cours des dernières années,le Maroc a misé sur l\'augmentation du nombre  d’agriculteurs, l\'extension des terres cultivées, la diversification des produits et des récoltes, la modernisation et la mécanisation du secteur et naturellement  l\'optimisation de la rentabilité.Le développement du Maroc reste tributaire de ce secteur qui contribue bon an mal an grandement  au PIB et à la croissance du pays.L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur  qui vous convient le mieux.'),
(5, 'Agriculture et Pêche, Espaces naturels et Espaces verts, Soins aux animaux', 'a1.jpeg', 'Soins aux animaux', NULL, 1, 'a11.jpg', 'Choisir de faire carrière dans l’agriculture, c’est opter pour des métiers essentiels et indétrônables. Ce domaine couvre plusieurs secteurs d’activités en perpétuelle évolution aussi bien au maroc qu’à l’international.Au cours des dernières années,le Maroc a misé sur l\'augmentation du nombre  d’agriculteurs, l\'extension des terres cultivées, la diversification des produits et des récoltes, la modernisation et la mécanisation du secteur et naturellement  l\'optimisation de la rentabilité.Le développement du Maroc reste tributaire de ce secteur qui contribue bon an mal an grandement  au PIB et à la croissance du pays.L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur  qui vous convient le mieux.'),
(6, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Arts plastiques', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(7, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Céramique', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(8, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Décoration', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(9, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Fibres et papier', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(10, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Instruments de musique', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(11, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Métal, verre, bijouterie et horlogerie', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(12, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Taxidermie', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(13, 'Arts et Façonnage d\'ouvrages d\'art', 'b1.jpeg', 'Tissu et cuirs', NULL, 2, 'b11.jpg', 'Les métiers de l’Art de la Culture et du Cinéma s’adressent essentiellement aux sens, aux émotions, à l\'âme et à l\'intellect. Ce sont des représentations de l’expression du vivant largement influencés par la culture et la créativité. Les composantes majeures des arts sont le théâtre, le cinéma, la littérature, l\'artisanat, les arts graphiques, l’audiovisuel, la musique, la danse, les arts culinaires, le dessin et la sculpture. Au Maroc, l’art est particulièrement diversifié et fécond. Il s’impose partout à travers le monde et ne cesse de proliférer , de se moderniser et de  susciter de  l’admiration mais aussi de la jalousie et de la rivalité. Très important dans l’économie du pays, ce secteur représente aujourd’hui près de 70 métiers et occupe près du ème  de la population active. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ce domaine d’activité et vous permet de choisir le secteur qui vous convient le mieux.'),
(14, 'Banque, Assurance, Immobilier', 'c1.jpeg', 'Assurance', NULL, 3, 'c11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(15, 'Banque, Assurance, Immobilier', 'c1.jpeg', 'Banque', NULL, 3, 'c11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(16, 'Banque, Assurance, Immobilier', 'c1.jpeg', 'Finance', NULL, 3, 'c11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(17, 'Banque, Assurance, Immobilier', 'c1.jpeg', 'Gestion administrative banque et assurances', NULL, 3, 'c11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(18, 'Banque, Assurance, Immobilier', 'c1.jpeg', 'Immobilier', NULL, 3, 'c11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(19, 'Commerce, Vente et Grande distribution', 'd1.jpeg', 'Commerce alimentaire et métiers de bouche', NULL, 4, 'd11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(20, 'Commerce, Vente et Grande distribution', 'd1.jpeg', 'Commerce non alimentaire et de prestations de confort', NULL, 4, 'd11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(21, 'Commerce, Vente et Grande distribution', 'd1.jpeg', 'Direction de magasin de détail', NULL, 4, 'd11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(22, 'Commerce, Vente et Grande distribution', 'd1.jpeg', 'Force de vente', NULL, 4, 'd11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(23, 'Commerce, Vente et Grande distribution', 'd1.jpeg', 'Grande distribution', NULL, 4, 'd11.jpg', 'Le Maroc dispose d’un secteur bancaire moderne, ouvert à l’international et globalement bien établi, solide et rentable. Plusieurs réformes ont été entreprises et ont réussi à hisser la réglementation marocaine aux standards internationaux favorisant ainsi le développement de l’économie nationale et  l’adaptation du secteur privé  aux dictas de la concurrence et de la mondialisation. Le secteur des assurances connaît aussi une évolution constante. Ses principaux acteurs sont aussi bien des multinationales que des compagnies nationales. Indépendamment de la conjoncture, ces compagnies accompagnent efficacement l\'élan des opérateurs et ménages  marocains en limitant les risques et en accompagnant les actions au quotidien. Le secteur de l\'immobilier joue aussi un rôle important dans le développement de l’économie marocaine. Sa contribution au Produit intérieur brut (PIB) dépasse les 6%. les emplois qu’il génère annuellement avoisinent Un Million. Les métiers du secteur banque-assurance-Immobilier s’exercent en agence, en cabinet ou en indépendant. Ce sont traditionnellement des domaines qui payent bien aussi bien les cadres que les non cadres. Les bac+2, les bac+3, comme les  licences professionnelles de même que les bac+5 qui offrent plus de compétences et conséquemment plus de responsabilités et une meilleure rémunération sont les voies royales pour accéder à ces métiers. L’Etudiant Marocain : Conseils et Orientation met à votre disposition toutes les informations relatives aux métiers que vous pourriez exercer dans ces domaines et vous permet de choisir le secteur qui vous convient le mieux.'),
(24, 'Communication, Média et Multimédia', 'e1.jfif', 'Edition et communication', NULL, 5, 'e11.jpg', ''),
(25, 'Communication, Média et Multimédia', 'e1.jfif', 'Images et sons', NULL, 5, 'e11.jpg', ''),
(26, 'Communication, Média et Multimédia', 'e1.jfif', 'Industries graphiques', NULL, 5, 'e11.jpg', ''),
(27, 'Communication, Média et Multimédia', 'e1.jfif', 'Publicité', NULL, 5, 'e11.jpg', ''),
(28, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Engins de chantier', NULL, 6, 'f11.jpg', ''),
(29, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Extraction', NULL, 6, 'f11.jpg', ''),
(30, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Montage de structures', NULL, 6, 'f11.jpg', ''),
(31, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Second oeuvre', NULL, 6, 'f11.jpg', ''),
(32, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Travaux et gros oeuvre', NULL, 6, 'f11.jpg', ''),
(33, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Conception et études', NULL, 6, 'f11.jpg', ''),
(34, 'Construction, Bâtiment et Travaux publics', 'f1.jpeg', 'Conduite et encadrement de chantier - travaux', NULL, 6, 'f11.jpg', ''),
(35, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Accueil et promotion touristique', NULL, 7, 'g11.jpg', ''),
(36, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Animation d\'activités de loisirs', NULL, 7, 'g11.jpg', ''),
(37, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Conception, commercialisation et vente de produits touristiques', NULL, 7, 'g11.jpg', ''),
(38, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Gestion et direction', NULL, 7, 'g11.jpg', ''),
(39, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Personnel d\'étage en hôtellerie', NULL, 7, 'g11.jpg', ''),
(40, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Production culinaire', NULL, 7, 'g11.jpg', ''),
(41, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Accueil en hôtellerie', NULL, 7, 'g11.jpg', ''),
(42, 'Hôtellerie-Restauration, Tourisme, Loisirs et Animation', 'g1.jfif', 'Service', NULL, 7, 'g11.jpg', ''),
(43, 'Industrie', 'h1.jpeg', 'Affaires et support technique client', NULL, 7, 'h11.jpg', ''),
(44, 'Industrie', 'h1.jpeg', 'Conception, recherche, études et développement', NULL, 7, 'h11.jpg', ''),
(45, 'Industrie', 'h1.jpeg', 'Hygiène Sécurité Environnement -HSE- industriels', NULL, 7, 'h11.jpg', ''),
(46, 'Industrie', 'h1.jpeg', 'Méthodes et gestion industrielles', NULL, 7, 'h11.jpg', ''),
(47, 'Industrie', 'h1.jpeg', 'Qualité et analyses industrielles', NULL, 7, 'h11.jpg', ''),
(48, 'Industrie', 'h1.jpeg', 'Alimentaire', NULL, 7, 'h11.jpg', ''),
(49, 'Industrie', 'h1.jpeg', 'Bois', NULL, 7, 'h11.jpg', ''),
(50, 'Industrie', 'h1.jpeg', 'Chimie et pharmacie', NULL, 7, 'h11.jpg', ''),
(51, 'Industrie', 'h1.jpeg', 'Cuir et textile', NULL, 7, 'h11.jpg', ''),
(52, 'Industrie', 'h1.jpeg', 'Direction, encadrement et pilotage de fabrication et production industrielles', NULL, 7, 'h11.jpg', ''),
(53, 'Industrie', 'h1.jpeg', 'Electronique et électricité', NULL, 7, 'h11.jpg', ''),
(54, 'Industrie', 'h1.jpeg', 'Energie', NULL, 7, 'h11.jpg', ''),
(55, 'Industrie', 'h1.jpeg', 'Matériaux de construction, céramique et verre', NULL, 7, 'h11.jpg', ''),
(56, 'Industrie', 'h1.jpeg', 'Mécanique, travail des métaux et outillage', NULL, 7, 'h11.jpg', ''),
(57, 'Industrie', 'h1.jpeg', 'Papier et carton', NULL, 7, 'h11.jpg', ''),
(58, 'Industrie', 'h1.jpeg', 'Plastique, caoutchouc', NULL, 7, 'h11.jpg', ''),
(59, 'Industrie', 'h1.jpeg', 'Préparation et conditionnement', NULL, 7, 'h11.jpg', ''),
(60, 'Industrie', 'h1.jpeg', 'Traitements thermiques et traitements de surfaces', NULL, 7, 'h11.jpg', ''),
(61, 'Installation et Maintenance', 'i1.jfif', 'Encadrement', NULL, 7, 'i11.jpg', ''),
(62, 'Installation et Maintenance', 'i1.jfif', 'Entretien technique', NULL, 7, 'i11.jpg', ''),
(63, 'Installation et Maintenance', 'i1.jfif', 'Equipements de production, équipements collectifs', NULL, 7, 'i11.jpg', ''),
(64, 'Installation et Maintenance', 'i1.jfif', 'Equipements domestiques et informatique', NULL, 7, 'i11.jpg', ''),
(65, 'Installation et Maintenance', 'i1.jfif', 'Travaux d\'accès difficile', NULL, 7, 'i11.jpg', ''),
(66, 'Installation et Maintenance', 'i1.jfif', 'Véhicules, engins, aéronefs', NULL, 7, 'i11.jpg', ''),
(67, 'Santé', 'j1.jfif', 'Praticiens médicaux', NULL, 10, 'j11.jpg', ''),
(68, 'Santé', 'j1.jfif', 'Praticiens médico-techniques', NULL, 10, 'j11.jpg', ''),
(69, 'Santé', 'j1.jfif', 'Professionnels médico-techniques', NULL, 10, 'j11.jpg', ''),
(70, 'Santé', 'j1.jfif', 'Rééducation et appareillage', NULL, 10, 'j11.jpg', ''),
(71, 'Santé', 'j1.jfif', 'Soins paramédicaux', NULL, 10, 'j11.jpg', ''),
(72, 'Services à la personne et à la collectivité', 's1.jfif', 'Accompagnement de la personne', NULL, 11, 'j11.jpg', ''),
(73, 'Services à la personne et à la collectivité', 's1.jfif', 'Action sociale, socio-éducative et socio-culturelle', NULL, 11, 'j11.jpg', ''),
(74, 'Services à la personne et à la collectivité', 's1.jfif', 'Aide à la vie quotidienne', NULL, 11, 'j11.jpg', ''),
(75, 'Services à la personne et à la collectivité', 's1.jfif', 'Conception et mise en oeuvre des politiques publiques', NULL, 11, 'j11.jpg', ''),
(76, 'Services à la personne et à la collectivité', 's1.jfif', 'Contrôle public', NULL, 11, 'j11.jpg', ''),
(77, 'Services à la personne et à la collectivité', 's1.jfif', 'Culture et gestion documentaire', NULL, 11, 'j11.jpg', ''),
(78, 'Services à la personne et à la collectivité', 's1.jfif', 'Défense, sécurité publique et secours', NULL, 11, 'j11.jpg', ''),
(79, 'Services à la personne et à la collectivité', 's1.jfif', 'Développement territorial et emploi', NULL, 11, 'j11.jpg', ''),
(80, 'Services à la personne et à la collectivité', 's1.jfif', 'Droit', NULL, 11, 'j11.jpg', ''),
(81, 'Services à la personne et à la collectivité', 's1.jfif', 'Formation initiale et continue', NULL, 11, 'j11.jpg', ''),
(82, 'Services à la personne et à la collectivité', 's1.jfif', 'Nettoyage et propreté industriels', NULL, 11, 'j11.jpg', ''),
(83, 'Services à la personne et à la collectivité', 's1.jfif', 'Propreté et environnement urbain', NULL, 11, 'j11.jpg', ''),
(84, 'Services à la personne et à la collectivité', 's1.jfif', 'Recherche', NULL, 11, 'j11.jpg', ''),
(85, 'Services à la personne et à la collectivité', 's1.jfif', 'Sécurité privée', NULL, 11, 'j11.jpg', ''),
(86, 'Services à la personne et à la collectivité', 's1.jfif', 'Services funéraires', NULL, 11, 'j11.jpg', ''),
(87, 'Spectacle', 'l1.jfif', 'Animation de spectacles', NULL, 12, 'l11.jpg', ''),
(88, 'Spectacle', 'l1.jfif', 'Artistes - interprètes du spectacle', NULL, 12, 'l11.jpg', ''),
(89, 'Spectacle', 'l1.jfif', 'Conception et production de spectacles', NULL, 12, 'l11.jpg', ''),
(90, 'Spectacle', 'l1.jfif', 'Sport professionnel', NULL, 12, 'l11.jpg', ''),
(91, 'Spectacle', 'l1.jfif', 'Techniciens du spectacle', NULL, 12, 'l11.jpg', ''),
(92, 'Support à l\'entreprise', 'm1.jpeg', 'Achats', NULL, 13, 'm11.jpg', ''),
(93, 'Support à l\'entreprise', 'm1.jpeg', 'Comptabilité et gestion', NULL, 13, 'm11.jpg', ''),
(94, 'Support à l\'entreprise', 'm1.jpeg', 'Direction d\'entreprise', NULL, 13, 'm11.jpg', ''),
(95, 'Support à l\'entreprise', 'm1.jpeg', 'Organisation et études', NULL, 13, 'm11.jpg', ''),
(96, 'Support à l\'entreprise', 'm1.jpeg', 'Ressources humaines', NULL, 13, 'm11.jpg', ''),
(97, 'Support à l\'entreprise', 'm1.jpeg', 'Secrétariat et assistance', NULL, 13, 'm11.jpg', ''),
(98, 'Support à l\'entreprise', 'm1.jpeg', 'Stratégie commerciale, marketing et supervision des ventes', NULL, 13, 'm11.jpg', ''),
(99, 'Support à l\'entreprise', 'm1.jpeg', 'Systèmes d\'information et de télécommunication', NULL, 13, 'm11.jpg', ''),
(100, 'Transport et Logistique', 'n1.jfif', 'Magasinage, manutention des charges et déménagement', NULL, 13, 'n11.jpg', ''),
(101, 'Transport et Logistique', 'n1.jfif', 'Organisation de la circulation des marchandises', NULL, 13, 'n11.jpg', ''),
(102, 'Transport et Logistique', 'n1.jfif', 'Personnel d\'encadrement de la logistique', NULL, 13, 'n11.jpg', ''),
(103, 'Transport et Logistique', 'n1.jfif', 'Personnel navigant du transport aérien', NULL, 13, 'n11.jpg', ''),
(104, 'Transport et Logistique', 'n1.jfif', 'Personnel sédentaire du transport aérien', NULL, 13, 'n11.jpg', ''),
(105, 'Transport et Logistique', 'n1.jfif', 'Personnel navigant du transport maritime et fluvial', NULL, 13, 'n11.jpg', ''),
(106, 'Transport et Logistique', 'n1.jfif', 'Personnel sédentaire du transport maritime et fluvial', NULL, 13, 'n11.jpg', ''),
(107, 'Transport et Logistique', 'n1.jfif', 'Personnel de conduite du transport routier', NULL, 13, 'n11.jpg', ''),
(108, 'Transport et Logistique', 'n1.jfif', 'Personnel d\'encadrement du transport routier', NULL, 13, 'n11.jpg', ''),
(109, 'Transport et Logistique', 'n1.jfif', 'Personnel navigant du transport terrestre', NULL, 13, 'n11.jpg', ''),
(110, 'Transport et Logistique', 'n1.jfif', 'Personnel sédentaire du transport ferroviaire et réseau filo guidé', NULL, 13, 'n11.jpg', ''),
(111, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Audiovisuel -TV - Radio -', NULL, 15, 'o11.jpg', ''),
(112, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Biologie, Biotechnologies', NULL, 15, 'o11.jpg', ''),
(113, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Centres d\'Appels', NULL, 15, 'o11.jpg', ''),
(114, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'e-commerce, e-business', NULL, 15, 'o11.jpg', ''),
(115, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Informatique', NULL, 15, 'o11.jpg', ''),
(116, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Ingénierie-Information', NULL, 15, 'o11.jpg', ''),
(117, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Innovation - Recherche', NULL, 15, 'o11.jpg', ''),
(118, 'INFORMATIQUE, INTERNET', 'o1.jfif', 'Internet', NULL, 15, 'o11.jpg', ''),
(119, 'EDUCATION, FORMATION PROFESSIONNELLE', 'q1.jfif', 'Administrations, Fonction publique', NULL, 16, 'q11.jpg', ''),
(120, 'EDUCATION, FORMATION PROFESSIONNELLE', 'q1.jfif', 'Culture, Théâtre', NULL, 16, 'q11.jpg', ''),
(121, 'EDUCATION, FORMATION PROFESSIONNELLE', 'q1.jfif', 'Education & Formation', NULL, 16, 'q11.jpg', ''),
(122, 'EDUCATION, FORMATION PROFESSIONNELLE', 'q1.jfif', 'Innovation - Recherche', NULL, 16, 'q11.jpg', ''),
(123, 'EDUCATION, FORMATION PROFESSIONNELLE', 'q1.jfif', 'Métiers de la petite enfance', NULL, 16, 'q11.jpg', ''),
(124, 'EDUCATION, FORMATION PROFESSIONNELLE', 'q1.jfif', 'Préparations écoles, concours, examens', NULL, 16, 'q11.jpg', ''),
(125, 'QUALITÉ ENVIRONNEMENT', 'r1.jpg', 'Environnement, Propreté, Nature', NULL, 17, 'r11.jpg', ''),
(126, 'QUALITÉ ENVIRONNEMENT', 'r1.jpg', 'Horticulture Paysage', NULL, 17, 'r11.jpg', ''),
(127, 'QUALITÉ ENVIRONNEMENT', 'r1.jpg', 'Métiers de la Mer et de l\'eau', NULL, 17, 'r11.jpg', ''),
(128, 'QUALITÉ ENVIRONNEMENT', 'r1.jpg', 'Qualité', NULL, 17, 'r11.jpg', '');

-- --------------------------------------------------------

--
-- Structure de la table `press`
--

CREATE TABLE `press` (
  `NumPress` int(11) NOT NULL,
  `dateArt` date NOT NULL,
  `titre` varchar(200) NOT NULL,
  `payé` varchar(20) NOT NULL,
  `journal` varchar(50) NOT NULL,
  `contenu` longtext NOT NULL,
  `icone` varchar(50) NOT NULL,
  `journalpdf` varchar(100) NOT NULL,
  `lien` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `press`
--

INSERT INTO `press` (`NumPress`, `dateArt`, `titre`, `payé`, `journal`, `contenu`, `icone`, `journalpdf`, `lien`) VALUES
(1, '2022-09-01', 'Le E-Learning  nous fait beaucoup de bien', 'icone1.jpeg', 'la vie économique', 'Le « e-learning » est une expérience transformatrice aux étudiants et une nouvelle étape dans le système d’enseignement au Maroc …', '1.jpeg', '1.pdf', ' https://www.lavieeco.com/'),
(2, '2022-07-08', 'Le « e-learning » prend ses marques', 'icone2.jpeg', 'Aujourd\'hui', 'Le « e-learning » est une expérience transformatrice aux étudiants et une nouvelle étape dans le système d’enseignement au Maroc …', '2.jpg', '2.pdf', ''),
(3, '2022-05-11', 'Une nouvelle école d\'ingénieurs voit le jour', 'icone3.jpeg', 'L\'Opinion', ' Grâce à une approche pédagogique innovante, la nouvelle école d\'ingénierie informatique de HEM va travailler sur le développement de l\'esprit entrepreneurial des jeunes, annonce la Direction Générale de HEM lors du point presse ...', '3.jpg', '3.pdf', ''),
(4, '2022-03-03', 'La technologie demeure un excellent outil d’accompagnement de l’acte pédagogique', 'icone4.jpeg', 'Telquel', 'Lors de son interview accordée à Telquel, Yasmine Benamour, Directrice Générale de HEM, explique que les technologies sont avant tout un moyen pour compléter la formation pédagogique …', '4.jpg', '4.pdf', '');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `secteur` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `Nometab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`secteur`, `id`, `Nometab`) VALUES
('Santé', 1, 'université internationale de Rabat'),
('Commerce', 2, 'université internationale de Rabat'),
('Bâtiment', 3, 'université internationale de Rabat'),
('Informatique et Télécommunication', 4, 'université internationale de Rabat'),
('energie', 5, 'université internationale de Rabat'),
('energie', 6, 'Université Euro-\r\nméditerranéenne de Fès\r\n'),
('Santé', 7, 'Université Euro-\r\nméditerranéenne de Fès\r\n'),
('Commerce', 8, 'Université Euro-\r\nméditerranéenne de Fès\r\n'),
('Bâtiment', 9, 'Université Euro-\r\nméditerranéenne de Fès\r\n'),
('Informatique et Télécommunication', 10, 'Université Euro-\r\nméditerranéenne de Fès\r\n'),
('Administration', 11, 'Université Euro-\r\nméditerranéenne de Fès\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `num` int(11) NOT NULL,
  `nomeinsti` varchar(150) NOT NULL,
  `dates_b` date NOT NULL,
  `niveauEt` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `secteur` varchar(50) NOT NULL,
  `photo_anon` varchar(40) NOT NULL,
  `Intitulpost` varchar(100) NOT NULL,
  `date_f` date DEFAULT NULL,
  `icone_eta` varchar(30) NOT NULL,
  `nbrposte` int(11) NOT NULL,
  `contrat` varchar(55) NOT NULL,
  `Fonction` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`num`, `nomeinsti`, `dates_b`, `niveauEt`, `experience`, `secteur`, `photo_anon`, `Intitulpost`, `date_f`, `icone_eta`, `nbrposte`, `contrat`, `Fonction`) VALUES
(1, 'Groupe Hit RADIO', '2022-09-12', 'BAC+3', 'Débutant', 'audiovisuel', 'anaone1.jpg', 'Stagiaire Digital(H/F)RABAT MAROC', '2022-11-12', 'icone1.jpg', 1, 'stage', 'Journalisme / Traduction, Multimédia / Internet'),
(2, 'AXA Group Operations Maroc', '2022-09-12', 'Bac +2', 'Moins de 1 an', 'Informatique', 'anance2.jpg', 'Stage-Projet IT | Rabat (Maroc)', '2022-11-12', 'icone2.jpg', 1, 'Stage', 'Informatique / Electronique');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nom` varchar(10) NOT NULL,
  `prenom` varchar(10) NOT NULL,
  `statu` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `address`, `image`, `nom`, `prenom`, `statu`) VALUES
(1, 'admin', 'admin', '', '', '', 'ALAOUI MDA', 'ADIL', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `login` date NOT NULL,
  `datenaiss` date NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  `Ville` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `statu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tville`
--

CREATE TABLE `tville` (
  `VilleUni` varchar(10) NOT NULL,
  `n` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tville`
--

INSERT INTO `tville` (`VilleUni`, `n`) VALUES
('CASABLANCA', 1),
('MOHAMMEDIA', 3),
('AHFIR', 4),
('BERKANE', 5),
('BOUARFA', 6),
('FIGUIG', 7),
('JERRADA', 8),
('NADOR', 9),
('OUJDA', 10),
('ASSA', 11),
('BOUJDOUR', 12),
('DAKHLA', 13),
('GUELMIME', 14),
('LAAYOUNE', 15),
('SMARA', 16),
('TANTAN', 17),
('TATA', 18),
('AZROU', 19),
('EL HAJEB', 20),
('ERFOUD', 21),
('ERRACHIDIA', 22),
('GOULMIMA', 23),
('IFRANE', 24),
('KHENIFRA', 25),
('MEKNES', 26),
('MIDELT', 27),
('MRIRT', 28),
('AL HOCEIMA', 29),
('FES', 30),
('GUERCIF', 31),
('KARIA', 32),
('MISSOUR', 33),
('SEFROU', 34),
('TAOUNATE', 35),
('TAZA', 36),
('CHEFCHAOUE', 37),
('FNIDEQ', 38),
('KSAR EL KE', 39),
('LARACHE', 40),
('TANGER', 41),
('TETOUAN', 42),
('KENITRA', 43),
('KHEMISSET', 44),
('MACHRAA BE', 45),
('OUAZZANE', 46),
('RABAT', 47),
('SIDI KACEM', 50),
('SIDI SLIMA', 51),
('TEMARA', 52),
('TIFLET', 53),
('AZILAL', 54),
('BEN AHMED', 55),
('BENSLIMANE', 57),
('BOUZNIKA', 61),
('DEMNATE', 62),
('FQUIH BEN ', 63),
('KHOURIBGA', 67),
('LABROUJ', 68),
('OUED ZEM', 70),
('SETTAT', 71),
('SOUK SEBT', 72),
('AZEMMOUR', 73),
('BENGRIR', 74),
('CHICHAOUA', 75),
('EL JADIDA', 76),
('ESSAOUIRA', 77),
('KALAA SRAG', 78),
('MARRAKECH', 79),
('SAFI', 80),
('SIDI BENNO', 81),
('TAHANNAOUT', 82),
('TAMENSOURT', 83),
('YOUSSOUFIA', 84),
('AGADIR', 85),
('INEZGANE', 87),
('MIR LEFT', 88),
('OUARZAZATE', 89),
('SIDI IFNI', 90),
('TAROUDANT', 91),
('TINGHIR', 92),
('TIZNIT', 93),
('ZAGORA', 94),
('Rabat', 95),
('Ben Guérir', 96),
('Casablanca', 97),
('Casablanca', 98),
('Marrakech', 99),
('Rabat', 100),
('Meknès', 101),
('Fès', 102),
('Agadir', 103),
('Settat', 104),
('Kénitra', 105),
('Mohammadia', 106),
('Oujda', 107),
('Tanger', 108),
('Tétouan', 109),
('Taza', 110),
('Beni-Mella', 111),
('BERRECHID', 112),
('Salé ', 113);

-- --------------------------------------------------------

--
-- Structure de la table `université_etablissment_prive`
--

CREATE TABLE `université_etablissment_prive` (
  `NomUni` varchar(255) NOT NULL,
  `VilleUni` varchar(255) NOT NULL,
  `AdresseUni` varchar(255) NOT NULL,
  `NomEtab` varchar(255) NOT NULL,
  `SigleEtab` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `liensite` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `université_etablissment_prive`
--

INSERT INTO `université_etablissment_prive` (`NomUni`, `VilleUni`, `AdresseUni`, `NomEtab`, `SigleEtab`, `type`, `id`, `image`, `liensite`) VALUES
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'UIR Ecole Supérieure d’Informatique et du\r\nNumérique\r\n', NULL, 'Public', 1, 'mohammedIV.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'UIR Business School', 'UIR BS', 'Public', 2, 'mono-logo.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'UIR School of Aerospace Engineering', 'UIR SAE', 'Public', 3, 'mono-logo.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'UIR Institut des Etudes Politiques et Juridiques\r\n', 'UIR IEPJ', 'Public', 4, 'mono-logo.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'Ecole Supérieure Privée d’Ingénierie de l’Energie', 'ECINE', 'Privet', 5, 'mono-logo.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'Ecole Supérieure d’Architecture de Rabat', NULL, 'Public', 7, 'mono-logo.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'Faculté Internationale de Médecine Dentaire de\r\nRabat', NULL, 'Public', 8, 'mono-logo.png', ''),
('Université Internationale\r\nde Rabat', 'Rabat', 'Parc technopolis Rabat- Rocade Rabat-Salé – 11100 - Sala Eljadida', 'Ecole Supérieure des Sciences Paramédicales de\r\nRabat', NULL, 'Public', 9, 'mono-logo.png', ''),
('Université Mohammed\r\nVI Polytechnique', 'Ben Guérir', 'Lotissement 660 Hay Moulay Rachid\r\n- 43150 Ben guérir -', 'Ecole de Management Industriel', 'EMINE', 'Public', 10, 'mohammedIV.png', ''),
('Université Mohammed\r\n', 'Ben Guérir', 'Lotissement 660 Hay Moulay Rachid\r\n- 43150 Ben guérir -', 'Faculté de Gouvernance, des Sciences Economiques\r\net Sociales', 'FGSES\r\n', 'Public', 11, 'mohammedIV.png', ''),
('Université Mohammed\r\nVI Polytechnique', 'Ben Guérir', 'Lotissement 660 Hay Moulay Rachid\r\n- 43150 Ben guérir -', 'Ecole des Sciences de l’Agriculture, de la Fertilisation\r\net de l’Environnement', 'ESAFE', 'Public', 12, 'mohammedIV.png', ''),
('Université Mohammed\r\nVI Polytechnique', 'Ben Guérir', 'Lotissement 660 Hay Moulay Rachid\r\n- 43150 Ben guérir -', 'Africa Business School of OCP', NULL, 'Public', 13, 'mohammedIV.png', ''),
('Université\r\nInternationale de\r\nCasablanca', 'Casablanca', 'Route provinciale 3020 ville verte Bouskoura –\r\nprovince Nouacer (B.P 50169- casa Ghandi)', 'Faculté privée de commerce et de gestion', NULL, 'Privé', 14, 'casa.png', ''),
('Université\r\nInternationale de\r\nCasablanca', 'Casablanca', 'Route provinciale 3020 ville verte Bouskoura –\r\nprovince Nouacer (B.P 50169- casa Ghandi)', 'Faculté Privée des sciences de santé', NULL, 'Privé', 15, 'casa.png', ''),
('', 'RABAT', 'Parc technopolis Rabat- Rocade Rabat Salé – 11100 - Sala El Jadida', 'université internationale de Rabat', 'UIR', 'privé', 16, '16.png', 'https://www.uir.ac.ma/'),
('', 'Fes', 'Route Méknes BP51- 30000- Fès', 'Université Euro-\r\nméditerranéenne de Fès\r\n', 'UEMF', 'privé', 17, '17.png', 'https://ueuromed.org');

-- --------------------------------------------------------

--
-- Structure de la table `université_etablissment_proff`
--

CREATE TABLE `université_etablissment_proff` (
  `id` int(11) NOT NULL,
  `NomUni` varchar(255) NOT NULL,
  `NomEtab` varchar(255) NOT NULL,
  `AdresseUni` varchar(255) NOT NULL,
  `VilleUni` varchar(255) NOT NULL,
  `image` varchar(20) NOT NULL,
  `liensite` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `université_etablissment_proff`
--

INSERT INTO `université_etablissment_proff` (`id`, `NomUni`, `NomEtab`, `AdresseUni`, `VilleUni`, `image`, `liensite`) VALUES
(1, 'Grand Casablanca\r\n', 'ACADEMIE DES ARTS TRADITIONNELS DE LA MOSQUEE HASSAN II\r\n', '', 'CASABLANCA\r\n', 'etab.jpeg', 'https://www.ofppt.ma/'),
(2, 'Grand Casablanca', 'CENTRE D\'ACCUEIL CASABLANCA', 'rue fredier Ain Borja BP24575 casablanca', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(3, 'Grand Casablanca', 'CENTRE DE FORMATION DES ADULTES SIDI MOUMEN CASA', 'Bd. Haissoun Sidi Moumen Jdid 20400', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(4, 'Grand Casablanca', 'CENTRE DE FORMATION INDH SIDI MOUMEN', 'SIDI MOUMEN', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(5, 'Grand Casablanca', 'CENTRE DE QUALIFICATION PROFESSIONNELLE AIN CHOCK CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(6, 'Grand Casablanca', 'CENTRE DE QUALIFICATION PROFESSIONNELLE AL MASSIRA CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(7, 'Grand Casablanca', 'CENTRE DE QUALIFICATION PROFESSIONNELLE ESSAFA CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(8, 'Grand Casablanca', 'CENTRE DE QUALIFICATION PROFESSIONNELLE MAARIF CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(9, 'Grand Casablanca', 'INSTITUT DE FORMATION DE TEXTILE BEN M\'SIK CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(10, 'Grand Casablanca', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AIN BORDJA CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(11, 'Grand Casablanca', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AIN CHOK-INARA CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(12, 'Grand Casablanca', 'INSTITUT DE TECHNOLOGIE APPLIQUEE HAY MOHAMMADI CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(13, 'Grand Casablanca', 'INSTITUT DES METIERS DES VETEMENTS DERB GHALLEF CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(14, 'Grand Casablanca', 'INSTITUT DES TECHNIQUES D\'HABILLEMENT CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(15, 'Grand Casablanca', 'INSTITUT SPECIALISE DE FORMATION DE L\'OFFSHORING CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(16, 'Grand Casablanca', 'INSTITUT SPECIALISE DE GESTION ET D\'INFORMATIQUE CASABLANCA', '21 rue d\'Avesnèse BD Med V casablanca', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(17, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BEN M\'SIK CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(18, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DE GESTION', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(19, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE EL HANK CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(20, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE GENIE MECANIQUE', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(21, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAMZA - LISSASFA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(22, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAY HASSANI 1', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(23, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAY HASSANI 2', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(24, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE INTER-ENTREPRISES', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(25, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC ROUTE AEROPORT', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(26, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE POLO CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(27, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SIDI BERNOUSSI', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(28, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SIDI MOUMEN', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(29, 'Grand Casablanca', 'INSTITUT SPECIALISE DES METIERS DU CUIR CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(30, 'Grand Casablanca', 'INSTITUT SPECIALISE DU BATIMENT CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(31, '', 'INSTITUT SPECIALISE EN FABRICATION DES MATIERES PLASTIQUES', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(32, '', 'INSTITUT SPECIALISE EN FABRICATION DES PRODUITS AGROALIMENTAIRES', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(33, '', 'INSTITUT SPECIALISE EN TANNERIE ET TRAITEMENT DU CUIR SIDI BERNOUSSI CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(34, 'Grand Casablanca', 'INSTITUT SPECIALISE GENIE THERMIQUE & FROID CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(35, 'Grand Casablanca', 'INSTITUT SPECIALISE INDUSTRIEL CASABLANCA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(36, 'Grand Casablanca', 'INSTITUT SPÉCIALISÉ DU BÂTIMENT ET DES TRAVAUX PUBLICS HAY', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(37, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MEDIOUNA', '', 'CASABLANCA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(38, 'Grand Casablanca', 'CENTRE DE QUALIFICATION PROFESSIONNELLE PORT-MOHAMMEDIA', '', 'MOHAMMEDIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(39, 'Grand Casablanca', 'INSTITUT DE TECHNOLOGIE APPLIQUEE YASSMINA MOHAMMADIA', '', 'MOHAMMEDIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(40, 'Grand Casablanca', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MOHAMMADIA', '', 'MOHAMMEDIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(41, 'Grand Casablanca', 'INSTITUT SPECIALISE INDUSTRIEL MOHAMMEDIA', '', 'MOHAMMEDIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(42, 'Oriental', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AHFIR', '', 'AHFIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(43, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE BERKANE', '', 'BERKANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(44, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BERKANE', '', 'BERKANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(45, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BOUARFA', '', 'BOUARFA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(46, 'Oriental', 'INSTITUT DE TECHNOLOGIE APPLIQUEE FIGUIG', '', 'FIGUIG', 'etab.jpeg', 'https://www.ofppt.ma/'),
(47, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE JERRADA', 'HAY ELHANAA F1', 'JERRADA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(48, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE KISSARIAT NADOR', '', 'NADOR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(49, 'Oriental', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AL AAROUI NADOR', '', 'NADOR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(50, 'Oriental', 'INSTITUT DE TECHNOLOGIE APPLIQUEE LAARASSI NADOR', '', 'NADOR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(51, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NADOR', '', 'NADOR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(52, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE ANNASR OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(53, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE ENNAHDA OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(54, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE ENNAJD OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(55, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE SAMARA OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(56, 'Oriental', 'CENTRE DE QUALIFICATION PROFESSIONNELLE SAMMARA OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(57, 'Oriental', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(58, '', 'INSTITUT SPECIALISE DE L\'HOTELLERIE ET DE LA RESTAURATION OMAR BEN OMAR OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(59, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE EL AOUNIA OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(60, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KOULOUCHE OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(61, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE LAZARET OUJDA', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(62, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SIDI MAAFA OUJDA', 'BD.MOHAMED VI BP36460001', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(63, 'Oriental', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TAOURIRT', '', 'OUJDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(64, 'Provinces du Sud', 'INSTITUT DE TECHNOLOGIE APPLIQUEE ASSA', '', 'ASSA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(65, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BOUJDOUR', '', 'BOUJDOUR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(66, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DAKHLA', '', 'DAKHLA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(67, 'Provinces du Sud', 'INSTITUT SPECIALISE DE L’HOTELLERIE ET DE TOURISME GUELMIM', 'AV HASSAN II GUELMIM', 'GUELMIME', 'etab.jpeg', 'https://www.ofppt.ma/'),
(68, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE GUELMIM', '', 'GUELMIME', 'etab.jpeg', 'https://www.ofppt.ma/'),
(69, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC GUELMIM', '', 'GUELMIME', 'etab.jpeg', 'https://www.ofppt.ma/'),
(70, 'Provinces du Sud', 'INSTITUT SPECIALISE DE GESTION ET D\'INFORMATIQUE LAAYOUNE', '', 'LAAYOUNE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(71, 'Provinces du Sud', 'INSTITUT SPECIALISE DE L\'HOTELLERIE ET DE LA RESTAURATION LAAYOUNE', '', 'LAAYOUNE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(72, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE LAAYOUNE', '', 'LAAYOUNE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(73, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SMARA', '', 'SMARA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(74, 'Provinces du Sud', 'INSTITUT SPECIALISE DE L\'HOTELLERIE ET DE LA RESTAURATION TANTAN', '', 'TANTAN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(75, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AL OUBOUR TANTAN', '', 'TANTAN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(76, 'Provinces du Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TATA', 'Derrière cercle de la province', 'TATA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(77, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AZROU', '', 'AZROU', 'etab.jpeg', 'https://www.ofppt.ma/'),
(78, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE EL HAJEB', '', 'EL HAJEB', 'etab.jpeg', 'https://www.ofppt.ma/'),
(79, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ERFOUD', '', 'ERFOUD', 'etab.jpeg', 'https://www.ofppt.ma/'),
(80, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MOHAMED EL FASSI', '', 'ERRACHIDIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(81, '', 'INSTITUT SPECIALISE DU BATIMENT ET DES TRAVAUX PUBLIQUES', '', 'ERRACHIDIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(82, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE GOULMIMA', '', 'GOULMIMA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(83, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE IFRANE', '', 'IFRANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(84, 'Centre Sud', 'INSTITUT DE TECHNOLOGIE APPLIQUEE KHENIFRA', '', 'KHENIFRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(85, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KHENIFRA', '', 'KHENIFRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(86, 'Centre Sud', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE SIDI BABA MEKNES', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(87, 'Centre Sud', 'INSTITUT DE TECHNOLOGIE APPLIQUEE ROUTE AGOURAY MEKNES', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(88, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AVENUE DES F.A.R', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(89, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DE GESTION BAB TIZIMI', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(90, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ROUTE AGOURAY', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(91, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(92, 'Centre Sud', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MIDELT', 'BP N° 92', 'MIDELT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(93, 'Centre Sud', 'INSTITUT DE TECHNOLOGIE APPLIQUEE MOULAY DRISS ZERHOUNE', '', 'MEKNES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(94, 'Centre Sud', 'INSTITUT DE TECHNOLOGIE APPLIQUEE MRIRT', '', 'MRIRT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(95, 'centre nord', 'CENTRE DE QUALIFICATION PROFESSIONNELLE AL HOCEIMA', '', 'AL HOCEIMA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(96, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AL HOCEIMA', '', 'AL HOCEIMA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(97, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME AL HOCEIMA', '', 'AL HOCEIMA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(98, 'centre nord', 'CENTRE DE FORMATION ET D\'ENCADREMENT DES ENFANTS FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(99, 'centre nord', 'CENTRE DE FORMATION ET D\'ENCADREMENT RAS EL MA FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(100, '', 'CENTRE DE FORMATION ET DE QUALIFICATION DANS LES METIERS DE L\'ARTISANAT', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(101, 'centre nord', 'CENTRE DE FORMATION PROFESSIONNELLE BENDABBAB FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(102, 'centre nord', 'CENTRE DE PERFECTIONNEMENT DES ARTISANS FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(103, 'centre nord', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE AL ADARISSA FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(104, '', 'INSTITUT DE FORMATION AUX METIERS DE L\'OFFSHORING DES TIC ET DE L\'AUDIOVISUEL FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(105, 'centre nord', 'INSTITUT DE TECHNOLOGIE APPLIQUEE ROUTE IMOUZER FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(106, '', 'INSTITUT SPECIALISE DE FORMATION AUX METIERS DE L\'ACTION SOCIALE', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(107, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BAB FTOUH FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(108, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DE CONFECTION FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(109, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DE GESTION FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(110, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAY AL ADARISSA FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(111, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NARGISS FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(112, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ROUTE IMOUZER FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(113, 'centre nord', 'INSTITUT SPECIALISE DES METIERS TRADITIONNELS DU BATIMENT FES', '', 'FES', 'etab.jpeg', 'https://www.ofppt.ma/'),
(114, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE GUERCIF', '', 'GUERCIF', 'etab.jpeg', 'https://www.ofppt.ma/'),
(115, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE EL KARIA', '', 'KARIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(116, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MISSOUR', '', 'MISSOUR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(117, 'centre nord', 'CENTRE DE QUALIFICATION PROFESSIONNELLE SEFROU', 'Hay Benseffar', 'SEFROU', 'etab.jpeg', 'https://www.ofppt.ma/'),
(118, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SEFROU', '', 'SEFROU', 'etab.jpeg', 'https://www.ofppt.ma/'),
(119, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TAOUNATE', '', 'TAOUNATE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(120, 'centre nord', 'CENTRE DE FORMATION DES ARTS CULINAIRES TAZA', '', 'TAZA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(121, 'centre nord', 'INSTITUT DE TECHNOLOGIE APPLIQUEE DE CONFECTION TAZA', '23, quartier industriel taza 35020', 'TAZA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(122, 'centre nord', 'INSTITUT DE TECHNOLOGIE APPLIQUEE TAZA', '', 'TAZA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(123, 'centre nord', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TAZA', '', 'TAZA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(124, 'Nord Ouest II', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE CHAFCHAOUEN', '', 'CHEFCHAOUEN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(125, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE CHAFCHAOUEN', '', 'CHEFCHAOUEN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(126, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE FNIDEQ', '', 'FNIDEQ', 'etab.jpeg', 'https://www.ofppt.ma/'),
(127, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KSAR EL KEBIR', '', 'KSAR EL KEBIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(128, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE LARACHE', '', 'LARACHE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(129, 'Nord Ouest II', 'CENTRE D\'NSERTION ESSABIL TANGER', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(130, 'Nord Ouest II', 'CENTRE DE QUALIFICATION PROFESSIONNELLE BENI MAKADA TANGER', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(131, 'Nord Ouest II', 'CENTRE DE QUALIFICATION PROFESSIONNELLE CONFECTION TANGER', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(132, 'Nord Ouest II', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE TANGER', 'HOPITAL MOHAMED VI TANGER', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(133, 'Nord Ouest II', 'INSTITUT SPECIALISE DANS LES METIERS DE TRANSPORT ROUTIER TANGER', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(134, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DE TEXTILE -CONFECTION TANGER', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(135, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE IBN MARHAL TANGER', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(136, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC TANGER', 'TANGER', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(137, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ROUTE AEROPORT', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(138, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ZONE LIBRE ECHANGE', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(139, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ROUTE AEROPORT', '', 'TANGER', 'etab.jpeg', 'https://www.ofppt.ma/'),
(140, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ROUTE SEBTA TETOUAN', '', 'TETOUAN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(141, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TETOUAN', 'Cité scolaire Avenu Mohamed V Tétouan', 'TETOUAN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(142, 'Nord Ouest II', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME', '', 'TETOUAN', 'etab.jpeg', 'https://www.ofppt.ma/'),
(143, 'Nord Ouest I', 'CENTRE DE QUALIFICATION PROFESSIONNELLE SAKNIA KENITRA', '', 'KENITRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(144, 'Nord Ouest I', 'INSTITUT DE TECHNOLOGIE APPLIQUEE SEBOU KENITRA', '', 'KENITRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(145, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BATIMENT ET TRAVAUX', '', 'KENITRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(146, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE INDUSTRIEL MAAMORA', '', 'KENITRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(147, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MAAMORA KENITRA', '', 'KENITRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(148, 'Nord Ouest I', 'INSTITUT DE TECHNOLOGIE APPLIQUEE KHEMISSET', '', 'KHEMISSET', 'etab.jpeg', 'https://www.ofppt.ma/'),
(149, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KHEMISSET', '', 'KHEMISSET', 'etab.jpeg', 'https://www.ofppt.ma/'),
(150, 'Nord Ouest I', 'CENTRE DE QUALIFICATION PROFESSIONNELLE MECHRAA BELKSIRI', '', 'MACHRAA BELEKSIRI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(151, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE OUAZZANE', '', 'OUAZZANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(152, 'Nord Ouest I', 'CENTRE DE QUALIFICATION PROFESSIONNELLE HOTELLERIE RESTAURATION', '', 'OUAZZANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(153, 'Nord Ouest I', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(154, 'Nord Ouest I', 'INSTITUT DE TECHNOLOGIE APPLIQUEE DE GESTION YACOUB EL MANSOUR', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(155, 'Nord Ouest I', 'INSTITUT DE TECHNOLOGIE APPLIQUEE YACOUB EL MANSOUR RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(156, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE CONFECTION RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(157, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DE GESTION YACOUB EL MANSOUR RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(158, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAY NAHDA RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(159, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAY RIAD RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(160, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC RABAT', '', 'RABAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(161, 'Nord Ouest I', 'COMPLEXE DE FORMATION AUX TECHNIQUES AGRICOLES BOUKNADEL', '', 'SALE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(162, 'Nord Ouest I', 'INSTITUT DE TECHNOLOGIE APPLIQUEE CONFECTION SALE', '', 'SALE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(163, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE CHMAOU SALE', '', 'SALE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(164, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE HAY SALAM SALE', '', 'SALE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(165, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE LAMKINSIA SALE', '', 'SALE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(166, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MULTISECTORIEL SALE', '', 'SALE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(167, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SALA ALJADIDA', '', 'SALE AL JADIDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(168, 'Nord Ouest I', 'INSTITUT DE TECHNOLOGIE APPLIQUEE SIDI KACEM', '', 'SIDI KACEM', 'etab.jpeg', 'https://www.ofppt.ma/'),
(169, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SIDI KACEM', '', 'SIDI KACEM', 'etab.jpeg', 'https://www.ofppt.ma/'),
(170, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SIDI SLIMANE', 'AV DE LA RESISTANCE SIDI SLIMANE', 'SIDI SLIMANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(171, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AIN AOUDA', '', 'TEMARA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(172, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AIN ATIQ', '', 'TEMARA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(173, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MULTISECTORIEL', '', 'TEMARA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(174, 'Nord Ouest I', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TEMARA', '', 'TEMARA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(175, 'Nord Ouest I', 'CENTRE DE QUALIFICATION PROFESSIONNELLE TIFLET', '', 'TIFLET', 'etab.jpeg', 'https://www.ofppt.ma/'),
(176, 'Nord Ouest I', 'CENTRE MULTIDISCIPLINAIRES TIFLET', '', 'TIFLET', 'etab.jpeg', 'https://www.ofppt.ma/'),
(177, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AZILAL', '', 'AZILAL', 'etab.jpeg', 'https://www.ofppt.ma/'),
(178, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE OULAD MRAH', '', 'BEN AHMED', 'etab.jpeg', 'https://www.ofppt.ma/'),
(179, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BEN AHMED', 'ZONE INDUSTRIELLE BP 228', 'BEN AHMED', 'etab.jpeg', 'https://www.ofppt.ma/'),
(180, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE BENI MELLAL', '', 'BENI MELLAL', 'etab.jpeg', 'https://www.ofppt.ma/'),
(181, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE GESTION ET D\'INFORMATIQUE BENI MELLAL', '', 'BENI MELLAL', 'etab.jpeg', 'https://www.ofppt.ma/'),
(182, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BENI MELLAL', 'BP 142 BD 20 AOUT BENI MELLAL CP 23020', 'BENI MELLAL', 'etab.jpeg', 'https://www.ofppt.ma/'),
(183, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC BENI MELLAL', 'Mghila, Route Tadla, Beni Mellal', 'BENI MELLAL', 'etab.jpeg', 'https://www.ofppt.ma/'),
(184, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME', '', 'BENI MELLAL', 'etab.jpeg', 'https://www.ofppt.ma/'),
(185, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BEN SLIMANE', '', 'BENSLIMANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(186, 'Chaouia Tadla', 'CENTRE DES METIERS DE CONFECTION BERRECHID', '', 'BERRECHID', 'etab.jpeg', 'https://www.ofppt.ma/'),
(187, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BERRCHID', '', 'BERRECHID', 'etab.jpeg', 'https://www.ofppt.ma/'),
(188, '', 'INSTITUT SPECIALISE EN TECHNIQUES INFORMATIQUE, COMMERCE ET GESTION BERRCHID', '', 'BERRECHID', 'etab.jpeg', 'https://www.ofppt.ma/'),
(189, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BOUJAAD', '', 'BOUJAAD', 'etab.jpeg', 'https://www.ofppt.ma/'),
(190, 'Chaouia Tadla', 'INSTITUT DE TECHNOLOGIE APPLIQUEE BOUJNIBA', '', 'BOUJNIBA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(191, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BOUZNIKA', '', 'BOUZNIKA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(192, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE DEMNATE', 'Demnate', 'DEMNATE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(193, 'Chaouia Tadla', 'INSTITUT DE TECHNOLOGIE APPLIQUEE FQUIH BEN SALAH', '', 'FQUIH BEN SALAH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(194, 'Chaouia Tadla', 'INSTITUT DE TECHNOLOGIE APPLIQUEE HAD SOUALEM', '', 'HAD SOUALEM', 'etab.jpeg', 'https://www.ofppt.ma/'),
(195, 'Chaouia Tadla', 'INSTITUT DE TECHNOLOGIE APPLIQUEE HATTANE', '', 'HATTANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(196, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KSBAT TADLA', '', 'KASBA TADLA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(197, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE BD DRISS 1ER KHOURIBGA', '', 'KHOURIBGA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(198, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE GESTION ET D\'INFORMATIQUE KHOURIBGA', '', 'KHOURIBGA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(199, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KHOURIBGA', '', 'KHOURIBGA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(200, 'Chaouia Tadla', 'INSTITUT DE TECHNOLOGIE APPLIQUEE EL BROUJ', '', 'LABROUJ', 'etab.jpeg', 'https://www.ofppt.ma/'),
(201, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE OUAOUIZERTH', '', 'OUAOUIZERTH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(202, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE 1 OUED ZEM', '', 'OUED ZEM', 'etab.jpeg', 'https://www.ofppt.ma/'),
(203, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE 2 OUED ZEM', '', 'OUED ZEM', 'etab.jpeg', 'https://www.ofppt.ma/'),
(204, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE OUED ZEM', '', 'OUED ZEM', 'etab.jpeg', 'https://www.ofppt.ma/'),
(205, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE RHAL ELMESKINI SETTAT', '', 'SETTAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(206, 'Chaouia Tadla', 'CENTRE DE QUALIFICATION PROFESSIONNELLE SIDI ABDELKRIM SETTAT', '', 'SETTAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(207, 'Chaouia Tadla', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE SETTAT', '', 'SETTAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(208, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE 1 SETTAT', '', 'SETTAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(209, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE 2 SETTAT', '', 'SETTAT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(210, 'Chaouia Tadla', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SOUK SEBT', '', 'SOUK SEBT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(211, 'Tensift Atlantique', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AZEMMOUR', '', 'AZEMMOUR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(212, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME EL HAOUZIA', '', 'AZEMMOUR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(213, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BENGRIR', '', 'BENGRIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(214, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE CHICHAOUA', '', 'CHICHAOUA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(215, 'Tensift Atlantique', 'CENTRE DE QUALIFICATION PROFESSIONNELLE EL JADIDA', '', 'EL JADIDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(216, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AL MASSIRA EL JADIDA', '', 'EL JADIDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(217, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE CITE DE L\'AIR EL JADIDA', '', 'EL JADIDA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(218, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE ESSAOUIRA', '', 'ESSAOUIRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(219, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME', '', 'ESSAOUIRA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(220, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE KALAA -SRAGHNA', '', 'KALAA SRAGHNA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(221, '', 'CENTRE DE DÉVELOPPEMENT DES COMPÉTENCES HOTELLERIE TOURISME', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(222, '', 'CENTRE DE QUALIFICATION PROFESSIONNELLE AL MASSIRA DAOUDIATE', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(223, 'Tensift Atlantique', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AZLI MARRAKECH', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(224, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE GESTION ET D\'INFORMATIQUE MARRAKECH', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(225, '', 'INSTITUT SPECIALISE DE L\'HOTELLERIE ET DE LA RESTAURATION', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(226, '', 'INSTITUT SPECIALISE DE L\'HÔTELLERIE ET DE LA RESTAURATION 2', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(227, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE BAB DOUKKALA', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(228, 'Tensift Atlantique', 'CONFECTION DAOUDIATE MARRAKECH', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(229, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE JBEL LAKHDAR', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(230, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MAINTENANCE HOTELIERE MARRAKECH', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(231, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC SIDI YOUSSEF BEN ALI MARRAKECH', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(232, 'Tensift Atlantique', 'INSTITUT SPECIALISE INDUSTRIEL MARRAKECH', '', 'MARRAKECH', 'etab.jpeg', 'https://www.ofppt.ma/'),
(233, 'Tensift Atlantique', 'CENTRE DE QUALIFICATION PROFESSIONNELLE SIDI OUASSEL SAFI', '', 'SAFI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(234, 'Tensift Atlantique', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE SAFI', '', 'SAFI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(235, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE 1 SAFI', '', 'SAFI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(236, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE 2 SAFI', '', 'SAFI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(237, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE NTIC SAFI', '', 'SAFI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(238, 'Tensift Atlantique', 'INSTITUT DE TECHNOLOGIE APPLIQUEE ROUTE SIDI BENNOUR', '', 'SIDI BENNOUR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(239, 'Tensift Atlantique', 'CENTRE DE QUALIFICATION PROFESSIONNELLE TAHANNAOUT', '', 'TAHANNAOUT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(240, 'Tensift Atlantique', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TAMENSOURT', '', 'TAMENSOURT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(241, 'Tensift Atlantique', 'INSTITUT DE TECHNOLOGIE APPLIQUEE YOUSSOUFIA', '', 'YOUSSOUFIA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(242, 'Souss Massa Drâa', 'CENTRE MIXTE DE FORMATION PROFESSIONNELLE AGADIR', '', 'AGADIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(243, 'Souss Massa Drâa', 'INSTITUT DE TECHNOLOGIE APPLIQUEE AGADIR', '', 'AGADIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(244, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DANS LES METIERS DE TRANSPORT ROUTIER AGADIR', '', 'AGADIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(245, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE L\'HOTELLERIE ET DE LA RESTAURATION AGADIR', '', 'AGADIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(246, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE AGADIR', '', 'AGADIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(247, '', 'INSTITUT SPECIALISE DE TECHNOLOGIE EN HOTELLERIE ET DE TOURISME FOUNTY AGADIR', '', 'AGADIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(248, 'Souss Massa Drâa', 'CENTRE DE FORMATION PROFESSIONNELLE AIT BAHA', '', 'CHTOUKA AIT BAHA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(249, 'Souss Massa Drâa', 'INSTITUT DE TECHNOLOGIE APPLIQUEE BIOUGRA', '', 'CHTOUKA AIT BAHA', 'etab.jpeg', 'https://www.ofppt.ma/'),
(250, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TASSILA', '', 'INEZGANE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(251, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE MIRLEFT', '', 'MIR LEFT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(252, 'Souss Massa Drâa', 'CENTRE DE FORMATION DES METIERS DU CINEMA OUARZAZATE', 'BP', 'OUARZAZATE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(253, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE OUARZAZATE', '', 'OUARZAZATE', 'etab.jpeg', 'https://www.ofppt.ma/'),
(254, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE SIDI IFNI', '', 'SIDI IFNI', 'etab.jpeg', 'https://www.ofppt.ma/'),
(255, 'Souss Massa Drâa', 'CENTRE DE QUALIFICATION PROFESSIONNELLE TAROUDANT', '', 'TAROUDANT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(256, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TAROUDANT', '', 'TAROUDANT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(257, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TINGHIR', '', 'TINGHIR', 'etab.jpeg', 'https://www.ofppt.ma/'),
(258, 'Souss Massa Drâa', 'INSTITUT SPECIALISE DE TECHNOLOGIE APPLIQUEE TIZNIT', '', 'TIZNIT', 'etab.jpeg', 'https://www.ofppt.ma/'),
(259, 'Souss Massa Drâa', 'Structure de Formation Zagora', '', 'ZAGORA', 'etab.jpeg', 'https://www.ofppt.ma/');

-- --------------------------------------------------------

--
-- Structure de la table `université_etablissment_proff_prive`
--

CREATE TABLE `université_etablissment_proff_prive` (
  `id` int(11) NOT NULL,
  `NomUni` varchar(255) NOT NULL,
  `NomEtab` varchar(255) NOT NULL,
  `AdresseUni` varchar(255) NOT NULL,
  `VilleUni` varchar(255) NOT NULL,
  `image` varchar(20) NOT NULL,
  `liensite` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `université_etablissment_public`
--

CREATE TABLE `université_etablissment_public` (
  `NomUni` varchar(255) NOT NULL,
  `VilleUni` varchar(255) NOT NULL,
  `AdresseUni` varchar(255) NOT NULL,
  `NomEtab` varchar(255) NOT NULL,
  `SigleEtab` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `liensite` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `concours`
--
ALTER TABLE `concours`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `docteurs`
--
ALTER TABLE `docteurs`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `ecole_prive`
--
ALTER TABLE `ecole_prive`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecole_public`
--
ALTER TABLE `ecole_public`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `métier`
--
ALTER TABLE `métier`
  ADD PRIMARY KEY (`idActivité`);

--
-- Index pour la table `press`
--
ALTER TABLE `press`
  ADD PRIMARY KEY (`NumPress`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `tville`
--
ALTER TABLE `tville`
  ADD PRIMARY KEY (`n`);

--
-- Index pour la table `université_etablissment_prive`
--
ALTER TABLE `université_etablissment_prive`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `université_etablissment_proff`
--
ALTER TABLE `université_etablissment_proff`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `université_etablissment_proff_prive`
--
ALTER TABLE `université_etablissment_proff_prive`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `université_etablissment_public`
--
ALTER TABLE `université_etablissment_public`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `concours`
--
ALTER TABLE `concours`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
