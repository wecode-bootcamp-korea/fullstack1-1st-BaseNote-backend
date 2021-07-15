import { OrderDao } from '../models';

const findCartItems = async (userId) => {
  return await OrderDao.findCartItems(userId);
};

const updateCartItemQuantity = async (id, cart_item_id, quantity) => {
  return await OrderDao.updateCartItemQuantity(id, cart_item_id, quantity);
};

export default { findCartItems, updateCartItemQuantity };
