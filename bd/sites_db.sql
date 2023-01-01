-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 24 déc. 2022 à 17:18
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
-- Base de données : `sites_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `avantages`
--

CREATE TABLE `avantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avantages`
--

INSERT INTO `avantages` (`id`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Avantage 1', 'Possibilité de mise à disposition ponctuelle d’un logement, selon la nature des fonctions occupées.', '1669537052.avif', '2022-11-27 07:17:32', '2022-11-27 07:17:32'),
(2, 'Avantage 2', 'Accès à des ateliers « bien-être au travail » dispensés par des professionnels bénévoles : relaxation, réflexologie plantaire, shiatsu, amma assis, massage californien…', '1669537090.avif', '2022-11-27 07:18:10', '2022-11-27 07:18:10'),
(3, 'Avantage 3', '28 jours de congés annuels (25 + 3 jours de fractionnement).', '1669537124.avif', '2022-11-27 07:18:44', '2022-11-27 07:18:44'),
(4, 'Avantage 4', 'Formation continue tout au long du parcours professionnel au centre hospitalier, possibilité de congé de formation professionnelle, possibilité d’évolution professionnelle.', '1669537149.avif', '2022-11-27 07:19:09', '2022-11-27 07:19:09');

-- --------------------------------------------------------

--
-- Structure de la table `avenues`
--

CREATE TABLE `avenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idQuartier` int(11) NOT NULL,
  `nomAvenue` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `avenues`
--

INSERT INTO `avenues` (`id`, `idQuartier`, `nomAvenue`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tmk', '2022-11-17 11:00:05', '2022-11-17 11:00:05'),
(2, 1, '7 bougie', '2022-11-17 11:00:28', '2022-11-17 11:00:28'),
(3, 1, 'Katoyi konde', '2022-11-17 11:00:52', '2022-11-17 11:01:10');

-- --------------------------------------------------------

--
-- Structure de la table `basics`
--

CREATE TABLE `basics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apropos` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `don` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `basics`
--

INSERT INTO `basics` (`id`, `apropos`, `travail`, `don`, `structure`, `created_at`, `updated_at`) VALUES
(1, '<p>DREAM OF DRC est une startup œuvrant dans le domaine numérique qui se concentre dans l’apport globale des solutions technologiques efficaces aux entreprises qui souffrent&nbsp; dans le besoin&nbsp;!</p><p>Nous proposons des solutions technologiques efficaces et durables adaptées aux besoins de la communauté en fonction de leur moyen disponible tout en tenant compte de leur situation budgétaire à un cout faible. &nbsp;</p><p>Secourir les entreprises&nbsp; &nbsp;reste encore un devoir de DREAM OF DRC, à cella nous nous sommes engagés d’apporter les solutions par nos services dans tous les aspects technologiques que les entreprises et la jeunesse africaine éprouvent comme difficulté pour l’émergence de leurs activités&nbsp;!</p><p>«DREAM OF DRC» s’était engagée de travailler durablement à l’appui au système informatique là où le besoin existe, pour ce faire la start-up participe à la création des formations en informatique et partout en RDC, dans des villages ou zones reculées, territoires connus comme fragile où les capacités techniques, matérielles des structures d’offres de service de base de l’État/Gouvernement s’avèrent peu efficace ou inaccessible.</p><p><br>La technologie dont nous parlons fera en sorte de contribuer à l\'émergence de toute la jeunesse et la société en particulier.<br>Nous devons considérer la technologie actuelle comme une arme efficace pour changer le monde.</p>', '<p>travail</p>', '<p>nous faire un don</p>', '<p>notre structure de gestion</p>', '2022-01-29 19:14:06', '2022-12-24 15:12:58');

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`id`, `titre`, `description`, `photo`, `id_cat`, `slug`, `etat`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Quand le facteur humain est une menace à la cybersécurité', '&lt;p&gt;&lt;strong&gt;Comment s’assurer de la sécurité des sites de transaction? Comment savoir si derrière la signature se trouve la bonne personne? Les questions autour de la cybersécurité se multiplient alors que nous passons de plus en plus de temps en ligne – et la pandémie a accentué cette «&amp;nbsp;virtualisation&amp;nbsp;». Comment apprendre à reconnaître les menaces ?&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Pour commencer, une connaissance de règles simples&amp;nbsp;– choisir un mot de passe fort ou sauvegarder et chiffrer les données que l’on échange lors des &lt;a href=&quot;https://cybereco.ca/cybertrousse/travail-en-mobilite/&quot;&gt;périodes de télétravail&lt;/a&gt; – peut nous éloigner des menaces les plus grossières.&lt;/p&gt;&lt;p&gt;«&amp;nbsp;Sinon, c’est comme ne pas fermer notre porte d’entrée quand nous partons en vacances. C’est plutôt immature et basé sur une méconnaissance des risques réels», rappelle Vincent Riou, directeur général de la première édition du &lt;a href=&quot;https://america.forum-fic.com/programme-2022/&quot;&gt;Forum international de cybersécurité&lt;/a&gt; (FIC) d’Amérique du Nord, qui se déroulait à Montréal, les 1er et 2 novembre. Il importe donc de former ses employés aux &lt;a href=&quot;https://cyber.gc.ca/fr/orientation/les-meilleures-mesures-pour-renforcer-la-cybersecurite-des-petites-et-moyennes&quot;&gt;cybermenaces&lt;/a&gt; et aux tactiques d’hameçonnage.&lt;/p&gt;&lt;p&gt;La pandémie a montré que les petites comme les grandes entreprises n’étaient pas prêtes à affronter ces attaques. «&amp;nbsp;Cela fait 20 ans que nous répétons la &amp;nbsp;même chose et c’est parfois décourageant. Les employeurs manquent un peu de rigueur, alors que les menaces sont très présentes et se multiplient », soulève Lise Lapointe, présidente directrice générale de &lt;a href=&quot;https://u12097671.ct.sendgrid.net/ls/click?upn=9rudYHeevExQpJ5A1h-2BA7YsIvHfi-2BWI9jogCqwZycpHcwAlFg1vfnbDL7jOR2vUSfIOPqyxCEr5cs5B14L3yj9Zc00FE2KB6WKYkEVG1Kaq2dZGZgN5ZqbntHYl9knvwgJUJ6ypZJgVz-2F3Hm0Aw0zfLalBzNKNPjsnRAZVaU8sI-3DHlPc_HvAGBe4CwsZ9zk22tAemj0NB1UCk-2BxIRL3H2GK92q9hveHTzF0u5kugYoaa0Q4TLbE4JmTSwhgtjePFK0gg-2F5o1-2BvNg1vblJrJu15q8frVgIu3uB54a3L2v-2Fiymsy3aHBtjonBP3lJC3Pz87ljgcptBE-2FkNhKaJ9MzRmWIA0KjNd1pZYyHnoQ1XgQ5bMA1tp11eoEouYQ-2BTf-2Bm3SlQDqmDKFX8CMlcDGqK0Ie6H-2FIfJhu3U5d8CLqwpvdR95OybXi2D-2FJA0WCCvKiuPYQtkZJtC3XkCuZ9AH4hbCupJ3cCtWvOLu43bSlw3aKRbUNVGCZtUuzkzUOqnygc2tmoOzBILeYr6bob7A5WzFdppQut-2F1R-2F-2FDCaOYnnu2DxtSiVwCZslGf5zHNJa4QAyNy0jmNctFAlait9vZ0GG928WwUyO-2FKjlYBXOe2A-2FKUFTldUGQunz3aZuKxXuupCuMpxcGUvlalXh1Op7dH1MNy0oK4XPHKuYwHHQ4Du16nIzcuPw9NnU21Cdean2HPfISaBoEvbQlWIRtEWq-2ByarQcUvWCJI68W7jlu9ZE3hHCdgtTNRPeokQj3zrhVDkDgDDDH7Oog-3D-3D&quot;&gt;Terranova Security&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;La compagnie lavalloise est un chef de file mondial en matière de sensibilisation à la cybersécurité. Elle se spécialise depuis 20 ans dans la sensibilisation et la formation à la cybersécurité, en&amp;nbsp;transformant les utilisateurs en «&amp;nbsp;superhéros&amp;nbsp;» susceptibles de mieux comprendre la confidentialité des données et les bonnes pratiques en matière de sécurité. On lui doit plus de 1000 programmes de simulation d’hameçonnage, de formation et de sensibilisation à la cybersécurité, pour plus de six millions d’utilisateurs. Ce qui la distingue: une approche centrée sur les individus, inspirée de l’ouvrage &lt;a href=&quot;https://terranovasecurity.com/ebook-the-human-fix-to-human-risk-pearl-2/&quot;&gt;&lt;i&gt;The Human Fix to Human Risk&lt;/i&gt;&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Toute formation à la cybersécurité serait, pour Mme Lapointe, comme le port de la ceinture de sécurité: «&amp;nbsp;c’est impossible de s’en passer alors que tout le monde échange des données et que les employés sont de plus en plus souvent en télétravail. Il faut avoir un plan, le cas échéant, et que tout le monde sache quoi faire. »&lt;/p&gt;&lt;p&gt;Les plus petites entreprises ont moins de ressources et donc, sont plus à risque, bien qu’elles échangent moins d’informations sensibles que les plus grandes. Un employé bien formé bénéficie à son entourage —et ce, au-delà de l’entreprise: «&amp;nbsp;s’il connaît la menace, il va sensibiliser ses enfants et sa famille, et les ainés sont particulièrement vulnérables et ciblés&amp;nbsp;», note encore Mme Lapointe.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Renforcer la règlementation et les responsabilités&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Au Québec, &lt;a href=&quot;https://www.quebec.ca/gouvernement/ministeres-et-organismes/institutions-democratique-acces-information-laicite/acces-documents-protection-renseignements-personnels/pl64-modernisation-de-la-protection-des-renseignements-personnels&quot;&gt;la loi 25&lt;/a&gt;, adoptée le 22 septembre dernier, exige de chaque entreprise qu’elle renforce et sécurise ses systèmes informatiques et ses données commerciales avec des logiciels adéquats, mais aussi qu’elle mette en place des séances de perfectionnement de son personnel.&lt;/p&gt;&lt;p&gt;«&amp;nbsp;Il faut reprendre l’avantage, car nous sommes dans une guerre électronique », rappelle Vincent Riou. Pour se défendre, il faut déployer des tactiques de déception, de&amp;nbsp;leurre et de brouillage, à l’intention des hackeurs.&lt;/p&gt;&lt;p&gt;Du côté du fédéral, la prochaine &lt;a href=&quot;https://www.parl.ca/DocumentViewer/fr/44-1/projet-loi/C-27/premiere-lecture&quot;&gt;loi C27&lt;/a&gt; devrait bonifier aussi le paysage de la cybersécurité en mettant l’accent sur la protection de la vie privée, la constitution d’un Tribunal de la protection des renseignements personnels et des données et une règlementation des échanges et du commerce, internationaux et interprovinciaux.&lt;/p&gt;&lt;p&gt;Selon le directeur du FIC Amérique du Nord, le Canada et le Québec se placent bien, tant du côté de la collaboration des experts que du côté de la nomination d’un ministre québécois dédié à la cybersécurité et au numérique, Éric Caire.&lt;/p&gt;&lt;p&gt;«&amp;nbsp;Le Québec a sans doute un petit syndrome de l’imposteur et manque un peu d’audace, mais il se place très bien,&amp;nbsp;avec des travaux de recherche pointus et de très bon niveau&amp;nbsp;», relève encore M Riou. Par exemple, le Groupe de&amp;nbsp;recherche&amp;nbsp;interdisciplinaire en&amp;nbsp;cybersécurité&amp;nbsp;(&lt;a href=&quot;https://gric.recherche.usherbrooke.ca/&quot;&gt;GRIC&lt;/a&gt;) de l’Université de Sherbrooke ou le &lt;a href=&quot;https://cyber.gc.ca/fr&quot;&gt;Centre canadien pour la cybersécurité&lt;/a&gt; d’Ottawa.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;La signature numérique, une question sensible&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Comment s’assurer que la signature qui figure sur un document s’avère fiable et vérifiée? Au sein de nombreuses professions, telles que les ingénieurs ou les architectes, il importe de pouvoir raccorder avec assurance une identité professionnelle et une signature inscrite sur les actes et autres documents certifiés. «&amp;nbsp;Cela engage la responsabilité du professionnel. Il faut donc quelque chose de plus fort qu’une simple photo de la signature&amp;nbsp;», soutient Alexandre Beaulieu, directeur de la gestion de produits chez Notarius.&lt;/p&gt;&lt;p&gt;La compagnie montréalaise offre des signatures numériques sécuritaires depuis 25 ans. C’est le partenaire technologique de compagnies et de 50 ordres professionnels canadiens dans leur passage au numérique, dont l’Ordre des ingénieurs du Québec et son pendant ontarien.&lt;/p&gt;&lt;p&gt;Toutes les signatures électroniques ne se valent toutefois pas sur le plan juridique. Ce qui les distingue repose sur l’usage&amp;nbsp;: identification des signataires mais également leur authentification ou l’intégrité du document signé.&lt;/p&gt;&lt;p&gt;Il faut savoir que la représentation visuelle de la signature ne constitue pas la vraie signature. «&amp;nbsp;Il y a des parties technologiques, comme des éléments de chiffrement, qui vont constituer une empreinte unique du document. Cela change si on cherche à le modifier, et c’est détectable&amp;nbsp;», explique M Beaulieu.&lt;/p&gt;&lt;p&gt;Le plus important reste la validation de la signature par la personne mais également par celui qui en prend connaissance. Certains mécanismes de vérification permettent à des compagnies, comme Notarius, d’être reconnues comme autorités de certification.&lt;/p&gt;&lt;p&gt;Il importe toutefois de protéger cette dernière avec le même soin que pour toutes les données personnelles sur Internet. Et cela passe par l’éducation et la sensibilisation. «&amp;nbsp;Ça reste un défi permanent, sans compter la libération de données personnelles pas toujours pertinentes avec des intermédiaires. Par exemple, si j’ai besoin de savoir si vous avez 18 ans, je n’ai pas forcément besoin de votre date de naissance&amp;nbsp;», précise l’expert.&lt;/p&gt;&lt;p&gt;Et on n’a pas fini de se poser ce genre de questions, à l’heure où les signatures vocales gagnent en popularité...&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '1669533326.png', 1, 'quand-le-facteur-ie2yjbm2', 1, 4, '2022-10-18 12:05:18', '2022-11-27 06:15:26'),
(8, 'Les plaques bêta-amyloïdes, cause unique de l’Alzheimer? Faux', '&lt;p&gt;&lt;strong&gt;La recherche de traitement contre la maladie d’Alzheimer a longtemps été dominée par une seule cible&amp;nbsp;: l’accumulation dans le cerveau de «&amp;nbsp;plaques&amp;nbsp;» dites bêta-amyloïdes. En juillet dernier, des chercheurs&amp;nbsp; qui avaient revisité une recherche-clef sur le sujet, ont annoncé que des soupçons de fraude planaient. Mais en réalité, cette cible était mise en doute depuis le début, résume le &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;Détecteur de rumeurs&lt;/strong&gt;&lt;/i&gt;&lt;strong&gt;.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Cet article fait partie de la rubrique du&amp;nbsp;&lt;i&gt;Détecteur de rumeurs&lt;/i&gt;,&amp;nbsp;&lt;a href=&quot;http://www.sciencepresse.qc.ca/detecteur-rumeurs&quot;&gt;cliquez ici&lt;/a&gt;&amp;nbsp;pour les autres textes.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;L’origine (présumée) de la maladie&amp;nbsp;d’Alzheimer&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Beaucoup de gens sont surpris d’apprendre que, malgré des décennies de recherche, il n’y a toujours pas de consensus sur l’origine de cette maladie, et aucun médicament susceptible de ralentir son évolution. Pourtant, on compte 50 millions de personnes atteintes de démence dans le monde, avec 10 millions de nouveaux cas chaque année. La maladie d’Alzheimer est la cause la plus courante, représentant &lt;a href=&quot;https://www.who.int/fr/news-room/fact-sheets/detail/dementia&quot;&gt;60 à 70% des cas&lt;/a&gt;, selon l’Organisation mondiale de la santé. Le nombre de gens atteints de démence pourrait atteindre 152 millions en 2050.&lt;/p&gt;&lt;p&gt;La recherche sur l’Alzheimer a été largement dominée par &lt;a href=&quot;https://www.science.org/doi/abs/10.1126/science.1566067&quot;&gt;l’hypothèse de la cascade amyloïde&lt;/a&gt;, proposée dans les années 90. Selon cette hypothèse, une seule cause est à l’origine de la maladie&amp;nbsp;: l’accumulation d’une protéine appelée bêta-amyloïde, sous forme de «&amp;nbsp;plaques&amp;nbsp;» dans le cerveau. Cette accumulation entraine une cascade d’évènements qui conduit à la perte de fonctions cérébrales, comme la mémoire. C’est ainsi que la majorité des médicaments et des vaccins expérimentaux visent les plaques amyloïdes —&lt;a href=&quot;https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7152954/pdf/IJAD2020-5380346.pdf&quot;&gt;sans grand succès jusqu’ici&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;En 2006, le chercheur français Sylvain Lesné et ses collègues de l’Université du Minnesota, avaient publié dans la revue &lt;i&gt;Nature&lt;/i&gt; &lt;a href=&quot;https://www.nature.com/articles/nature04533&quot;&gt;un article&lt;/a&gt; qui, disaient-ils, apportait une solide preuve en faveur de cette théorie. Chez des&amp;nbsp; souris, ils rapportaient que, lorsqu’une forme spécifique d’amyloïde s’accumule dans le cerveau, cela bloque le transfert des signaux entre les neurones, entraine la mort des cellules et provoque une perte des fonctions cognitives.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Fraude scientifique ?&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Coup de tonnerre en juillet 2022, quand une &lt;a href=&quot;https://www.science.org/content/article/potential-fabrication-research-images-threatens-key-theory-alzheimers-disease&quot;&gt;enquête&lt;/a&gt; de la revue &lt;i&gt;Science&lt;/i&gt; révèle que des données à la base de cette étude phare ont pu être falsifiées (à la mi-novembre 2022, l’étude de 2006 était accompagnée d’un avertissement de &lt;i&gt;Nature&lt;/i&gt; disant qu’une enquête est en cours). L’une des spécialistes de la fraude scientifique consultée par &lt;i&gt;Science&lt;/i&gt;, &lt;a href=&quot;https://www.sciencepresse.qc.ca/actualite/2021/05/31/quand-lanceuse-alerte-poursuivie-celui-critique&quot;&gt;Elisabeth Bik&lt;/a&gt;, y déclare&amp;nbsp;: «&amp;nbsp;les auteurs semblent avoir composé des figures en assemblant des parties de photos provenant de différentes expériences. Les résultats expérimentaux obtenus n\'étaient peut-être pas les résultats souhaités, et ces données ont pu être modifiées pour... mieux correspondre à une hypothèse&amp;nbsp;».&lt;/p&gt;&lt;p&gt;La recherche de 2006 avait, depuis, servi de justification à plusieurs autres recherches, et au développement d’un médicament, l’Aduhelm, dont l’approbation accélérée aux États-Unis, en juin 2021, a été &lt;a href=&quot;https://www.statnews.com/2021/06/08/fda-expert-panel-resigns-alzheimers-approval/&quot;&gt;dénoncée&lt;/a&gt; par &lt;a href=&quot;https://www.nytimes.com/2021/06/10/health/aduhelm-fda-resign-alzheimers.html&quot;&gt;plusieurs experts&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Selon Frédéric Checler, directeur d’un laboratoire de recherche sur les maladies d’Alzheimer et de Parkinson en France, et &lt;a href=&quot;https://www.lemonde.fr/sciences/article/2022/07/25/recherche-sur-la-maladie-d-alzheimer-des-soupcons-d-inconduites-scientifiques_6136080_1650684.html&quot;&gt;cité dans le journal &lt;i&gt;Le Monde&lt;/i&gt;&lt;/a&gt; en juillet dernier, «&amp;nbsp;personne n’avait jamais réussi à répliquer ces résultats [de 2006]&lt;i&gt;&amp;nbsp;».&lt;/i&gt;&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Pas de cause unique&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;Il nuance toutefois: même si cette étude devait être rétractée, cela ne signifierait pas que l\'amyloïde ne joue aucun rôle dans la maladie. Cela confirmerait plutôt qu’on a erré sur son rôle dominant.&lt;/p&gt;&lt;p&gt;Dans la baladodiffusion &lt;a href=&quot;https://www.harvardmagazine.com/2021/rudy-tanzi&quot;&gt;&lt;i&gt;Ask a Harvard Professor&lt;/i&gt;&lt;/a&gt;, en 2021, le professeur de neurologie de cette université, Rudolph Tanzi, y était allé d’une métaphore : l\'amyloïde serait à la maladie d\'Alzheimer ce que le cholestérol est aux maladies cardiaques. De hauts niveaux seraient un signal d’alarme, avant même l’apparition des symptômes.&lt;/p&gt;&lt;p&gt;Ce chercheur évoquait toutefois d’autres causes pouvant aussi servir de signaux d’alarme, et plusieurs experts du domaine s’entendaient depuis longtemps pour dire que rien ne permet de faire des «&amp;nbsp;plaques&amp;nbsp;» la cause unique de la maladie d’Alzheimer: une multitude de facteurs y contribuent probablement. &lt;a href=&quot;https://www.nia.nih.gov/health/what-causes-alzheimers-disease&quot;&gt;Une page des Instituts nationaux de la santé&lt;/a&gt; (NIH), le principal organisme subventionnaire de la recherche aux États-Unis, énumère des changements liés à l’âge dans le cerveau, aussi bien que des facteurs génétiques ou d’autres liés au mode de vie.&lt;/p&gt;&lt;p&gt;Le problème, c’est que la domination de la théorie de la cascade amyloïde a ralenti la recherche sur les autres facteurs de l\'Alzheimer. Le professeur de biologie et de chimie à l’Université du Texas à San Antonio, George Perry, parlait en 2021 de «&amp;nbsp;l’obsession&amp;nbsp;» pour la seule cause de l\'amyloïde, &lt;a href=&quot;https://www.newscientist.com/article/mg25233593-300-why-alzheimers-is-not-a-single-disease-and-why-that-matters/&quot;&gt;dans le magazine &lt;i&gt;New Scientist&lt;/i&gt;&lt;/a&gt;. De fait, jusqu\'à présent, les médicaments anti-amyloïdes n\'ont pas réussi à améliorer les symptômes de la maladie.&lt;/p&gt;&lt;p&gt;Un de ces «&amp;nbsp;autres facteurs&amp;nbsp;», c’est l’accumulation dans le cerveau de la protéine appelée Tau. Normalement, elle aide à soutenir la &lt;a href=&quot;https://www.nia.nih.gov/health/what-happens-brain-alzheimers-disease&quot;&gt;structure des neurones&lt;/a&gt;, mais certaines modifications peuvent faire en sorte qu’elle s’agglutine dans les neurones, interférant alors sur leur capacité à communiquer. Quand la maladie se développe, la quantité d\'accumulation de tau semble être corrélée à la gravité de la démence.&lt;/p&gt;&lt;p&gt;On sait aussi que &lt;a href=&quot;https://www.nia.nih.gov/health/alzheimers-disease-genetics-fact-sheet&quot;&gt;les gènes jouent un rôle &lt;/a&gt;: trois gènes défectueux ont été identifiés comme facteur de risque de l’Alzheimer précoce (celui, plus rare, qui survient entre 30 et 65 ans) ; ils contribuent à la production d\'amyloïde, dans un processus qui est encore mal compris.&amp;nbsp;D’autres variants génétiques sont probablement encore à découvrir, qui affectent par exemple la capacité à éliminer la bêta-amyloïde du cerveau. Plus précisément, le fait d\'avoir une version du gène de &lt;a href=&quot;https://www.mayoclinic.org/diseases-conditions/alzheimers-disease/in-depth/alzheimers-genes/art-20046552&quot;&gt;l\'apolipoprotéine E&amp;nbsp;&lt;i&gt;(APOE)&lt;/i&gt;&amp;nbsp;&lt;/a&gt;augmente le risque de développer la maladie d’Alzheimer.&lt;/p&gt;&lt;p&gt;Enfin, des recherches ont suggéré une &lt;a href=&quot;https://alzheimer.ca/fr/au-sujet-des-troubles-neurocognitifs/comment-prevenir-les-troubles-neurocognitifs/facteurs-de&quot;&gt;foule de facteurs&lt;/a&gt; qui peuvent influencer le développement ou l’évolution de la maladie&amp;nbsp;: par exemple, l’hypertension artérielle, les maladies cardiovasculaires, ou encore le diabète et l’obésité.&lt;/p&gt;&lt;p&gt;S’il s’avérait que des facteurs liés au mode de vie sont effectivement en cause, le parallèle avec les maladies cardiaques serait utile : pour elles, il existe des traitements allant des médicaments jusqu’aux interventions chirurgicales, mais aussi un ensemble de recommandations allant de changements à l’alimentation jusqu’à l\'exercice physique. Est-ce la piste à suivre pour l’Alzheimer?&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Verdict&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;La majorité des chercheurs qui étudient la maladie d\'Alzheimer reconnaissaient, bien avant l’enquête de juillet dernier, que la maladie avait de multiples facteurs encore mal compris. Mais «&amp;nbsp;l’obsession&amp;nbsp;» pour la seule cause de l\'amyloïde a pu entraver les progrès vers d’éventuels traitements.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;i&gt;Photo: Noelle Otto / Pexels&lt;/i&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '1669649981.png', 1, 'les-plaques-bet-ktqek5dm', 1, 4, '2022-10-18 12:08:05', '2022-11-28 14:39:41'),
(9, 'Les parents de nouveau-nés sont invités à les vacciner contre cette infection pas forcément bénigne chez les tout-petits.', '&lt;p&gt;Maladie incontournable de l\'enfance, &lt;a href=&quot;https://sante.lefigaro.fr/sante/maladie/gastro-enterite/quest-ce-que-cest&quot;&gt;la gastro-entérite&lt;/a&gt; n\'est pas toujours anodine. Les infections à rotavirus, principales responsables de cette maladie chez les petits, causent ainsi quelque 28 000 consultations aux urgences, et 20 000 hospitalisations d\'enfants de moins de 3 ans chaque année. En cause principalement : la déshydratation induite par les vomissements et diarrhées répétées, très dangereuse chez les nourrissons.&lt;/p&gt;&lt;p&gt;À compter de ce samedi, les deux vaccins existants contre ces virus (le Rotarix, qui ne vise qu\'une souche de rotavirus, et le RotaTeq qui en contient cinq) sont recommandés et remboursés à 65 % par l\'Assurance-maladie. Ils sont efficaces à environ 80 % contre les infections et les hospitalisations s\'ils sont donnés dès l\'âge de 2 mois, indique le ministère de la Santé. Toutes les doses doivent avoir été données avant 6 mois pour le Rotarix, et 8 mois pour le RotaTeq. Cette vaccination n\'est pas obligatoire pour l\'instant.&lt;/p&gt;&lt;h2&gt;&lt;strong&gt;Des nouvelles données rassurantes&lt;/strong&gt;&lt;/h2&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Il ne s\'agit pas de nouveaux traitements arrivant sur le marché. La France avait suspendu leur inscription au calendrier vaccinal en 2015, après deux ans d\'utilisation, en raison d\'une incertitude sur la balance bénéfices-risques : les invaginations intestinales aiguës (l\'intestin du bébé se retourne sur lui-même avec risque de nécrose) semblaient avoir augmenté dans certains pays vaccinant à grande échelle.&lt;/p&gt;&lt;p&gt;De nouveaux résultats ont amené cet été la Haute Autorité de santé à trancher de nouveau en faveur de la vaccination. Les experts estiment désormais le surrisque maximal à 6 cas pour 100 000 enfants dans la semaine suivant l\'ingestion de ces vaccins oraux et conseillent d\'informer les parents sur les signaux d\'alerte, car une invagination intestinale aiguë (IIA) se traite bien si elle est soignée à temps. Les symptômes à surveiller dans les 7 jours après que le bébé ait reçu la dose sont des pleurs inhabituels, un refus de s\'alimenter ou de boire, des vomissements, une pâleur, un bébé «mou» (hypotonie), et la présence de sang dans les selles.&lt;/p&gt;&lt;p&gt;Paradoxalement, la vaccination pourrait aussi contribuer à éviter des cas d\'IIA, notent des experts. En effet, les invaginations intestinales aiguës peuvent aussi être causées par différentes infections virales, parmi lesquelles les infections à rotavirus. Ainsi, en évitant à de nombreux enfants de contracter le virus, on réduirait pour eux ce risque associé.&lt;/p&gt;', '1669533538.webp', 3, 'les-parents-de-n-78cthhrs', 1, 4, '2022-10-18 12:09:41', '2022-11-27 06:18:58'),
(10, 'Vaccin contre la bronchiolite: Pfizer annonce des résultats positifs sur les bébés', '&lt;p&gt;&lt;strong&gt;Selon ces résultats, le vaccin s\'est révélé efficace à environ 82% pour prévenir les cas graves dans les trois premiers mois d\'un bébé, et à environ 69% dans les six mois suivants.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;Le groupe américain &lt;a href=&quot;https://www.lefigaro.fr/societes/pfizer-releve-ses-previsions-de-ventes-de-vaccins-anti-covid-pour-2022-a-34-milliards-de-dollars-20221101&quot;&gt;Pfizer&amp;nbsp;&lt;/a&gt;a fait part mardi de résultats positifs pour les nouveaux-nés et nourrissons d\'un essai clinique sur un vaccin contre le virus respiratoire syncytial (VRS), responsable de la bronchiolite, administré à la mère pendant la grossesse.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;À découvrir&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=&quot;https://sante.lefigaro.fr/dossier/le-tabac-comment-s-en-sortir&quot;&gt;NOTRE DOSSIER - Le tabac&amp;nbsp;: comment s\'en sortir&amp;nbsp;?&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Selon les résultats de ce test de phase 3 dévoilés par l\'entreprise, le vaccin s\'est révélé efficace à environ 82% pour prévenir les cas graves dans les trois premiers mois d\'un bébé, et à environ 69% dans les six mois suivants. L\'essai n\'a en revanche pas conclu que le vaccin réduisait les cas non sévères de façon &lt;i&gt;«statistiquement significative»&lt;/i&gt;, même si les tests montrent une certaine efficacité clinique, indique le laboratoire.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&amp;nbsp;&lt;/p&gt;', '1669533642.webp', 3, 'vaccin-contre-la-r0w6j7sl', 1, 4, '2022-10-18 12:12:41', '2022-11-27 06:20:42'),
(11, 'Deniz Ayci Leu | MEDECINE Triple épidémie: des virus qui s’additionnent ou qui s’annulent?', '&lt;p&gt;&lt;strong&gt;La convergence en ce moment de trois virus offre une opportunité inédite à des chercheurs de tester une vieille hypothèse: celle voulant que les virus occupant un même territoire en même temps se nuiraient les uns les autres.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;L’expression «&amp;nbsp;&lt;a href=&quot;https://ici.radio-canada.ca/info/videos/1-8683759/triple-epidemie&quot;&gt;triple épidémie&lt;/a&gt;&amp;nbsp;» qui s’est imposée chez les médecins ces dernières semaines, réfère aux trois menaces auxquelles les hôpitaux craignent de devoir faire face en même temps &lt;a href=&quot;https://www.newscientist.com/article/2348273-flu-rsv-and-cost-of-living-will-all-harm-uk-child-health-this-winter/&quot;&gt;cet hiver&lt;/a&gt;: la &lt;a href=&quot;https://www.tf1info.fr/sante/sante-epidemie-de-grippe-plus-inquietante-que-le-covid-cet-hiver-2022-2239552.html&quot;&gt;grippe saisonnière&lt;/a&gt;, le &lt;a href=&quot;https://www.scientificamerican.com/article/rsv-is-surging-what-we-know-about-this-common-and-surprisingly-dangerous-virus/&quot;&gt;virus respiratoire syncytial&lt;/a&gt; (bronchiolite / VRS), et les récents variants de la COVID. Le fait qu’ils surgissent tous les trois alors que, dans l’hémisphère nord, la saison froide amène les gens à passer l’essentiel de leur temps à l’intérieur, amplifie les inquiétudes. C’est dans ce contexte que plusieurs associations de médecins, ces dernières semaines, &lt;a href=&quot;https://www.tvanouvelles.ca/2022/11/14/triple-epidemie--le-masque-est-le-seul-outil-quon-aurait-selon-un-pediatre&quot;&gt;ont recommandé&lt;/a&gt; le retour du masque, dans les lieux fermés et mal ventilés.&lt;/p&gt;&lt;p&gt;Or, &lt;a href=&quot;https://www.science.org/content/article/competition-between-respiratory-viruses-may-hold-tripledemic-winter&quot;&gt;comme le rappelle cette semaine un reportage&lt;/a&gt; de la revue &lt;i&gt;Science&lt;/i&gt;, les virus sont peut-être plus souvent qu’on ne l’imagine des «&amp;nbsp;compétiteurs&amp;nbsp;» entre eux, ce qui voudrait dire que, dans le scénario optimiste, on n’aurait pas affaire cet hiver à une «&amp;nbsp;addition&amp;nbsp;» d’épidémies capables de surcharger les hôpitaux.&lt;/p&gt;&lt;p&gt;«&amp;nbsp;La grippe et les autres virus respiratoires, tout comme le SRAS-CoV-2 ne s’entendent pas bien&amp;nbsp;», résume le virologue américain Richard Webby. «&amp;nbsp;Il est peu probable qu’ils circuleront largement en même temps.&amp;nbsp;» «&amp;nbsp;Un virus tend à malmener l’autre&amp;nbsp;», ajoute l’épidémiologiste Ben Cowling, de l’École de santé publique de Hong Kong —où on &lt;a href=&quot;https://www.chp.gov.hk/en/statistics/data/10/641/642/2274.html&quot;&gt;avait constaté&lt;/a&gt;, en mars 2022, au moment de la vague Omicron, que les autres virus respiratoires «&amp;nbsp;étaient disparus… puis étaient revenus en avril&amp;nbsp;».&lt;/p&gt;&lt;p&gt;Le défi pour les chercheurs scientifiques a toujours été double: d’une part, il n’est pas facile de distinguer l’influence de tel virus par rapport à tel autre, lorsqu’ils sont nombreux à occuper un même terrain. D’autre part, un grand nombre d’infections respiratoires ne provoquent pas d’hospitalisation et échappent donc aux statistiques. Qui plus est, traditionnellement, la grande majorité des études en virologie portent sur un seul virus à la fois.&lt;/p&gt;&lt;p&gt;Pour l’instant, la recherche d’un coupable s’oriente vers des protéines produites par les cellules des personnes infectées et appelées &lt;a href=&quot;https://fr.wikipedia.org/wiki/Interf%C3%A9ron&quot;&gt;interférons&lt;/a&gt; (du mot anglais &lt;i&gt;interfere&lt;/i&gt;, qui veut dire interférer ou contrecarrer). L’idée générale: ces interférons, en présence d’un virus, lèveraient l’équivalent d’un drapeau rouge, déclenchant une réaction immunitaire générale —en attendant l’arrivée des anticorps spécifiques à ce virus. Du coup, les autres virus respiratoires seraient temporairement incapables d’entrer à leur tour.&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.nytimes.com/2022/04/08/health/covid-flu-twindemic.html&quot;&gt;Un reportage du &lt;i&gt;New York Times&lt;/i&gt;&lt;/a&gt; évoquait dès avril dernier la possibilité qu’une épidémie «&amp;nbsp;combinée&amp;nbsp;» —on craignait alors une «&amp;nbsp;double épidémie&amp;nbsp;», grippe et COVID— «&amp;nbsp;puisse ne jamais arriver&amp;nbsp;». «&amp;nbsp;Je ne pense pas que nous allons voir la grippe et le coronavirus atteindre un pic en même temps&amp;nbsp;», disait alors l’immunologue Ellen Foxman, de l’École de médecine de l’Université Yale.&lt;/p&gt;&lt;p&gt;Deux chercheurs de l’Université Laval &lt;a href=&quot;https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8798701/pdf/21-1727.pdf&quot;&gt;avaient publié&lt;/a&gt; en février dernier une brève synthèse de ce concept «&amp;nbsp;d’interférences virales&amp;nbsp;», où ils rappelaient que cette idée serait mise à l’épreuve le jour où seraient levées les mesures sanitaires liées à la COVID (masques, déplacements, distanciation sociale).&lt;/p&gt;&lt;p&gt;Le reportage de &lt;i&gt;Science&lt;/i&gt; &lt;a href=&quot;https://www.science.org/content/article/competition-between-respiratory-viruses-may-hold-tripledemic-winter&quot;&gt;rapporte par contre&lt;/a&gt; que la communauté scientifique est encore loin de faire consensus là-dessus: le niveau «&amp;nbsp;d’interférence&amp;nbsp;» pourrait varier en fonction de plusieurs facteurs, comme le taux d’immunité de la population à un virus, ou le type de virus qui a circulé avant.&lt;/p&gt;&lt;p&gt;D’où l’intérêt que présente pour ces experts la «&amp;nbsp;triple épidémie&amp;nbsp;» qui est peut-être commencée en Amérique du nord. Apprendre comment le SRAS-CoV-2 interagit avec d’autres virus —&lt;a href=&quot;https://rupress.org/jem/article/218/8/e20210583/212380/Dynamic-innate-immune-response-determines&quot;&gt;en-dehors&lt;/a&gt; des &lt;a href=&quot;https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8879759/pdf/viruses-14-00395.pdf&quot;&gt;expériences de laboratoire&lt;/a&gt;&amp;nbsp;menées depuis deux ans— constitue la clef, mais il n’est pas sûr qu\'on aura la réponse dès cet hiver: c’est le genre de choses dont il faut surveiller l’évolution sur plusieurs saisons.&lt;/p&gt;&lt;p&gt;Et dans toutes ces spéculations, personne ne perd de vue que, même dans le scénario optimiste où les virus ne s’additionneraient pas, il n’en demeurerait pas moins qu’au cours des trois dernières années, plusieurs systèmes de santé n’ont eu besoin que d’un seul virus pour être amenés au bord du point de rupture.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '1669533143.jpg', 2, 'deniz-ayci-leu-|-5y6gp2x8', 1, 4, '2022-10-18 12:13:33', '2022-11-27 06:12:23'),
(12, 'UN PROGRAMME GÉRÉ PAR L’UNOPS PRÉSENTÉ AU FORUM DE PARIS SUR LA PAIX', '&lt;p&gt;Le programme de lutte contre la COVID-19 de l’Union européenne et de l’Autorité intergouvernementale pour le développement, dont les activités ont bénéficié à plusieurs millions de personnes dans sept pays d’Afrique de l’Est, a été présenté au Forum de Paris sur la paix.&lt;/p&gt;&lt;p&gt;Dans l’objectif de mobiliser des parties prenantes pour favoriser l’action collective, le Forum de Paris sur la paix présente des initiatives et projets axés sur la gouvernance qui proposent des solutions concrètes à des défis mondiaux. Cette année y a été présenté le programme de lutte contre la COVID-19 de l’Union européenne et de l’Autorité intergouvernementale pour le développement, une initiative multisectorielle rassemblant de nombreux partenaires, financée par l’Union européenne et gérée par l’UNOPS.&lt;/p&gt;&lt;p&gt;Ce programme a pour objectif d’améliorer la veille sanitaire et les interventions d’urgence au sein des systèmes de santé, ainsi que d’atténuer les conséquences sanitaires et socio-économiques de la COVID-19 dans des régions frontalières de Djibouti, de l’Éthiopie, du Kenya, de l’Ouganda, de la Somalie, du Soudan et du Soudan du Sud.&lt;/p&gt;', '1669532873.png', 2, 'un-programme-ge-xeqc7eec', 1, 4, '2022-10-18 12:22:11', '2022-11-27 06:07:53'),
(13, 'AMÉLIORER LA QUALITÉ DES SOINS MÉDICAUX EN ALBANIE', '&lt;p&gt;L’UNOPS travaille avec le gouvernement de l’Albanie et d’autres partenaires pour rénover des installations médicales et fournir du matériel de diagnostic de pointe à des hôpitaux du pays.&lt;/p&gt;&lt;p&gt;Dans le cadre du soutien apporté à l’Albanie pour lutter contre la COVID-19, et en partenariat avec le ministère de la Santé et de la Protection sociale, l’UNOPS rénove la clinique pour les maladies infectieuses de l’hôpital Mère Teresa à Tirana.&lt;/p&gt;&lt;p&gt;Financés au moyen d’un prêt de 12,8&amp;nbsp;millions d’euros de la Banque mondiale, ces travaux vont transformer la clinique en un centre de santé ultramoderne qui pourra accueillir plus de 10&amp;nbsp;000&amp;nbsp;patientes et patients par an.&lt;/p&gt;&lt;p&gt;Une fois la rénovation terminée, la clinique comprendra 87&amp;nbsp;lits d’hôpital, 16&amp;nbsp;lits supplémentaires pour les soins d’urgence et 8&amp;nbsp;unités de soins intensifs, ce qui aidera le personnel à améliorer des services vitaux.&lt;/p&gt;', '1669532788.jpg', 2, 'ameliorer-la-qu-pdlce7jt', 1, 4, '2022-10-18 12:27:18', '2022-11-27 06:06:28'),
(14, 'Publication d’un nouveau rapport sur la résilience des systèmes de santé', '&lt;p&gt;Un nouveau rapport publié par &lt;i&gt;Economist Impact&lt;/i&gt; avec le soutien de l’UNOPS rassemble les points de vue de spécialistes sur les mesures qui peuvent être prises immédiatement pour renforcer la résilience des systèmes de santé.&lt;/p&gt;&lt;p&gt;Les changements climatiques, les conflits et la pandémie de la COVID-19 mettent en évidence les points faibles des systèmes de santé du monde entier. Un nouveau rapport, intitulé «&amp;nbsp;Bâtir des systèmes de santé résilients face à un avenir incertain&amp;nbsp;», s’appuie sur des entretiens menés avec divers spécialistes du secteur, représentant les perspectives des gouvernements, du milieu universitaire et des organisations à but non lucratif. Il examine l’utilité de bâtir des systèmes de santé résilients dans les pays à revenu faible ou intermédiaire, grâce à une meilleure coordination, des achats publics et des chaînes d’approvisionnement efficaces, des investissements intelligents dans les infrastructures, l’adoption de technologies numériques et une approche des soins de santé fondée sur la valeur.&lt;/p&gt;&lt;p&gt;«&amp;nbsp;Ce travail de recherche présente un certain nombre de stratégies qui peuvent être mises en œuvre pour renforcer les systèmes de santé, et démontre que la résilience peut jouer un rôle important dans la préparation et la réaction aux crises futures&amp;nbsp;», explique Sarah Aleyan, responsable des questions de santé mondiale à &lt;i&gt;Economist Impact&lt;/i&gt;.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;«&amp;nbsp;Aux quatre coins du monde, la pression extrême subie par les systèmes de santé menace l’accès à des soins de santé sûrs et fiables, en particulier pour les personnes vulnérables&amp;nbsp;», affirme Jens Wandel, Directeur exécutif par intérim de l’UNOPS.&lt;/p&gt;', '1669532661.jpg', 4, 'publication-d--wndvgpym', 1, 4, '2022-10-18 12:30:31', '2022-11-27 06:04:21'),
(15, 'Préservez la liberté de choix de nos aînés et luttez contre leur isolement', '<h2>Vivre plus longtemps tout en continuant de vivre bien</h2><p>Cette possibilité qui semblait autrefois exceptionnelle, devient de plus en plus courante. Comment faire de cet allongement de l’espérance de vie une chance pour les personnes et pour la société ?</p><p>Dernièrement, la crise sanitaire de la COVID-19 a exacerbé les problématiques liées au grand âge et a mis en lumière le rôle capital des soignants, des proches ainsi que des associations locales pour <strong>accompagner les personnes âgées isolées</strong>. Face à ce constat, il nous paraît plus important que jamais de renforcer nos <strong>actions auprès de nos ainés</strong>.</p>', '1669533917.jpg', 2, 'preservez-la-li-09cy0id9', 1, 4, '2022-11-27 06:25:17', '2022-11-27 06:25:17');

-- --------------------------------------------------------

--
-- Structure de la table `busness_plans`
--

CREATE TABLE `busness_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_entreprise` int(11) NOT NULL,
  `busness_plan` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `busness_plans`
--

INSERT INTO `busness_plans` (`id`, `id_entreprise`, `busness_plan`, `created_at`, `updated_at`) VALUES
(1, 6, '1654172695.zip', '2022-06-02 10:24:55', '2022-06-02 10:24:55'),
(2, 1, '1655413619.zip', '2022-06-16 19:06:59', '2022-06-16 19:06:59');

-- --------------------------------------------------------

--
-- Structure de la table `carousels`
--

CREATE TABLE `carousels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carousels`
--

INSERT INTO `carousels` (`id`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'apporter de la joie à réparer', 'Doit avoir les compétences, le temps ou le désir de faire l’entretien, la réparation et les mises à niveau informatiques, alors c’est votre affaire.', '1671893165.svg', '2022-10-19 10:19:49', '2022-12-24 13:46:05'),
(2, 'Réparation de qualité à un prix abordable', 'Si vous êtes un féru de technologie et que vous avez le courage de résoudre des problèmes informatiques, alors c’est une très bonne opportunité commerciale pour faire de gros profits.', '1671892256.svg', '2022-10-19 10:20:28', '2022-12-24 13:30:56'),
(4, 'Cela vous permet de mieux travailler', 'Presque toutes les petites entreprises et les bureaux à domicile utilisent des ordinateurs et en prennent suffisamment soin pour qu’ils fonctionnent tous correctement.', '1671893175.svg', '2022-11-28 13:18:22', '2022-12-24 13:46:15');

-- --------------------------------------------------------

--
-- Structure de la table `category_articles`
--

CREATE TABLE `category_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category_articles`
--

INSERT INTO `category_articles` (`id`, `nom`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Actualité', 'actualite-6wr13f0o', '2022-10-18 10:36:14', '2022-11-27 05:56:10'),
(2, 'Santé', 'sante-o0cw23wu', '2022-10-18 10:36:25', '2022-11-27 05:56:19'),
(3, 'Communiqué', 'communique-pteklr0u', '2022-10-18 10:37:33', '2022-11-27 05:56:27'),
(4, 'Corona virus', 'corona-virus-v72c5qg4', '2022-10-18 10:51:39', '2022-11-27 05:57:04');

-- --------------------------------------------------------

--
-- Structure de la table `choixes`
--

CREATE TABLE `choixes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `choixes`
--

