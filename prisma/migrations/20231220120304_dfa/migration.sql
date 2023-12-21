/*
  Warnings:

  - You are about to drop the column `age` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `courses` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `create_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `first_name` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `grade` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `last_name` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `update_at` on the `users` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email]` on the table `users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `email` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `password` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `users` DROP COLUMN `age`,
    DROP COLUMN `courses`,
    DROP COLUMN `create_at`,
    DROP COLUMN `first_name`,
    DROP COLUMN `grade`,
    DROP COLUMN `last_name`,
    DROP COLUMN `update_at`,
    ADD COLUMN `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    ADD COLUMN `email` VARCHAR(191) NOT NULL,
    ADD COLUMN `password` VARCHAR(8) NOT NULL,
    ADD COLUMN `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- CreateIndex
CREATE UNIQUE INDEX `users_email_key` ON `users`(`email`);
