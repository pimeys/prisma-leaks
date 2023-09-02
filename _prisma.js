const { PrismaClient } = require("@prisma/client");

async function main() {
  var prisma = new PrismaClient({ log: ["query","info"] });

  // while (true) {
    await prisma.user.deleteMany();
    const user = await prisma.user.create({
      data: {
        email: "test",
      },
    });

    console.log(user);
  // }

  await prisma.$disconnect();
}

main();
