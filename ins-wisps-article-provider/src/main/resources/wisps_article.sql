CREATE TABLE `d1`.`article_channel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID（自增主键）',
    `channel_name` varchar(255) DEFAULT NULL COMMENT '名称',
    `level_code` tinyint(1) DEFAULT NULL COMMENT '级别',
    `uid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '用户ID',
    `oid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '组织ID',
    `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) COMMENT='文章频道表';

CREATE TABLE `d1`.`article` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID（自增主键）',
    `title` varchar(255) DEFAULT NULL COMMENT '名称',
    `content` text DEFAULT NULL COMMENT '内容',
    `channel_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '频道id',
    `cover_type` tinyint(1) DEFAULT NULL COMMENT '封面类型 0-无图 1-单图 3-三图',
    `images` text DEFAULT NULL COMMENT '封面url,多个逗号隔开',
    `status` tinyint(1) DEFAULT NULL COMMENT '状态 0-草稿 1-发布待审 2-审核通过 3-审核不通过',
    `pub_time` timestamp DEFAULT NULL COMMENT '创建时间',
    `uid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '用户ID',
    `oid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '组织ID',
    `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) COMMENT='文章表';

CREATE TABLE `d1`.`article_read` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID（自增主键）',
    `article_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '文章id',
    `uid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '用户ID',
    `oid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '组织ID',
    `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) COMMENT='文章阅读表';

CREATE TABLE `d1`.`article_comment` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID（自增主键）',
    `article_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '文章id',
    `pid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '父评论id',
    `content` varchar(2048) DEFAULT NULL COMMENT '评论内容',
    `level` int unsigned NOT NULL DEFAULT 0 COMMENT '评论层级',
    `uid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '用户ID',
    `oid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '组织ID',
    `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) COMMENT='评论表';

CREATE TABLE `d1`.`article_like` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID（自增主键）',
    `business_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '业务id',
    `scene` tinyint(1) DEFAULT NULL COMMENT '场景 0-文章点赞 1-评论点赞',
    `uid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '用户ID',
    `oid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '组织ID',
    `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) COMMENT='点赞表';