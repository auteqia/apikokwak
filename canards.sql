-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 jan. 2022 à 15:13
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `canards`
--

-- --------------------------------------------------------

--
-- Structure de la table `canards`
--

CREATE TABLE `canards` (
  `id` int(11) NOT NULL,
  `libelle` varchar(200) NOT NULL,
  `libelle2` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `alimentation` varchar(100) NOT NULL,
  `habitat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `canards`
--

INSERT INTO `canards` (`id`, `libelle`, `libelle2`, `image`, `categorie_id`, `alimentation`, `habitat`) VALUES
(1, 'Mandarin', 'Aix galericulata', 'http://localhost/APIkokwak/API/img/Mandarin_duck.jpg', 4, 'Insectes, d\'escargots, de poissons, plantes aquatiques et mollusques', 'Originaire d\'Asie du Nord-Est'),
(2, 'Colvert', 'Anas platyrhynchos', 'http://localhost/APIkokwak/API/img/Colvert_duck.jpg', 1, 'Poissons et d\'herbes, de graines et de vers, de grenouilles et d\'insectes', 'Prés humides, mares, étangs, marécages où poussent les roseaux, joncs et laîches'),
(3, 'Musqué', 'Cairina moschata', 'http://localhost/APIkokwak/API/img/Muscovy_Duck.jpg', 5, 'Racines, tiges, feuilles, mollusques, crustacés et insectes', 'Amérique du Sud jusqu\'au Mexique, Guyane'),
(4, 'Branchu', 'Aix sponsa', 'http://localhost/APIkokwak/API/img/Branchu_duck.jpg', 4, 'Graines et fruits ainsi que d\'insectes', 'Zones boisées le long des rivières, les lacs et marais'),
(5, 'Amazonette ou Sarcelle du Brésil', 'Amazonetta brasiliensis', 'http://localhost/APIkokwak/API/img/Amazonette_duck.jpg', 1, 'Fruits, graines, racines de plantes locales et d\'invertébrés, en particulier des insectes', 'A l\'intérieur des terres, sur des réservoirs ou des petits lacs d\'eau douce'),
(6, 'Fuligule à collier', 'Aythya collaris', 'http://localhost/APIkokwak/API/img/Fuligule_duck.jpg', 2, 'Plantes aquatiques et des mollusques, des insectes aquatiques et de petits poissons', 'Amérique du Nord et est occasionnel en Europe'),
(7, 'Canard des Bahamas', 'Anas bahamensis', 'http://localhost/APIkokwak/API/img/Bahamas_duck.jpg', 1, 'Algues, petits insectes', 'Le continent américain, zones humides terrestres : tourbières, lacs eau douce, rivages marins rocheu'),
(9, 'Canard souchet', 'Spatula clypeata, anciennement  Anas clypeata', 'http://localhost/APIkokwak/API/img/Souchet_duck.jpg', 1, 'Plancton, d\'insectes aquatiques sous forme imago ou larvaire, de crustacés, de mollusques et d\'éléme', 'Marais, des lacs, des étangs, des estuaires, des stations de lagunage (préférence pour les eaux douc'),
(12, 'Pilet', 'Anas acuta', 'http://localhost/APIkokwak/API/img/Pilet_duck.jpg', 1, 'Plantes, principalement en soirée ou de nuit', 'Zones humides ouvertes comme les prairies humides ou la toundra. Il patauge volontiers dans les prai'),
(13, 'Nette rousse', 'Netta rufina', 'http://localhost/APIkokwak/API/img/NetteRousse_duck.jpg', 2, 'Elle se nourrit en surface ou en plongeant. Elle mange principalement des végétaux aquatiques et dan', 'Les lacs ou les plans d\'eau entourés de roselières et les étangs pourvus d\'une bonne végétation'),
(15, 'Macreuse à front blanc', 'Melanitta perspicillata', 'http://localhost/APIkokwak/API/img/Macreuse_duck.jpg', 2, 'Divers invertébrés, principalement des crustacés et des mollusques', 'Canada et en Alaska ; il hiverne le long des côtes jusqu\'aux îles Aléoutiennes et le sud des États-U'),
(18, 'Harle couronné', 'Lophodytes cucullatus', 'http://localhost/APIkokwak/API/img/HarleCouronne_duck.jpg', 3, ' petits poissons, des crustacés et des insectes aquatiques ainsi que des graines de plantes aquatiqu', 'Zones humides du nord-ouest des États-Unis, au sud du Canada et à l\'est du Mississippi dans les eaux'),
(19, 'Arlequin plongeur', 'Histrionicus histrionicus', 'http://localhost/APIkokwak/API/img/Arlequin_duck.jpg', 2, 'Insectes et des larves et des pupes de mouches, en été il se nourrit de crustacés et de mollusques', 'Cet oiseau se reproduit sur les îles au milieu de torrents, souvent près des rapides et des cascades'),
(21, 'Harle bièvre', 'Mergus merganser', 'http://localhost/APIkokwak/API/img/HarleBievre_duck.jpg', 3, 'Essentiellement de poissons mesurant généralement moins de 10 cm de long', 'Il se rencontre près des fleuves, au bord des lacs, des rivières, sur les rives des grands étangs, l'),
(24, ' Fuligule austral', 'Aythya australis', 'http://localhost/APIkokwak/API/img/FuliguleAustral_duck.jpg', 2, 'Petits animaux aquatiques', 'Sud-est de l\'Australie, il reste assez sédentaire mais il peut aller en Nouvelle-Guinée, Nouvelle-Zé'),
(26, 'Eider de Steller', 'Polysticta stelleri', 'http://localhost/APIkokwak/API/img/Eider_duck.jpg', 2, 'Omnivore, insectes, mollusques, graines', 'Côtes de la toundra en région arctique. Le reste de l\'année, on peut le trouver sur les plans d\'eau '),
(27, 'Harle piette', 'Mergellus albellus', 'http://localhost/APIkokwak/API/img/HarlePiette_duck.jpg', 3, 'C\'est un carnivore qui se nourrit essentiellement de poissons, d\'insectes aquatiques et de leurs lar', 'Majoritairement Scandinavie et dans le nord de la Russie, dans les forêts humides et nordiques'),
(28, 'Canard huppé', 'Lophonetta specularioides', 'http://localhost/APIkokwak/API/img/Huppe_duck.jpg', 1, 'Omnivore', 'Tourbières, lacs eau douce, marais salins, rivages marins rocheux, falaises');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `canards`
--
ALTER TABLE `canards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CANARDS_CATEGORIE` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `canards`
--
ALTER TABLE `canards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `canards`
--
ALTER TABLE `canards`
  ADD CONSTRAINT `FK_CANARDS_CATEGORIE` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
