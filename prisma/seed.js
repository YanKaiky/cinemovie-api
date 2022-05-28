require("dotenv").config();
const bcrypt = require("bcryptjs");
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

async function seed() {
  const passwordHash = bcrypt.hashSync(process.env.USER_PASSWORD_SEEDER_DB, 8);

  const user = {
    name: "Yan Kaiky",
    last_name: "Augusto dos Santos",
    email: "yankaikys@gmail.com",
    password: passwordHash,
    phone: "47999556723",
    birthday: "2002-12-22T00:00:00.884Z",
    isAdmin: true,
    genre: "male",
    image_url: "https://cinemovie.s3.sa-east-1.amazonaws.com/Yan+Kaiky+A.+Santos.jpg",
    country: "Brazil",
    zipcode: "89069090",
    state: "SC",
    city: "Blumenau",
    neighborhood: "Itoupava Central",
    street: "R. Carlos Zuelow",
    house_number: "307"
  }

  await prisma.users.create({
    data: user,
  })
}

seed()
