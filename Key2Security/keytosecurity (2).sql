-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 04 Décembre 2015 à 04:42
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `keytosecurity`
--

-- --------------------------------------------------------

--
-- Structure de la table `catastrophes`
--

CREATE TABLE IF NOT EXISTS `catastrophes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `online` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `homes`
--

CREATE TABLE IF NOT EXISTS `homes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `online` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `created`, `type`, `online`, `slug`) VALUES
(1, 'Test Long Article', '<p>Primi igitur omnium statuuntur Epigonus et Eusebius ob nominum gentilitatem oppressi. praediximus enim Montium sub ipso vivendi termino his vocabulis appellatos fabricarum culpasse tribunos ut adminicula futurae molitioni pollicitos.</p>\r\n\r\n<p>Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.</p>\r\n\r\n<p>Post haec indumentum regale quaerebatur et ministris fucandae purpurae tortis confessisque pectoralem tuniculam sine manicis textam, Maras nomine quidam inductus est ut appellant Christiani diaconus, cuius prolatae litterae scriptae Graeco sermone ad Tyrii textrini praepositum celerari speciem perurgebant quam autem non indicabant denique etiam idem ad usque discrimen vitae vexatus nihil fateri conpulsus est.</p>\r\n\r\n<p>Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.</p>\r\n\r\n<p>Alii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.</p>\r\n\r\n<p>Metuentes igitur idem latrones Lycaoniam magna parte campestrem cum se inpares nostris fore congressione stataria documentis frequentibus scirent, tramitibus deviis petivere Pamphyliam diu quidem intactam sed timore populationum et caedium, milite per omnia diffuso propinqua, magnis undique praesidiis conmunitam.</p>\r\n\r\n<p>Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.</p>\r\n\r\n<p>Quam ob rem ut ii qui superiores sunt submittere se debent in amicitia, sic quodam modo inferiores extollere. Sunt enim quidam qui molestas amicitias faciunt, cum ipsi se contemni putant; quod non fere contingit nisi iis qui etiam contemnendos se arbitrantur; qui hac opinione non modo verbis sed etiam opere levandi sunt.</p>\r\n\r\n<p>Mensarum enim voragines et varias voluptatum inlecebras, ne longius progrediar, praetermitto illuc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant, familiarium agmina tamquam praedatorios globos post terga trahentes ne Sannione quidem, ut ait comicus, domi relicto. quos imitatae matronae complures opertis capitibus et basternis per latera civitatis cuncta discurrunt.</p>\r\n\r\n<p>Et interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Cum saepe multa, tum memini domi in hemicyclio sedentem, ut solebat, cum et ego essem una et pauci admodum familiares, in eum sermonem illum incidere qui tum forte multis erat in ore. Meministi enim profecto, Attice, et eo magis, quod P. Sulpicio utebare multum, cum is tribunus plebis capitali odio a Q. Pompeio, qui tum erat consul, dissideret, quocum coniunctissime et amantissime vixerat, quanta esset hominum vel admiratio vel querella.</p>\r\n\r\n<p>Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Montius nos tumore inusitato quodam et novo ut rebellis et maiestati recalcitrantes Augustae per haec quae strepit incusat iratus nimirum quod contumacem praefectum, quid rerum ordo postulat ignorare dissimulantem formidine tenus iusserim custodiri.</p>\r\n', '2015-06-05 04:08:51', 'post', 1, 'long-article'),
(2, 'Test deuxième article', '<p>test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;</p>\r\n', '2015-06-05 03:31:09', 'post', 1, 'deuxieme-article'),
(3, 'Test troisième article', '<p>site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;</p>\r\n', '2015-06-05 03:35:16', 'post', 1, 'troisieme-article');

-- --------------------------------------------------------

--
-- Structure de la table `quizzs`
--

CREATE TABLE IF NOT EXISTS `quizzs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT 'Quizz',
  `answers` longtext NOT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `quizzs`
--

INSERT INTO `quizzs` (`id`, `question`, `answers`, `correct`, `type`) VALUES
(1, 'Vous voyez une personne agée traversée que faites-vous ?', '{"1":{"text":"string","img":"path\\/to\\/img","correction":"c est trop fort"},"2":{"text":"str","img":"path\\/to\\/img","correction":"blabla"},"3":{"text":"str","img":"path\\/to\\/img","correction":"blabla"}}', 1, 'Quizz');

-- --------------------------------------------------------

--
-- Structure de la table `secourismes`
--

CREATE TABLE IF NOT EXISTS `secourismes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `online` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `secourismes`
--