INSERT INTO `choixes` (`id`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'La proximité de l’établissement', 'La position géographique de l’hôpital est un critère important qu’il faut prendre en considération. Ne pas choisir un établissement trop éloigné de son domicile peut être rassurant à la fois pour permettre un retour rapide après l’intervention, mais aussi pour simplifier un éventuel suivi médical.\n\nD’autre part, dans le cas d’une hospitalisation prolongée, une proximité avec l’établissement de santé choisi permet à votre entourage de vous rendre visite plus régulièrement.', '1669537363.avif', '2022-11-27 07:22:43', '2022-11-27 07:22:43'),
(2, 'Les spécialités hospitalières', 'En fonction des raisons de votre hospitalisation, vous pouvez être amené à choisir un hôpital selon les spécialités qui y sont pratiquées. En effet, chaque établissement de santé ne dispose pas des mêmes services et développe des domaines d’expertise particuliers en plus des domaines d’intervention classiques.\n\nEn résumé, si votre choix s’oriente vers un hôpital spécialisé dans votre problématique santé, vous êtes assuré de pouvoir bénéficier de soins fiables réalisés par des praticiens expérimentés. Néanmoins, ces établissements présentent généralement des délais de prise en charge plus longs.', '1669537400.jpg', '2022-11-27 07:23:20', '2022-11-27 07:23:20'),
(3, 'La notoriété de l’établissement', 'Tous les établissements de santé sont évalués et notés sur différents critères dont le niveau d’activité, le nombre de cas traités dans chaque discipline, l’équipement matériel, ainsi que le niveau de technicité.\n\nPuis tous les quatre ans, la Haute Autorité de Santé ( HAS) établit des certifications visant à évaluer la qualité d’un établissement (public ou privé), et d’un ou plusieurs services, à l’aide d’indicateurs sur les « bonnes pratiques » cliniques.', '1669537441.png', '2022-11-27 07:24:01', '2022-11-27 07:24:01'),
(4, 'Le budget', 'Vous pensez avoir trouvé l’hôpital idéal ? Toutefois, avez-vous songé à vérifier les tarifs qui y sont pratiqués, mais aussi et surtout les montants qui vous seront remboursés par votre complémentaire santé ? Les conditions de prise en charge sont un élément important dans le choix de votre établissement de santé, ils vous permettront de prévoir un budget pour vos frais d’hospitalisation.', '1669537469.png', '2022-11-27 07:24:29', '2022-11-27 07:24:29');

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idVille` int(11) NOT NULL,
  `nomCommune` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id`, `idVille`, `nomCommune`, `created_at`, `updated_at`) VALUES
