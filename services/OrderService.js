import { OrderDao } from '../models';

const findCartItems = async (userId) => {
  return await OrderDao.findCartItems(userId);
};

const updateCartItemQuantity = async (id, cartItemId, quantity) => {
  return await OrderDao.updateCartItemQuantity(id, cartItemId, quantity);
};

export default { findCartItems, updateCartItemQuantity };