INSERT INTO `secourismes` (`id`, `name`, `content`, `created`, `type`, `online`, `slug`) VALUES
(1, 'Test Long Article', '<p>Primi igitur omnium statuuntur Epigonus et Eusebius ob nominum gentilitatem oppressi. praediximus enim Montium sub ipso vivendi termino his vocabulis appellatos fabricarum culpasse tribunos ut adminicula futurae molitioni pollicitos.</p>\r\n\r\n<p>Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.</p>\r\n\r\n<p>Post haec indumentum regale quaerebatur et ministris fucandae purpurae tortis confessisque pectoralem tuniculam sine manicis textam, Maras nomine quidam inductus est ut appellant Christiani diaconus, cuius prolatae litterae scriptae Graeco sermone ad Tyrii textrini praepositum celerari speciem perurgebant quam autem non indicabant denique etiam idem ad usque discrimen vitae vexatus nihil fateri conpulsus est.</p>\r\n\r\n<p>Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.</p>\r\n\r\n<p>Alii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.</p>\r\n\r\n<p>Metuentes igitur idem latrones Lycaoniam magna parte campestrem cum se inpares nostris fore congressione stataria documentis frequentibus scirent, tramitibus deviis petivere Pamphyliam diu quidem intactam sed timore populationum et caedium, milite per omnia diffuso propinqua, magnis undique praesidiis conmunitam.</p>\r\n\r\n<p>Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.</p>\r\n\r\n<p>Quam ob rem ut ii qui superiores sunt submittere se debent in amicitia, sic quodam modo inferiores extollere. Sunt enim quidam qui molestas amicitias faciunt, cum ipsi se contemni putant; quod non fere contingit nisi iis qui etiam contemnendos se arbitrantur; qui hac opinione non modo verbis sed etiam opere levandi sunt.</p>\r\n\r\n<p>Mensarum enim voragines et varias voluptatum inlecebras, ne longius progrediar, praetermitto illuc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant, familiarium agmina tamquam praedatorios globos post terga trahentes ne Sannione quidem, ut ait comicus, domi relicto. quos imitatae matronae complures opertis capitibus et basternis per latera civitatis cuncta discurrunt.</p>\r\n\r\n<p>Et interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Cum saepe multa, tum memini domi in hemicyclio sedentem, ut solebat, cum et ego essem una et pauci admodum familiares, in eum sermonem illum incidere qui tum forte multis erat in ore. Meministi enim profecto, Attice, et eo magis, quod P. Sulpicio utebare multum, cum is tribunus plebis capitali odio a Q. Pompeio, qui tum erat consul, dissideret, quocum coniunctissime et amantissime vixerat, quanta esset hominum vel admiratio vel querella.</p>\r\n\r\n<p>Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Montius nos tumore inusitato quodam et novo ut rebellis et maiestati recalcitrantes Augustae per haec quae strepit incusat iratus nimirum quod contumacem praefectum, quid rerum ordo postulat ignorare dissimulantem formidine tenus iusserim custodiri.</p>\r\n', '2015-06-05 04:08:51', 'post', 1, 'long-article'),
(2, 'Test deuxième article', '<p>test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;</p>\r\n', '2015-06-05 03:31:09', 'post', 1, 'deuxieme-article'),
(3, 'Test troisième article', '<p>site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;</p>\r\n', '2015-06-05 03:35:16', 'post', 1, 'troisieme-article');

-- --------------------------------------------------------

--
-- Structure de la table `srmotos`
--