(1, 1, 'Goma', '2022-11-17 10:58:39', '2022-11-17 10:58:39'),
(2, 1, 'Karisimbi', '2022-11-17 10:58:49', '2022-11-17 10:58:49');

-- --------------------------------------------------------

--
-- Structure de la table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `name`, `email`, `telephone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'roger sumaili', 'patrona@gmail.com', '+243817883541', 'salutation', 'Bonjour', '2022-10-19 10:08:05', '2022-10-19 10:08:18'),
(4, 'sefu arubu', 'sefu@gmail.com', '0970524665', 'j\'aimerai savoir les informations sur...', 'Bonsoir les gars', '2022-12-24 15:09:55', '2022-12-24 15:09:55');

-- --------------------------------------------------------

--
-- Structure de la table `decisions`
--

CREATE TABLE `decisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `decisions`
--

INSERT INTO `decisions` (`id`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Décision  1', '28 jours de congés annuels (25 + 3 jours de fractionnement).', '1669536926.jpg', '2022-11-27 07:14:53', '2022-11-27 07:20:02'),
(2, 'Décision 2', 'Formation continue tout au long du parcours professionnel au centre hospitalier, possibilité de congé de formation professionnelle, possibilité d’évolution professionnelle.', '1669536915.png', '2022-11-27 07:15:15', '2022-11-27 07:20:10'),
(3, 'Décision  3', 'Prise en charge des frais de transports en commun domicile/travail à hauteur de 50% des frais engagés.', '1669536953.jpg', '2022-11-27 07:15:54', '2022-11-27 07:19:39'),
(4, 'Décision 4', 'Possibilité de mise à disposition ponctuelle d’un logement, selon la nature des fonctions occupées.', '1669536987.avif', '2022-11-27 07:16:27', '2022-11-27 07:19:32');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ceo` int(11) NOT NULL,
  `nomEntreprise` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionEntreprise` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailEntreprise` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresseEntreprise` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephoneEntreprise` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solutionEntreprise` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rccm` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 0,
  `idsecteur` int(11) NOT NULL,
  `idforme` int(11) NOT NULL,
  `idPays` int(11) NOT NULL,
  `idProvince` int(11) NOT NULL,
  `edition` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteweb` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invPersonnel` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invHub` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invRecherche` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiffreAffaire` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbremploye` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_theme` int(11) DEFAULT NULL,
  `id_odd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `ceo`, `nomEntreprise`, `descriptionEntreprise`, `emailEntreprise`, `adresseEntreprise`, `telephoneEntreprise`, `solutionEntreprise`, `rccm`, `etat`, `idsecteur`, `idforme`, `idPays`, `idProvince`, `edition`, `facebook`, `linkedin`, `twitter`, `siteweb`, `invPersonnel`, `invHub`, `invRecherche`, `chiffreAffaire`, `nbremploye`, `logo`, `slug`, `created_at`, `updated_at`, `id_theme`, `id_odd`) VALUES
(1, 1, 'kaka security', '​\nChiffre d\'affaire annuel généré par l\'entreprise\n1000\nDescription de l\'entreprise', 'kakasecurity@gmail.com', 'kakasecurity@gmail.com', '+243817883541', 'la solution', 'CD/12/35-234/GOMA', 1, 1, 1, 1, 1, '2021', 'https://fonts.google.com/icons?icon.query=attach+money', 'https://web.whatsapp.com/', 'https://web.whatsapp.com/', 'https://fonts.google.com/icons?icon.query=attach+money', '10', '200', '800', '1000', '1-5', '1655412094.jpg', 'kaka-security-9i5x053n', '2022-06-01 10:37:53', '2022-07-15 16:51:51', 1, 1),
(2, 2, 'Boom topic', 'est une entreprise', 'boom@gmail.com', 'Goma ', '0825423678', 'la solution', 'cd/nr-1234/098', 1, 5, 3, 1, 1, '2022', '', '', '', '', '500', '800', '8300', '3000', '5-10', '1654088173.png', 'boom-topic-vji4ztwa', '2022-06-01 10:56:13', '2022-06-01 12:01:00', 1, 1),
(3, 6, 'jojo photo', 'Créer un business Plan avec Angel est simple grâce à notre outil qui vous guide pas à pas. Créez facilement un Business Plan avec Angel. Démarrez gratuitement. C\'est simple & rapide. Essayer gratuitement. Soutien de la Communauté. Rapide. Interface innovante.', 'jojophoto@gmail.com', 'kisangani', '0817883541', 'Renforcez l\'équipe et livrez d\'excellentes expériences avec Jira Service Management™. Accélérez le développement du travail et déployez facilement les changements. Essayez. Résolvez les problèmes. Tarifs transparents. 25% de tickets en moins.', '45ghr645', 1, 4, 2, 1, 1, '2021', '', '', '', '', '300', '4500', '30000', '1000', '10-15', '1654088350.png', 'jojo-photo-9u3dqdyg', '2022-06-01 10:59:10', '2022-06-01 12:00:51', 1, 1),
(4, 9, 'jonathan sarl', 'Le profil d\'entreprise est le sommaire formel d\'une entreprise et de ses activités ; une sorte de carte d\'identité, qui, en plus de fournir les caractéristiques de cette entreprise, indique aussi quelles sont sa mission, sa vision, ses valeurs, ses objectifs pour l\'avenir…', 'jonathan@gmail.com', 'goma', '09978234568', 'Madame, Monsieur, Notre société a pour secteur d\'activité (préciser le secteur) fondé depuis (préciser la date). Nous avons pour domaine d\'expertise (préciser vos principales offres : conseil financier, rénovation, restauration, …) avec une équipe de spécialistes de (nombre) personnes.21 juin 2021', 'CD-NK-6yer89/09-2022', 1, 3, 1, 1, 1, '2022', '', '', '', '', '4000', '8000', '35000', '12000', '1-5', '1654088586.png', 'jonathan-sarl-252mlcop', '2022-06-01 11:03:06', '2022-06-01 12:00:53', 1, 1),
(5, 10, 'victory tech', 'Comment faire une bonne présentation personnelle ?\nPour ce faire, voici un petit canevas qui a pour objectif de vous aider à structurer votre présentation personnelle :', 'victory@gmail.com', 'goma', '+243813456781', 'La manière la plus simple pour se présenter de manière originale sans prendre trop de risque est de vous présenter de manière conventionnelle en rajoutant une information insolite et pertinente. pertinente : qui est en lien avec le contexte, la raison pour laquelle vous êtes là, ce que vous faites dans vie…19 janv. 2020', '34DU78jg7', 1, 2, 2, 1, 1, '2022', '', '', '', '', '4500', '5000', '36000', '12300', '1-5', '1654091008.png', 'victory-tech-hud06ptu', '2022-06-01 11:06:11', '2022-06-01 12:00:57', 1, 1),
(6, 11, 'Dream of drc', 'Dream of drc(#dream) est une startup qui vise à promouvoir l\'intégrité de la jeunesse en appliquant la technologie afin de permettre l\'émergence de la société.', 'info@dreamofdrc.com', 'Goma', '+243970524665', 'Réduire le taux des difficultés que rencontre la société suite au manquement d\'une meilleure solution technologique appropriée à leur problématique au pourcentage le plus bas possible jamais atteint!', 'CD-N-K34YH78/03/08/21', 1, 3, 1, 1, 1, '2022', 'https://www.facebook.com/dreamofdrc', 'https://www.linkedin.com/in/dream-of-drc-startup-872765217/', 'https://twitter.com/drc_dream', 'http://dreamofdrc.com/', '500', '1000', '8000', '2670', '1-5', '1654089250.jpeg', 'dream-of-drc-fdmex2nh', '2022-06-01 11:14:10', '2022-07-07 13:49:37', 4, 3),
(7, 13, 'forex', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'forex@gmail.com', 'kisangani', '0997645124', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.', 'CD-NK-123HDG4', 1, 6, 2, 1, 3, '2022', '', '', '', '', '200', '500', '2000', '1700', '5-10', '1654090128.png', 'forex-3j0x77gk', '2022-06-01 11:28:48', '2022-07-07 13:42:21', 2, 2),
(8, 14, 'daula sarl', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'daula@gmail.com', 'Goma nord kivu', '+2438167346154', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'CD97HN08', 1, 5, 2, 1, 1, '2022', '', '', '', '', '300', '500', '7600', '2300', '5-10', '1654090571.jpg', 'daula-sarl-qooem00d', '2022-06-01 11:36:11', '2022-06-01 12:00:37', 1, 1),
(9, 15, 'webs lesson', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'info@webslesson.com', 'Goma', '+243817435671', 'first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'CD-NK/345OT/07/01-22', 1, 2, 2, 1, 1, '2022', '', '', '', '', '3000', '6000', '34000', '18000', '1-5', '1654090896.png', 'webs-lesson-10op78v5', '2022-06-01 11:41:36', '2022-06-01 12:13:37', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `forme_juridiques`
--

CREATE TABLE `forme_juridiques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomForme` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `forme_juridiques`
--

INSERT INTO `forme_juridiques` (`id`, `nomForme`, `created_at`, `updated_at`) VALUES
(1, 'Etablissement', '2022-05-31 11:43:52', '2022-05-31 11:43:52'),
(2, 'SARL', '2022-05-31 11:44:19', '2022-05-31 11:44:19'),
(3, 'SASU', '2022-05-31 11:44:29', '2022-05-31 11:44:29'),
(4, 'ASBL', '2022-05-31 11:44:48', '2022-05-31 11:44:48');

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

CREATE TABLE `galeries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `galeries`
--

INSERT INTO `galeries` (`id`, `photo`, `created_at`, `updated_at`) VALUES
(1, '1669679525.jpg', '2022-10-19 07:30:50', '2022-11-28 22:52:05'),
(2, '1669679537.jpg', '2022-10-19 07:31:00', '2022-11-28 22:52:17'),
(3, '1666171935.jpg', '2022-10-19 07:32:15', '2022-10-19 07:32:15'),
(4, '1666171940.jpg', '2022-10-19 07:32:20', '2022-10-19 07:32:20'),
(5, '1666171950.jpg', '2022-10-19 07:32:30', '2022-10-19 07:32:30'),
(6, '1666171954.jpg', '2022-10-19 07:32:34', '2022-10-19 07:32:34'),
(7, '1666171960.jpg', '2022-10-19 07:32:40', '2022-10-19 07:32:40'),
(8, '1666171966.jpg', '2022-10-19 07:32:46', '2022-10-19 07:32:46'),
(9, '1666171973.jpg', '2022-10-19 07:32:53', '2022-10-19 07:32:53'),
(10, '1666171978.jpg', '2022-10-19 07:32:58', '2022-10-19 07:32:58'),
(11, '1669679502.jpg', '2022-10-19 07:33:04', '2022-11-28 22:51:42'),
(12, '1669679485.jpg', '2022-10-19 07:33:10', '2022-11-28 22:51:25'),
(13, '1669679473.jpg', '2022-10-19 07:33:18', '2022-11-28 22:51:13'),
(14, '1669679462.jpg', '2022-10-19 07:33:23', '2022-11-28 22:51:02'),
(15, '1669679451.jpg', '2022-10-19 07:33:31', '2022-11-28 22:50:51');

-- --------------------------------------------------------

--
-- Structure de la table `link_canvases`
--

CREATE TABLE `link_canvases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ceo` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `link_canvases`
--

INSERT INTO `link_canvases` (`id`, `ceo`, `titre`, `message`, `created_at`, `updated_at`) VALUES
(1, 6, 'Problème', 'problème 1 ok', '2022-06-08 17:17:49', '2022-06-10 13:39:32'),
(2, 6, 'Solution', 'solution 1', '2022-06-08 17:18:12', '2022-06-08 17:18:12'),
(4, 6, 'Proposition de valeur unique', 'proposition 1', '2022-06-08 17:18:36', '2022-06-08 17:18:36'),
(5, 6, 'Proposition de valeur unique', 'proposition 3', '2022-06-08 17:18:46', '2022-06-08 17:18:46'),
(6, 6, 'Proposition de valeur unique', 'proposition 4', '2022-06-08 17:18:55', '2022-06-08 17:18:55'),
(7, 6, 'Avantage déloyale', 'avantage 1', '2022-06-08 17:19:08', '2022-06-08 17:19:08'),
(8, 6, 'Avantage déloyale', '2', '2022-06-08 17:19:20', '2022-06-08 17:19:20'),
(9, 6, 'Segment de client', 'Segment 1', '2022-06-08 17:19:34', '2022-06-08 17:19:34'),
(10, 6, 'Segment de client', 'Segment 2', '2022-06-08 17:19:46', '2022-06-08 17:19:46'),
(11, 6, 'Indicateur', 'Indicateur 1', '2022-06-08 17:20:00', '2022-06-08 17:20:00'),
(12, 6, 'Indicateur', 'Indicateur 2', '2022-06-08 17:20:09', '2022-06-08 17:20:09'),
(13, 6, 'Canaux', 'Canaux 1', '2022-06-08 17:20:20', '2022-06-08 17:20:20'),
(14, 6, 'Structure des coûts', 'Structure 1', '2022-06-08 17:20:34', '2022-06-08 17:20:34'),
(15, 6, 'Sources revenus', 'Source de revenus 1', '2022-06-08 17:20:52', '2022-06-08 17:20:52'),
(16, 6, 'Sources revenus', 'Source de revenus 2', '2022-06-08 17:21:04', '2022-06-08 17:21:04'),
(17, 6, 'Sources revenus', 'Source de revenus 2', '2022-06-08 17:21:15', '2022-06-08 17:21:15'),
(18, 6, 'Canaux', 'Canaux 2', '2022-06-08 17:21:31', '2022-06-08 17:21:31'),
(19, 9, 'Proposition de valeur unique', 'cool', '2022-06-08 17:57:06', '2022-06-08 17:57:06'),
(20, 6, 'Solution', 'solution ok', '2022-06-09 06:36:46', '2022-06-09 06:36:46'),
(21, 6, 'Avantage déloyale', 'coucou', '2022-06-10 12:05:22', '2022-06-10 12:05:22'),
(23, 1, 'Solution', 'solution ok plus', '2022-06-16 19:18:02', '2022-06-16 19:35:53'),
(24, 1, 'Proposition de valeur unique', 'proposition', '2022-06-16 19:18:11', '2022-06-16 19:18:29'),
(25, 1, 'Problème', 'problème 1', '2022-06-16 19:19:06', '2022-06-16 19:19:06'),
(26, 1, 'Problème', 'problème 2', '2022-06-16 19:19:14', '2022-06-16 19:19:14'),
(27, 1, 'Solution', 'solution ok', '2022-06-16 19:35:39', '2022-06-16 19:35:39'),
(28, 1, 'Canaux', 'ok', '2022-07-13 21:01:31', '2022-07-13 21:01:31');

-- --------------------------------------------------------

--
-- Structure de la table `link_canvas_deuxes`
--

CREATE TABLE `link_canvas_deuxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_coach` int(11) NOT NULL,
  `ceo` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `link_canvas_deuxes`
--

INSERT INTO `link_canvas_deuxes` (`id`, `id_coach`, `ceo`, `titre`, `message`, `created_at`, `updated_at`) VALUES
(2, 4, 6, 'Problème', 'probleme correction 2', '2022-06-11 05:18:48', '2022-06-14 14:19:44'),
(3, 4, 6, 'Solution', 'solution correction 1', '2022-06-11 05:19:15', '2022-06-11 05:19:15'),
(4, 4, 6, 'Solution', 'solution correction ok', '2022-06-11 05:19:31', '2022-06-23 07:32:13'),
(5, 4, 6, 'Proposition de valeur unique', 'proposition correction 1', '2022-06-11 05:19:49', '2022-06-11 05:19:49'),
(6, 4, 6, 'Proposition de valeur unique', 'proposition correction 2', '2022-06-11 05:20:04', '2022-06-11 05:20:04'),
(7, 4, 6, 'Avantage déloyale', 'avantage correction 1', '2022-06-11 05:20:20', '2022-06-11 05:20:20'),
(8, 4, 6, 'Segment de client', 'segment correction 1', '2022-06-11 05:20:33', '2022-06-11 05:20:33'),
(9, 4, 6, 'Segment de client', 'segment correction 2', '2022-06-11 05:20:42', '2022-06-11 05:20:42'),
(10, 4, 6, 'Indicateur', 'indicateur correction 1', '2022-06-11 05:20:56', '2022-06-11 05:20:56'),
(11, 4, 6, 'Canaux', 'canaux de distribution correction 1', '2022-06-11 05:21:18', '2022-06-11 05:21:18'),
(12, 4, 6, 'Canaux', 'canaux de distribution correction 2', '2022-06-11 05:21:30', '2022-06-11 05:21:30'),
(13, 4, 6, 'Structure des coûts', 'structure de cout correction 1', '2022-06-11 05:21:48', '2022-06-11 05:21:48'),
(14, 4, 6, 'Structure des coûts', 'structure de cout correction 400$', '2022-06-11 05:22:48', '2022-06-11 05:22:48'),
(16, 4, 6, 'Sources revenus', 'source de revenu  correction 2', '2022-06-11 05:23:23', '2022-06-11 05:23:23'),
(18, 4, 6, 'Problème', 'ok', '2022-06-11 07:20:49', '2022-06-11 07:20:49');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`, `receiver_id`, `image`) VALUES
(3, 2, 'oui bonjour', '2022-06-17 18:39:35', '2022-06-17 18:39:35', NULL, NULL),
(4, 6, 'Ni sawa?', '2022-06-17 18:39:48', '2022-06-17 18:39:48', NULL, NULL),
(5, 3, '👍', '2022-06-17 18:39:56', '2022-06-17 18:39:56', NULL, NULL),
(8, 12, 'ok boos', '2022-06-17 18:49:51', '2022-06-17 18:49:51', NULL, NULL),
(9, 4, 'ok boos', '2022-06-17 19:00:46', '2022-06-17 19:00:46', NULL, NULL),
(10, 4, '😍lool!😘', '2022-06-17 19:25:38', '2022-06-17 19:25:38', NULL, NULL),
(11, 6, NULL, '2022-06-17 19:26:45', '2022-06-17 19:26:45', NULL, 'chat/c8rXMNO6RcO58qKg592tyZHQVd3arxZoNgEkv50l.png'),
(13, 6, '😍👍 ok boos', '2022-06-17 19:55:06', '2022-06-17 19:55:06', NULL, NULL),
(14, 4, NULL, '2022-06-17 19:55:39', '2022-06-17 19:55:39', NULL, '1655502939.jpg'),
(15, 4, 'sawa🍊', '2022-06-17 19:58:09', '2022-06-17 19:58:09', NULL, NULL),
(16, 12, '😍 mdr!', '2022-06-17 19:58:33', '2022-06-17 19:58:33', NULL, NULL),
(17, 11, '🤐 je la boucle!', '2022-06-17 20:10:49', '2022-06-17 20:10:49', NULL, NULL),
(18, 12, 'On the local everything works fine, when I upload an image it will upload in storage folder and link of it will appear in public folder but since I moved to live host and production mode my images will upload in storage folder but nothing in my public_html/storage and I\'m not able to get them in my front-end.', '2022-06-17 20:21:58', '2022-06-17 20:21:58', NULL, NULL),
(20, 11, NULL, '2022-06-17 20:44:40', '2022-06-17 20:44:40', NULL, NULL),
(23, 4, NULL, '2022-06-18 08:32:58', '2022-06-18 08:32:58', NULL, '1655548378.png'),
(25, 4, 'ça va?', '2022-06-18 11:08:25', '2022-06-18 11:08:25', 14, NULL),
(27, 12, 'Ni sawa?', '2022-06-18 11:09:02', '2022-06-18 11:09:02', 4, NULL),
(28, 12, 'Ndiyo ni sawa?', '2022-06-18 11:09:28', '2022-06-18 11:09:28', 4, NULL),
(29, 4, 'Na weye?', '2022-06-18 11:09:40', '2022-06-18 11:09:40', 12, NULL),
(30, 12, 'On the local everything works fine, when I upload an image it will upload in storage folder and link of it will appear in public folder but since I moved to live host and production mode my images will upload in storage folder but nothing in my public_html/storage and I\'m not able to get them in my front-end.', '2022-06-18 11:10:00', '2022-06-18 11:10:00', 4, NULL),
(33, 4, '👍😍 bonjour', '2022-06-18 12:11:03', '2022-06-18 12:11:03', 15, NULL),
(46, 4, 'Hi bro!', '2022-06-18 13:22:06', '2022-06-18 13:22:06', 10, NULL),
(47, 4, NULL, '2022-06-18 13:23:46', '2022-06-18 13:23:46', NULL, '1655565826.png'),
(48, 1, 'Bonjour', '2022-06-18 13:27:18', '2022-06-18 13:27:18', 11, NULL),
(49, 1, 'Bonjour!', '2022-06-18 13:27:32', '2022-06-18 13:27:32', 4, NULL),
(50, 1, 'Hi😍', '2022-06-18 13:27:56', '2022-06-18 13:27:56', NULL, NULL),
(52, 1, 'hi boos!', '2022-06-18 13:39:32', '2022-06-18 13:39:32', 4, NULL),
(53, 4, 'hi to! _a va?', '2022-06-18 13:40:00', '2022-06-18 13:40:00', 1, NULL),
(54, 1, 'oui oui et toi?', '2022-06-18 13:40:19', '2022-06-18 13:40:19', 4, NULL),
(55, 4, 'moi aussi👩‍💻👩‍💻', '2022-06-18 13:41:10', '2022-06-18 13:41:10', 1, NULL),
(56, 4, '👍', '2022-06-18 13:42:00', '2022-06-18 13:42:00', 1, NULL),
(57, 1, 'ok', '2022-06-18 13:42:10', '2022-06-18 13:42:10', 4, NULL),
(58, 4, 'hi boos', '2022-06-18 13:44:02', '2022-06-18 13:44:02', NULL, NULL),
(59, 1, 'hi to', '2022-06-18 13:44:43', '2022-06-18 13:44:43', NULL, NULL),
(60, 1, 'dfff', '2022-06-18 13:55:43', '2022-06-18 13:55:43', 4, NULL),
(61, 4, 'ok', '2022-06-20 11:05:49', '2022-06-20 11:05:49', 14, NULL),
(62, 4, '👍', '2022-06-20 11:08:29', '2022-06-20 11:08:29', 15, NULL),
(63, 4, 'hi ☝️', '2022-06-20 11:10:42', '2022-06-20 11:10:42', 11, NULL),
(64, 4, 'Bonjour👍', '2022-06-23 07:44:12', '2022-06-23 07:44:12', 1, NULL),
(65, 1, 'oui bonjour', '2022-06-23 07:44:31', '2022-06-23 07:44:31', 4, NULL),
(66, 4, 'ok', '2022-06-23 07:44:53', '2022-06-23 07:44:53', NULL, NULL),
(67, 4, '👍 salut', '2022-07-02 11:33:00', '2022-07-02 11:33:00', 12, NULL),
(68, 12, 'ok boss', '2022-07-02 11:33:16', '2022-07-02 11:33:16', 4, NULL),
(69, 4, '😃', '2022-07-07 11:20:53', '2022-07-07 11:20:53', 12, NULL),
(70, 11, 'Bonjour boss', '2022-07-07 13:51:06', '2022-07-07 13:51:06', 18, NULL),
(71, 11, 'Bonjour boss', '2022-07-07 13:51:18', '2022-07-07 13:51:18', 17, NULL),
(72, 11, 'Bonjour boss', '2022-07-07 13:51:25', '2022-07-07 13:51:25', 14, NULL),
(73, 11, 'Hi boss!', '2022-07-07 13:52:00', '2022-07-07 13:52:00', 13, NULL),
(74, 11, 'Bonjour boss!🌏🏚️', '2022-07-07 13:52:47', '2022-07-07 13:52:47', 4, NULL),
(75, 11, 'Sawa les gars!👍', '2022-07-07 13:54:04', '2022-07-07 13:54:04', NULL, NULL),
(76, 3, 'hi', '2022-07-13 20:47:51', '2022-07-13 20:47:51', 21, NULL),
(77, 3, 'ni sawa😀👍', '2022-07-13 20:48:10', '2022-07-13 20:48:10', 17, NULL),
(78, 3, 'ni sawa boss?', '2022-07-13 20:48:39', '2022-07-13 20:48:39', 4, NULL),
(79, 4, 'salut', '2022-07-15 15:18:02', '2022-07-15 15:18:02', 12, NULL),
(80, 4, '👍 ni sawa?', '2022-07-15 15:18:22', '2022-07-15 15:18:22', 12, NULL),
(81, 3, 'Bonjour!', '2022-07-15 18:15:44', '2022-07-15 18:15:44', 18, NULL),
(82, 3, NULL, '2022-07-15 18:16:11', '2022-07-15 18:16:11', NULL, '1657916170.jpg'),
(83, 3, '👍😍', '2022-07-15 18:16:17', '2022-07-15 18:16:17', NULL, NULL),
(84, 4, 'salut boss👍', '2022-10-17 21:48:25', '2022-10-17 21:48:25', 11, NULL),
(85, 4, 'bonjour!', '2022-10-17 21:49:39', '2022-10-17 21:49:39', NULL, NULL),
(86, 4, 'hi', '2022-10-18 10:41:03', '2022-10-18 10:41:03', 12, NULL),
(87, 4, NULL, '2022-10-18 10:41:41', '2022-10-18 10:41:41', NULL, '1666096901.svg'),
(88, 4, NULL, '2022-10-18 10:41:43', '2022-10-18 10:41:43', NULL, NULL),
(89, 4, NULL, '2022-10-18 10:41:55', '2022-10-18 10:41:55', NULL, '1666096915.png'),
(90, 4, 'hi', '2022-10-18 10:41:59', '2022-10-18 10:41:59', NULL, NULL),
(91, 3, 'bonjour', '2022-11-28 09:29:35', '2022-11-28 09:29:35', 19, NULL),
(92, 3, 'Bonjour', '2022-11-28 09:30:53', '2022-11-28 09:30:53', 11, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_01_14_120826_create_roles_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(7, '2014_10_12_000000_create_users_table', 4),
(8, '2022_01_29_121045_create_sites_table', 5),
(9, '2022_01_29_150923_create_basics_table', 6),
(10, '2022_01_29_202952_create_services_table', 7),
(12, '2022_02_01_141050_create_partenaires_table', 9),
(13, '2022_02_01_170959_create_galeries_table', 10),
(14, '2022_02_01_204506_create_videos_table', 11),
(15, '2022_05_31_105154_create_pays_table', 12),
(16, '2022_05_31_113453_create_provinces_table', 13),
(17, '2022_05_31_115613_create_secteurs_table', 14),
(18, '2022_05_31_123221_create_forme_juridiques_table', 15),
(19, '2022_05_31_210441_create_entreprises_table', 16),
(20, '2022_06_02_091439_create_pitches_table', 17),
(21, '2022_06_02_114822_create_busness_plans_table', 18),
(22, '2022_06_04_060844_create_link_canvases_table', 19),
(23, '2022_06_04_061458_create_swots_table', 19),
(24, '2022_06_04_095039_create_photo_entreprises_table', 20),
(25, '2022_06_04_105425_create_video_entreprises_table', 21),
(26, '2022_06_11_062250_create_link_canvas_deuxes_table', 22),
(27, '2022_06_11_062454_create_swot_deuxes_table', 22),
(28, '2022_06_16_095405_create_mot_semaines_table', 23),
(31, '2022_06_17_095822_create_messages_table', 24),
(32, '2022_06_17_103443_add_receiver_id_field_to_messages', 24),
(33, '2022_06_17_143153_add_image_column_to_messages', 24),
(35, '2022_07_07_082850_create_theme_formes_table', 25),
(36, '2022_07_07_081205_create_odd_formes_table', 26),
(37, '2022_07_08_120716_create_user_attendaces_table', 27),
(39, '2022_07_13_101911_create_teams_table', 28),
(41, '2022_08_29_124727_create_category_articles_table', 29),
(42, '2022_01_31_083252_create_blogs_table', 30),
(43, '2022_10_19_082855_create_territoires_table', 31),
(44, '2022_09_03_181439_create_contact_infos_table', 32),
(45, '2022_09_04_212957_create_carousels_table', 33),
(46, '2022_09_19_142233_create_villes_table', 34),
(47, '2022_09_20_053623_create_communes_table', 34),
(48, '2022_09_20_074025_create_quartiers_table', 34),
(49, '2022_09_20_083452_create_avenues_table', 34),
(50, '2022_10_19_173744_create_textos_table', 34),
(51, '2022_09_02_080310_create_temoignages_table', 35),
(52, '2022_09_02_091353_create_valeurs_table', 35),
(53, '2022_09_02_100234_create_choixes_table', 36),
(54, '2022_09_02_103441_create_decisions_table', 36),
(55, '2022_09_02_111224_create_avantages_table', 36),
(56, '2022_09_02_112731_create_service_entreps_table', 36),
(57, '2022_09_02_093738_create_role_services_table', 37),
(58, '2022_09_02_121010_create_sou_service_entreps_table', 38);

-- --------------------------------------------------------

--
-- Structure de la table `mot_semaines`
--

CREATE TABLE `mot_semaines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mot_semaines`
--

INSERT INTO `mot_semaines` (`id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Jeune développeur, développer pour ton avenir et celui de ton pays!', '2022-06-16 08:41:05', '2022-06-16 08:41:28'),
(2, 'Jeune entrepreneur, entreprends pour ton avenir et celui de ton pays!', '2022-06-16 08:41:42', '2022-06-16 08:42:48');

-- --------------------------------------------------------

--
-- Structure de la table `odd_formes`
--

CREATE TABLE `odd_formes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `odd` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionOdd` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `odd_formes`
--

INSERT INTO `odd_formes` (`id`, `odd`, `descriptionOdd`, `icone`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ODD n°1 - Pas de pauvreté ', 'Éliminer la pauvreté sous toutes ses formes et partout dans le monde', '1657191300.png', NULL, '2022-07-07 08:36:28', '2022-07-07 08:55:00'),
(2, 'ODD n°2 - Faim « Zéro »', 'Éliminer la faim, assurer la sécurité alimentaire, améliorer la nutrition et promouvoir l’agriculture durable', '1657191329.jpg', NULL, '2022-07-07 08:55:29', '2022-07-07 08:55:29'),
(3, 'ODD n°3 - Bonne santé et bien-être', 'Permettre à tous de vivre en bonne santé et promouvoir le bien-être de tous à tout âge', '1657191353.png', NULL, '2022-07-07 08:55:53', '2022-07-07 08:55:53'),
(4, 'ODD n°4 - Éducation de qualité', 'Assurer à tous une éducation équitable, inclusive et de qualité et des possibilités d’apprentissage tout au long de la vie', '1657191386.png', NULL, '2022-07-07 08:56:26', '2022-07-07 08:56:26'),
(5, ' ODD n°5 - Égalité entre les sexes', 'Parvenir à l’égalité des sexes et autonomiser toutes les femmes et toutes les filles', '1657191407.png', NULL, '2022-07-07 08:56:47', '2022-07-07 08:56:47'),
(6, 'ODD n°6 - Eau propre et assainissement', 'Garantir l’accès de tous à des services d’alimentation en eau et d’assainissement gérés de façon durable', '1657191438.png', NULL, '2022-07-07 08:57:18', '2022-07-07 08:57:18'),
(7, 'ODD n°7 - Énergie propre et d\'un coût abordable', 'Garantir l’accès de tous à des services énergétiques fiables, durables et modernes, à un coût abordable', '1657191461.png', NULL, '2022-07-07 08:57:41', '2022-07-07 08:57:41'),
(8, 'ODD n°8 - Travail décent et croissance économique', 'Promouvoir une croissance économique soutenue, partagée et durable, le plein emploi productif et un travail décent pour tous', '1657191484.png', NULL, '2022-07-07 08:58:04', '2022-07-07 08:58:04'),
(9, 'ODD n°9 - Industrie, innovation et infrastructure', 'Bâtir une infrastructure résiliente, promouvoir une industrialisation durable qui profite à tous et encourager l’innovation', '1657191508.png', NULL, '2022-07-07 08:58:28', '2022-07-07 08:58:28'),
(10, 'ODD n°10 - Inégalités réduites', 'Réduire les inégalités dans les pays et d’un pays à l’autre', '1657191535.png', NULL, '2022-07-07 08:58:55', '2022-07-07 08:58:55'),
(11, 'ODD n°11 - Villes et communautés durable', 'Faire en sorte que les villes et les établissements humains soient ouverts à tous, sûrs, résilients et durables', '1657191560.png', NULL, '2022-07-07 08:59:20', '2022-07-07 08:59:20'),
(12, 'ODD n°12 - Consommation et production responsables', 'Établir des modes de consommation et de production durables', '1657191588.png', NULL, '2022-07-07 08:59:48', '2022-07-07 08:59:48'),
(13, 'ODD n°13 - Lutte contre les changements climatiques', 'Prendre d’urgence des mesures pour lutter contre les changements climatiques et leurs répercussions', '1657191614.png', NULL, '2022-07-07 09:00:14', '2022-07-07 09:00:14'),
(14, 'ODD n°14 - Vie aquatique', 'Conserver et exploiter de manière durable les océans, les mers et les ressources marines aux fins du développement durable', '1657191645.png', NULL, '2022-07-07 09:00:45', '2022-07-07 09:00:45'),
(15, 'ODD n°15 - Vie terrestre', 'Préserver et restaurer les écosystèmes terrestres, en veillant à les exploiter de façon durable, gérer durablement les forêts, lutter contre la désertification, enrayer et inverser le processus de dégradation des terres et mettre fin à l’appauvrissement de la biodiversité', '1657191673.png', NULL, '2022-07-07 09:01:13', '2022-07-07 09:01:13'),
(16, 'ODD n°16 - Paix, justice et institutions efficaces', 'Promouvoir l’avènement de sociétés pacifiques et inclusives aux fins du développement durable, assurer l’accès de tous à la justice et mettre en place, à tous les niveaux, des institutions efficaces, responsables et ouvertes à tous', '1657191698.png', NULL, '2022-07-07 09:01:38', '2022-07-07 09:01:38'),
(17, 'ODD n°17 - Partenariats pour la réalisation des objectifs', 'Renforcer les moyens de mettre en œuvre le Partenariat mondial pour le développement durable et le revitaliser', '1657191723.png', NULL, '2022-07-07 09:02:03', '2022-07-07 09:02:03');

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id`, `nom`, `url`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Dream of drc', 'https://dreamofdrc.com/', '1666172290.jpeg', '2022-02-01 14:35:09', '2022-10-19 07:38:10'),
(2, 'Casalind news', 'https://casalind-news.com/', '1669650809.png', '2022-02-01 15:42:14', '2022-11-28 14:53:29'),
(4, 'Congo culture', 'https://culturecongo.com/', '1666172651.jpg', '2022-02-01 15:46:58', '2022-10-19 07:44:11'),
(7, 'Casalind sarl', 'https://casalindsarl.com/', '1669650695.png', '2022-11-28 14:51:35', '2022-11-28 14:51:35');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '6VlxJrIolFDFtQuNdjHC33BdDCuf14oM1DB6IPGr3Tu3w6kzqULofYD3EKBG', '2022-01-27 10:46:27'),
('admin@gmail.com', 'QWaQileVQL5bBtuacovFbHQ5ivK6bV5KtmyTQkxXKiAmsc6R3Aog0inK6xWh', '2022-06-21 03:37:51'),
('admin@gmail.com', 'xlNkfexyLicDg2TXOZ119GSnIcPpTtXiQ47VoM5WziIXq3OtXTTdbxMVWfyx', '2022-06-21 03:40:33');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomPays` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nomPays`, `created_at`, `updated_at`) VALUES
(1, 'RDCongo', '2022-05-31 09:29:28', '2022-06-13 17:01:44'),
(2, 'Cameroun', '2022-05-31 09:29:51', '2022-05-31 09:29:51');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `photo_entreprises`
--

CREATE TABLE `photo_entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_entreprise` int(11) NOT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `photo_entreprises`
--

INSERT INTO `photo_entreprises` (`id`, `id_entreprise`, `photo`, `created_at`, `updated_at`) VALUES
(1, 6, '1654338319.JPG', '2022-06-04 08:25:19', '2022-06-04 08:25:19'),
(2, 6, '1654338330.JPG', '2022-06-04 08:25:30', '2022-06-04 08:25:30'),
(3, 6, '1654338342.JPG', '2022-06-04 08:25:42', '2022-06-04 08:25:42'),
(4, 6, '1654338355.jpg', '2022-06-04 08:25:55', '2022-06-04 08:25:55'),
(5, 6, '1654338363.jpg', '2022-06-04 08:26:03', '2022-06-04 08:26:03'),
(6, 6, '1654338371.jpg', '2022-06-04 08:26:11', '2022-06-04 08:26:11'),
(7, 6, '1654338380.jpg', '2022-06-04 08:26:20', '2022-06-04 08:26:20'),
(8, 6, '1654338388.jpg', '2022-06-04 08:26:28', '2022-06-04 08:26:28'),
(9, 6, '1654338405.jpg', '2022-06-04 08:26:45', '2022-06-04 08:26:45'),
(10, 6, '1654338414.jpg', '2022-06-04 08:26:54', '2022-06-04 08:26:54'),
(11, 6, '1654338419.png', '2022-06-04 08:26:59', '2022-06-04 08:26:59'),
(13, 1, '1655413663.jpg', '2022-06-16 19:07:43', '2022-06-16 19:07:43'),
(14, 1, '1655413672.png', '2022-06-16 19:07:52', '2022-06-16 19:07:52'),
(15, 1, '1655413681.png', '2022-06-16 19:08:01', '2022-06-16 19:08:01');

-- --------------------------------------------------------

--
-- Structure de la table `pitches`
--

CREATE TABLE `pitches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_entreprise` int(11) NOT NULL,
  `pitch` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pitches`
--

INSERT INTO `pitches` (`id`, `id_entreprise`, `pitch`, `created_at`, `updated_at`) VALUES
(1, 6, '1654170157.pptx', '2022-06-02 09:42:37', '2022-06-02 09:42:37'),
(2, 1, '1655413576.pptx', '2022-06-16 19:06:16', '2022-06-16 19:06:16');

-- --------------------------------------------------------

--
-- Structure de la table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idPays` int(11) NOT NULL,
  `nomProvince` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provinces`
--

INSERT INTO `provinces` (`id`, `idPays`, `nomProvince`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nord-Kivu', '2022-05-31 09:49:58', '2022-05-31 09:49:58'),
(2, 1, 'Kinshasa', '2022-05-31 09:50:12', '2022-05-31 09:50:12'),
(3, 1, 'Tshopo', '2022-05-31 09:50:57', '2022-05-31 09:51:42'),
(4, 2, 'Douala', '2022-05-31 09:51:17', '2022-05-31 09:51:25'),
(6, 1, 'Sud kivu', '2022-11-17 10:57:48', '2022-11-17 10:57:48');

-- --------------------------------------------------------

--
-- Structure de la table `quartiers`
--

CREATE TABLE `quartiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idCommune` int(11) NOT NULL,
  `nomQuartier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quartiers`
--

INSERT INTO `quartiers` (`id`, `idCommune`, `nomQuartier`, `created_at`, `updated_at`) VALUES
(1, 2, 'Mabanga sud', '2022-11-17 10:59:11', '2022-11-17 10:59:11'),
(2, 1, 'Mabanga nord', '2022-11-17 10:59:24', '2022-11-17 10:59:24');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'utilisateur normal', NULL, '2022-10-17 21:59:42'),
(3, 'member', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_services`
--

CREATE TABLE `role_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_services`
--

INSERT INTO `role_services` (`id`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'L\'égalité', 'Elle implique l\'absence de discrimination (race, religion, ethnie, âge...) et le devoir de soigner chacun, quels que soient son état de santé et sa situation sociale. L\'hôpital travaille en relation avec les autres professions et institutions compétentes, ainsi qu\'avec les associations d\'insertion et de lutte contre l\'exclusion.', '1669538157.avif', '2022-11-27 07:35:57', '2022-11-27 07:35:57'),
(2, 'La neutralité', 'Elle doit être respectée. Les soins sont donnés en faisant abstraction des croyances et opinions des malades.', '1669538178.avif', '2022-11-27 07:36:18', '2022-11-27 07:36:18'),
(3, 'La continuité', 'L\'hôpital public se caractérise notamment par ses obligations spécifiques en matière d\'accueil en urgence. Il doit mettre en place un système de permanence des soins, de même qu\'un service minimum en cas de grève, et assurer l\'ensemble des traitements, préventifs, curatifs et palliatifs.', '1669538197.avif', '2022-11-27 07:36:37', '2022-11-27 07:36:37'),
(4, 'L\'adaptabilité', 'Les réorganisations et les mutations sont étudiées et réalisées en vue de l\'intérêt général et des besoins de la population. Le patient a droit à un service de qualité et les services rendus doivent être évalués avec rigueur.', '1669538218.avif', '2022-11-27 07:36:58', '2022-11-27 07:36:58');

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomSecteur` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `nomSecteur`, `created_at`, `updated_at`) VALUES
(1, 'Mine', '2022-05-31 10:22:06', '2022-05-31 10:24:03'),
(2, 'Numérique', '2022-05-31 10:22:17', '2022-05-31 10:22:17'),
(3, 'Heath tech', '2022-05-31 10:22:29', '2022-05-31 10:22:29'),
(4, 'Fin tech', '2022-05-31 10:22:50', '2022-05-31 10:26:28'),
(5, 'Agro transformation', '2022-05-31 10:23:12', '2022-05-31 10:23:12'),
(6, 'Elevage', '2022-05-31 10:23:31', '2022-07-02 11:30:17');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `titre`, `description`, `icone`, `created_at`, `updated_at`) VALUES
(1, 'l\'inspiration esthétique', 'Activités qui visent à répondre à des intérêts ou des besoins culturels. Sans prendre la forme de biens matériels, ils en facilitent la production et la diffusion', 'home', '2022-01-31 07:55:31', '2022-10-19 07:55:18'),
(2, 'Loisirs et santé mentale et physique', 'Les loisirs pratiqués dans la nature, par exemple la marche ou bien les jeux sportifs dans les parcs et les espaces verts urbains, jouent un rôle important dans le maintien de la santé mentale et physique.', 'extension', '2022-01-31 07:58:29', '2022-10-19 07:58:13'),
(3, 'Tourisme', 'Les joies de la nature attirent des millions de voyageurs partout dans le monde. Ce service écosystémique culturel est à la fois bénéfique, s\'agissant des visiteurs, et lucratif, s\'agissant des prestataires de services de tourisme vert.', 'design_services', '2022-01-31 07:58:58', '2022-10-19 07:57:07'),
(7, 'Conscience et inspiration esthétiques dans la culture, l\'art et le design', 'Les animaux, les plantes et les écosystèmes sont une source d\'inspiration essentielle dans l\'art, la culture et le design; de plus en plus, ils inspirent aussi la science.', 'open_with', '2022-07-21 09:48:43', '2022-10-19 07:57:44');

-- --------------------------------------------------------

--
-- Structure de la table `service_entreps`
--

CREATE TABLE `service_entreps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `service_entreps`
--

INSERT INTO `service_entreps` (`id`, `nom`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Neurology', 'L’expertise des Services de santé animale ainsi que le financement de leurs activités sont essentiels pour garantir la réussite et la durabilité des politiques en matière de santé animale.', '&lt;p&gt;&lt;i&gt;&lt;strong&gt;Neurology&lt;/strong&gt;&lt;/i&gt; is the branch of medicine dealing with the diagnosis and treatment of all categories of conditions and disease involving the brain, the spinal&amp;nbsp;...&lt;/p&gt;', '1669536279.jpg', '2022-11-27 07:04:39', '2022-11-28 13:52:43'),
(2, 'Cardiology', 'L’expertise des Services de santé animale ainsi que le financement de leurs activités sont essentiels pour garantir la réussite et la durabilité des politiques en matière de santé animale.', '&lt;p&gt;&lt;i&gt;&lt;strong&gt;Cardiology&lt;/strong&gt;&lt;/i&gt; is a branch of medicine that deals with disorders of the heart and the cardiovascular system. The field includes medical diagnosis and treatment&amp;nbsp;...&lt;/p&gt;', '1669536340.jpg', '2022-11-27 07:05:40', '2022-11-28 13:52:38'),
(3, 'Gastroenterology', 'L’expertise des Services de santé animale ainsi que le financement de leurs activités sont essentiels pour garantir la réussite et la durabilité des politiques en matière de santé animale.', '&lt;p&gt;&lt;i&gt;&lt;strong&gt;Gastroenterology&lt;/strong&gt;&lt;/i&gt; is the branch of medicine focused on the digestive system and its disorders. &lt;i&gt;&lt;strong&gt;Gastroenterology&lt;/strong&gt;&lt;/i&gt;. Stomach colon rectum diagram-en.svg.&lt;/p&gt;', '1669536429.jpg', '2022-11-27 07:07:09', '2022-11-28 13:52:34'),
(4, 'Orthopedics', 'L’expertise des Services de santé animale ainsi que le financement de leurs activités sont essentiels pour garantir la réussite et la durabilité des politiques en matière de santé animale.', '&lt;p&gt;Trauma and orthopaedic (T&amp;amp;O) surgeons &lt;strong&gt;diagnose and treat conditions of the musculoskeletal system including bones and joints and structures that enable movement such as ligaments, tendons, muscles and nerves&lt;/strong&gt;.&lt;/p&gt;', '1669536502.jpg', '2022-11-27 07:08:22', '2022-11-28 13:52:26'),
(5, 'Gynecology', 'L’expertise des Services de santé animale ainsi que le financement de leurs activités sont essentiels pour garantir la réussite et la durabilité des politiques en matière de santé animale.', '&lt;p&gt;Gynaecology or gynecology (see spelling differences) is &lt;strong&gt;the area of medicine that involves the treatment of women\'s diseases, especially those of the reproductive organs&lt;/strong&gt;. It is often paired with the field of obstetrics, forming the combined area of obstetrics and gynecology (OB-GYN).&lt;/p&gt;', '1669536554.jpg', '2022-11-27 07:09:14', '2022-11-28 13:52:21'),
(6, 'Dental Surgery', 'L’expertise des Services de santé animale ainsi que le financement de leurs activités sont essentiels pour garantir la réussite et la durabilité des politiques en matière de santé animale.', '&lt;p&gt;The &lt;i&gt;&lt;strong&gt;Faculty&lt;/strong&gt;&lt;/i&gt; of &lt;i&gt;&lt;strong&gt;Dental Surgery&lt;/strong&gt;&lt;/i&gt; (FDS) is a professional body committed to enabling &lt;i&gt;&lt;strong&gt;dental surgeons&lt;/strong&gt;&lt;/i&gt; to achieve and maintain excellence in practice and patient&amp;nbsp;...&lt;/p&gt;', '1669536619.jpg', '2022-11-27 07:10:19', '2022-11-28 13:52:17');

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectif` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `politique` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `nom`, `description`, `email`, `adresse`, `tel1`, `tel2`, `tel3`, `token`, `about`, `mission`, `objectif`, `politique`, `condition`, `logo`, `facebook`, `linkedin`, `twitter`, `youtube`, `created_at`, `updated_at`) VALUES
(2, 'Afia moderne', 'Hôpital moderne  est une plateforme web traitement de soins de santé en ligne!', 'info@hopital.org', 'Goma, quartier des volcans', '+243818472003', '+243971681767', '+243843044444', 'XYH34d258jhgd0Tdn', NULL, 'L’accès à des services professionnels de développement des start-ups, en particulier l’accélération, est\nune étape très importante pour les start-ups. Trouver la bonne structure, au bon endroit et au bon prix\nest crucial et pourtant la procédure la plus difficile. De plus, plus de 75% des jeunes entreprises dans la\nphase initiale de leur aventure entrepreneuriale s&#39;effondrent en RDC.\nAinsi, le Hub UJN en partenariat avec le Laboratoire d’Accélération du PNUD compte encourager la\nmentalité d&#39;innovation entrepreneuriale, stimuler la croissance économique, et créer des emplois\ndécents (ODD 8) afin de contribuer à la réduction de la pauvreté (ODD 1) en République Démocratique\ndu Congo, mais aussi dans le but de renforcer les capacités en innovation des porteurs des solutions\nretenus sur Goma, Beni et Kisangani, le programme prévoit d’organiser un Boot camp pour une durée\nde 2 semaines.', 'Objectif global : Organiser un boot camp à Goma en faveur des 15 porteurs des solutions innovantes\nretenus dans le cadre du projet JINNOV pour la phase de l’expérimentation.\nObjectifs spécifiques :\n- Améliorer les connaissances entrepreneuriales des 15 jeunes entrepreneurs en leurs donnant des\nformations sur les thèmes : Design Thinking, Discipline entrepreneurship, Anthropologie, les 7\nHabitudes des gens qui réussissent ce qu’ils entreprennent pendant les 2 semaines ;\n- Expérimenter les 15 solutions proposées par les jeunes entrepreneurs ;\n- Amener les 15 jeunes entrepreneurs porteurs des solutions à atteindre leurs objectifs entrepreneurials ;\n- Perfectionner le business Plan des 15 jeunes porteurs des solutions ;\n3. Résultats attendus\n- 15 porteurs de solutions sont formés au travers du Boot Camp à Goma ;\n- 15 jeunes entrepreneurs sont coachés ;\n- 15 porteurs des solutions font l’expérimentations de leurs projets ;\n- 15 porteurs des solutions pitchent leurs projets.\n- 15 porteurs des solutions ont un BP mis à jour après l’expérimentation ;\n4. Méthodologie\n- Exposé court sur la théorie générale relative à la matière ;\n- Échanges pratiques, réception du feed-back des apprenants et Exposés des projets par les\napprenants ;\n- Descente pour expérimentation.\n5. Lieu et durée :\nGoma Pendant 2 semaines', 'la politique', 'notre condition', '1671894557.png', 'https://web.facebook.com/Dream-of-drc-114107447382924', 'https://www.linkedin.com/in/dream-of-drc-startup-872765217/', 'https://twitter.com/drc_dream', 'https://youtube.com/', '2022-01-29 13:53:28', '2022-12-24 14:09:17');

