
-- Base de données : `aec19_db1`
drop database if exists aec19_db1;
create database aec19_db1;
use aec19_db1;


-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_detail` text,
  `product_price` decimal(15,2) DEFAULT NULL,
  `product_qt` int DEFAULT '0',
  PRIMARY KEY (`product_id`)
);
--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_detail`, `product_price`, `product_qt`) VALUES
(1, 'produit1', 'detail1', '2000.00', 0),
(2, 'produit2', 'detail2', '5000.00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_username` varchar(25) DEFAULT NULL,
  `user_password` varchar(25) DEFAULT NULL,
  `user_priv` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);
--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_priv`) VALUES
(1, 'admin1', 'admin1', 1),
(2, 'client1', 'client1', 2);
