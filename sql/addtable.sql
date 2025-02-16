-- 初始数据
use zhishuabao;

# ALTER TABLE user
#     ADD COLUMN vipExpireTime DATETIME NULL COMMENT '会员过期时间',
#     ADD COLUMN vipCode VARCHAR(128) NULL COMMENT '会员兑换码',
#     ADD COLUMN vipNumber BIGINT NULL COMMENT '会员编号',
#     ADD COLUMN shareCode VARCHAR(20) DEFAULT NULL COMMENT '分享码',
#     ADD COLUMN inviteUser BIGINT DEFAULT NULL COMMENT '邀请用户 id';

ALTER TABLE question_bank
    ADD COLUMN reviewStatus INT DEFAULT 0 NOT NULL COMMENT '状态：0-待审核, 1-通过, 2-拒绝',
    ADD COLUMN reviewMessage VARCHAR(512) NULL COMMENT '审核信息',
    ADD COLUMN reviewerId BIGINT NULL COMMENT '审核人 id',
    ADD COLUMN reviewTime DATETIME NULL COMMENT '审核时间',
    ADD COLUMN priority INT DEFAULT 0 NOT NULL COMMENT '优先级',
    ADD COLUMN viewNum INT DEFAULT 0 NOT NULL COMMENT '浏览量';
ALTER  TABLE  question
    ADD COLUMN  reviewStatus  int      default 0  not null comment '状态：0-待审核, 1-通过, 2-拒绝',
    ADD COLUMN reviewMessage varchar(512)        null comment '审核信息',
    ADD COLUMN reviewerId    bigint              null comment '审核人 id',
    ADD COLUMN reviewTime    datetime            null comment '审核时间',
    ADD COLUMN viewNum       int      default 0    not null comment '浏览量',
    ADD COLUMN thumbNum      int      default 0    not null comment '点赞数',
    ADD COLUMN favourNum     int      default 0    not null comment '收藏数',
    ADD COLUMN priority  int  default 0  not null comment '优先级',
    ADD COLUMN source   varchar(512)  null comment '题目来源',
    ADD COLUMN needVip  tinyint  default 0  not null comment '仅会员可见（1 表示仅会员可见）';
ALTER  TABLE  question_bank_question
    ADD COLUMN questionOrder  int  default 0  not null comment '题目顺序（题号）';





