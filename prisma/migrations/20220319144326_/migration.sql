-- CreateEnum
CREATE TYPE "Profile" AS ENUM ('admin', 'common');

-- CreateEnum
CREATE TYPE "Genre" AS ENUM ('male', 'female');

-- CreateTable
CREATE TABLE "users" (
    "guid" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT,
    "email" TEXT NOT NULL,
    "phone" TEXT,
    "password" TEXT,
    "profile" "Profile" NOT NULL DEFAULT E'common',
    "genre" TEXT,
    "image_url" TEXT,
    "country" TEXT,
    "cep" TEXT,
    "house_number" TEXT,
    "state" TEXT,
    "city" TEXT,
    "neighborhood" TEXT,
    "street" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "users_pkey" PRIMARY KEY ("guid")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_guid_key" ON "users"("guid");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");