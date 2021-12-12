---
title: Data definition language.
description: SQL statements to materialize physical data model.
menu: DDL
order: 40
---

## Server-side 

```h2
create table favorite_place
(
    favorite_place_id UUID         not null,
    city_name         varchar(100) not null,
    created           timestamp    not null,
    external_key      UUID         not null,
    place_id          varchar(50)  not null,
    place_name        varchar(255) not null,
    user_id           UUID         not null,
    primary key (favorite_place_id)
);
create table place_type
(
    place_type_id UUID        not null,
    created       timestamp   not null,
    display_name  varchar(50) not null,
    external_key  UUID        not null,
    name          varchar(50) not null,
    primary key (place_type_id)
);
create table user_profile
(
    user_id      UUID        not null,
    created      timestamp   not null,
    display_name varchar(50) not null,
    external_key UUID        not null,
    oauth_key    varchar(30) not null,
    primary key (user_id)
);
alter table favorite_place
    add constraint UK_mrrnqrgbe5elk5159v56fercp unique (external_key);
alter table place_type
    add constraint UK_tetbitmlw9n7tvo5n4k5e577 unique (display_name);
alter table place_type
    add constraint UK_e16it2wxom2rw8rvpglutma8w unique (external_key);
alter table place_type
    add constraint UK_9pkatv94sv6s1q124dacif14j unique (name);
create index IDXakmwux4w2swsj69pg3ignha1v on user_profile (created);
alter table user_profile
    add constraint UK_j35xlx80xoi2sb176qdrtoy69 unique (display_name);
alter table user_profile
    add constraint UK_22o8v4jg08yk7piojnowil30o unique (external_key);
alter table user_profile
    add constraint UK_6f815wi5o4jq8p1q1w63o4mhd unique (oauth_key);
alter table favorite_place
    add constraint FK95jduuq1wuffem82axk9c7cqt foreign key (user_id) references user_profile;
```

[`service-ddl.sql`](sql/service-ddl.sql)

## Client-side 

```sqlite
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
```

[`client-service-ddl.sql`](sql/client-ddl.sql)