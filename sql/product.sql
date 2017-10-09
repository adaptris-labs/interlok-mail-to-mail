CREATE TABLE `products` (
  `id` varchar(40) NOT NULL,
  `product` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `LastUpdated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO products values("1", "blue shoes", "They are blue!", NOW(), NOW());
INSERT INTO products values("2", "not blue shoes", "They are not blue!", NOW(), NOW());