-- --------------------------------------------------------

--
-- Structure de la table `sou_service_entreps`
--

CREATE TABLE `sou_service_entreps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_service` int(11) NOT NULL,
  `nom` varchar(450) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` varchar(450) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sou_service_entreps`
--

INSERT INTO `sou_service_entreps` (`id`, `id_service`, `nom`, `titre`, `description`, `photo`, `prix`, `created_at`, `updated_at`) VALUES
(1, 1, 'Opération interne', 'Opération interne', '&lt;p&gt;Opération interne description&lt;/p&gt;', '1669621801.jpg', '2à', '2022-11-28 06:50:01', '2022-11-28 06:50:01'),
(2, 1, 'Sous services 2', 'Sous services 2', '&lt;p&gt;A un moment où personne ne s’y attend, le marketing digital devient de plus en plus une clé indispensable pour le succès des entreprises. Aujourd’hui, l’internet prend une grande partie de préoccupations dans la vie des humains, il devient d’ailleurs une partie des humains. Ce qui explique la simplicité de la communication et rend indispensable la numérisation des processus de communication pour atteindre un nombre suffisant des personnes selon la cible de l’entreprise.&lt;/p&gt;', '1669669354.webp', '50', '2022-11-28 20:02:34', '2022-11-28 20:02:34'),
(3, 1, 'Sous service 3', 'Sous service 3', '&lt;p&gt;La plupart des gens diraient que les grandes entreprises l’ont fait et ont réussi et y tireraient des préjugés pour mettre des obstacles devant leur propre détermination ;&amp;nbsp;Pourtant, selon l’expérience, nous sommes convaincus qu\'il y aura toujours une place spéciale pour les petites startups dans les affaires.&amp;nbsp;Les jeunes entrepreneurs ont un avantage sur leurs plus gros concurrents.&amp;nbsp;Ainsi, alors que les grandes sociétés du monde ont du mal à atteindre le seuil de leurs frais généraux de plusieurs milliards de dollars, les plus petites startups se servant du marketing digital réalisent déjà des bénéfices.&amp;nbsp;Quels avantages ces jeunes startups ont-elles sur le marché ?&amp;nbsp;&lt;/p&gt;', '1669669398.png', '40', '2022-11-28 20:03:18', '2022-11-28 20:03:18');

