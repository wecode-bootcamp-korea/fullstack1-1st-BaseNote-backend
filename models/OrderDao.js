import prisma from '../prisma';

const findCartItems = async (userId) => {
  return await prisma.$queryRaw(`
      SELECT
        carts.id as cart_item_id,
        users.id as user_id,
        products.id,
        products.name,
        images.image_url,
        series.name as series,
        products.series_number,
        volumes.volume_ml,
        volumes.price
      FROM carts
        JOIN users
          ON carts.user_id = users.id
        JOIN products_volume
          ON carts.product_volume_id = products_volume.id
        JOIN products
          ON products.id = products_volume.product_id
        JOIN images
          ON images.product_id = products.id
        JOIN series
          ON series.id = products.series_id
        JOIN volumes
          ON volumes.id = products_volume.volume_id
      WHERE carts.user_id = '${userId}';
    `);
};

const updateCartItemQuantity = async (id, cart_item_id, quantity) => {
  return await prisma.$queryRaw(`
    UPDATE carts
      SET quantity = IF ((carts.user_id = ${id} && ${quantity} > 1), '${quantity}', quantity)
      WHERE id = '${cart_item_id}';
  `);
};

export default { findCartItems, updateCartItemQuantity };
