create table member_ext (
member_id char(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL  COMMENT 'プライマリキー',
col1 varchar(255) NOT NULL COMMENT 'カラム1',
created_at datetime NOT NULL COMMENT 'メタデータ: レコード作成日時',
updated_at datetime NOT NULL COMMENT 'メタデータ: レコード更新日時',
FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
);

insert into member_ext (`member_id`,`col1`,`created_at`,`updated_at`)
select id,'c1',now(),now() from member;
