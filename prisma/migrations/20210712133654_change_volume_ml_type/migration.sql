/*
  Warnings:

  - You are about to alter the column `volume_ml` on the `volumes` table. The data in that column could be lost. The data in that column will be cast from `Decimal(2,1)` to `Double`.

*/
-- AlterTable
ALTER TABLE `volumes` MODIFY `volume_ml` DOUBLE NOT NULL;
