-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 24, 2020 at 12:36 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recettes`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `recette` text NOT NULL,
  `ingredients` text NOT NULL,
  `étapes` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `recette`, `ingredients`, `étapes`, `image`) VALUES
(1, 'Julie', 'Crumble aux pommes', '- 6 pommes\r\n- 150gr de farine\r\n- 75gr de beurre + une noisette pour le plat\r\n- 130gr de sucre\r\n- 1 cuillère à café de cannelle', '1. Préchauffer votre four à thermostat 6(180°)\r\n\r\n2. Eplucher et couper les pommes. Les disposer dans un moule\r\n\r\n3. Travailler le beurre avec le sucre et la farine du bout des doigts pour obtenir un sable grossier\r\n\r\n4. Saupoudrer les pommes de cannelle\r\n\r\n5. Répartir le mélange sucre/farine et beurre sur les pommes et cuire au four 25 mn jusqu\'à ce que le dessus soit doré\r\n\r\nAstuce : pour un crumble réussi, réalisez un caramel dans une poêle à l\'aide d\'un fond de sucre et versez le directement sur les pommes', 'https://c1.staticflickr.com/5/4544/25088860278_ae0399df8f_b.jpg'),
(2, 'Chloé', 'Lasagne', '- 1 paquet de lasagne\r\n- 3 oignons jaunes\r\n- 2 gousses d\'ail\r\n- 1 branche de céleri\r\n- Vin rouge\r\n- 1 carotte\r\n- 600gr de viande hachée\r\n- 800gr de purée de tomate\r\n- Basilic\r\n- 125 g de parmesan\r\n- 70 g de fromage râpé\r\n- 15 cl d\'eau\r\n\r\nBéchamel :\r\n- 100gr de farine\r\n- 100gr de beurre doux\r\n- 1L de lait', '1. Faire revenir gousses hachées d\'ail et les oignons émincés dans un peu d\'huile d\'olive\r\n\r\n2. Ajouter la carotte et la branche de céleri hachée puis la viande et faire revenir le tout\r\n\r\n3. Au bout de quelques minutes, ajouter le vin rouge. Laisser cuire jusqu\'à évaporation\r\n\r\n4. Ajouter la purée de tomates, l\'eau et les herbes. Saler, poivrer, puis laisser mijoter à feu doux 45 minutes\r\n\r\n5. Préparer la béchamel : faire fondre le beurre\r\n\r\n6. Hors du feu, ajouter la farine d\'un coup\r\n\r\n7. Remettre sur le feu et remuer avec un fouet jusqu\'à l\'obtention d\'un mélange bien lisse\r\n\r\n8. Ajouter le lait peu à pe\r\n\r\n9. Remuer sans cesse, jusqu\'à ce que le mélange s\'épaississe\r\n\r\n10. Ensuite, parfumer avec la muscade, saler, poivrer. Laisser cuire environ 5 minutes, à feu très doux, en remuant\r\n \r\n11. Réserver\r\n\r\n12. Préchauffer le four à 200°C (thermostat 6-7)\r\n\r\n13. Huiler le plat à lasagnes. Poser une fine couche de béchamel puis des feuilles de lasagnes, de la bolognaise, de la béchamel et du parmesan.\r\nRépéter l\'opération 3 fois de suite\r\n\r\n14. Sur la dernière couche de lasagnes ne mettre que de la béchamel et recouvrir de fromage râpé. Parsemer quelques noisettes de beurre.\r\n\r\n13. Enfourner pour environ 25 minutes de cuisson.', 'https://www.undejeunerdesoleil.com/wp-content/uploads/2019/10/Lasagnes_bolognaise_recette_video.jpg'),
(3, 'Junior ', 'Carrot Cake ', '- 250gr de carotte \r\n- 50 gr de noix de pécan \r\n- 4 oeufs \r\n- 1 cuillère à café de gingembre en poudre\r\n- 25gr de cranberries \r\n- 175gr de sucre roux\r\n- citron \r\n- 175gr de poudre d\'amande\r\n- 75gr de farine\r\n- 1 cuillère à café de cannelle \r\n- 20gr de beurre\r\n\r\n\r\nGlaçage :\r\n- 50gr de beurre mou \r\n- 200gr de sucre glace\r\n- 100gr de fromage frais ', '1. Dans le bol d\'un robot, travaillez les jaunes d\'oeufs et le sucre jusqu\'à ce qu\'ils blanchissent et deviennent mousseux.\r\n\r\n2. Ajoutez le zeste du citron finement râpé, puis la farine, le sel, les amandes en poudre et les noix de pécan hachées, les épices. Actionnez le robot par à coups pour bien mélanger le tout.\r\n\r\n3. Ajouter alors les carottes très finement râpées et enfin le jus de citron, mixer encore quelques instants au robot pour homogénéiser le tout (la pâte étant assez compacte, il vaut mieux faire toutes ces opérations avec un robot, mais on peut également travailler à la main). Ajoutez en dernier les cranberries séchées.\r\n\r\n4. Montez les blancs en neige et incorporez-les délicatement à la préparation précédente.\r\n\r\n5. Beurrez généreusement un moule à manqué (si possible à fond amovible, et de préférence à un moule à cake). Versez-y la préparation. Enfournez et cuisez à 180°C pendant 40 à 50 minutes (dépend des fours...). Lorsque le gâteau est cuit, démoulez-le sur une grille et laissez-le refroidir complètement.\r\n\r\n6. Travaillez le beurre mou avec le sucre glace et l\'extrait de citron. Ajoutez le fromage frais. Fouettez un peu pour homogénéiser le tout, mais pas trop longtemps, pour ne pas rendre la préparation trop liquide. Étalez le glaçage sur le carrot cake et laissez durcir au réfrigérateur au moins 12h avant de déguster. Notez que le glaçage au Cream Cheese reste toujours plus mou qu\'un glaçage au blanc d\'oeuf ordinaire.', 'https://www.noglu.fr/wp-content/uploads/2019/06/carrot-cake.jpg'),
(4, 'Elora', 'Madeleines', '- 3 oeufs\r\n- 150 g de sucre\r\n- 200 g de farine\r\n- 2 cuillères à soupe d\'eau de fleur d\'oranger\r\n- 8 g de levure chimique\r\n- 100 g de beurre fondu\r\n- 50 g de lait', '1. Préchauffer le four à 240°C (thermostat 8).\r\n\r\n2. Faire fondre le beurre dans une casserole à feu doux, réserver.\r\n\r\n3. Mélanger les oeufs avec le sucre, jusqu\'à ce que le mélange blanchisse.\r\n\r\n4. Ajouter ensuite la fleur d\'oranger et 40 g de lait.\r\n\r\n5. Ajouter la farine et la levure chimique.\r\n\r\n6. C\'est ensuite le tour du beurre et le restant du lait; laisser reposer 15 min.\r\n\r\n7. Beurrer les moules à madeleines et verser la préparation dedans (mais pas jusqu\'en haut, les madeleines vont gonfler !).\r\n\r\n8.Enfourner à 240°C (thermostat 8), et baisser au bout de 5 min à 200°C (thermostat 6-7); laisser encore 10 min. Surveiller bien la cuisson !\r\n\r\n9. Démouler dès la sortie du four.', 'https://assets.afcdn.com/recipe/20161128/3468_w1024h768c1cx2617cy1782.jpg'),
(5, 'Hugo', 'Crème brûlée ', '- 3 jaunes d\'oeuf\r\n- 10 cl de lait (entier si possible)\r\n- 1/4 l de crème liquide\r\n- 50 g de sucre en poudre + une cuillère à café pour la garniture (sucre roux de préférence)\r\n- Vanille (un sachet de sucre vanillé ou une dosette de vanille liquide)\r\n- Citron (un zeste), anis (très peu) pour faire \'à la catalane\', ou encore fleur d\'oranger. Ma variante préférée, quelques gouttes d\'Amaretto !', '1. Mélanger lait, crème et jaunes d\'oeufs, puis le sucre et la vanille (ou autre ingrédient pour le parfum).\r\n\r\n2. Mettre dans des petits ramequins\r\net cuire au four 35 à 40 min à thermostat 4.\r\n\r\n3. Vers la fin, saupoudrer avec la cuillère café de sucre en poudre restante et passer au grill (ou au fer, pour ceux qui sont équipés).', 'https://cdn.pratico-pratiques.com/app/uploads/sites/4/2018/08/30205654/creme-brulee-au-the-chai.jpeg'),
(6, 'Victor', 'Pad Thaï', '- 250 g de pâtes à la semoule de riz\r\n- 1 tasse de basilic\r\n- 3 cuillères d\'huile\r\n- 3 escalopes de poulet coupe en tranches fines\r\n- Sel\r\n- 5 cuillère de paprika\r\n- 3 oeufs battus\r\n- 3 gousses d\'ail hache\r\n- 2 cuillères de vinaigre blanc\r\n- 2 cuillères de nuoc mam\r\n- 2 cuillères de sucre roux\r\n- 1 cuillère à café de piment rouge en pâte ou de l\'harissa\r\n- 3 cuillères d\'arachide émincées\r\n- 175 g de germes de soja\r\n- feuille de menthe\r\n- 2 oignons verts tendres coupés très finement', '1. Faire chauffer un wok ou une grosse poêle.\r\n\r\n2. Ajouter 1 cuillère d\'huile, ajouter le basilic, le laisser frire pendant une minute.\r\n\r\n3. L\'enlever et l\'essorer sur du papier.\r\n\r\n4. Ajouter un autre cuillère d\'huile à la poêle, faire revenir le poulet, ajouter le sel et le paprika, faire cuire pendant 4 à 5 minutes.\r\n\r\n5. Ajouter les œufs et bien mélanger (ça doit ressembler à des œufs brouillés).\r\n\r\n6. Enlever le tout et mettre dans un plat. Ajouter la dernière cuillère d\'huile dans la poêle.\r\n\r\n7. Mettre l\'ail, le vinaigre le nuoc nam et le sucre, faire cuire pendant 2 minutes.\r\n\r\n8. Ajouter les pâtes (que vous avez fait cuire) dans cette sauce. Mettre le piment et les arachides, rajouter le poulet et les légumes au tout et bien mélanger.\r\n\r\n9. Mettre le tout dans un plat, décorer avec le basilic frit et des tranches de citron.', 'https://lecoupdegrace.ca/wp-content/uploads/2015/06/pad_thai-4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
