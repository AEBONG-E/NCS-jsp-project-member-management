use member_management;
CREATE TABLE member_management
(
    `id`         VARCHAR(20) NOT NULL,
    `password`   VARCHAR(16) NOT NULL,
    `name`       VARCHAR(20) NOT NULL,
    `gender`     VARCHAR(4)  NULL DEFAULT NULL,
    `birth`      VARCHAR(10) NULL DEFAULT NULL,
    `email`      VARCHAR(30) NULL DEFAULT NULL,
    `phone`      VARCHAR(11) NULL DEFAULT NULL,
    `address`    VARCHAR(50) NULL DEFAULT NULL,
    `created_at` DATETIME    NOT NULL,
    `updated_at` DATETIME    NULL,
    PRIMARY KEY (`id`) USING BTREE
);
INSERT INTO member_management (id, password, name, gender, birth, email, phone, address, created_at, updated_at)
VALUES ('hooney', '1111', '가길동', '남', '19980101', 'hooney@mail.com', '01012341234', '대구시 중구',now(), null);