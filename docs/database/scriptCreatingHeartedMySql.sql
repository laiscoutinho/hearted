CREATE DATABASE hearted;

USE hearted;

CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `email` varchar(255) UNIQUE,
  `password` varchar(255),
  `role` varchar(255),
  `couple_id` int,
  `created_at` timestamp
);

CREATE TABLE `couples` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nickname` varchar(255),
  `created_at` timestamp,
  `total_points` int
);

CREATE TABLE `posts` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `couple_id` int,
  `content` text,
  `image_url` varchar(255),
  `created_at` timestamp,
  `points_earned` int
);

CREATE TABLE `playlists` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `couple_id` int,
  `name` varchar(255),
  `spotify_url` varchar(255),
  `created_at` timestamp,
  `points_earned` int
);

CREATE TABLE `love_letters` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `couple_id` int,
  `content` text,
  `template_id` int,
  `created_at` timestamp,
  `points_earned` int
);

CREATE TABLE `letter_templates` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `content_html` text,
  `cost_points` int
);

CREATE TABLE `lists` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `couple_id` int,
  `title` varchar(255),
  `type` varchar(255),
  `created_at` timestamp,
  `points_earned` int
);

CREATE TABLE `list_items` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `list_id` int,
  `description` varchar(255),
  `completed` boolean,
  `completed_at` date,
  `points_earned` int
);

CREATE TABLE `calendar_events` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `couple_id` int,
  `description` varchar(255),
  `date` date,
  `source` varchar(255),
  `created_at` timestamp,
  `points_earned` int
);

CREATE TABLE `daily_moods` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `couple_id` int,
  `mood_emoji` varchar(255),
  `date` date
);

CREATE TABLE `daily_challenges` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `text` varchar(255),
  `points_reward` int,
  `created_at` timestamp
);

CREATE TABLE `challenge_completions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `challenge_id` int,
  `user_id` int,
  `date` date,
  `completed` boolean,
  `points_earned` int
);

CREATE TABLE `point_transfers` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `from_user_id` int,
  `to_user_id` int,
  `points` int,
  `created_at` timestamp
);

ALTER TABLE `users` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `posts` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `posts` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `playlists` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `playlists` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `love_letters` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `love_letters` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `love_letters` ADD FOREIGN KEY (`template_id`) REFERENCES `letter_templates` (`id`);

ALTER TABLE `lists` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `list_items` ADD FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`);

ALTER TABLE `calendar_events` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `daily_moods` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `daily_moods` ADD FOREIGN KEY (`couple_id`) REFERENCES `couples` (`id`);

ALTER TABLE `challenge_completions` ADD FOREIGN KEY (`challenge_id`) REFERENCES `daily_challenges` (`id`);

ALTER TABLE `challenge_completions` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `point_transfers` ADD FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`);

ALTER TABLE `point_transfers` ADD FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`);