SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `utilizador` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` int NOT NULL,
  `tipo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Projetos` (
  `id_projeto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `ComentariosP` (
  `id_comentario` int(11) NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `id_projeto` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Versao` (
  `id_versao` int(11) NOT NULL,
  `id_projeto` int(11) NOT NULL,
  `id_ficheiro` int(11) NOT NULL,
  `n_versao` varchar(10) NOT NULL,
  `descricao` text NOT NULL,
    `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `ComentariosV` (
  `id_comentario` int(11) NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `id_versao` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comentario` text NOT NULL,
  `todo` boolean NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Ficheiros` (
  `id_ficheiro` int(11) NOT NULL,
  `id_versao` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ficheiro` varchar(50) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;