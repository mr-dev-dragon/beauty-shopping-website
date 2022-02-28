
CREATE DATABASE dataMS;
CREATE TABLE `product`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `stock_num` INT NOT NULL
);
ALTER TABLE
    `product` ADD PRIMARY KEY `product_id_primary`(`id`);
CREATE TABLE `costumer`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `f_name` VARCHAR(255) NOT NULL,
    `l_name` VARCHAR(255) NOT NULL,
    `c_address` VARCHAR(255) NOT NULL,
    `phone` INT NOT NULL,
    `gmail` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `costumer` ADD PRIMARY KEY `costumer_id_primary`(`id`);
CREATE TABLE `product_num`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INT NOT NULL,
    `product_num` INT NOT NULL
);
ALTER TABLE
    `product_num` ADD PRIMARY KEY `product_num_id_primary`(`id`);
CREATE TABLE `order_num`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `costumer_id` INT NOT NULL,
    `order_num` INT NOT NULL
);
ALTER TABLE
    `order_num` ADD PRIMARY KEY `order_num_id_primary`(`id`);
CREATE TABLE `order`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_num_id` INT NOT NULL,
    `order_num_id` INT NOT NULL,
    `order_address` VARCHAR(255) NOT NULL,
    `order_date` DATE NOT NULL
);
ALTER TABLE
    `order` ADD PRIMARY KEY `order_id_primary`(`id`);
ALTER TABLE
    `product_num` ADD CONSTRAINT `product_num_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
    `order_num` ADD CONSTRAINT `order_num_costumer_id_foreign` FOREIGN KEY(`costumer_id`) REFERENCES `costumer`(`id`);
ALTER TABLE
    `order` ADD CONSTRAINT `order_product_num_id_foreign` FOREIGN KEY(`product_num_id`) REFERENCES `product_num`(`id`);
ALTER TABLE
    `order` ADD CONSTRAINT `order_order_num_id_foreign` FOREIGN KEY(`order_num_id`) REFERENCES `order_num`(`id`);