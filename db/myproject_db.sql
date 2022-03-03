-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2022 at 07:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(4) NOT NULL,
  `admin_name` varchar(128) NOT NULL,
  `admin_email` varchar(64) NOT NULL,
  `admin_password` varchar(64) NOT NULL,
  `admin_role` int(2) NOT NULL,
  `admin_status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_role`, `admin_status`) VALUES
(1, 'admin', 'admin', 'admin_123', 1, 0),
(2, 'super', 'super', 'super_123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `dateofbirth` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `subscription` varchar(20) NOT NULL,
  `subscriptioncontent` text DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `active` int(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `phonenumber`, `dateofbirth`, `email`, `password`, `country`, `subscription`, `subscriptioncontent`, `code`, `active`, `created`, `modified`) VALUES
(2, 'Vidhya', 'P', '+448129644869', '05-15-1984', 'vidhyadinesh2010@gmail.com', '12345678', 'UK', 'poll', NULL, 'k9vMEiAT2LK3', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Vidhya', 'P', '+448129644869', '05-17-1984', 'dfghj@yopmail.com', '123456789', 'UK', 'poll', '{\"hits\":[{\"created_at\":\"2012-03-23T19:19:37.000Z\",\"title\":\"Poll: What\'s Your Favorite Programming Language?\",\"url\":null,\"author\":\"GreekOphion\",\"points\":2321,\"story_text\":\"What\'s your favortie programming langauge?\\u003cp\\u003eBelow are the most popular languages. If your favorite isn\'t below select other and comment what it is below.\\u003cp\\u003eNote: By voting for a language you are not up voting this poll. Please up vote this poll to keep it alive.\",\"comment_text\":null,\"num_comments\":587,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1332530377,\"relevancy_score\":3818,\"_tags\":[\"poll\",\"author_GreekOphion\",\"story_3746692\"],\"objectID\":\"3746692\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: What\'s Your Favorite Programming Language?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"GreekOphion\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"What\'s your favortie programming langauge?\\u003cp\\u003eBelow are the most popular languages. If your favorite isn\'t below select other and comment what it is below.\\u003cp\\u003eNote: By voting for a language you are not up voting this poll. Please up vote this poll to keep it alive.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2013-10-21T01:41:19.000Z\",\"title\":\"Poll: Where are you currently living?\",\"url\":null,\"author\":\"Systemic33\",\"points\":1098,\"story_text\":\"An interesting question, that was last asked according to search, 3,4 and respectively 5 years ago. [1,2,3]\\u003cp\\u003ePlease read through the list, to find the choice that describes you the best.\\u003cp\\u003eI\\u0026#x27;ve tried to be more precise than just continents, but still not every country, but rather regions, more or less divided by culture.\\\\nI apologize if anyone feel left out, please leave a comment then with what region\\u0026#x2F;country that you feel is significant enough to warrant it\\u0026#x27;s own choice.\\u003cp\\u003e[1] https:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;item?id=527681\\u003cp\\u003e[2] http:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;item?id=1640384\\u003cp\\u003e[3] http:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;item?id=235585\\u003cp\\u003eRemember to upvote the Poll itself, for better results.\",\"comment_text\":null,\"num_comments\":307,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1382319679,\"relevancy_score\":4934,\"_tags\":[\"poll\",\"author_Systemic33\",\"story_6582647\"],\"objectID\":\"6582647\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Where are you currently living?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"Systemic33\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"An interesting question, that was last asked according to search, 3,4 and respectively 5 years ago. [1,2,3]\\u003cp\\u003ePlease read through the list, to find the choice that describes you the best.\\u003cp\\u003eI\'ve tried to be more precise than just continents, but still not every country, but rather regions, more or less divided by culture.\\\\nI apologize if anyone feel left out, please leave a comment then with what region/country that you feel is significant enough to warrant it\'s own choice.\\u003cp\\u003e[1] https://news.ycombinator.com/item?id=527681\\u003cp\\u003e[2] http://news.ycombinator.com/item?id=1640384\\u003cp\\u003e[3] http://news.ycombinator.com/item?id=235585\\u003cp\\u003eRemember to upvote the Poll itself, for better results.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2021-01-07T11:33:23.000Z\",\"title\":\"Poll: Switching from WhatsApp\",\"url\":null,\"author\":\"ColinWright\",\"points\":1004,\"story_text\":\"So many choices, so much discussion.  Looking for the \\u0026quot;Wisdom of the Crowd\\u0026quot; from the HN community. Other options in the comments would be welcome\",\"comment_text\":null,\"num_comments\":946,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1610019203,\"_tags\":[\"poll\",\"author_ColinWright\",\"story_25669864\"],\"objectID\":\"25669864\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Switching from WhatsApp\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"ColinWright\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"So many choices, so much discussion.  Looking for the \\u0026quot;Wisdom of the Crowd\\u0026quot; from the HN community. Other options in the comments would be welcome\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2012-04-02T08:23:08.000Z\",\"title\":\"Poll: How long have you been programming?\",\"url\":null,\"author\":\"michaelkscott\",\"points\":992,\"story_text\":\"\",\"comment_text\":null,\"num_comments\":319,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1333354988,\"relevancy_score\":3845,\"_tags\":[\"poll\",\"author_michaelkscott\",\"story_3786926\"],\"objectID\":\"3786926\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: How long have you been programming?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"michaelkscott\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2022-02-04T18:09:41.000Z\",\"title\":\"Poll: Where do you live?\",\"url\":null,\"author\":\"binarynate\",\"points\":986,\"story_text\":\"I read a tweet that referred to HN as \\u0026quot;Silicon Valley\\u0026quot;, which struck me as odd because I suspect most HN users, like me, are located elsewhere. This piqued my curiosity about where HN users are located, so if you don\\u0026#x27;t mind me asking, where do you live?\\u003cp\\u003eEdit: Sorry about the randomized ordering (I forgot HN does that for polls). Thanks ahead of time for using cmd+f or the equivalent to find and vote for your state or country. Also, each US state is included as \\u0026quot;US: {state name}\\u0026quot;.\",\"comment_text\":null,\"num_comments\":535,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1643998181,\"_tags\":[\"poll\",\"author_binarynate\",\"story_30210378\"],\"objectID\":\"30210378\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Where do you live?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"binarynate\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"I read a tweet that referred to HN as \\u0026quot;Silicon Valley\\u0026quot;, which struck me as odd because I suspect most HN users, like me, are located elsewhere. This piqued my curiosity about where HN users are located, so if you don\'t mind me asking, where do you live?\\u003cp\\u003eEdit: Sorry about the randomized ordering (I forgot HN does that for polls). Thanks ahead of time for using cmd+f or the equivalent to find and vote for your state or country. Also, each US state is included as \\u0026quot;US: {state name}\\u0026quot;.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2011-12-01T08:57:22.000Z\",\"title\":\"Poll: HN readers, where\'s your residence?\",\"url\":null,\"author\":\"sasvari\",\"points\":764,\"story_text\":\"So fellow HN readers, where have you set up your residence?\\u003cp\\u003e(I\'m aware of the fact that the majority is located in the US, but it might still be interesting to see if the HN community is getting more international.)\\u003cp\\u003e(Edit: NYC and SF area choice; England -\\u0026#62; UK; split up Asia;Australia/+Oceania)\",\"comment_text\":null,\"num_comments\":489,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1322729842,\"relevancy_score\":3603,\"_tags\":[\"poll\",\"author_sasvari\",\"story_3298905\"],\"objectID\":\"3298905\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: HN readers, where\'s your residence?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"sasvari\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"So fellow HN readers, where have you set up your residence?\\u003cp\\u003e(I\'m aware of the fact that the majority is located in the US, but it might still be interesting to see if the HN community is getting more international.)\\u003cp\\u003e(Edit: NYC and SF area choice; England -\\u003e UK; split up Asia;Australia/+Oceania)\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2012-01-11T23:17:39.000Z\",\"title\":\"Poll: Do you think HN should go dark in protest of SOPA?\",\"url\":null,\"author\":\"zitterbewegung\",\"points\":759,\"story_text\":\"I think Hacker News should stand with reddit to go dark in support of SOPA. SOPA seems very important for the future of HN and startups associated with ycombinator.\",\"comment_text\":null,\"num_comments\":282,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1326323859,\"relevancy_score\":3684,\"_tags\":[\"poll\",\"author_zitterbewegung\",\"story_3454179\"],\"objectID\":\"3454179\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Do you think HN should go dark in protest of SOPA?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"zitterbewegung\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"I think Hacker News should stand with reddit to go dark in support of SOPA. SOPA seems very important for the future of HN and startups associated with ycombinator.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2013-06-01T02:07:11.000Z\",\"title\":\"Poll: Full-time software engineers in the Bay Area, what\'s your annual salary?\",\"url\":null,\"author\":\"kanzure\",\"points\":718,\"story_text\":\"This poll is targeting current full-time software engineers and software developers in San Francisco and the Bay Area.\\u003cp\\u003eThe previous polls seem to have topped out too low. So here we are again.\\u003cp\\u003eSpecifically, base salary only. Pre-tax. No options, shares, bonuses, adjustments for inflation, or benefits.\\u003cp\\u003e(Don\'t forget to up-vote the poll to get more data.)\",\"comment_text\":null,\"num_comments\":329,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1370052431,\"relevancy_score\":4651,\"_tags\":[\"poll\",\"author_kanzure\",\"story_5802295\"],\"objectID\":\"5802295\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Full-time software engineers in the Bay Area, what\'s your annual salary?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"kanzure\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"This poll is targeting current full-time software engineers and software developers in San Francisco and the Bay Area.\\u003cp\\u003eThe previous polls seem to have topped out too low. So here we are again.\\u003cp\\u003eSpecifically, base salary only. Pre-tax. No options, shares, bonuses, adjustments for inflation, or benefits.\\u003cp\\u003e(Don\'t forget to up-vote the poll to get more data.)\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2011-06-22T19:12:04.000Z\",\"title\":\"Poll: What database does your company use?\",\"url\":null,\"author\":\"daniel_levine\",\"points\":686,\"story_text\":\"\\u003ci\\u003e\\u003c/i\\u003eUpvote please if you think it\'s an interesting question so that more people will respond\\u003ci\\u003e\\u003c/i\\u003e\\u003cp\\u003eLast year I asked this question (http://news.ycombinator.com/item?id=1411937) and I think it was useful to a bunch of people. Figured it\'s worth asking again and the diffs will be interesting.\",\"comment_text\":null,\"num_comments\":356,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1308769924,\"relevancy_score\":3294,\"_tags\":[\"poll\",\"author_daniel_levine\",\"story_2684620\"],\"objectID\":\"2684620\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: What database does your company use?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"daniel_levine\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"\\u003ci\\u003e\\u003c/i\\u003eUpvote please if you think it\'s an interesting question so that more people will respond\\u003ci\\u003e\\u003c/i\\u003e\\u003cp\\u003eLast year I asked this question (http://news.ycombinator.com/item?id=1411937) and I think it was useful to a bunch of people. Figured it\'s worth asking again and the diffs will be interesting.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2013-10-10T12:40:26.000Z\",\"title\":\"Poll: What are your liked and disliked programming languages?\",\"url\":null,\"author\":\"wting\",\"points\":683,\"story_text\":\"This is a combination of these two polls:\\u003cp\\u003e\\u003cpre\\u003e\\u003ccode\\u003e    https:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;item?id=3746692\\\\n    https:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;item?id=3748961\\\\n\\u003c/code\\u003e\\u003c/pre\\u003e\\\\nThat resulted in this chart:\\u003cp\\u003e\\u003cpre\\u003e\\u003ccode\\u003e    https:\\u0026#x2F;\\u0026#x2F;i.imgur.com\\u0026#x2F;toGKy21.jpg\\\\n\\u003c/code\\u003e\\u003c/pre\\u003e\\\\nSince that poll is ~18 months old, I thought an update is in order.\\u003cp\\u003eThis poll also adds a few new choices: F#, Go, R, and Rust.\\u003cp\\u003eVote as many choices as you\\u0026#x27;d like.\\u003cp\\u003eNote: By voting for a language you are not up voting this poll. Please up vote this poll to keep it alive.\",\"comment_text\":null,\"num_comments\":466,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1381408826,\"relevancy_score\":4907,\"_tags\":[\"poll\",\"author_wting\",\"story_6527104\"],\"objectID\":\"6527104\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: What are your liked and disliked programming languages?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"wting\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"This is a combination of these two polls:\\u003cp\\u003e\\u003cpre\\u003e\\u003ccode\\u003e    https://news.ycombinator.com/item?id=3746692\\\\n    https://news.ycombinator.com/item?id=3748961\\\\n\\u003c/code\\u003e\\u003c/pre\\u003e\\\\nThat resulted in this chart:\\u003cp\\u003e\\u003cpre\\u003e\\u003ccode\\u003e    https://i.imgur.com/toGKy21.jpg\\\\n\\u003c/code\\u003e\\u003c/pre\\u003e\\\\nSince that poll is ~18 months old, I thought an update is in order.\\u003cp\\u003eThis poll also adds a few new choices: F#, Go, R, and Rust.\\u003cp\\u003eVote as many choices as you\'d like.\\u003cp\\u003eNote: By voting for a language you are not up voting this poll. Please up vote this poll to keep it alive.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2011-05-29T01:13:53.000Z\",\"title\":\"Poll: Should HN display comment scores?\",\"url\":null,\"author\":\"pg\",\"points\":606,\"story_text\":\"It\'s now been long enough since I hid comment scores that we know\\\\nwhat the site will be like without them.  Do you prefer the site\\\\nnow or the way it used to be?\\u003cp\\u003eI hid comment scores after tptacek suggested it as a way to reduce\\\\narguments.  There was a nasty kind of argument that used to happen,\\\\nwhere people would literally try to score points off one another,\\\\nand users voting on the thread became like a mob egging on two\\\\npeople fighting. I prefer HN without comment scores, because those\\\\nfights really disturbed me, and they\'ve practically gone away since\\\\nI hid comment scores.\\u003cp\\u003eI realize there is another side to the story, though.  Lots of\\\\npeople have complained that without comment scores it\'s harder to\\\\npick out the good comments.  Some say that\'s better, because now\\\\nyou have to judge a comment for itself.  On the other hand, with\\\\nsufficient discipline one could presumably judge a comment for\\\\nitself despite seeing the score.\\u003cp\\u003eLast time I tried asking this question, the voting was roughly even.\\\\nI\'m curious if there has been any drift toward a consensus.\",\"comment_text\":null,\"num_comments\":280,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1306631633,\"relevancy_score\":3240,\"_tags\":[\"poll\",\"author_pg\",\"story_2595605\"],\"objectID\":\"2595605\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Should HN display comment scores?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"pg\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"It\'s now been long enough since I hid comment scores that we know\\\\nwhat the site will be like without them.  Do you prefer the site\\\\nnow or the way it used to be?\\u003cp\\u003eI hid comment scores after tptacek suggested it as a way to reduce\\\\narguments.  There was a nasty kind of argument that used to happen,\\\\nwhere people would literally try to score points off one another,\\\\nand users voting on the thread became like a mob egging on two\\\\npeople fighting. I prefer HN without comment scores, because those\\\\nfights really disturbed me, and they\'ve practically gone away since\\\\nI hid comment scores.\\u003cp\\u003eI realize there is another side to the story, though.  Lots of\\\\npeople have complained that without comment scores it\'s harder to\\\\npick out the good comments.  Some say that\'s better, because now\\\\nyou have to judge a comment for itself.  On the other hand, with\\\\nsufficient discipline one could presumably judge a comment for\\\\nitself despite seeing the score.\\u003cp\\u003eLast time I tried asking this question, the voting was roughly even.\\\\nI\'m curious if there has been any drift toward a consensus.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2012-03-14T12:26:33.000Z\",\"title\":\"Poll: Do you test your code?\",\"url\":null,\"author\":\"petenixey\",\"points\":605,\"story_text\":\"Do you have tests that run every time you push and ensure that the functionality on your site works?\\u003cp\\u003eThere\'s always a lot of debate around testing and I\'m interested to see how much people do and how satisfied they are with it\\u003cp\\u003eIF YOU\'D LIKE TO ENCOURAGE OTHERS TO ANSWER, PLEASE UPVOTE - TY\",\"comment_text\":null,\"num_comments\":341,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1331727993,\"relevancy_score\":3805,\"_tags\":[\"poll\",\"author_petenixey\",\"story_3702827\"],\"objectID\":\"3702827\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Do you test your code?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"petenixey\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"Do you have tests that run every time you push and ensure that the functionality on your site works?\\u003cp\\u003eThere\'s always a lot of debate around testing and I\'m interested to see how much people do and how satisfied they are with it\\u003cp\\u003eIF YOU\'D LIKE TO ENCOURAGE OTHERS TO ANSWER, PLEASE UPVOTE - TY\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2012-03-29T14:46:34.000Z\",\"title\":\"Poll: What is your current Stack Overflow reputation?\",\"url\":null,\"author\":\"jader201\",\"points\":538,\"story_text\":\"I know that a lot of Hackers frequent Stack Overflow, so I am curious as to how much actual participation there is from Hackers on SO, and what the general reputation of Hackers is.\\u003cp\\u003eI think it would be particularly interesting to cross reference these results with the \\\"What\'s Your Favorite Programming Language?\\\" [1] poll.  Unfortunately, that would require way too many options. :)\\u003cp\\u003e[1] http://news.ycombinator.com/item?id=3746692\\u003cp\\u003e\\u003ci\\u003eNote: please don\'t forget to vote the poll itself up if you find it valuable/interesting, in order to gather other participation.\\u003c/i\\u003e\",\"comment_text\":null,\"num_comments\":193,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1333032394,\"relevancy_score\":3831,\"_tags\":[\"poll\",\"author_jader201\",\"story_3771286\"],\"objectID\":\"3771286\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: What is your current Stack Overflow reputation?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"jader201\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"I know that a lot of Hackers frequent Stack Overflow, so I am curious as to how much actual participation there is from Hackers on SO, and what the general reputation of Hackers is.\\u003cp\\u003eI think it would be particularly interesting to cross reference these results with the \\\"What\'s Your Favorite Programming Language?\\\" [1] poll.  Unfortunately, that would require way too many options. :)\\u003cp\\u003e[1] http://news.ycombinator.com/item?id=3746692\\u003cp\\u003e\\u003ci\\u003eNote: please don\'t forget to vote the poll itself up if you find it valuable/interesting, in order to gather other participation.\\u003c/i\\u003e\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2022-01-14T17:28:38.000Z\",\"title\":\"Poll: Why are people leaving their jobs?\",\"url\":null,\"author\":\"MobileVet\",\"points\":536,\"story_text\":\"There has been quite a lot of press about the \\u0026#x27;great resignation,\\u0026#x27; with employees leaving jobs in droves.  This is likely hyperbole, but it does seem that there are a large number of people switching jobs.\\u003cp\\u003eIf that is something you have done or are considering doing in the near future, why?\",\"comment_text\":null,\"num_comments\":746,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1642181318,\"_tags\":[\"poll\",\"author_MobileVet\",\"story_29937305\"],\"objectID\":\"29937305\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Why are people leaving their jobs?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"MobileVet\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"There has been quite a lot of press about the \'great resignation,\' with employees leaving jobs in droves.  This is likely hyperbole, but it does seem that there are a large number of people switching jobs.\\u003cp\\u003eIf that is something you have done or are considering doing in the near future, why?\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2012-04-02T07:03:58.000Z\",\"title\":\"Poll: What is your primary operating system\",\"url\":null,\"author\":\"kamechan\",\"points\":508,\"story_text\":\"\",\"comment_text\":null,\"num_comments\":452,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1333350238,\"relevancy_score\":3845,\"_tags\":[\"poll\",\"author_kamechan\",\"story_3786674\"],\"objectID\":\"3786674\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: What is your primary operating system\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"kamechan\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2013-06-01T14:50:58.000Z\",\"title\":\"Poll: Full-time software engineers in London, what\'s your annual salary?\",\"url\":null,\"author\":\"basicallydan\",\"points\":469,\"story_text\":\"Inpsired by the poll of SF \\u0026#38; the Bay Area, this poll is targeting current full-time software engineers and software developers in London, UK.\\u003cp\\u003eBase salary only, pre-tax. No options, shares, bonuses, adjustments for inflation, or benefits.\\u003cp\\u003e(Don\'t forget to up-vote the poll to get more data.)\",\"comment_text\":null,\"num_comments\":399,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1370098258,\"relevancy_score\":4651,\"_tags\":[\"poll\",\"author_basicallydan\",\"story_5804134\"],\"objectID\":\"5804134\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Full-time software engineers in London, what\'s your annual salary?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"basicallydan\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"Inpsired by the poll of SF \\u0026 the Bay Area, this poll is targeting current full-time software engineers and software developers in London, UK.\\u003cp\\u003eBase salary only, pre-tax. No options, shares, bonuses, adjustments for inflation, or benefits.\\u003cp\\u003e(Don\'t forget to up-vote the poll to get more data.)\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2013-05-16T20:57:17.000Z\",\"title\":\"Poll: Do you use your real identity on HN?\",\"url\":null,\"author\":\"codegeek\",\"points\":448,\"story_text\":\"Always wondered about this. Real identity means that you have your real name/contact info in your profile even if you username is generic\\u003cp\\u003ePlease upvote the post as well for others to see if you can.\",\"comment_text\":null,\"num_comments\":286,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1368737837,\"relevancy_score\":4624,\"_tags\":[\"poll\",\"author_codegeek\",\"story_5721087\"],\"objectID\":\"5721087\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Do you use your real identity on HN?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"codegeek\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"Always wondered about this. Real identity means that you have your real name/contact info in your profile even if you username is generic\\u003cp\\u003ePlease upvote the post as well for others to see if you can.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2022-01-01T04:49:10.000Z\",\"title\":\"Poll: Did you know that HN allows you to make polls?\",\"url\":null,\"author\":\"AussieWog93\",\"points\":441,\"story_text\":\"It isn\\u0026#x27;t obvious, but it seems like you can!\\u003cp\\u003eThe link to do so is here:\\u003cp\\u003e\\u003ca href=\\\"https:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;newpoll\\\" rel=\\\"nofollow\\\"\\u003ehttps:\\u0026#x2F;\\u0026#x2F;news.ycombinator.com\\u0026#x2F;newpoll\\u003c/a\\u003e\",\"comment_text\":null,\"num_comments\":188,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1641012550,\"_tags\":[\"poll\",\"author_AussieWog93\",\"story_29755614\"],\"objectID\":\"29755614\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Did you know that HN allows you to make polls?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"AussieWog93\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"It isn\'t obvious, but it seems like you can!\\u003cp\\u003eThe link to do so is here:\\u003cp\\u003e\\u003ca href=\\\"https://news.ycombinator.com/newpoll\\\" rel=\\\"nofollow\\\"\\u003ehttps://news.ycombinator.com/newpoll\\u003c/a\\u003e\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2011-05-16T15:07:24.000Z\",\"title\":\"Poll: Do you support software patents?\",\"url\":null,\"author\":\"robryan\",\"points\":427,\"story_text\":\"Given the amount of recent (and ongoing) controversy about software patents it is interesting to see how the hacker news community, those who are generally doers, feel about them.\",\"comment_text\":null,\"num_comments\":305,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1305558444,\"relevancy_score\":3227,\"_tags\":[\"poll\",\"author_robryan\",\"story_2552740\"],\"objectID\":\"2552740\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: Do you support software patents?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"robryan\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"Given the amount of recent (and ongoing) controversy about software patents it is interesting to see how the hacker news community, those who are generally doers, feel about them.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}},{\"created_at\":\"2011-07-29T14:47:55.000Z\",\"title\":\"Poll: What should be done about the endless repetition of stories?\",\"url\":null,\"author\":\"ColinWright\",\"points\":424,\"story_text\":\"One thing that bugs me about HN is the apparently endless repetition of stories.  When something is interesting it gets taken up by several \\\"sources\\\" and then each of these is dutifully submitted by multiple people.\\u003cp\\u003eThis has some undesirable consequences. One is that it dilutes the \\\"newest\\\" page.  That I don\'t mind so much.  What bothers me more is that otherwise interesting discussion gets split over multiple pages, and the same points get made in each discussion, with some non-overlap.\\u003cp\\u003eI sometimes revert to my native \\\"engineer\\\" mode and try to do something to fix this.  Usually I put cross-references into one or the other so point people to where the discussion is, or might be.  Some people don\'t like this and down-vote them.  Others do like this and up-vote them.  most people don\'t seem to care.\\u003cp\\u003eI really don\'t mind the constant dribble of down-votes that I get for trying to prevent the splitting of discussions, but I do care that I\'m not seen to be harming the \\\"community\\\".\\u003cp\\u003eHence this poll.\\u003cp\\u003eWhat, if anything, should be done about the incessant repetition of stories?\\u003cp\\u003ePS: If you care enough to vote, please upvote the item so people get a chance to see it.  If you think I\'m karma-whoring and you want to punish me for that, find some of my comments and downvote them as scapegoats.\",\"comment_text\":null,\"num_comments\":149,\"story_id\":null,\"story_title\":null,\"story_url\":null,\"parent_id\":null,\"created_at_i\":1311950875,\"relevancy_score\":3361,\"_tags\":[\"poll\",\"author_ColinWright\",\"story_2822041\"],\"objectID\":\"2822041\",\"_highlightResult\":{\"title\":{\"value\":\"Poll: What should be done about the endless repetition of stories?\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"author\":{\"value\":\"ColinWright\",\"matchLevel\":\"none\",\"matchedWords\":[]},\"story_text\":{\"value\":\"One thing that bugs me about HN is the apparently endless repetition of stories.  When something is interesting it gets taken up by several \\\"sources\\\" and then each of these is dutifully submitted by multiple people.\\u003cp\\u003eThis has some undesirable consequences. One is that it dilutes the \\\"newest\\\" page.  That I don\'t mind so much.  What bothers me more is that otherwise interesting discussion gets split over multiple pages, and the same points get made in each discussion, with some non-overlap.\\u003cp\\u003eI sometimes revert to my native \\\"engineer\\\" mode and try to do something to fix this.  Usually I put cross-references into one or the other so point people to where the discussion is, or might be.  Some people don\'t like this and down-vote them.  Others do like this and up-vote them.  most people don\'t seem to care.\\u003cp\\u003eI really don\'t mind the constant dribble of down-votes that I get for trying to prevent the splitting of discussions, but I do care that I\'m not seen to be harming the \\\"community\\\".\\u003cp\\u003eHence this poll.\\u003cp\\u003eWhat, if anything, should be done about the incessant repetition of stories?\\u003cp\\u003ePS: If you care enough to vote, please upvote the item so people get a chance to see it.  If you think I\'m karma-whoring and you want to punish me for that, find some of my comments and downvote them as scapegoats.\",\"matchLevel\":\"none\",\"matchedWords\":[]}}}],\"nbHits\":1653,\"page\":0,\"nbPages\":50,\"hitsPerPage\":20,\"exhaustiveNbHits\":true,\"exhaustiveTypo\":true,\"query\":\"\",\"params\":\"advancedSyntax=true\\u0026analytics=true\\u0026analyticsTags=backend\\u0026tags=poll\",\"processingTimeMS\":2}', '2G9QVhzHMyjP', 1, '0000-00-00 00:00:00', '2022-03-03 16:50:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
