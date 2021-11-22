-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 10:25 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Web Development'),
(2, 'Software Development'),
(3, 'Graphics Design'),
(4, 'Wordpress Development'),
(5, 'Game Development');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 0, 'blog 1.png'),
(2, 0, 'blog 2.png'),
(3, 0, 'blog 3.png'),
(4, 0, 'blog 4.png'),
(5, 0, 'blog 5.png'),
(6, 0, 'blog 6.png'),
(7, 0, 'blog 7.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '2021-11-12 05:08:05', 1),
(2, 'Where does it come from?\r\n', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', '2021-11-12 05:08:05', 2),
(3, 'Why do we use it?\r\n', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', '2021-11-12 07:15:35', 3),
(4, 'Where can I get some?\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', '2021-11-12 07:15:35', 4),
(5, '1914 translation by H. Rackham', '\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"', '2021-11-13 09:51:13', 5),
(6, 'Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', '2021-11-13 09:51:13', 5),
(7, '1914 translation by H. Rackham', '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', '2021-11-13 09:51:36', 4),
(8, 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '2021-11-13 09:51:36', 3),
(9, 'The standard Lorem Ipsum passage, used since the 1500s', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '2021-11-13 09:52:36', 2),
(10, 'Generated 5 paragraphs, 410 words, 2829 bytes', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod euismod elit in volutpat. Aenean ultricies lacus et cursus dapibus. Vivamus porttitor nunc et aliquam pulvinar. Aenean vulputate tincidunt elementum. Aenean sit amet varius odio, ac ultrices nisl. Morbi quis nulla a nunc aliquam hendrerit. Ut congue suscipit mauris, luctus lobortis est. Donec eu luctus nunc, id dignissim sapien. Fusce nibh sapien, ullamcorper ac est id, vulputate ornare augue. In hendrerit et justo ac rutrum. Proin mattis porta justo. Sed fringilla sapien sed vehicula vehicula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec tristique magna. ', '2021-11-13 09:52:36', 1),
(11, 'Lorem Ipsum', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod euismod elit in volutpat. Aenean ultricies lacus et cursus dapibus. Vivamus porttitor nunc et aliquam pulvinar. Aenean vulputate tincidunt elementum. Aenean sit amet varius odio, ac ultrices nisl. Morbi quis nulla a nunc aliquam hendrerit. Ut congue suscipit mauris, luctus lobortis est. Donec eu luctus nunc, id dignissim sapien. Fusce nibh sapien, ullamcorper ac est id, vulputate ornare augue. In hendrerit et justo ac rutrum. Proin mattis porta justo. Sed fringilla sapien sed vehicula vehicula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec tristique magna. ', '2021-11-13 09:53:20', 1),
(12, 'Lorem Ipsum', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod euismod elit in volutpat. Aenean ultricies lacus et cursus dapibus. Vivamus porttitor nunc et aliquam pulvinar. Aenean vulputate tincidunt elementum. Aenean sit amet varius odio, ac ultrices nisl. Morbi quis nulla a nunc aliquam hendrerit. Ut congue suscipit mauris, luctus lobortis est. Donec eu luctus nunc, id dignissim sapien. Fusce nibh sapien, ullamcorper ac est id, vulputate ornare augue. In hendrerit et justo ac rutrum. Proin mattis porta justo. Sed fringilla sapien sed vehicula vehicula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec tristique magna. ', '2021-11-13 09:53:20', 2),
(13, 'Lorem Ipsum', ' Suspendisse tellus dolor, euismod vitae massa lacinia, vehicula cursus ex. Nunc efficitur molestie ante sit amet varius. Fusce diam turpis, accumsan auctor vulputate sed, rhoncus eu urna. Phasellus iaculis venenatis risus id pulvinar. Vivamus eget tortor cursus, accumsan ipsum quis, malesuada lacus. Sed dictum metus sit amet libero dignissim iaculis. Nam lorem massa, eleifend at commodo sit amet, tempus vitae ipsum. Morbi at urna eget massa mattis varius consectetur quis ex. Aliquam vel ante eu lectus convallis pulvinar. ', '2021-11-13 09:53:43', 3),
(14, 'Lorem Ipsum', ' Suspendisse tellus dolor, euismod vitae massa lacinia, vehicula cursus ex. Nunc efficitur molestie ante sit amet varius. Fusce diam turpis, accumsan auctor vulputate sed, rhoncus eu urna. Phasellus iaculis venenatis risus id pulvinar. Vivamus eget tortor cursus, accumsan ipsum quis, malesuada lacus. Sed dictum metus sit amet libero dignissim iaculis. Nam lorem massa, eleifend at commodo sit amet, tempus vitae ipsum. Morbi at urna eget massa mattis varius consectetur quis ex. Aliquam vel ante eu lectus convallis pulvinar. ', '2021-11-13 09:53:43', 4),
(15, 'Lorem Ipsum', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod euismod elit in volutpat. Aenean ultricies lacus et cursus dapibus. Vivamus porttitor nunc et aliquam pulvinar. Aenean vulputate tincidunt elementum. Aenean sit amet varius odio, ac ultrices nisl. Morbi quis nulla a nunc aliquam hendrerit. Ut congue suscipit mauris, luctus lobortis est. Donec eu luctus nunc, id dignissim sapien. Fusce nibh sapien, ullamcorper ac est id, vulputate ornare augue. In hendrerit et justo ac rutrum. Proin mattis porta justo. Sed fringilla sapien sed vehicula vehicula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec tristique magna. ', '2021-11-13 09:54:10', 5),
(16, 'Lorem Ipsum', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod euismod elit in volutpat. Aenean ultricies lacus et cursus dapibus. Vivamus porttitor nunc et aliquam pulvinar. Aenean vulputate tincidunt elementum. Aenean sit amet varius odio, ac ultrices nisl. Morbi quis nulla a nunc aliquam hendrerit. Ut congue suscipit mauris, luctus lobortis est. Donec eu luctus nunc, id dignissim sapien. Fusce nibh sapien, ullamcorper ac est id, vulputate ornare augue. In hendrerit et justo ac rutrum. Proin mattis porta justo. Sed fringilla sapien sed vehicula vehicula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec tristique magna. ', '2021-11-13 09:54:10', 1),
(17, 'Lorem Ipsum', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi euismod euismod elit in volutpat. Aenean ultricies lacus et cursus dapibus. Vivamus porttitor nunc et aliquam pulvinar. Aenean vulputate tincidunt elementum. Aenean sit amet varius odio, ac ultrices nisl. Morbi quis nulla a nunc aliquam hendrerit. Ut congue suscipit mauris, luctus lobortis est. Donec eu luctus nunc, id dignissim sapien. Fusce nibh sapien, ullamcorper ac est id, vulputate ornare augue. In hendrerit et justo ac rutrum. Proin mattis porta justo. Sed fringilla sapien sed vehicula vehicula. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed nec tristique magna. ', '2021-11-13 09:54:35', 2),
(18, 'Lorem Ipsum', ' Duis augue massa, malesuada vitae dui quis, commodo accumsan ipsum. Vivamus suscipit lacinia porttitor. Curabitur laoreet eros ac hendrerit rutrum. Ut vulputate mi erat, rhoncus laoreet ligula consectetur nec. Suspendisse potenti. Praesent pharetra tortor id placerat molestie. Donec tempor neque ac ligula commodo, vel pharetra lectus porta. Quisque ut consectetur enim, eu porta eros. Mauris accumsan, orci at pharetra congue, ante augue ultricies dolor, a euismod ex nisi sit amet justo. ', '2021-11-13 09:54:35', 3),
(26, '我能从哪里获取？', '如今互联网提供各种各样版本的Lorem Ipsum段落，但是大多数都多多少少出于刻意幽默或者其他随机插入的荒谬单词而被篡改过了。如果你想取用一段Lorem Ipsum，请确保段落中不含有令人尴尬的不恰当内容。所有网上的Lorem Ipsum生成器都倾向于在必要时重复预先准备的部分，然而这个生成器则是互联网上首个确切的生成器。它使用由超过200个拉丁单词所构造的词典，结合了几个模范句子结构，来生成看起来恰当的Lorem Ipsum。因此，生成出的结果无一例外免于重复，刻意的幽默，以及非典型的词汇等等。', '2021-11-13 14:59:18', 4),
(27, 'Ferdous Islam', 'I m a MF I m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MFI m a MF', '2021-11-15 06:37:35', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
