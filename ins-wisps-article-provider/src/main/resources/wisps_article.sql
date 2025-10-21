CREATE TABLE `d1`.`article_channel` (
    `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID（自增主键）',
    `channel_name` varchar(255) DEFAULT NULL COMMENT '名称',
    `level_code` tinyint(1) DEFAULT NULL COMMENT '级别',
    `uid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '用户ID',
    `oid` bigint unsigned NOT NULL DEFAULT 0 COMMENT '组织ID',
    `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) COMMENT='用户信息表';