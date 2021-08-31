const { PrismaClient } = require("@prisma/client");

it("might leak", async () => {
  const prisma = new PrismaClient();

  await prisma.user.deleteMany();
  const user = await prisma.user.create({
    data: {
      email: "test",
    },
  });
  expect(user).toBeTruthy();

  await prisma.$disconnect();
});
