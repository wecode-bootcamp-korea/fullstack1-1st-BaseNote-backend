/*
  Warnings:

  - You are about to drop the column `product_id` on the `images` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `notes` table. All the data in the column will be lost.
  - You are about to drop the column `note_id` on the `product_notes` table. All the data in the column will be lost.
  - You are about to drop the column `note_type_id` on the `product_notes` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `product_notes` table. All the data in the column will be lost.
  - You are about to drop the column `series_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `keyword_id` on the `products_keywords` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `products_keywords` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `products_volume` table. All the data in the column will be lost.
  - You are about to drop the column `volume_id` on the `products_volume` table. All the data in the column will be lost.
  - You are about to drop the column `review_id` on the `review_images` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `reviews` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `reviews` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `scent_products` table. All the data in the column will be lost.
  - You are about to drop the column `scent_id` on the `scent_products` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `seasonal_products` table. All the data in the column will be lost.
  - You are about to drop the column `season_id` on the `seasonal_products` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `seasons` table. All the data in the column will be lost.
  - You are about to drop the column `crated_at` on the `volume` table. All the data in the column will be lost.
  - Added the required column `productId` to the `images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `noteId` to the `product_notes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `note_typeId` to the `product_notes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `product_notes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seriesId` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `keywordId` to the `products_keywords` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `products_keywords` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `products_volume` table without a default value. This is not possible if the table is not empty.
  - Added the required column `volumeId` to the `products_volume` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reviewId` to the `review_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `reviews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `reviews` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `scent_products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `scentId` to the `scent_products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `seasonal_products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `seasonId` to the `seasonal_products` table without a default value. This is not possible if the table is not empty.

*/
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
ALTER TABLE `images` DROP COLUMN `product_id`,
    ADD COLUMN `productId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `notes` DROP COLUMN `createdAt`,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `product_notes` DROP COLUMN `note_id`,
    DROP COLUMN `note_type_id`,
    DROP COLUMN `product_id`,
    ADD COLUMN `noteId` INTEGER NOT NULL,
    ADD COLUMN `note_typeId` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `series_id`,
    ADD COLUMN `seriesId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `products_keywords` DROP COLUMN `keyword_id`,
    DROP COLUMN `product_id`,
    ADD COLUMN `keywordId` INTEGER NOT NULL,
    ADD COLUMN `productId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `products_volume` DROP COLUMN `product_id`,
    DROP COLUMN `volume_id`,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `volumeId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `review_images` DROP COLUMN `review_id`,
    ADD COLUMN `reviewId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `reviews` DROP COLUMN `product_id`,
    DROP COLUMN `user_id`,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `userId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `scent_products` DROP COLUMN `product_id`,
    DROP COLUMN `scent_id`,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `scentId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `seasonal_products` DROP COLUMN `product_id`,
    DROP COLUMN `season_id`,
    ADD COLUMN `productId` INTEGER NOT NULL,
    ADD COLUMN `seasonId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `seasons` DROP COLUMN `createdAt`,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `volume` DROP COLUMN `crated_at`,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AddForeignKey
ALTER TABLE `scent_products` ADD FOREIGN KEY (`scentId`) REFERENCES `scents`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `scent_products` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_volume` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_volume` ADD FOREIGN KEY (`volumeId`) REFERENCES `volume`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD FOREIGN KEY (`seriesId`) REFERENCES `series`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `images` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `seasonal_products` ADD FOREIGN KEY (`seasonId`) REFERENCES `seasons`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `seasonal_products` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_notes` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_notes` ADD FOREIGN KEY (`noteId`) REFERENCES `notes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_notes` ADD FOREIGN KEY (`note_typeId`) REFERENCES `note_type`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_keywords` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products_keywords` ADD FOREIGN KEY (`keywordId`) REFERENCES `keywords`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reviews` ADD FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reviews` ADD FOREIGN KEY (`productId`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `review_images` ADD FOREIGN KEY (`reviewId`) REFERENCES `reviews`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
