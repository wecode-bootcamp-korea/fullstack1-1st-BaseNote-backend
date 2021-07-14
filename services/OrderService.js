import { OrderDao } from '../models';

const findCartItems = async (id) => {
  return await OrderDao.findCartItems(id);
};

const updateCartItemQuantity = async (id, cart_item_id, quantity) => {
  return await OrderDao.updateCartItemQuantity(id, cart_item_id, quantity);
};

export default { findCartItems, updateCartItemQuantity };