CREATE TABLE IF NOT EXISTS `srmotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `online` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `srmotos`
--

INSERT INTO `srmotos` (`id`, `name`, `content`, `created`, `type`, `online`, `slug`) VALUES
(1, 'Test Long Article', '<p>Primi igitur omnium statuuntur Epigonus et Eusebius ob nominum gentilitatem oppressi. praediximus enim Montium sub ipso vivendi termino his vocabulis appellatos fabricarum culpasse tribunos ut adminicula futurae molitioni pollicitos.</p>\r\n\r\n<p>Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.</p>\r\n\r\n<p>Post haec indumentum regale quaerebatur et ministris fucandae purpurae tortis confessisque pectoralem tuniculam sine manicis textam, Maras nomine quidam inductus est ut appellant Christiani diaconus, cuius prolatae litterae scriptae Graeco sermone ad Tyrii textrini praepositum celerari speciem perurgebant quam autem non indicabant denique etiam idem ad usque discrimen vitae vexatus nihil fateri conpulsus est.</p>\r\n\r\n<p>Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.</p>\r\n\r\n<p>Alii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.</p>\r\n\r\n<p>Metuentes igitur idem latrones Lycaoniam magna parte campestrem cum se inpares nostris fore congressione stataria documentis frequentibus scirent, tramitibus deviis petivere Pamphyliam diu quidem intactam sed timore populationum et caedium, milite per omnia diffuso propinqua, magnis undique praesidiis conmunitam.</p>\r\n\r\n<p>Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.</p>\r\n\r\n<p>Quam ob rem ut ii qui superiores sunt submittere se debent in amicitia, sic quodam modo inferiores extollere. Sunt enim quidam qui molestas amicitias faciunt, cum ipsi se contemni putant; quod non fere contingit nisi iis qui etiam contemnendos se arbitrantur; qui hac opinione non modo verbis sed etiam opere levandi sunt.</p>\r\n\r\n<p>Mensarum enim voragines et varias voluptatum inlecebras, ne longius progrediar, praetermitto illuc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant, familiarium agmina tamquam praedatorios globos post terga trahentes ne Sannione quidem, ut ait comicus, domi relicto. quos imitatae matronae complures opertis capitibus et basternis per latera civitatis cuncta discurrunt.</p>\r\n\r\n<p>Et interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Cum saepe multa, tum memini domi in hemicyclio sedentem, ut solebat, cum et ego essem una et pauci admodum familiares, in eum sermonem illum incidere qui tum forte multis erat in ore. Meministi enim profecto, Attice, et eo magis, quod P. Sulpicio utebare multum, cum is tribunus plebis capitali odio a Q. Pompeio, qui tum erat consul, dissideret, quocum coniunctissime et amantissime vixerat, quanta esset hominum vel admiratio vel querella.</p>\r\n\r\n<p>Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Montius nos tumore inusitato quodam et novo ut rebellis et maiestati recalcitrantes Augustae per haec quae strepit incusat iratus nimirum quod contumacem praefectum, quid rerum ordo postulat ignorare dissimulantem formidine tenus iusserim custodiri.</p>\r\n', '2015-06-05 04:08:51', 'post', 1, 'long-article'),
(2, 'Test deuxième article', '<p>test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;</p>\r\n', '2015-06-05 03:31:09', 'post', 1, 'deuxieme-article'),
(3, 'Test troisième article', '<p>site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;</p>\r\n', '2015-06-05 03:35:16', 'post', 1, 'troisieme-article');

-- --------------------------------------------------------

--
-- Structure de la table `srvelos`
--

CREATE TABLE IF NOT EXISTS `srvelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `online` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `srvelos`
--

