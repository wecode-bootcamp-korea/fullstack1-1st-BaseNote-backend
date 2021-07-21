import prisma from '../prisma';

const findProducts = async (volume) => {
  return prisma.$queryRaw(`
    SELECT
      products.id,
      products.name,
      series.name as series,
      products.series_number as seriesNumber,
      images.image_url as imageURL,
      volumes.price
    FROM products
      JOIN products_volume
        ON products.id = products_volume.product_id
      JOIN volumes
        ON volumes.id = products_volume.volume_id
      JOIN series
        ON series.id = products.series_id
      JOIN images
        ON images.product_id = products.id
    WHERE volumes.volume_ml = '${volume}' 
  `);
};

const filterProducts = async (volume, scent) => {
  return prisma.$queryRaw(`
    SELECT
      products.id,
      products.name,
      series.name as series,
      products.series_number as seriesNumber,
      images.image_url as imageURL,
      volumes.price,
      scents.name as scents
    FROM products
      JOIN products_volume
        ON products.id = products_volume.product_id
      JOIN volumes
        ON volumes.id = products_volume.volume_id
      JOIN series
        ON series.id = products.series_id
      JOIN images
        ON images.product_id = products.id
      JOIN scent_products
        ON products.id = scent_products.product_id
      JOIN scents
        ON scents.id = scent_products.scent_id
    WHERE volumes.volume_ml = '${volume}' 
    AND scents.name = '${scent}';
  `);
};
export default { findProducts, filterProducts };