-- --------------------------------------------------------

--
-- Structure de la table `swots`
--

CREATE TABLE `swots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ceo` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `swots`
--

INSERT INTO `swots` (`id`, `ceo`, `titre`, `message`, `created_at`, `updated_at`) VALUES
(1, 6, 'Forces', 'force 1', '2022-06-11 13:31:11', '2022-06-11 13:31:11'),
(2, 6, 'Forces', 'force 2', '2022-06-11 13:31:24', '2022-06-11 13:31:24'),
(3, 6, 'Faiblesses', 'Faiblesse 1', '2022-06-11 13:31:43', '2022-06-11 13:31:43'),
(4, 6, 'Faiblesses', 'Faiblesse 2', '2022-06-11 13:31:53', '2022-06-11 13:31:53'),
(5, 6, 'Faiblesses', 'Faiblesse 3', '2022-06-11 13:32:03', '2022-06-11 13:32:03'),
(6, 6, 'Opportunités', 'Opportunité 1', '2022-06-11 13:32:30', '2022-06-11 13:32:30'),
(7, 6, 'Opportunités', 'Opportunité 2', '2022-06-11 13:32:41', '2022-06-11 13:32:41'),
(8, 6, 'Opportunités', 'Opportunité 3', '2022-06-11 13:32:51', '2022-06-11 13:32:51'),
(9, 6, 'Menaces', 'Menace 1', '2022-06-11 13:33:15', '2022-06-11 13:33:15'),
(10, 6, 'Menaces', 'Menace 2', '2022-06-11 13:33:25', '2022-06-11 13:33:25'),
(11, 6, 'Menaces', 'Menace 3', '2022-06-11 13:33:35', '2022-06-11 13:33:35'),
(12, 6, 'Menaces', 'Menace 4', '2022-06-11 13:33:45', '2022-06-11 13:33:45'),
(13, 1, 'Forces', 'force 1', '2022-06-16 19:32:26', '2022-06-16 19:32:26'),
(14, 1, 'Forces', 'force 2', '2022-06-16 19:32:34', '2022-06-16 19:32:34'),
(15, 1, 'Faiblesses', 'faiblesse', '2022-06-16 19:32:48', '2022-06-16 19:32:48'),
(16, 1, 'Opportunités', 'opportunité', '2022-06-16 19:33:03', '2022-06-16 19:33:03'),
(17, 1, 'Menaces', 'menace 1', '2022-06-16 19:33:20', '2022-06-16 19:33:33');

