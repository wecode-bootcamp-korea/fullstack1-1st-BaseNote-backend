/*
  Warnings:

  - You are about to drop the column `productId` on the `images` table. All the data in the column will be lost.
  - You are about to drop the column `noteId` on the `product_notes` table. All the data in the column will be lost.
  - You are about to drop the column `note_typeId` on the `product_notes` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `product_notes` table. All the data in the column will be lost.
  - You are about to drop the column `seriesId` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `keywordId` on the `products_keywords` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `products_keywords` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `products_volume` table. All the data in the column will be lost.
  - You are about to drop the column `volumeId` on the `products_volume` table. All the data in the column will be lost.
  - You are about to drop the column `reviewId` on the `review_images` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `reviews` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `reviews` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `scent_products` table. All the data in the column will be lost.
  - You are about to drop the column `scentId` on the `scent_products` table. All the data in the column will be lost.
  - You are about to drop the column `productId` on the `seasonal_products` table. All the data in the column will be lost.
  - You are about to drop the column `seasonId` on the `seasonal_products` table. All the data in the column will be lost.
  - You are about to drop the `cart` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `note_type` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `volume` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `product_id` to the `images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `note_id` to the `product_notes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `note_type_id` to the `product_notes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_id` to the `product_notes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `series_id` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `keyword_id` to the `products_keywords` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_id` to the `products_keywords` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_id` to the `products_volume` table without a default value. This is not possible if the table is not empty.
  - Added the required column `volume_id` to the `products_volume` table without a default value. This is not possible if the table is not empty.
  - Added the required column `review_id` to the `review_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_id` to the `reviews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `reviews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_id` to the `scent_products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `scent_id` to the `scent_products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_id` to the `seasonal_products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `season_id` to the `seasonal_products` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `cart` DROP FOREIGN KEY `cart_ibfk_1`;

-- DropForeignKey
ALTER TABLE `cart` DROP FOREIGN KEY `cart_ibfk_2`;

-- DropForeignKey
ALTER TABLE `images` DROP FOREIGN KEY `images_ibfk_1`;

-- DropForeignKey
ALTER TABLE `product_notes` DROP FOREIGN KEY `product_notes_ibfk_2`;

-- DropForeignKey
ALTER TABLE `product_notes` DROP FOREIGN KEY `product_notes_ibfk_3`;

-- DropForeignKey
ALTER TABLE `product_notes` DROP FOREIGN KEY `product_notes_ibfk_1`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `products_ibfk_1`;

-- DropForeignKey
ALTER TABLE `products_keywords` DROP FOREIGN KEY `products_keywords_ibfk_2`;

-- DropForeignKey
ALTER TABLE `products_keywords` DROP FOREIGN KEY `products_keywords_ibfk_1`;

-- DropForeignKey
ALTER TABLE `products_volume` DROP FOREIGN KEY `products_volume_ibfk_1`;

-- DropForeignKey
ALTER TABLE `products_volume` DROP FOREIGN KEY `products_volume_ibfk_2`;

-- DropForeignKey
ALTER TABLE `review_images` DROP FOREIGN KEY `review_images_ibfk_1`;

-- DropForeignKey
ALTER TABLE `reviews` DROP FOREIGN KEY `reviews_ibfk_2`;

-- DropForeignKey
ALTER TABLE `reviews` DROP FOREIGN KEY `reviews_ibfk_1`;

-- DropForeignKey
ALTER TABLE `scent_products` DROP FOREIGN KEY `scent_products_ibfk_2`;

-- DropForeignKey
ALTER TABLE `scent_products` DROP FOREIGN KEY `scent_products_ibfk_1`;

-- DropForeignKey
ALTER TABLE `seasonal_products` DROP FOREIGN KEY `seasonal_products_ibfk_2`;

-- DropForeignKey
ALTER TABLE `seasonal_products` DROP FOREIGN KEY `seasonal_products_ibfk_1`;

-- AlterTable
ALTER TABLE `images` DROP COLUMN `productId`,
    ADD COLUMN `product_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `product_notes` DROP COLUMN `noteId`,
    DROP COLUMN `note_typeId`,
    DROP COLUMN `productId`,
    ADD COLUMN `note_id` INTEGER NOT NULL,
    ADD COLUMN `note_type_id` INTEGER NOT NULL,
    ADD COLUMN `product_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `seriesId`,
    ADD COLUMN `series_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `products_keywords` DROP COLUMN `keywordId`,
    DROP COLUMN `productId`,
    ADD COLUMN `keyword_id` INTEGER NOT NULL,
    ADD COLUMN `product_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `products_volume` DROP COLUMN `productId`,
    DROP COLUMN `volumeId`,
    ADD COLUMN `product_id` INTEGER NOT NULL,
    ADD COLUMN `volume_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `review_images` DROP COLUMN `reviewId`,
    ADD COLUMN `review_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `reviews` DROP COLUMN `productId`,
    DROP COLUMN `userId`,
    ADD COLUMN `product_id` INTEGER NOT NULL,
    ADD COLUMN `user_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `scent_products` DROP COLUMN `productId`,
    DROP COLUMN `scentId`,
    ADD COLUMN `product_id` INTEGER NOT NULL,
    ADD COLUMN `scent_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `seasonal_products` DROP COLUMN `productId`,
    DROP COLUMN `seasonId`,
    ADD COLUMN `product_id` INTEGER NOT NULL,
    ADD COLUMN `season_id` INTEGER NOT NULL;

-- DropTable
DROP TABLE `cart`;

-- DropTable
DROP TABLE `note_type`;

-- DropTable
DROP TABLE `volume`;

-- CreateTable
CREATE TABLE `volumes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `volume_ml` DECIMAL(2, 1) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `note_types` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `carts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `quantity` INTEGER NOT NULL DEFAULT 1,
    `user_id` INTEGER NOT NULL,
    `product_id` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `scent_products` ADD FOREIGN KEY (`scent_id`) REFERENCES `scents`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `scent_products` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_volume` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_volume` ADD FOREIGN KEY (`volume_id`) REFERENCES `volumes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD FOREIGN KEY (`series_id`) REFERENCES `series`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `images` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `seasonal_products` ADD FOREIGN KEY (`season_id`) REFERENCES `seasons`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `seasonal_products` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_notes` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_notes` ADD FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_notes` ADD FOREIGN KEY (`note_type_id`) REFERENCES `note_types`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_keywords` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_keywords` ADD FOREIGN KEY (`keyword_id`) REFERENCES `keywords`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reviews` ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reviews` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `review_images` ADD FOREIGN KEY (`review_id`) REFERENCES `reviews`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `carts` ADD FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `carts` ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
