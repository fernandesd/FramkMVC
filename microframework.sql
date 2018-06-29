-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/06/2018 às 15:05
-- Versão do servidor: 10.1.30-MariaDB-0ubuntu0.17.10.1
-- Versão do PHP: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `microframework`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`) VALUES
(1, 'Título1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu suscipit urna, ut commodo lacus. Aenean nibh felis, finibus sit amet egestas et, sollicitudin et turpis. Fusce urna arcu, consectetur eget massa in, varius semper purus. Fusce nec enim vel elit pretium aliquet. Nullam dui purus, bibendum ut imperdiet sed, condimentum sit amet ipsum. Proin non magna ex. Sed finibus est arcu, at faucibus dolor dictum in. Sed eget fringilla justo. Etiam vehicula consequat nibh non varius. Nam porttitor quis ante ac feugiat.\r\n\r\n'),
(2, 'Título2', 'Nullam in magna eu justo iaculis feugiat non sed justo. Fusce facilisis non urna a laoreet. Curabitur aliquet nunc dolor, scelerisque ornare nunc feugiat a. Nullam rutrum mattis lacus non tincidunt. Aenean pellentesque magna ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vulputate, magna vitae pretium condimentum, tortor justo varius mauris, non egestas lorem nisl ut felis. Vestibulum nec odio et arcu vestibulum rhoncus. Sed ultrices ultrices ante at vehicula. Aenean fermentum porta urna, sed malesuada nulla condimentum et. Cras blandit blandit lacus, a posuere neque interdum id. Curabitur dictum lectus nibh. Vestibulum auctor turpis quis erat semper semper. In hac habitasse platea dictumst. Vestibulum egestas ligula non dolor suscipit, sit amet maximus mi lacinia.\r\n\r\n'),
(3, 'Título3', 'Vivamus viverra nec ante ac viverra. Cras eget volutpat lacus. Praesent et metus odio. Nunc pharetra non turpis ultricies condimentum. Nam non bibendum orci. Praesent dolor nisl, sollicitudin sed mattis nec, tempor et dolor. Maecenas scelerisque porttitor lectus sed egestas. Praesent et gravida sem, sed sollicitudin massa. Integer vel mi a eros faucibus finibus at sed felis. Aliquam neque lacus, faucibus vitae mauris id, pellentesque tincidunt odio. Donec condimentum, lectus ac tempor lacinia, mauris dui ornare elit, et vulputate sem enim id ipsum. Duis non vehicula velit. In auctor, lorem ut posuere posuere, metus est dapibus augue, ac tristique turpis nulla non augue.\r\n\r\n');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