-- --------------------------------------------------------

--
-- Structure de la table `swot_deuxes`
--

CREATE TABLE `swot_deuxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_coach` int(11) NOT NULL,
  `ceo` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `swot_deuxes`
--

INSERT INTO `swot_deuxes` (`id`, `id_coach`, `ceo`, `titre`, `message`, `created_at`, `updated_at`) VALUES
(1, 4, 6, 'Forces', 'SWOT analysis (or SWOT matrix) is a strategic planning technique used to help a person or organization identify strengths, weaknesses, opportunities, ...', '2022-06-11 15:54:12', '2022-06-11 17:13:20'),
(4, 4, 6, 'Opportunités', 'correction opportunité', '2022-06-11 15:55:00', '2022-06-11 15:55:00'),
(10, 4, 6, 'Menaces', 'correction menace', '2022-06-11 15:56:16', '2022-06-11 17:12:11'),
(11, 4, 6, 'Faiblesses', 'Faiblesse 13434334', '2022-06-11 17:11:41', '2022-06-11 17:11:55'),
(12, 4, 6, 'Faiblesses', 'swot · GitHub Topicshttps://github.com › topics › swot\nTraduire cette page\nSWOT analysis (or SWOT matrix) is a strategic planning technique used to help a person or organization identify strengths, weaknesses, opportunities, and ...', '2022-06-11 17:39:16', '2022-06-11 17:39:16'),
(13, 4, 6, 'Faiblesses', 'Conducting a SWOT Analysis. Based on the situation analysis, organizations analyze their strengths, weaknesses, opportunities, and threats, or conduct what\'s ...', '2022-06-11 17:40:01', '2022-06-11 17:40:01'),
(14, 4, 6, 'Forces', 'Comprehend the relationships among business, corporate, and international strategy. Know the inputs into a SWOT analysis.', '2022-06-11 17:51:06', '2022-06-11 17:51:06'),
(15, 4, 6, 'Opportunités', 'fullstack web developer. hardworking student developer at isig goma', '2022-06-11 17:51:38', '2022-06-11 17:51:38'),
(16, 4, 6, 'Menaces', 'First, GitHub has more than eight hundred permanent employees. GitHub developers are generally tasked with the development and maintenance of certain projects ...', '2022-06-11 17:52:19', '2022-06-11 17:52:19');

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biographie` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `nom`, `email`, `titre`, `biographie`, `photo`, `etat`, `facebook`, `linkedin`, `twitter`, `telephone`, `created_at`, `updated_at`) VALUES
(3, 'Bienfait ijambo', 'ijamboizuba20@gmail.com', 'I.T.I, Développeur', 'I.T.I, Développeur ', '1669625042.jpg', 1, 'https://web.facebook.com/bienfait.ijambo', '', 'https://dreamofdrc.com/', '+243 991653604', '2022-07-13 11:17:05', '2022-11-28 07:44:02'),
(4, 'sumaili shabani roger', 'sumailiroger681@gmail.com', 'Fullstack developer', 'Techentrepreneur #ceo et fondateur de dream of drc sarl. apporteur de solutions numériques de la nouvelle technologie.', '1666175467.jpg', 1, 'https://web.facebook.com/patronat.shabanisumaili.9', 'linkedin.com/in/sumaili-shabani-roger-patrôna-7426a71a1', 'https://twitter.com/RogerPatrona', '+243817883541', '2022-07-13 11:19:07', '2022-10-19 08:31:07'),
(5, 'Benit bahati Baraka', 'benitbahati@gmail.com', 'Directeur commercial', 'CEO et fondateur de Casalind SARL...', '1669624720.jpg', 1, 'https://web.facebook.com/benitalkim', 'https://www.linkedin.com/in/benit-bahati-536500179/?originalSubdomain=cd', 'https://twitter.com/BenitAlkim', '+243823268000', '2022-07-13 11:19:45', '2022-11-28 07:38:40'),
(7, 'Judith Bugi Kabano', 'judithkabano9@gmail.com', 'Directeur administratif...', 'Directeur administratif...', '1669624827.jpg', 1, 'https://web.facebook.com/judith.kabano.5', '', '', '+243818472003', '2022-07-13 11:25:59', '2022-11-28 07:40:27');

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fonction` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `nom`, `fonction`, `message`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Sifa tumba', 'Patiente', 'J\'ai appris que la santé publique n\'est pas une opération chirurgicale ; elle nécessite du temps et de la patience si l\'on veut ...', '1669534610.jpg', '2022-11-27 06:36:34', '2022-11-27 06:37:15'),
(2, 'Roger sifiwa', 'Patient', 'Vos professionnels de la santé étaient tous exceptionnels. Que ce soit tard le soir ou tôt le matin, leur engagement et leur niveau de soins n\'ont jamais ...', '1669534682.webp', '2022-11-27 06:38:02', '2022-11-27 06:38:02'),
(3, 'Jojo Yozo', 'Patient et entrepreneur', 'Vos professionnels de la santé étaient tous exceptionnels. Que ce soit tard le soir ou tôt le matin, leur engagement et leur niveau de soins n\'ont jamais ...', '1669534718.jpg', '2022-11-27 06:38:38', '2022-11-27 06:38:38'),
(4, 'Huley frontene', 'Medecin commandant', 'Vos professionnels de la santé étaient tous exceptionnels. Que ce soit tard le soir ou tôt le matin, leur engagement et leur niveau de soins n\'ont jamais ...', '1669534775.jpg', '2022-11-27 06:39:35', '2022-11-27 06:39:35');

