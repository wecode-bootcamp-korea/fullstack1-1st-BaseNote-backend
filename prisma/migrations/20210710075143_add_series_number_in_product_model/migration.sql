/*
  Warnings:

  - Added the required column `series_number` to the `products` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `products` ADD COLUMN `series_number` INTEGER NOT NULL;
