-- CreateTable
CREATE TABLE "user_movie_likes" (
    "guid" UUID NOT NULL,
    "user_guid" UUID NOT NULL,
    "movie_guid" UUID NOT NULL,
    "favorite" BOOLEAN,
    "like" BOOLEAN DEFAULT false,
    "dislike" BOOLEAN DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "user_movie_likes_pkey" PRIMARY KEY ("guid")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_movie_likes_guid_key" ON "user_movie_likes"("guid");

-- AddForeignKey
ALTER TABLE "user_movie_likes" ADD CONSTRAINT "user_movie_likes_user_guid_fkey" FOREIGN KEY ("user_guid") REFERENCES "users"("guid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user_movie_likes" ADD CONSTRAINT "user_movie_likes_movie_guid_fkey" FOREIGN KEY ("movie_guid") REFERENCES "movies"("guid") ON DELETE RESTRICT ON UPDATE CASCADE;