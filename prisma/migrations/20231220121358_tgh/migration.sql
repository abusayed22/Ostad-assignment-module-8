/*
  Warnings:

  - You are about to drop the column `created_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `password` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `profiles` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `age` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `courses` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `first_name` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `grade` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_name` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `profiles` DROP FOREIGN KEY `profiles_user_id_fkey`;

-- DropIndex
DROP INDEX `users_email_key` ON `users`;

-- AlterTable
ALTER TABLE `users` DROP COLUMN `created_at`,
    DROP COLUMN `email`,
    DROP COLUMN `password`,
    DROP COLUMN `updated_at`,
    ADD COLUMN `age` VARCHAR(40) NOT NULL,
    ADD COLUMN `courses` VARCHAR(40) NOT NULL,
    ADD COLUMN `create_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    ADD COLUMN `first_name` VARCHAR(40) NOT NULL,
    ADD COLUMN `grade` VARCHAR(40) NOT NULL,
    ADD COLUMN `last_name` VARCHAR(40) NOT NULL,
    ADD COLUMN `update_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- DropTable
DROP TABLE `profiles`;