-- --------------------------------------------------------

--
-- Structure de la table `territoires`
--

CREATE TABLE `territoires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomTerritoire` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `territoires`
--

INSERT INTO `territoires` (`id`, `nomTerritoire`, `created_at`, `updated_at`) VALUES
(1, 'Mwenga', '2022-10-19 06:53:17', '2022-10-19 06:53:17'),
(2, 'Shabunda', '2022-10-19 06:53:26', '2022-10-19 06:53:26'),
(3, 'Pangi', '2022-10-19 06:53:34', '2022-10-19 06:53:34'),
(4, 'Walikale', '2022-10-19 06:53:41', '2022-10-19 06:53:41');

-- --------------------------------------------------------

--
-- Structure de la table `textos`
--

CREATE TABLE `textos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `theme_formes`
--

CREATE TABLE `theme_formes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomTheme` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `theme_formes`
--

INSERT INTO `theme_formes` (`id`, `nomTheme`, `created_at`, `updated_at`) VALUES
(1, 'Protection sociale', '2022-07-07 07:33:10', '2022-07-07 07:33:10'),
(2, 'Insécurité alimentaire', '2022-07-07 07:33:22', '2022-07-07 07:33:22'),
(3, 'Éruption volcanique', '2022-07-07 07:33:31', '2022-07-07 07:33:31'),
(4, 'Santé et bien être', '2022-07-07 07:33:42', '2022-07-07 07:33:42'),
(5, 'Environnement et Écologie', '2022-07-07 07:33:53', '2022-07-07 07:33:53');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `telephone`, `adresse`, `avatar`, `sexe`, `id_role`, `remember_token`, `created_at`, `updated_at`, `active`) VALUES
(1, 'user one', 'user@gmail.com', NULL, '$2y$10$a5FWP6l2FpvD8g2QcL0XAOYGOm05RCW5BcLpaSZ9RJtufRce3nlze', '+243817883541', 'Goma quartier himbi', '1643296973.webp', 'F', 2, 'Vq82sED4amcmdUNxk0u6W8HPuQknceQwsz2NobvwCDCrhmhGnMggU5WjQU0V', NULL, '2022-02-03 05:37:59', 1),
(2, 'user2', 'user2@gmail.com', NULL, '$2y$10$wn9c0j9xzMVMhpYZLAL8Cu0b9eZN3QebdSMOIjE4DNngwJxy/owI.', NULL, NULL, '1643296833.jpg', 'M', 2, '$2y$10$Tug/E8koDG.xEw3M.DluA.3hfS1ugnEH6WzbXxHVDbBk.JDdT/0Ha', NULL, '2022-01-27 13:20:33', 1),
(3, 'member', 'member@gmail.com', NULL, '$2y$10$2sZHAUEDtc79UiH/6PMBe.Mf7W4h2x.hG9vfUZ3HQiVZbFP//TEFK', NULL, NULL, '1643296874.jpg', 'M', 3, 'PdA8lgd7bWqfhuVW7FyiCvF2O2RZcMceFXAY47b4VN8Jnw8PTMUyBkQ8cx4t', NULL, '2022-01-27 13:21:14', 1),
(4, 'administrateur lega', 'admin@gmail.com', NULL, '$2y$10$V0FmIG6fab5a1wxmwcwFUuHK5h.9SWChmP1LFXZ2676CCKnVeH1eG', '+243817883541', 'Goma, Katoyi', '1643812713.jpg', 'M', 1, 'VdXlY3xb4IRYSgehEsDW0PVvT3loFQGoHsth0KHrEk7wuKD0KhGNOyeHCjfr', NULL, '2022-10-18 12:15:48', 1),
(6, 'jojo', 'jojo@gmail.com', NULL, '$2y$10$aoWHyUaAEAjYsTALtxLksun/nYYQ9ylT9t5MRKvN.mQcJ48tUIJqG', '0817883541', 'goma katoyi', '1643296735.jpg', 'M', 2, '$2y$10$xZ0BLZRaYcKn7ZI5F59IeeVlxTtbaFOYiyEfNmOH1TE86D7DR/Jw.', NULL, '2022-01-27 13:18:55', 1),
(7, 'joel', 'joel@gmail.com', NULL, '$2y$10$IAEW8G7YBNcYPz.rIBVuz.EPkRmpCg6j8Nf2S3LcKUwSPinYAQN7y', '0970524665', 'Goma Ndosho', '1643297170.jpg', 'M', 3, 'ag6cmnntycjMnrJulnZG2MySY9iGEEhZRe5wSiMxfXwdhVB3ZF89xQAokAx9', '2022-01-27 13:14:47', '2022-01-27 13:26:32', 1),
(9, 'jonathan kambere', 'jonathan@gmail.com', NULL, '$2y$10$rAACs28vmfFg/sbDKOSG1.rLuhhKU/uFKbOpwcy3nSpkPIsp8w6j6', '+243817883541', 'goma himbi', '1654038836.jpg', 'M', 2, '$2y$10$b.uaphKq66QNCnp7vyVxxO3LZ9rFMSs/guRkbl0y1g2ySqOrODcsS', NULL, '2022-05-31 19:13:56', 1),
(10, 'Victor shukuru', 'victor@gmail.com', NULL, '$2y$10$HJfYk412uUod4fy/F.n/s.oOSVzGfxtws8pnEP/0hS9pKaVM7Mk6.', '0823456789', 'Goma', 'avatar.png', 'M', 2, '$2y$10$B61dMeAbZt0X7Ozq2c1Wve5PSemP2SRVCO10VO9fOxHocL/hrUkdm', NULL, NULL, 1),
(11, 'Roger sumaili', 'sumailiroger681@gmail.com', NULL, '$2y$10$49XVZ3daXANHE2VrjqetJONl5P4wIb/WS5lpoHW4zuG2K7umH.tiC', '+243970524665', 'Goma', '1654038823.jpg', 'M', 2, 'PrmidXp2J5mBAL0N3YElOUG4yBuiHa3FtKvjOad2EwTTGNtClTHeF8CjXdAR', NULL, '2022-05-31 19:13:44', 1),
(12, 'Benit bahati', 'benitbahati@gmail.com', NULL, '$2y$10$UVVQBLvvqgzuOcujjeE6AOpge84Rx8WZJMixCArUB5SJ1fUdpLBpu', '+142857823567', 'Goma', '1654038789.jpg', 'M', 2, '$2y$10$DvAHs0GxDATht5k542jcte9qqE0LYntoqYyXrW3VvGN2HezjI75y.', NULL, '2022-05-31 19:13:09', 1),
(13, 'Pionde bin sefu', 'pionde@gmail.com', NULL, '$2y$10$nfkWVY2tDFbjg49bfE/Fnehxfrs/vGg.MBar76Gp8QEKw3i/exa1y', '+243817883541', 'Kisangani', '1654038894.jpg', 'M', 2, '$2y$10$ivR38s3LhmBwwe1JhkMjM.uFRC/uSp0k6edq.F8qOo32HdF.I79PW', NULL, '2022-05-31 19:14:54', 1),
(14, 'Elégance daula', 'elgadaula@gmail.com', NULL, '$2y$10$wUhtw.5bdY64Z8ysYKVq6.C0AvXei1ee45nl0iwcArjuDh9cMZk.q', '+243816234903', 'Kisangani', '1654038776.jpg', 'F', 2, '$2y$10$Pb/ItzClgKbqYTVGCcwpOe9OJRr7h2N.eWfnAvKOl9Ead1Sdbm5IO', NULL, '2022-05-31 19:12:56', 1),
(15, 'john smith', 'johnsmith@gmail.com', NULL, '$2y$10$7TYio3TjCaK1vfO43sdVwe1yCg.uyBTODfUkuL.6eKlEOBIRczCfW', '+243817883541', 'Beni', '1654038767.jpg', 'M', 2, '$2y$10$Ct/fL6sUQmMDW8CygIx2fuE4WsVjvjlfX2s9gyASjCgv0lG2iV3Ka', NULL, '2022-05-31 19:16:58', 1),
(16, 'jojo kahembe', 'jojo@gmail.com', NULL, '$2y$10$xTXaFvYC2LTU.oDnvMXqquAyal6H7.l/WJmFhnKEKvy1N5WSOk/2O', NULL, NULL, 'avatar.png', 'M', 2, '$2y$10$j9lYKwSc4p1rI4U0sQTOGOauFtRATzmNmwqIUu0cuHAtdazpCKpSS', NULL, NULL, 0),
(17, 'Patrick ombeni', 'patrick@gmail.com', NULL, '$2y$10$uAKvBshLnpTli5TGrP9A0uXmZl.UzJ1FRut5uEEa6MyYqKptleQRa', NULL, NULL, '1655789076.jpg', 'M', 2, '$2y$10$IVo.bNSnPgyq.6rFzUxhPOZ1xAmvuD6T3xc3JcJEgtj/O8aYWejfa', NULL, '2022-06-21 03:24:36', 0),
(18, 'jonathan dufina', 'jonathan12@gmail.com', NULL, '$2y$10$k.atrYUfNHhUqXu5kuoHye4Ibitvgyit0o.vCpdre8RS15FNd0wiW', NULL, NULL, '1655788876.jpg', 'M', 2, '$2y$10$5Jg6nldOfetBkxocGACXB.64YRg4/TYN5zUEg8hAVBBfj0RQrR5Oa', NULL, '2022-06-21 03:21:16', 1),
(19, 'jonathan board', 'grafikart@gmail.com', NULL, '$2y$10$rMtRJDBgQX5gRX1OlrrI1OOn/lfTFcxj6T7WSVAeI1i6bALMbEYFO', NULL, NULL, 'avatar.png', 'M', 2, '$2y$10$L8apYY7zQ64rrYpAijRla.TOvGYufvq9TrO7foJ.wNN4KXBIiumV6', NULL, NULL, 0),
(21, 'Pionde bien sefu', 'piondesefu123@gmail.com', NULL, '$2y$10$89Lsat0OoFMzXsp04EuxzeQc5xQIOQ774s51v/CPA6XzSxVju2wqu', '0817883541', 'Goma himbi', 'avatar.png', 'M', 2, '$2y$10$juF6VS0CxhueOWjyFyqMneyyndS1ro7iImVQPExJS8z46zEScTMjW', NULL, '2022-10-17 21:53:39', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_attendaces`
--

