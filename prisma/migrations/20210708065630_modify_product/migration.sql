/*
  Warnings:

  - You are about to drop the column `seriesId` on the `products` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `products_ibfk_1`;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `seriesId`;

-- AddForeignKey
ALTER TABLE `products` ADD FOREIGN KEY (`series_id`) REFERENCES `series`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
