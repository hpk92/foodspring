
CREATE TABLE `foodspring`.`purchase` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productId` INT NOT NULL,
  `clientId` INT NOT NULL,
  `amount` INT NOT NULL,
  PRIMARY KEY (`id`));



INSERT INTO foodspring.purchase (id,productid, clientId, amount)
VALUES 
 (4,6, 157 , 5500),
 (5,1, 162 , 1500),
 (6,3, 163 , 2000),
 (7,3, 162 , 1000),
 (3,3, 203 , 4500)
;