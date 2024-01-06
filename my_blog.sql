-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 12:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(2, 'Personal', 'personal', '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(3, 'entertaiment', 'entertaiment', '2023-10-14 20:51:27', '2023-10-14 20:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_21_155042_create_posts_table', 1),
(6, '2023_09_26_120532_create_categories_table', 1),
(7, '2023_10_15_124421_add_is_admin_to_users_table', 2),
(8, '2023_12_04_023530_create_recommendations_table', 3),
(9, '2023_12_04_041554_create_recommendations_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Dicta eligendi praesentium soluta mollitia hic aspernatur soluta sequi molestiae laudantium.', 'voluptatibus-aut-autem-molestias-enim-ipsa', NULL, 'Quia nisi eos iusto sit aperiam. Atque dolorem aliquam dignissimos cumque dicta eligendi. Perspiciatis rerum ut maiores voluptatem. Aut et quae quam.', '<p>Doloribus amet excepturi sed qui ut et. Vel nulla ab voluptas quia culpa sit autem. Impedit deleniti qui explicabo qui sapiente autem. Voluptatem est molestias et tempora facere.</p><p>Consequatur et consequatur voluptatem id amet asperiores. Similique voluptates minus distinctio eos et eveniet.</p><p>Culpa numquam recusandae ipsa eaque iste ratione enim. Sit qui asperiores nam nam nemo quia et.</p><p>Quos et ad nisi dolor ut iusto debitis. Enim similique asperiores exercitationem ab non. Error sequi nostrum ipsam inventore qui iste. Eveniet consequuntur eligendi blanditiis aut.</p><p>Dignissimos porro perferendis rerum. Autem dicta est voluptas iste. Aut et iste accusamus minus quia aut.</p><p>Placeat explicabo eaque maiores fugiat illo. Odit fuga distinctio porro culpa. Minima aut cum eligendi deleniti autem expedita omnis. Aspernatur nesciunt ea libero adipisci quae.</p><p>Sapiente consequatur sapiente a id natus. Hic deleniti incidunt ut corrupti. Velit fuga deleniti perferendis aut aperiam.</p><p>Cupiditate nulla sed et totam rerum laudantium fugiat. Esse velit ut tempore nobis sed ipsum cupiditate.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(2, 3, 2, 'Aut natus aut.', 'corporis-nobis-libero-corrupti', NULL, 'Ut occaecati dolorem similique nam magnam et unde. Facilis ab aut ducimus qui. Deleniti quas omnis aperiam ipsum at maiores. Reprehenderit qui atque animi quibusdam blanditiis eligendi beatae.', '<p>Aliquam dolor dolores vel ea sit provident mollitia. Unde porro ut ab rerum libero provident. Delectus nostrum nihil ut voluptatum tempora aut suscipit.</p><p>Cupiditate ut corporis rem et non. Dolorem voluptatem velit atque sed ut dolores. Saepe aut tempora laborum dolorem ex officia deserunt. Omnis laborum vitae eaque odio dolores rerum.</p><p>Provident qui non atque doloremque et. Rem consectetur dolorem autem provident. Omnis et ratione voluptatem ullam dolorum a. Illo cum at ipsum assumenda qui voluptatem cumque.</p><p>Est dolores unde possimus qui laborum sed repellat. Quis rerum accusantium dicta. Quibusdam omnis eveniet quia deserunt porro ut. Dolor facilis expedita qui qui ducimus quam. Et odit est ducimus aspernatur.</p><p>Maxime fuga velit ad qui. Est voluptatem et et. Quod velit perferendis rerum quidem.</p><p>Corporis ipsa quis expedita veniam. Omnis enim necessitatibus autem est facilis corporis reiciendis. Beatae aut quia at accusantium pariatur harum molestias. Odio error qui aut quibusdam et sunt. Quia earum a blanditiis.</p><p>Culpa necessitatibus alias soluta non odio quia. Id modi consequatur doloribus doloremque in dolores doloribus architecto. Facilis cum maiores est officia.</p><p>Quae dolores vero et cumque omnis in. Quasi qui reprehenderit quod non reiciendis est. Aut laborum alias odio nemo qui.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(3, 2, 4, 'Repudiandae necessitatibus enim et eum.', 'qui-sint-culpa-vitae-perferendis-ut-et-incidunt', NULL, 'Sapiente exercitationem ut nam libero quo. Distinctio ut deleniti omnis et doloremque. Aut ut laudantium qui hic. Nihil quod at aut a placeat.', '<p>Earum aliquam sed voluptas blanditiis fuga et doloribus. Et velit est quod id hic error mollitia. Voluptatem nihil nostrum nihil et facere quia. Fugit magnam sit quis aut aut voluptas sit illo.</p><p>Doloribus qui voluptas ex nam sit sit quia est. Enim quae commodi sapiente ut nobis est et. Est aut consequuntur assumenda ullam eveniet eum. Distinctio repellendus modi voluptas architecto temporibus alias et.</p><p>Odit corrupti est earum et. Voluptatum veritatis quos nihil qui. Odio at est similique repellat. Exercitationem tenetur sunt vitae aut.</p><p>Officia recusandae est temporibus omnis occaecati et. Error est odit nesciunt totam. Sint blanditiis aperiam illo quia delectus omnis sint. Dolores nisi tempore deserunt maiores.</p><p>Quia quas omnis accusantium neque tenetur unde dolore. Tempore enim qui impedit eligendi nobis. Vitae nostrum ut tenetur molestiae ipsum quis sint. Quia consequuntur et rerum facere et voluptatem consequatur.</p><p>Ut perspiciatis labore magni perspiciatis consectetur. Ea minus et tenetur cum qui nam. Iusto qui laudantium odio quae.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(4, 1, 2, 'Exercitationem quia sed.', 'porro-voluptates-laborum-quis-accusantium-explicabo-laborum', NULL, 'Quia porro aut et deserunt. Rerum nulla aut soluta nam vel id qui. Hic autem aliquam quia amet maiores. Vitae modi ut ex suscipit est ratione rerum consequatur. Beatae dolore debitis blanditiis velit voluptate.', '<p>Repellat amet et nam deserunt. Veniam in consequuntur quisquam tempore nihil veniam et atque. Nobis autem et delectus quas.</p><p>Officiis ad repudiandae non non aut eos velit possimus. Debitis debitis ut velit delectus dolores et est soluta. At omnis vel praesentium iusto. Repellat et ipsa numquam praesentium.</p><p>Quos sunt reiciendis molestiae animi. Laudantium quasi tempora cupiditate aut eveniet quia labore. Suscipit eos vel vitae voluptatem dolores similique blanditiis. Cumque et exercitationem voluptatum consequatur quae sit.</p><p>Enim velit aliquam enim voluptatem. Vitae accusantium sed non qui et quasi animi. Inventore autem itaque incidunt ut voluptatem et. Sunt mollitia maiores quos et nisi molestiae quis.</p><p>Nam consequatur sit consectetur commodi suscipit. Quos numquam necessitatibus alias nihil hic temporibus. Dolor et iure ea cupiditate sint omnis exercitationem.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(5, 1, 3, 'Est ullam provident ut hic consectetur.', 'ea-recusandae-qui-amet-qui', NULL, 'Repudiandae voluptates et asperiores similique voluptatibus aut molestiae. Maiores ex itaque laudantium. Aut minima non sunt et omnis et. Et nesciunt voluptas magnam dolorem quas assumenda rerum nesciunt.', '<p>Quos sed voluptas soluta enim nihil rerum. Tempore voluptatem ipsum occaecati iste repudiandae explicabo autem. Fugit sit accusamus voluptates sint ut est.</p><p>Sed voluptas omnis deleniti iusto. Dolorum ut tenetur et est sit porro vero. Repudiandae ut nam dicta cum nam nesciunt. Qui corporis aut cumque.</p><p>Voluptatem vel perferendis corrupti tempore ducimus. Laborum consectetur eos saepe quo blanditiis laborum voluptas. Perferendis rerum explicabo et id at quo. Reiciendis dolor et sunt odio.</p><p>Voluptatem voluptates quo culpa. Qui porro ut ad velit veniam quod. Qui enim sunt ex.</p><p>Repellendus magnam impedit magnam harum. Quo voluptas saepe et eum doloribus laudantium et.</p><p>Recusandae eum est ad repudiandae expedita odit. Molestiae voluptatibus mollitia quas. Omnis et est corrupti quasi autem dolore aut. Amet illum et omnis labore pariatur dolorem dolores. Quod rerum est et soluta suscipit accusantium dolorem.</p><p>Sequi ea exercitationem fugit temporibus sed molestias soluta et. Dignissimos rerum quos impedit quo. Quisquam et ut quia. Cumque accusantium perspiciatis labore velit.</p><p>Laudantium sit hic nesciunt delectus nulla pariatur. Tenetur iste commodi et aut ut magni. Sint laudantium excepturi et quos. Dicta dicta veniam ab nihil ullam magnam magnam aut.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(6, 1, 1, 'Voluptatum reprehenderit ab eum est quod sit rerum eos omnis.', 'necessitatibus-possimus-nisi-autem-qui-ullam-quaerat-nisi-magnam', NULL, 'Placeat enim dolorem aut nostrum neque doloribus. Iusto nihil enim quae necessitatibus ut. Possimus quia perferendis doloribus veritatis alias perferendis sed. Recusandae modi veniam ut enim harum distinctio dolor.', '<p>Velit velit omnis possimus est dolorem optio ut. Ut beatae explicabo autem sint dolores sit et quia. Consectetur eligendi facilis libero est et et nihil. Quidem necessitatibus et blanditiis dicta non porro est. Deleniti totam repudiandae laudantium voluptas dolorem dicta repellendus.</p><p>Omnis beatae architecto nulla cum repudiandae. Quasi nobis ut cumque. Eum quia voluptas suscipit ut consequatur.</p><p>Omnis nemo enim optio dolorem qui. Pariatur praesentium non occaecati quis eveniet earum. Deserunt officiis numquam et eum quam sed autem.</p><p>Sed facere quaerat voluptatum neque sapiente vero ipsa. Inventore voluptatibus quibusdam ut eligendi unde. Et eaque illo praesentium soluta laboriosam.</p><p>Odit sit ea voluptas praesentium dolores est et et. Corporis magni quod similique laboriosam id. Quasi occaecati in voluptatem quia illo.</p><p>Sed odio in molestias et consectetur. Dolor ut minus itaque eligendi suscipit mollitia.</p><p>Sit excepturi tenetur enim ratione ipsam quisquam aliquam id. Optio corporis illo recusandae distinctio. Qui ipsa error quod aspernatur ea. Possimus perferendis minus enim officiis.</p><p>Consequatur aut quos ratione qui et natus eum. Est qui qui omnis repellat saepe deleniti quod. Delectus rerum voluptas vel et sequi. Voluptatem consequatur nisi nisi sint iure quo illum.</p><p>Expedita vero cumque incidunt ratione perferendis rem. Non optio sapiente fugit eligendi nostrum repellat dolor.</p><p>Autem porro recusandae at eveniet cum et in. Placeat ut illo est voluptatibus qui iste. Dolores quaerat non sit aliquid temporibus est.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(7, 1, 2, 'Itaque incidunt soluta.', 'eos-eaque-temporibus-odio-quidem-similique-quia-at', NULL, 'Molestiae ad molestiae nisi praesentium maiores. Libero itaque sit eos sunt. Praesentium eos sit qui beatae at dicta quod. Quibusdam ipsam odit earum incidunt.', '<p>Maxime accusantium repudiandae sequi veritatis quia. Quia dolores magni molestias consequatur ut nobis praesentium. Dolorem occaecati recusandae omnis. Earum et quia cumque expedita hic sequi quis harum.</p><p>Non quo et ut voluptatum dignissimos. Molestiae fugiat est repudiandae eum. Iste aperiam nisi ut voluptates. Cumque explicabo consequuntur dignissimos sapiente.</p><p>Possimus et eius et. Aut recusandae impedit sit nemo molestiae. Animi aut aperiam harum est velit vitae quod. Dolorem magni qui sed non. Officia voluptatum ducimus nostrum mollitia cum corporis quo qui.</p><p>Veritatis inventore et assumenda quo ipsum tenetur. Et magni veritatis nostrum modi iste molestiae. Iste blanditiis tenetur cupiditate maiores molestiae voluptate voluptas. Provident sint sint ut velit labore omnis quasi ex.</p><p>Non doloribus earum nostrum sunt. Corporis ipsa iure sunt voluptas in. Veritatis consectetur qui quisquam maxime sequi. Sint est reiciendis ea tempora doloremque cumque consequatur rem.</p><p>Quia accusantium ut et eos praesentium. Quis quos doloribus velit sequi excepturi quaerat officiis. Qui porro officiis ab eum numquam. Magni possimus blanditiis modi expedita blanditiis aperiam eum. Sint cumque doloremque a a.</p><p>Beatae cumque alias molestiae voluptas minima ab. Non suscipit ratione dolor reiciendis. Doloribus tempore esse error quo provident. Quod vel placeat id quis.</p><p>Omnis qui expedita officia deleniti quia aut. Earum nesciunt repudiandae suscipit asperiores corrupti quaerat corporis. Quos beatae commodi maiores quos nam aut dolor omnis.</p><p>Totam unde voluptas ex. Non dolores vel minima praesentium nihil architecto voluptatem. Quis similique labore illo placeat quo.</p><p>Quod et facere molestiae atque alias veniam et. Illo sint aut quia consequatur dolores iure odit. Nam architecto consequuntur voluptatem facere quas excepturi dolorum. Eum velit possimus porro doloremque.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(8, 1, 4, 'Ipsum sit sunt perferendis vel aut fugit excepturi sit.', 'quia-consequatur-delectus-veritatis-architecto-beatae', NULL, 'Omnis iure pariatur at dolor. Voluptatem in aut non eos. Laboriosam dolores facilis est. Repellat est excepturi ex culpa.', '<p>Amet placeat eos temporibus. Suscipit molestias nulla sit fuga. Vel consectetur laboriosam tenetur occaecati veniam. Consequatur non laboriosam mollitia nam molestiae est dolores.</p><p>Quo et quae quae nihil et possimus. Et voluptatem fuga dolor mollitia ut. Doloribus dolore voluptates dolor ratione labore. Omnis rerum voluptas iusto est iusto voluptatem.</p><p>Non porro vel cum earum omnis earum quis non. Culpa architecto repellendus at illo et ex. Ipsam minima dolor ipsam autem.</p><p>Nulla harum ad aliquam pariatur. Minima non officia recusandae mollitia velit. Quia ut rem minima ea molestiae et quidem.</p><p>Sit consequatur aspernatur corrupti et odio laboriosam voluptatem. Aut sed dolor voluptatem sed facilis nihil sunt. Eos aspernatur aut dolor veritatis.</p><p>Consectetur error ipsum autem provident enim fugit et. Odit explicabo recusandae dolorum hic tempore consequuntur. Enim animi ad nobis. Fugit ut soluta ut.</p><p>Non quae et ex aut quos porro. Similique quia consequatur fugit eveniet aliquid consequatur. Delectus voluptatem necessitatibus vel sunt tempore. Placeat rerum sit ipsam.</p><p>Voluptatem dolorem quibusdam molestiae quam. At et voluptatem laudantium culpa ut cupiditate. Totam est consequatur perspiciatis quos consequatur in eligendi. Sit non adipisci veniam ut explicabo et.</p><p>Reiciendis earum quia aliquid incidunt nisi sapiente. Eius voluptas dolores iure magni ut qui consequatur aspernatur. Ullam officiis assumenda veritatis explicabo. Dolores laborum dolorem temporibus perspiciatis et. Praesentium minus rerum quis cumque rem est.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(9, 3, 2, 'Incidunt sit autem sint temporibus eaque molestiae doloremque.', 'et-est-tenetur-et', NULL, 'Autem fuga id consequuntur eum sed. Ad incidunt blanditiis quo. Sapiente deserunt similique eos vel quo atque.', '<p>Rerum odit esse vel excepturi. Consequatur ratione a ut a illum. Doloremque consequatur sapiente omnis.</p><p>Maiores tempore incidunt at praesentium. Neque soluta et ut nobis et. Dicta repellat amet dolore libero sapiente maxime. Libero laudantium velit quo nesciunt aut.</p><p>Consectetur quod qui harum minima. Modi animi vel molestiae eum ut et quibusdam dolorem. Delectus vel quia dolor est est odio.</p><p>Delectus temporibus rerum rerum omnis libero eligendi. Beatae ullam praesentium qui odio hic quisquam quisquam. Id quis dolorem repudiandae qui.</p><p>Quae sunt autem nihil. Esse officiis sit et possimus id reprehenderit. Sed quis impedit odit tempore quasi.</p><p>Omnis omnis error amet praesentium at quos. Aut quia sed autem et hic sint molestiae. Voluptate ratione sunt sapiente. Corporis quia sed dolorem aliquid eos.</p><p>Porro quos voluptas hic excepturi. Voluptatibus porro ipsa repellat ad incidunt dicta sit. Molestias non iure aliquid odio aut dolorem. Nam vitae expedita vel omnis ducimus voluptates sit.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(10, 2, 3, 'Qui unde sit maiores hic quia amet est eos impedit.', 'consequatur-aut-cumque-a-et-libero-recusandae', NULL, 'Aut fugiat beatae cupiditate aut placeat et. Hic culpa qui rerum eos tenetur est cum aliquam. Omnis et delectus sed.', '<p>Inventore vero aspernatur architecto eaque. Minima sit corrupti enim aut qui nobis voluptas. Libero accusantium architecto quia molestiae veritatis recusandae consequatur. Eligendi molestiae est et in in repudiandae ipsam excepturi.</p><p>Molestiae et voluptas rerum ullam voluptatem. Quis dicta odio quaerat magnam molestiae autem voluptatem. Odit vero eligendi corrupti explicabo consectetur.</p><p>Qui assumenda autem modi ullam laboriosam architecto ut. Nisi corrupti fuga inventore incidunt qui voluptatibus unde velit. Voluptas ut totam numquam placeat harum velit.</p><p>Eos nihil vel et dolor mollitia delectus. Qui dolorem voluptas non consequatur veritatis. Soluta voluptas enim qui nulla ipsam accusamus. Neque aut nesciunt sed alias rerum.</p><p>Nam molestiae architecto eius totam in aut. Ex tempora praesentium omnis esse dignissimos dolorum autem impedit. Cumque et animi tempora ut ratione quo necessitatibus. Similique optio explicabo similique ducimus error.</p><p>Velit illum vel porro enim. Quaerat ut amet asperiores debitis eos ut commodi eligendi. Animi repudiandae quasi earum vitae nihil neque. Alias dolores nostrum quia cumque provident excepturi dolor. Commodi similique aperiam cupiditate harum adipisci temporibus dolor.</p><p>Accusantium neque dolor saepe qui facere dicta et. Quis sint commodi sapiente. Necessitatibus tempora in vel ea sapiente asperiores. Cumque praesentium dolore consequuntur magnam qui.</p><p>Deleniti iure tempore est. Nostrum excepturi nihil doloribus natus molestias eveniet corporis. Et commodi odio nihil sit quae voluptatem. Ab libero accusamus nihil libero quisquam.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(11, 1, 1, 'Atque dolores iusto.', 'saepe-quaerat-nam-dolorum', NULL, 'Id dolor laudantium dolores totam voluptatem. Magnam et fuga mollitia quas nobis. Eos repudiandae eveniet velit harum.', '<p>Velit tempora illo magnam recusandae officiis ex. Dolorem ad nihil ullam at non consequuntur debitis. Atque suscipit ut molestiae voluptatem ullam eligendi consequatur. Commodi tempore rerum omnis aliquid nemo enim.</p><p>Et autem ut dolores maxime repudiandae sed. Deleniti recusandae temporibus autem in voluptates. Saepe assumenda nulla dolorem qui impedit voluptatem. Provident minus sit non quos sapiente nihil. Ad quidem illo molestias pariatur molestias.</p><p>Velit tempora recusandae dolorum ducimus ut. Dicta unde adipisci dolores quis id in. Quasi et consectetur reprehenderit aut. Praesentium ullam unde occaecati.</p><p>Cumque earum soluta sunt nihil. Earum eum voluptatem quas ut. Eius nihil architecto error voluptates. Numquam ullam qui minus nemo.</p><p>Beatae delectus nemo voluptatum. Nisi est corrupti alias magni vel.</p><p>Eveniet inventore excepturi dicta error a suscipit. Totam enim delectus placeat et sit et. Aut molestiae et ea vitae ducimus non modi.</p><p>Id ex enim temporibus delectus assumenda ducimus modi. Ut iusto tempore optio aut vel odio est. Quam aut et non nobis temporibus.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(12, 2, 5, 'Doloribus hic perferendis.', 'architecto-voluptas-et-molestiae-culpa-voluptas-cumque-est-sed', NULL, 'Minus sequi tempore quia quidem. Aperiam officia expedita qui aliquam. Occaecati tenetur qui amet. Asperiores est consequatur accusantium odio excepturi et.', '<p>Facere et accusamus nisi numquam. Rerum dolore quos officia. Quis commodi voluptatem distinctio nostrum harum placeat sint.</p><p>Quia recusandae ex omnis. Aliquid inventore porro neque nihil ut beatae quidem aut. Itaque vel in et cum quae. Asperiores ex perferendis corporis voluptas eligendi.</p><p>Suscipit quos consequatur expedita est consequatur. Voluptates delectus iure maiores esse. Nam qui aut aut quo odit in autem. Similique sapiente hic in sit. Quis omnis assumenda numquam hic qui temporibus.</p><p>Cupiditate rerum ratione debitis harum tenetur. Sequi exercitationem libero aliquid eos in.</p><p>Quia quaerat est temporibus facere qui. Sed eaque est autem est. Iure at doloremque voluptas eligendi non voluptatem temporibus. Non porro dolores dolorem asperiores rem minima.</p><p>Sequi nemo sunt aspernatur corrupti et quo porro est. Explicabo sint qui voluptatum odio et eos. Quo aperiam mollitia nisi et accusamus hic. Laboriosam voluptatem repellendus veritatis rem. Aut non similique perferendis nihil.</p><p>Sed vel quam ut odit rerum ex consequatur. Consectetur alias dolores temporibus quisquam repudiandae debitis magni fuga. Dignissimos ullam beatae illo quis accusantium magni molestiae. Ratione minus pariatur sit suscipit non nihil.</p><p>Nostrum illo eum est natus. Ipsum labore et reprehenderit quidem. Ut non et eos delectus quam. Repellat est sed reprehenderit quo maiores delectus aut praesentium.</p><p>Placeat voluptatibus est ipsam at praesentium sunt voluptas. Labore accusantium atque laboriosam vero vel incidunt. Vero in maiores illum porro et corrupti.</p><p>Facilis ut consectetur nam fugit possimus sunt. Placeat voluptatem accusamus qui consequuntur. Et vel nobis voluptatum molestiae sint itaque.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(13, 1, 4, 'Fugiat maxime aut dolorum.', 'ad-ex-assumenda-voluptatem-quaerat-dolore-sapiente-tempora-sed', NULL, 'Pariatur voluptatem libero repudiandae natus aspernatur sunt vitae. Fugiat a nemo a tempora maiores. Reprehenderit expedita aut numquam aut consequatur.', '<p>Eaque sit odio rerum ut ut. Unde perferendis voluptates aut voluptas laboriosam amet exercitationem. Vitae voluptatem illum qui quo molestiae eos.</p><p>Quisquam sunt et voluptatibus eius id. Earum incidunt id non odit. Soluta molestiae aut et impedit consequatur delectus. Voluptates velit enim consequatur cumque nobis commodi deleniti.</p><p>A dicta natus iste voluptas. Eaque et sit corporis occaecati quis quibusdam et quaerat. Porro velit et et adipisci dicta veniam.</p><p>Quo totam voluptatum voluptas non culpa aliquid. Ab sint aut nesciunt ut ut ut numquam. Dolor molestiae et nisi corporis ea asperiores. A molestias voluptas veritatis rerum in velit.</p><p>Ducimus est reprehenderit aliquid necessitatibus molestias occaecati. Ullam omnis perferendis non qui expedita. Id vel et odit impedit dolore ut tempora dolores. Sequi sint dolores qui.</p><p>Aut possimus sed alias molestiae molestiae. Aut debitis dignissimos praesentium dolorem voluptatibus. Ea occaecati hic cupiditate neque voluptates tempora qui.</p><p>Ut nam dolores eum nihil et. Mollitia qui aut ut mollitia et. Itaque ipsam earum asperiores et officia sunt perspiciatis.</p>', NULL, '2023-10-14 20:51:27', '2023-10-14 20:51:27'),
(14, 1, 5, 'Temporibus deserunt possimus ipsa ipsa aut iusto error ratione animi officiis sunt officiis ut dignissimos.', 'enim-laudantium-saepe-optio-iste', NULL, 'Mollitia aut sit voluptates ullam architecto provident. In exercitationem perferendis nemo quos. Sed neque odit quas necessitatibus.', '<p>Magnam rem maxime voluptatum eveniet nihil. Non soluta molestiae libero molestiae error ducimus.</p><p>Sed possimus quibusdam excepturi porro. Doloremque aut dicta sunt porro voluptas perferendis. Voluptate officia unde ullam sit.</p><p>Ut repudiandae repellat enim aperiam corporis quis velit. Quis quisquam nulla quisquam quis. Quaerat debitis adipisci accusantium est.</p><p>Nam qui repudiandae optio enim ratione porro ut vitae. Quos repellat nemo fugit odit libero. A beatae quam non totam.</p><p>Totam ab occaecati consequuntur aspernatur et est. Quaerat voluptas aut perferendis ea ut.</p><p>Eum error ea quas veritatis. Dolorem aut magnam aut id. Voluptas mollitia non ab. Itaque numquam in vitae rerum repellat.</p><p>Omnis maiores commodi qui ea repellat enim. Fugit quia quia et minima. Quo doloremque amet qui delectus vero id.</p><p>Doloribus autem excepturi fugiat repellat aut illo non. Est praesentium doloribus quo dicta dolores. Unde quos iure aut aperiam dicta. Et voluptatem culpa saepe ad quibusdam eaque.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(15, 1, 3, 'Pariatur esse ut perferendis nam rerum est veniam sint magnam.', 'nemo-excepturi-accusamus-officiis-quas-earum', NULL, 'Neque voluptate saepe est blanditiis enim autem architecto. Nemo blanditiis sit maxime nesciunt voluptatem vel est. Sit voluptate est et consequatur molestiae dolores voluptas.', '<p>Sint aut rerum cupiditate natus eos quia voluptas consequuntur. Rerum rerum omnis pariatur. Et a alias numquam molestiae modi omnis sed.</p><p>Sequi error maxime iste consequatur sunt nostrum non. Aut itaque expedita eum natus non fuga. Delectus molestiae at possimus. Sapiente omnis ut cupiditate exercitationem sunt.</p><p>Eum quis deleniti consequatur dolores sint alias excepturi. Corrupti eaque dolor aliquid in aut et rerum. Voluptatem earum libero dolor quia.</p><p>Totam voluptas aut libero quia qui. Et voluptate dolor nihil asperiores est est. Maxime aliquid ipsa officia blanditiis explicabo.</p><p>Velit nostrum et sint libero voluptatum odio. Quas sit est dolor quas quasi error voluptatum. Dolorem magni sed consectetur est occaecati aut delectus.</p><p>Aliquam magnam voluptatem ex fugit voluptates assumenda. Qui nihil tempore molestiae ut. Aliquid commodi deleniti et accusantium voluptatem rerum molestiae. Libero voluptatibus quas sed ipsam vitae sint.</p><p>Et sunt est voluptatem beatae sunt mollitia accusantium officia. Itaque maiores laboriosam aut maxime magnam. Ut temporibus nam qui totam. Odit ut nesciunt ex culpa provident. At ea a soluta porro molestiae facilis.</p><p>Id totam est nam possimus voluptatem maxime. Eum laudantium vitae a occaecati vel unde qui. Velit reiciendis neque recusandae et rem earum voluptatem. Velit veritatis accusantium ut harum repudiandae est molestiae praesentium.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(16, 2, 1, 'Et numquam consequatur sit consectetur aut.', 'pariatur-culpa-neque-ullam', NULL, 'Consequatur nam aut dolor et nihil corrupti. Ipsum qui consectetur repellendus odit placeat nihil earum et. Mollitia voluptatum sit at iure quas expedita occaecati.', '<p>Doloribus rerum vero deleniti iste pariatur voluptas aliquid. Velit quae est consectetur. Qui suscipit placeat autem. Dolor vero qui quae error voluptatem nesciunt porro quo. Pariatur nam provident non aut occaecati inventore impedit.</p><p>Voluptas enim cumque dolorum possimus. Recusandae qui adipisci ab exercitationem possimus. Aut recusandae dolorem eaque sed qui. A earum fuga aut.</p><p>Consequatur earum ad maxime explicabo modi laborum. Molestiae nihil necessitatibus nesciunt sed ipsam quis. Omnis enim sit voluptas.</p><p>Eligendi cupiditate totam quaerat et autem. Fugiat ratione aliquid ut quo voluptatibus nesciunt. Aliquid dolore tempora quo voluptates incidunt.</p><p>Nisi non autem voluptates enim perferendis nostrum expedita corrupti. Quo molestiae vel nihil rerum. Rerum sapiente maiores id voluptatum dolor.</p><p>Veniam quibusdam reiciendis voluptatem eum nulla fugit est. Quos vitae vero est consequatur.</p><p>Ut aut velit consectetur ut et aut inventore. Incidunt accusamus ducimus est. Placeat harum tempora itaque quae.</p><p>Qui rerum sit quidem iste. Nulla quasi enim at quis. Culpa in qui fugit quasi. Mollitia asperiores esse sunt vel voluptate itaque tenetur.</p><p>Repudiandae ut quis et nihil hic. Non sed eos molestias minus ex ducimus impedit nam. Corrupti enim laudantium quisquam maxime id aperiam. Recusandae non consequatur sunt numquam dolor alias omnis.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(17, 2, 2, 'Ut numquam.', 'placeat-aliquam-voluptatum-minima-recusandae-aliquid-recusandae-inventore', NULL, 'Veniam neque fuga similique alias accusamus quam recusandae. Illo est deserunt deleniti quae officia modi. Quis omnis tenetur iure id.', '<p>Qui aut dignissimos odio praesentium corporis. Quam ut rerum doloremque quas non sed. Ea fuga fuga reprehenderit repellendus nulla et commodi est.</p><p>Occaecati quos non ut magnam tempora dolores. Sint voluptatem quaerat non unde expedita. Ut iusto commodi non cum ut ab porro.</p><p>A fugiat quaerat vero itaque est dolores quae. Ullam omnis qui porro velit. Harum nostrum laborum qui ut quae exercitationem eum. Voluptatem nobis quo explicabo non.</p><p>Explicabo et quas autem quia ratione omnis quam totam. Sunt voluptatem possimus reprehenderit omnis doloribus. Aliquam corporis dolorem dolores blanditiis nisi.</p><p>Sit ut et laudantium sunt deleniti. Aperiam aut labore neque maxime quo qui quia. Maiores officiis fuga ipsum.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(18, 2, 3, 'Et maiores ut.', 'nam-et-laboriosam-ut-commodi-minima-in-voluptas', NULL, 'Enim quia nam ut facere qui eaque neque et. Est delectus exercitationem porro odit labore cupiditate et nulla. Quo repellat maiores qui non adipisci provident. Nulla ut molestiae facilis porro.', '<p>Molestias quam velit molestias eveniet atque id enim. Mollitia iure possimus magnam architecto minima qui. Ipsum repellat veniam quis numquam officia omnis. Earum et est deleniti et modi. Ut qui quasi velit nobis sed quisquam quia ut.</p><p>Libero debitis inventore animi aut at laborum est. A saepe tempore possimus. Quam ipsum quia nemo id.</p><p>Autem magni eaque dolores repellendus quis impedit. Consequatur laboriosam hic tenetur suscipit. Voluptate quaerat autem ut voluptatem. Dignissimos voluptatem facilis neque laudantium.</p><p>Et quo quidem accusamus sunt laboriosam. Accusamus sed nobis pariatur corporis vitae et. Minus blanditiis non dignissimos dolores dicta culpa totam aut. Aliquam maiores nulla praesentium nostrum sit sint. A omnis corrupti occaecati laudantium.</p><p>Ratione eos velit aut sed vel tenetur in minima. Accusamus omnis qui quibusdam. Distinctio asperiores saepe optio provident.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(19, 1, 5, 'Ut occaecati eligendi.', 'eaque-sit-sapiente-deleniti-iure-est', NULL, 'Neque consequatur dolores tenetur earum sequi et. Quos eligendi perferendis deleniti impedit qui alias consectetur. Vel aut ut consequatur accusantium eum hic. Et eaque quidem debitis non est. Debitis et ut fugiat unde rem consequatur blanditiis.', '<p>Officiis sapiente enim dolores voluptas eligendi aut. Quaerat sit et sapiente dolorem officiis est.</p><p>Et maiores iste iure voluptatibus voluptatem. Ut consequuntur expedita maxime assumenda in. Eos incidunt ut in aliquid tenetur culpa. Consequatur recusandae qui reprehenderit quis qui.</p><p>Eius sit incidunt quia consequuntur porro ratione quia. Quibusdam eum enim eum. Commodi aliquid et eos deserunt autem. Doloribus aliquam rem corrupti ipsum ea qui quis.</p><p>Tempora natus qui est omnis reiciendis et sit. Voluptate quia facere consequatur est quia. Ad veritatis aut nulla porro ut voluptatem aperiam. Sit nesciunt voluptatem possimus sed.</p><p>Alias vel animi facere natus et voluptatem. Vel aut nulla molestias voluptatem voluptas quidem. Et a pariatur ipsum explicabo. Cum veritatis tempore quod perferendis corrupti.</p><p>Ut rem dolor quis modi voluptatem sed. Eligendi voluptatum reiciendis eius sunt qui nemo. Praesentium repellendus qui dolorum a fugiat assumenda eos nesciunt. Rerum veniam soluta quam.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(20, 2, 5, 'Quod rerum laudantium.', 'rerum-iusto-omnis-corporis-debitis-ratione-doloremque', NULL, 'Vero in officia inventore assumenda. Quo molestiae dolor sint minima quam. At qui et ab.', '<p>Aspernatur tempore et cupiditate aut dolor nostrum odit. Adipisci commodi nemo et velit error quia doloribus. Natus sit quia dolorem ea dolores. Maiores iusto consequatur nisi similique sed in. Maiores recusandae maiores incidunt et qui.</p><p>Et culpa dolores voluptatum asperiores. Saepe nihil quae temporibus placeat laboriosam possimus. Et et expedita quaerat doloribus sit commodi officiis.</p><p>Dolorem aliquam aperiam alias. Incidunt est vel totam voluptatum. Voluptates earum saepe nihil temporibus et cum culpa.</p><p>Corrupti omnis consectetur ducimus alias maiores id et. Ipsum illum rerum omnis ducimus provident sapiente. Velit perferendis dolorem enim non. Doloribus error eos qui quae dignissimos.</p><p>Est expedita atque nostrum sit. Ut laboriosam nihil alias consequuntur eos. Perspiciatis debitis rerum rem aspernatur error ex.</p><p>Quisquam placeat dolor quas aspernatur voluptas illum. Minima corrupti veritatis quas molestiae architecto sint. Distinctio commodi dolor molestiae quasi aut rerum. In voluptate illum sunt voluptas facere eligendi excepturi.</p><p>Cupiditate nobis sed quod expedita autem modi. Fuga et doloribus nesciunt eos nulla. Accusamus fugit veritatis id blanditiis aut cupiditate cupiditate. Sunt sit dolorem ut qui quia dolores. Sunt accusamus in vel sint sed rem sunt.</p><p>Est et eos nesciunt dolorem. Molestiae dignissimos et aspernatur. Ipsam maiores deserunt officiis et quis harum. Earum molestias dolores enim neque.</p><p>Corrupti ex sequi eveniet itaque iusto quis. Saepe sequi inventore facere et. Molestiae quo sint nihil cupiditate harum molestias est. Quis deleniti sint officia expedita omnis. Reprehenderit perspiciatis molestiae delectus dolorem quas.</p>', NULL, '2023-10-14 20:51:28', '2023-10-14 20:51:28'),
(22, 2, 1, 'judul baru kedua', 'judul-baru-kedua', 'post-images/otqw65XzHchVj3fhoh4UXZzEBULC0lITCkj0N60Y.jpg', 'lafklflkaf', '<div>lafklflkaf</div>', NULL, '2023-10-14 21:19:10', '2023-10-14 21:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'hanafi', 'nafi', 'starnafi4@gmail.com', NULL, '$2y$10$I4Rj/S.blGJTAZ3sodGeCOhQUUUfyUX61nMxS9WfGRLIrBnilp12O', NULL, '2023-10-14 20:51:26', '2023-10-14 20:51:26', 1),
(2, 'Ajiono Salahudin', 'handayani.oliva', 'wulan.samosir@example.net', '2023-10-14 20:51:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SZZZGJKSzB', '2023-10-14 20:51:27', '2023-10-14 20:51:27', 0),
(3, 'Eja Tamba', 'genta.prasetya', 'kasiyah12@gmail.com', '2023-10-14 20:51:27', '$2a$12$iMDP1kZjv85zNlzukhZ/tubNVm0YJJ5daAFdaaRL71FTvrLyzkgA6', 'DERrVryFjWsz9rpp9XBgkHF6QMk9pHBBWkgUmKy0oC9lVOoIec12yT7GblpT', '2023-10-14 20:51:27', '2023-10-14 20:51:27', 0),
(4, 'Rahmat Uwais', 'humaira04', 'ayu.wulandari@example.org', '2023-10-14 20:51:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NOGGAxaEfQ', '2023-10-14 20:51:27', '2023-10-14 20:51:27', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
