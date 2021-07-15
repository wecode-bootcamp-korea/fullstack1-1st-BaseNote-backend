import { OrderDao } from '../models';

const findCartItems = async (userId) => {
  return await OrderDao.findCartItems(userId);
};

const updateCartItemQuantity = async (cartItemId, quantity) => {
  if (quantity < 1) {
    const err = new Error(
      'UPDATES_CAN_ONLY_BE_MADE_WITH_QUANTITIES_GREATER_THAN_1'
    );
    err.statusCode = 400;
    throw err;
  }

  return await OrderDao.updateCartItemQuantity(cartItemId, quantity);
};

export default { findCartItems, updateCartItemQuantity };
