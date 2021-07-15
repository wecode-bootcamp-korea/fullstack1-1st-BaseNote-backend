import prisma from '../prisma';

const showLists = async () => {
  const products = await prisma.$queryRaw(`
    SELECT
      products.id
      products.name
      products.
  `);
};