INSERT INTO `srvelos` (`id`, `name`, `content`, `created`, `type`, `online`, `slug`) VALUES
(1, 'Test Long Article', '<p>Primi igitur omnium statuuntur Epigonus et Eusebius ob nominum gentilitatem oppressi. praediximus enim Montium sub ipso vivendi termino his vocabulis appellatos fabricarum culpasse tribunos ut adminicula futurae molitioni pollicitos.</p>\r\n\r\n<p>Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.</p>\r\n\r\n<p>Post haec indumentum regale quaerebatur et ministris fucandae purpurae tortis confessisque pectoralem tuniculam sine manicis textam, Maras nomine quidam inductus est ut appellant Christiani diaconus, cuius prolatae litterae scriptae Graeco sermone ad Tyrii textrini praepositum celerari speciem perurgebant quam autem non indicabant denique etiam idem ad usque discrimen vitae vexatus nihil fateri conpulsus est.</p>\r\n\r\n<p>Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.</p>\r\n\r\n<p>Alii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.</p>\r\n\r\n<p>Metuentes igitur idem latrones Lycaoniam magna parte campestrem cum se inpares nostris fore congressione stataria documentis frequentibus scirent, tramitibus deviis petivere Pamphyliam diu quidem intactam sed timore populationum et caedium, milite per omnia diffuso propinqua, magnis undique praesidiis conmunitam.</p>\r\n\r\n<p>Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.</p>\r\n\r\n<p>Quam ob rem ut ii qui superiores sunt submittere se debent in amicitia, sic quodam modo inferiores extollere. Sunt enim quidam qui molestas amicitias faciunt, cum ipsi se contemni putant; quod non fere contingit nisi iis qui etiam contemnendos se arbitrantur; qui hac opinione non modo verbis sed etiam opere levandi sunt.</p>\r\n\r\n<p>Mensarum enim voragines et varias voluptatum inlecebras, ne longius progrediar, praetermitto illuc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant, familiarium agmina tamquam praedatorios globos post terga trahentes ne Sannione quidem, ut ait comicus, domi relicto. quos imitatae matronae complures opertis capitibus et basternis per latera civitatis cuncta discurrunt.</p>\r\n\r\n<p>Et interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Cum saepe multa, tum memini domi in hemicyclio sedentem, ut solebat, cum et ego essem una et pauci admodum familiares, in eum sermonem illum incidere qui tum forte multis erat in ore. Meministi enim profecto, Attice, et eo magis, quod P. Sulpicio utebare multum, cum is tribunus plebis capitali odio a Q. Pompeio, qui tum erat consul, dissideret, quocum coniunctissime et amantissime vixerat, quanta esset hominum vel admiratio vel querella.</p>\r\n\r\n<p>Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Montius nos tumore inusitato quodam et novo ut rebellis et maiestati recalcitrantes Augustae per haec quae strepit incusat iratus nimirum quod contumacem praefectum, quid rerum ordo postulat ignorare dissimulantem formidine tenus iusserim custodiri.</p>\r\n', '2015-06-05 04:08:51', 'post', 1, 'long-article'),
(2, 'Test deuxième article', '<p>test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;</p>\r\n', '2015-06-05 03:31:09', 'post', 1, 'deuxieme-article'),
(3, 'Test troisième article', '<p>site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;</p>\r\n', '2015-06-05 03:35:16', 'post', 1, 'troisieme-article');

-- --------------------------------------------------------

--
-- Structure de la table `srvoitures`
--

CREATE TABLE IF NOT EXISTS `srvoitures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created` datetime NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `online` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `srvoitures`
--

