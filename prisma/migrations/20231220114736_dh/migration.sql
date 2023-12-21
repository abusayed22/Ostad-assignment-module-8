/*
  Warnings:

  - You are about to alter the column `age` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(40)`.
  - You are about to alter the column `grade` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(40)`.
  - You are about to alter the column `courses` on the `users` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(40)`.

*/
-- AlterTable
ALTER TABLE `users` MODIFY `first_name` VARCHAR(40) NOT NULL,
    MODIFY `last_name` VARCHAR(40) NOT NULL,
    MODIFY `age` VARCHAR(40) NOT NULL,
    MODIFY `grade` VARCHAR(40) NOT NULL,
    MODIFY `courses` VARCHAR(40) NOT NULL;
