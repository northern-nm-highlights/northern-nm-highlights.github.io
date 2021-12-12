CREATE TABLE IF NOT EXISTS `favorite_place`
(
    `favorite_place_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    `external_key`      TEXT                              NOT NULL,
    `user_id`           INTEGER                           NOT NULL,
    `created`           INTEGER                           NOT NULL,
    `city_name`         TEXT                              NOT NULL,
    `place_id`          TEXT                              NOT NULL,
    `place_name`        TEXT,
    FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE NO ACTION ON DELETE CASCADE
);

CREATE UNIQUE INDEX IF NOT EXISTS `index_favorite_place_external_key` ON `favorite_place` (`external_key`);

CREATE INDEX IF NOT EXISTS `index_favorite_place_user_id` ON `favorite_place` (`user_id`);

CREATE INDEX IF NOT EXISTS `index_favorite_place_created` ON `favorite_place` (`created`);

CREATE INDEX IF NOT EXISTS `index_favorite_place_city_name` ON `favorite_place` (`city_name`);

CREATE INDEX IF NOT EXISTS `index_favorite_place_place_id` ON `favorite_place` (`place_id`);

CREATE INDEX IF NOT EXISTS `index_favorite_place_place_name` ON `favorite_place` (`place_name`);

CREATE TABLE IF NOT EXISTS `place_type`
(
    `place_type_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    `external_key`  TEXT                              NOT NULL,
    `display_name`  TEXT                              NOT NULL,
    `created`       INTEGER                           NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS `index_place_type_external_key` ON `place_type` (`external_key`);

CREATE INDEX IF NOT EXISTS `index_place_type_display_name` ON `place_type` (`display_name`);

CREATE INDEX IF NOT EXISTS `index_place_type_created` ON `place_type` (`created`);

CREATE TABLE IF NOT EXISTS `user`
(
    `user_id`      INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    `oauth_key`    TEXT                              NOT NULL,
    `display_name` TEXT                              NOT NULL,
    `external_key` TEXT                              NOT NULL,
    `created`      INTEGER                           NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS `index_user_oauth_key` ON `user` (`oauth_key`);

CREATE UNIQUE INDEX IF NOT EXISTS `index_user_display_name` ON `user` (`display_name`);

CREATE UNIQUE INDEX IF NOT EXISTS `index_user_external_key` ON `user` (`external_key`);