INSERT INTO `srvoitures` (`id`, `name`, `content`, `created`, `type`, `online`, `slug`) VALUES
(1, 'Test Long Article', '<p>Primi igitur omnium statuuntur Epigonus et Eusebius ob nominum gentilitatem oppressi. praediximus enim Montium sub ipso vivendi termino his vocabulis appellatos fabricarum culpasse tribunos ut adminicula futurae molitioni pollicitos.</p>\r\n\r\n<p>Eius populus ab incunabulis primis ad usque pueritiae tempus extremum, quod annis circumcluditur fere trecentis, circummurana pertulit bella, deinde aetatem ingressus adultam post multiplices bellorum aerumnas Alpes transcendit et fretum, in iuvenem erectus et virum ex omni plaga quam orbis ambit inmensus, reportavit laureas et triumphos, iamque vergens in senium et nomine solo aliquotiens vincens ad tranquilliora vitae discessit.</p>\r\n\r\n<p>Post haec indumentum regale quaerebatur et ministris fucandae purpurae tortis confessisque pectoralem tuniculam sine manicis textam, Maras nomine quidam inductus est ut appellant Christiani diaconus, cuius prolatae litterae scriptae Graeco sermone ad Tyrii textrini praepositum celerari speciem perurgebant quam autem non indicabant denique etiam idem ad usque discrimen vitae vexatus nihil fateri conpulsus est.</p>\r\n\r\n<p>Sed fruatur sane hoc solacio atque hanc insignem ignominiam, quoniam uni praeter se inusta sit, putet esse leviorem, dum modo, cuius exemplo se consolatur, eius exitum expectet, praesertim cum in Albucio nec Pisonis libidines nec audacia Gabini fuerit ac tamen hac una plaga conciderit, ignominia senatus.</p>\r\n\r\n<p>Alii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.</p>\r\n\r\n<p>Metuentes igitur idem latrones Lycaoniam magna parte campestrem cum se inpares nostris fore congressione stataria documentis frequentibus scirent, tramitibus deviis petivere Pamphyliam diu quidem intactam sed timore populationum et caedium, milite per omnia diffuso propinqua, magnis undique praesidiis conmunitam.</p>\r\n\r\n<p>Haec igitur Epicuri non probo, inquam. De cetero vellem equidem aut ipse doctrinis fuisset instructior est enim, quod tibi ita videri necesse est, non satis politus iis artibus, quas qui tenent, eruditi appellantur aut ne deterruisset alios a studiis. quamquam te quidem video minime esse deterritum.</p>\r\n\r\n<p>Quam ob rem ut ii qui superiores sunt submittere se debent in amicitia, sic quodam modo inferiores extollere. Sunt enim quidam qui molestas amicitias faciunt, cum ipsi se contemni putant; quod non fere contingit nisi iis qui etiam contemnendos se arbitrantur; qui hac opinione non modo verbis sed etiam opere levandi sunt.</p>\r\n\r\n<p>Mensarum enim voragines et varias voluptatum inlecebras, ne longius progrediar, praetermitto illuc transiturus quod quidam per ampla spatia urbis subversasque silices sine periculi metu properantes equos velut publicos signatis quod dicitur calceis agitant, familiarium agmina tamquam praedatorios globos post terga trahentes ne Sannione quidem, ut ait comicus, domi relicto. quos imitatae matronae complures opertis capitibus et basternis per latera civitatis cuncta discurrunt.</p>\r\n\r\n<p>Et interdum acciderat, ut siquid in penetrali secreto nullo citerioris vitae ministro praesente paterfamilias uxori susurrasset in aurem, velut Amphiarao referente aut Marcio, quondam vatibus inclitis, postridie disceret imperator. ideoque etiam parietes arcanorum soli conscii timebantur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Cum saepe multa, tum memini domi in hemicyclio sedentem, ut solebat, cum et ego essem una et pauci admodum familiares, in eum sermonem illum incidere qui tum forte multis erat in ore. Meministi enim profecto, Attice, et eo magis, quod P. Sulpicio utebare multum, cum is tribunus plebis capitali odio a Q. Pompeio, qui tum erat consul, dissideret, quocum coniunctissime et amantissime vixerat, quanta esset hominum vel admiratio vel querella.</p>\r\n\r\n<p>Quaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.</p>\r\n\r\n<p>Nihil est enim virtute amabilius, nihil quod magis adliciat ad diligendum, quippe cum propter virtutem et probitatem etiam eos, quos numquam vidimus, quodam modo diligamus. Quis est qui C. Fabrici, M&#39;. Curi non cum caritate aliqua benevola memoriam usurpet, quos numquam viderit? quis autem est, qui Tarquinium Superbum, qui Sp. Cassium, Sp. Maelium non oderit? Cum duobus ducibus de imperio in Italia est decertatum, Pyrrho et Hannibale; ab altero propter probitatem eius non nimis alienos animos habemus, alterum propter crudelitatem semper haec civitas oderit.</p>\r\n\r\n<p>Montius nos tumore inusitato quodam et novo ut rebellis et maiestati recalcitrantes Augustae per haec quae strepit incusat iratus nimirum quod contumacem praefectum, quid rerum ordo postulat ignorare dissimulantem formidine tenus iusserim custodiri.</p>\r\n', '2015-06-05 04:08:51', 'post', 1, 'long-article'),
(2, 'Test deuxième article', '<p>test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;</p>\r\n', '2015-06-05 03:31:09', 'post', 1, 'deuxieme-article'),
(3, 'Test troisième article', '<p>site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;site site site&nbsp;</p>\r\n', '2015-06-05 03:35:16', 'srvoiture', 1, 'troisieme-article'),
(4, 'test', '<p>ljsqhmhdqfqs</p>\r\n', '2015-12-04 02:28:59', 'srvoiture', 1, 'test'),
(5, 'test blabla', '<iframe width="560" height="315" src="https://www.youtube.com/embed/wfMKktpowx0" frameborder="0" allowfullscreen></iframe>\r\n\r\n<p>Voila ce qui se passe quand vous n&#39;&ecirc;tes pas en &eacute;tat de conduire</p>\r\n', '2015-12-04 03:12:05', 'srvoiture', 1, 'crash');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `role`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
