/*
  Warnings:

  - You are about to drop the column `created_at` on the `notes` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `seasons` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `notes` DROP COLUMN `created_at`,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `seasons` DROP COLUMN `created_at`,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);
