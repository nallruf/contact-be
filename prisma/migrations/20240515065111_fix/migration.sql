/*
  Warnings:

  - The primary key for the `users` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `email` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `id` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `imageProfile` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `point` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `role` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `universities` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `Mentor` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SkillOnUser` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ToolOnMaterial` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ToolOnPath` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserOnCourse` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserOnEvents` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CourseToSkills` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `bank` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `challenge` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `course` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `detail-transaction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `events` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `material` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `path` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `pathFocus` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `promo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `role` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `skills` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `speakers` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `submission` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `test` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `test-answer` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `test-question` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `testimoni` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `tools` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `transaction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user-progress` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Mentor` DROP FOREIGN KEY `Mentor_bankId_fkey`;

-- DropForeignKey
ALTER TABLE `Mentor` DROP FOREIGN KEY `Mentor_userId_fkey`;

-- DropForeignKey
ALTER TABLE `SkillOnUser` DROP FOREIGN KEY `SkillOnUser_skillId_fkey`;

-- DropForeignKey
ALTER TABLE `SkillOnUser` DROP FOREIGN KEY `SkillOnUser_userId_fkey`;

-- DropForeignKey
ALTER TABLE `ToolOnMaterial` DROP FOREIGN KEY `ToolOnMaterial_materialId_fkey`;

-- DropForeignKey
ALTER TABLE `ToolOnMaterial` DROP FOREIGN KEY `ToolOnMaterial_toolId_fkey`;

-- DropForeignKey
ALTER TABLE `ToolOnPath` DROP FOREIGN KEY `ToolOnPath_pathId_fkey`;

-- DropForeignKey
ALTER TABLE `ToolOnPath` DROP FOREIGN KEY `ToolOnPath_toolId_fkey`;

-- DropForeignKey
ALTER TABLE `UserOnCourse` DROP FOREIGN KEY `UserOnCourse_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `UserOnCourse` DROP FOREIGN KEY `UserOnCourse_userId_fkey`;

-- DropForeignKey
ALTER TABLE `UserOnEvents` DROP FOREIGN KEY `UserOnEvents_eventId_fkey`;

-- DropForeignKey
ALTER TABLE `UserOnEvents` DROP FOREIGN KEY `UserOnEvents_userId_fkey`;

-- DropForeignKey
ALTER TABLE `_CourseToSkills` DROP FOREIGN KEY `_CourseToSkills_A_fkey`;

-- DropForeignKey
ALTER TABLE `_CourseToSkills` DROP FOREIGN KEY `_CourseToSkills_B_fkey`;

-- DropForeignKey
ALTER TABLE `course` DROP FOREIGN KEY `course_mentorId_fkey`;

-- DropForeignKey
ALTER TABLE `course` DROP FOREIGN KEY `course_pathId_fkey`;

-- DropForeignKey
ALTER TABLE `detail-transaction` DROP FOREIGN KEY `detail-transaction_bankId_fkey`;

-- DropForeignKey
ALTER TABLE `detail-transaction` DROP FOREIGN KEY `detail-transaction_promoId_fkey`;

-- DropForeignKey
ALTER TABLE `detail-transaction` DROP FOREIGN KEY `detail-transaction_transactionId_fkey`;

-- DropForeignKey
ALTER TABLE `events` DROP FOREIGN KEY `events_speakerId_fkey`;

-- DropForeignKey
ALTER TABLE `material` DROP FOREIGN KEY `material_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `path` DROP FOREIGN KEY `path_roleId_fkey`;

-- DropForeignKey
ALTER TABLE `pathFocus` DROP FOREIGN KEY `pathFocus_pathId_fkey`;

-- DropForeignKey
ALTER TABLE `submission` DROP FOREIGN KEY `submission_challengeId_fkey`;

-- DropForeignKey
ALTER TABLE `submission` DROP FOREIGN KEY `submission_userId_fkey`;

-- DropForeignKey
ALTER TABLE `test-answer` DROP FOREIGN KEY `test-answer_questionId_fkey`;

-- DropForeignKey
ALTER TABLE `test-question` DROP FOREIGN KEY `test-question_testId_fkey`;

-- DropForeignKey
ALTER TABLE `testimoni` DROP FOREIGN KEY `testimoni_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `testimoni` DROP FOREIGN KEY `testimoni_userId_fkey`;

-- DropForeignKey
ALTER TABLE `transaction` DROP FOREIGN KEY `transaction_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `transaction` DROP FOREIGN KEY `transaction_userId_fkey`;

-- DropForeignKey
ALTER TABLE `user-progress` DROP FOREIGN KEY `user-progress_materialId_fkey`;

-- DropForeignKey
ALTER TABLE `user-progress` DROP FOREIGN KEY `user-progress_testId_fkey`;

-- DropForeignKey
ALTER TABLE `user-progress` DROP FOREIGN KEY `user-progress_userId_fkey`;

-- DropIndex
DROP INDEX `users_email_key` ON `users`;

-- DropIndex
DROP INDEX `users_username_key` ON `users`;

-- AlterTable
ALTER TABLE `users` DROP PRIMARY KEY,
    DROP COLUMN `email`,
    DROP COLUMN `id`,
    DROP COLUMN `imageProfile`,
    DROP COLUMN `phoneNumber`,
    DROP COLUMN `point`,
    DROP COLUMN `role`,
    DROP COLUMN `universities`,
    ADD COLUMN `token` VARCHAR(100) NULL,
    MODIFY `username` VARCHAR(100) NOT NULL,
    ADD PRIMARY KEY (`username`);

-- DropTable
DROP TABLE `Mentor`;

-- DropTable
DROP TABLE `SkillOnUser`;

-- DropTable
DROP TABLE `ToolOnMaterial`;

-- DropTable
DROP TABLE `ToolOnPath`;

-- DropTable
DROP TABLE `UserOnCourse`;

-- DropTable
DROP TABLE `UserOnEvents`;

-- DropTable
DROP TABLE `_CourseToSkills`;

-- DropTable
DROP TABLE `bank`;

-- DropTable
DROP TABLE `challenge`;

-- DropTable
DROP TABLE `course`;

-- DropTable
DROP TABLE `detail-transaction`;

-- DropTable
DROP TABLE `events`;

-- DropTable
DROP TABLE `material`;

-- DropTable
DROP TABLE `path`;

-- DropTable
DROP TABLE `pathFocus`;

-- DropTable
DROP TABLE `promo`;

-- DropTable
DROP TABLE `role`;

-- DropTable
DROP TABLE `skills`;

-- DropTable
DROP TABLE `speakers`;

-- DropTable
DROP TABLE `submission`;

-- DropTable
DROP TABLE `test`;

-- DropTable
DROP TABLE `test-answer`;

-- DropTable
DROP TABLE `test-question`;

-- DropTable
DROP TABLE `testimoni`;

-- DropTable
DROP TABLE `tools`;

-- DropTable
DROP TABLE `transaction`;

-- DropTable
DROP TABLE `user-progress`;

-- CreateTable
CREATE TABLE `contacts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NULL,
    `email` VARCHAR(100) NULL,
    `phone` VARCHAR(13) NULL,
    `username` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `addresses` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `street` VARCHAR(200) NULL,
    `city` VARCHAR(100) NULL,
    `province` VARCHAR(100) NULL,
    `country` VARCHAR(100) NOT NULL,
    `postal_code` VARCHAR(10) NOT NULL,
    `contact_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `contacts` ADD CONSTRAINT `contacts_username_fkey` FOREIGN KEY (`username`) REFERENCES `users`(`username`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `addresses` ADD CONSTRAINT `addresses_contact_id_fkey` FOREIGN KEY (`contact_id`) REFERENCES `contacts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
