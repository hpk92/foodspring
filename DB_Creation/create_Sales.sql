CREATE TABLE `foodspring`.`Sales` (
  `trans` INT NOT NULL,
  `customer_id` VARCHAR(45) NOT NULL,
  `product_id` VARCHAR(45) NOT NULL,
  `purchase_date` DATE NOT NULL,
  PRIMARY KEY (`trans`));