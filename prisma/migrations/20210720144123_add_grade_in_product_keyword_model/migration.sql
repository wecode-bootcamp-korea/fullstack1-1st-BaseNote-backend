/*
  Warnings:

  - Added the required column `grade` to the `products_keywords` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `products_keywords` ADD COLUMN `grade` VARCHAR(20) NOT NULL;
