/*
  Warnings:

  - You are about to drop the column `product_id` on the `carts` table. All the data in the column will be lost.
  - Added the required column `product_volume_id` to the `carts` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `carts` DROP FOREIGN KEY `carts_ibfk_1`;

-- AlterTable
ALTER TABLE `carts` DROP COLUMN `product_id`,
    ADD COLUMN `product_volume_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `carts` ADD FOREIGN KEY (`product_volume_id`) REFERENCES `products_volume`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
