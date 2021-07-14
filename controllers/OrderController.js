import { OrderService } from '../services';

const findCartItems = async (req, res) => {
  try {
    const { id } = req.foundUser[0];
    const cartItems = await OrderService.findCartItems(id);

    res
      .status(200)
      .json({ message: 'FIND_CART_ITEMS_SUCCESSFULLY', cartItems });
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

const updateCartItemQuantity = async (req, res) => {
  try {
    const { id } = req.foundUser[0];
    const { cart_item_id, quantity } = req.body;
    let err;

    if (!cart_item_id && !quantity) {
      err = new Error('INVALID_CART_ITEM');
      err.statusCode = 400;
      throw err;
    } else if (!cart_item_id) {
      err = new Error('INVALID_CART_ITEM');
      err.statusCode = 400;
      throw err;
    } else if (!quantity) {
      err = new Error('PLEASE_SET_THE_QUANTITY');
      err.statusCode = 400;
      throw err;
    } else {
      await OrderService.updateCartItemQuantity(id, cart_item_id, quantity);

      res.status(200).json({ message: 'CART_ITEM_QUANTITY_UPDATED' });
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

export default { findCartItems, updateCartItemQuantity };
