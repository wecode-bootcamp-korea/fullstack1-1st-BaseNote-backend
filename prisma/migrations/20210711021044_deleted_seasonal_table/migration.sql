/*
  Warnings:

  - You are about to drop the `seasonal_products` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `seasons` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `seasonal_products` DROP FOREIGN KEY `seasonal_products_ibfk_2`;

-- DropForeignKey
ALTER TABLE `seasonal_products` DROP FOREIGN KEY `seasonal_products_ibfk_1`;

-- DropTable
DROP TABLE `seasonal_products`;

-- DropTable
DROP TABLE `seasons`;
