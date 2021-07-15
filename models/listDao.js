import prisma from '../prisma';

const showLists = async () => {
  const products = await prisma.$queryRaw(`
    SELECT
      products.id,
      products.name,
      products.price,
      image.image_url
    FROM
      images
    JOIN products
      ON images.product_id = products.id
  `);
};
