import { OrderDao } from '../models';

const findCartItems = async (userId) => {
  return await OrderDao.findCartItems(userId);
};

const updateCartItemQuantity = async (userId, cartItemId, quantity) => {
  return await OrderDao.updateCartItemQuantity(userId, cartItemId, quantity);
};

export default { findCartItems, updateCartItemQuantity };