CREATE TABLE `user_attendaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `id_role` int(11) NOT NULL DEFAULT 2,
  `nomP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionP` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avancementP` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentaire` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_theme` int(11) NOT NULL,
  `id_odd` int(11) NOT NULL,
  `date_naiss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbremploye` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_attendaces`
--

INSERT INTO `user_attendaces` (`id`, `name`, `email`, `email_verified_at`, `password`, `telephone`, `adresse`, `avatar`, `sexe`, `active`, `id_role`, `nomP`, `descriptionP`, `avancementP`, `commentaire`, `id_theme`, `id_odd`, `date_naiss`, `nbremploye`, `created_at`, `updated_at`) VALUES
(1, 'Sumbu leonard', 'sumbu@gmail.com', NULL, '123456', '0817883541', 'virunga goma', NULL, 'F', 0, 2, 'julisha', 'brevet', 'prototypage 78', 'commentaire 1334', 3, 4, '1998-07-08', '15-20', '2022-07-08 12:13:43', '2022-07-08 12:21:34'),
(2, 'cool le boss', 'coucou@gmail.com', NULL, '12345678', '0817883541', 'Goma', NULL, 'M', 0, 2, 'Payondgo', 'description locale', 'ok', 'ok', 2, 2, '1999-07-08', '5-10', '2022-07-08 12:18:32', '2022-07-08 12:21:30'),
(5, 'susu kahembe', 'susu@gmail.com', NULL, '123456', '0817883541', 'Goma tmk', NULL, 'F', 0, 2, 'Goma chai', 'description de goma chai', 'prototypage', 'description de goma chai drc', 4, 3, '2022-07-08', '10-15', '2022-07-08 13:25:18', '2022-07-08 13:25:18'),
(6, 'sus leo', 'sus@gmail.com', NULL, '123456', '0817883541', 'goma', NULL, 'M', 0, 2, 'Goma chai', 'description Goma chai', 'prototypage', 'commentaire Goma chai', 4, 3, '2022-07-08', '5-10', '2022-07-08 13:29:44', '2022-07-08 13:29:44'),
(7, 'Kahembe tumba', 'kahembetumba@gmail.com', NULL, '12345678', '0817883541', 'Goma himbi', NULL, 'M', 0, 2, 'SoS Afia', 'ok', 'Prototype', 'Lol', 4, 3, '1997-07-13', '1-5', '2022-07-13 19:55:30', '2022-07-13 19:55:30');

-- --------------------------------------------------------

--
-- Structure de la table `valeurs`
--

CREATE TABLE `valeurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `valeurs`
--

INSERT INTO `valeurs` (`id`, `nom`, `titre`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Efficacité', 'Efficacité', 'nous agissons rapidement pour que vous puissiez démarrer votre projet dans les plus brefs délais...', '1669534971.avif', '2022-11-27 06:42:51', '2022-11-27 06:42:51'),
(2, 'Qualité', 'Qualité', 'Notre seul moyen de vous garantir une tranquillité d’esprit maximale et de gagner votre confiance...', '1669534996.jpg', '2022-11-27 06:43:16', '2022-11-27 06:47:11'),
(3, 'Professionnalisme', 'Professionnalisme', 'Nous respectons nos engagements et répondons aux attentes..', '1669535040.png', '2022-11-27 06:44:00', '2022-12-24 14:40:34');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `videos`
--

INSERT INTO `videos` (`id`, `titre`, `description`, `url`, `created_at`, `updated_at`) VALUES
(1, 'La santé mentale (1/2) - Joyce Meyer - Gérer mes émotions', 'Joyce nous explique pourquoi nos pensées ont un impact spirituel sur notre santé mentale.\n\nN°873-2 JMF EEL 873-2 - La santé mentale (1/2)', 'https://www.youtube.com/embed/P2bQ_G76qcw', '2022-02-02 13:09:12', '2022-11-28 21:57:54'),
(2, 'La santé mentale (2/2) - Joyce Meyer - Gérer mes émotions', 'Joyce nous explique pourquoi nos pensées ont un impact spirituel sur notre santé mentale.\nN°873-3 JMF EEL 873-3 - La santé mentale (2/2)', 'https://www.youtube.com/embed/IMMobD2RX-w?start=5', '2022-02-02 13:10:37', '2022-11-28 21:59:36'),
(4, 'La santé - 2mn avec Joyce Meyer - Pourquoi prendre soin de sa santé ? - Avoir des relations saines', 'Joyce nous invite à prendre soin de notre santé pour être heureux.\n1110-2 La poursuite de la joie et de la réjouissance', 'https://www.youtube.com/embed/HitoYDBynWg?start=5', '2022-07-11 10:38:02', '2022-11-28 22:00:50'),
(5, 'Nettoyez vos pensées (1/3) - Joyce Meyer - Maîtriser mes pensées', 'Joyce nous explique pourquoi nous devons faire attention à nos pensées.\nN°549-3 JMF EEL 549 3 Nettoyez vos pensées', 'https://www.youtube.com/embed/AmhyIu73uLM?start=5', '2022-07-11 10:39:27', '2022-11-28 22:03:02');

-- --------------------------------------------------------

--
-- Structure de la table `video_entreprises`
--

CREATE TABLE `video_entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ceo` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video_entreprises`
--

INSERT INTO `video_entreprises` (`id`, `ceo`, `titre`, `description`, `url`, `created_at`, `updated_at`) VALUES
(1, 6, 'MAP DEMO API WITH CODEIGNITER(PHP) MYSQL', 'C\'est une vidéo de démonstration de l\'api google map en codeigniter avec mysql. la localisation des hôpitaux de la ville de Goma', 'https://www.youtube.com/embed/XTW6z0UhaPE', '2022-06-04 09:40:32', '2022-07-02 11:25:19'),
(2, 6, 'Apprendre à utiliser l\'application de transfert des bagages dans une agence aérienne', 'c\'est une application complète de la gestion de transfert de bagages', 'https://www.youtube.com/embed/H2rHGNJKNts', '2022-06-04 09:42:20', '2022-06-04 09:42:20'),
(3, 6, 'Flutter Backend | Flutter Laravel Backend PHP | Flutter Rest API | Flutter Http Post Request', 'Here you will learn how to create flutter app with backend with Laravel and PHP. Flutter Rest API use for sign up, sign in, login, logout with post, get HTTP request based on laravel admin panel based on PHP.  This works a s web backend as well. This backend is done using PHP Laravel', 'https://www.youtube.com/embed/kTrbcb21ENU', '2022-06-04 09:44:42', '2022-06-04 09:44:42'),
(4, 6, 'Flutter API Laravel - CRUD test POSTMAN y Device Video #3/3', 'CC English subtitles\n\nCRUD API Laravel - Flutter\nwe consume the services from flutter\n\nCRUD completo desde Laravel y consumismos sus servicios REST API desde Flutter\n\nContinuamos trabajando basados en los dos vídeos anteriores', 'https://www.youtube.com/embed/mdQ7eEeNefc', '2022-06-04 09:47:37', '2022-06-11 17:15:08'),
(5, 6, 'Flutter API Laravel - JWT Authenticacion - save state login Video #1', 'Creation of the API in Laravel, we consume the services with Flutter, initially we log in that allows us to maintain its status, it means that if you re-enter the App you should not ask for the login data, we will surely continue with a CRUD.', 'https://www.youtube.com/embed/h1JAAYGvm7M', '2022-06-04 09:49:32', '2022-06-04 09:49:32'),
(6, 6, 'Buld chat application in Vuejs - Vuetify UI Design, Messenger & Chating', 'In this tutorial we\'ll learn How to design a Modern Messenger & chating   dashboard application ( web design ) using vuetify and  vuejs 2 , material design icons, Font Awsome icons.\nSidebar, Card, Aavatar, list item, expantion .', 'https://www.youtube.com/embed/S1mAt8pKjUk', '2022-06-04 09:50:30', '2022-06-20 11:57:44'),
(10, 1, 'DOSSEH : \"Habitué\" (live @ Hip Hop Symphonique 3)', 'Dosseh a performé \"Habitué\" accompagné par The Ice Kream et l\'Orchestre Philharmonique de Radio France, enregistré à l\'occasion de Hip Hip symphonique 3, un concert coproduit par  Mouv’, l’Adami et l’orchestre philharmonique de Radio France.', 'https://youtu.be/BZyCRdgnu-0', '2022-06-16 19:11:43', '2022-06-16 19:11:43'),
(11, 1, 'Charlotte Dipanda - Coucou feat Singuila - Live au Grand Rex - Paris', 'Retrouve Charlotte Dipanda sur :\n\nSite Officiel : http://www.charlottedipandamusic.com', 'https://youtu.be/zeez4OmkgwU', '2022-06-16 19:11:58', '2022-06-16 19:13:29');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idProvince` int(11) NOT NULL,
  `nomVille` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `idProvince`, `nomVille`, `created_at`, `updated_at`) VALUES
(1, 1, 'Goma', '2022-11-17 10:57:21', '2022-11-17 10:57:21'),
(2, 6, 'Bukavu', '2022-11-17 10:58:20', '2022-11-17 10:58:20');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avantages`
--
ALTER TABLE `avantages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avenues`
--
ALTER TABLE `avenues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `busness_plans`
--
ALTER TABLE `busness_plans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category_articles`
--
ALTER TABLE `category_articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `choixes`
--
ALTER TABLE `choixes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `decisions`
--
ALTER TABLE `decisions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forme_juridiques`
--
ALTER TABLE `forme_juridiques`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forme_juridiques_nomforme_unique` (`nomForme`);

--
-- Index pour la table `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `link_canvases`
--
ALTER TABLE `link_canvases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `link_canvas_deuxes`
--
ALTER TABLE `link_canvas_deuxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mot_semaines`
--
ALTER TABLE `mot_semaines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `odd_formes`
--
ALTER TABLE `odd_formes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `odd_formes_odd_unique` (`odd`);

--
-- Index pour la table `partenaires`
--
ALTER TABLE `partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `photo_entreprises`
--
ALTER TABLE `photo_entreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pitches`
--
ALTER TABLE `pitches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quartiers`
--
ALTER TABLE `quartiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_services`
--
ALTER TABLE `role_services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `secteurs_nomsecteur_unique` (`nomSecteur`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_entreps`
--
ALTER TABLE `service_entreps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sou_service_entreps`
--
ALTER TABLE `sou_service_entreps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `swots`
--
ALTER TABLE `swots`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `swot_deuxes`
--
ALTER TABLE `swot_deuxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `territoires`
--
ALTER TABLE `territoires`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `territoires_nomterritoire_unique` (`nomTerritoire`);

--
-- Index pour la table `textos`
--
ALTER TABLE `textos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `theme_formes`
--
ALTER TABLE `theme_formes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_attendaces`
--
ALTER TABLE `user_attendaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_attendaces_email_unique` (`email`);

--
-- Index pour la table `valeurs`
--
ALTER TABLE `valeurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_titre_unique` (`titre`);

--
-- Index pour la table `video_entreprises`
--
ALTER TABLE `video_entreprises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_entreprises_titre_unique` (`titre`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avantages`
--
ALTER TABLE `avantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `avenues`
--
ALTER TABLE `avenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `basics`
--
ALTER TABLE `basics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `busness_plans`
--
ALTER TABLE `busness_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `category_articles`
--
ALTER TABLE `category_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `choixes`
--
ALTER TABLE `choixes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `decisions`
--
ALTER TABLE `decisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `forme_juridiques`
--
ALTER TABLE `forme_juridiques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `link_canvases`
--
ALTER TABLE `link_canvases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `link_canvas_deuxes`
--
ALTER TABLE `link_canvas_deuxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `mot_semaines`
--
ALTER TABLE `mot_semaines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `odd_formes`
--
ALTER TABLE `odd_formes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `partenaires`
--
ALTER TABLE `partenaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `photo_entreprises`
--
ALTER TABLE `photo_entreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `pitches`
--
ALTER TABLE `pitches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `quartiers`
--
ALTER TABLE `quartiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `role_services`
--
ALTER TABLE `role_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `service_entreps`
--
ALTER TABLE `service_entreps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sou_service_entreps`
--
ALTER TABLE `sou_service_entreps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `swots`
--
ALTER TABLE `swots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `swot_deuxes`
--
ALTER TABLE `swot_deuxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `territoires`
--
ALTER TABLE `territoires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `textos`
--
ALTER TABLE `textos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theme_formes`
--
ALTER TABLE `theme_formes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `user_attendaces`
--
ALTER TABLE `user_attendaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `valeurs`
--
ALTER TABLE `valeurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `video_entreprises`
--
ALTER TABLE `video_entreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
