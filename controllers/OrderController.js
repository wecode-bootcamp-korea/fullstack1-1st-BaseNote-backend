import { OrderService } from '../services';

const findCartItems = async (req, res) => {
  try {
    const { id: userId } = req.foundUser[0];
    const cartItems = await OrderService.findCartItems(userId);

    res
      .status(200)
      .json({ message: 'FIND_CART_ITEMS_SUCCESSFULLY', cartItems });
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

const updateCartItemQuantity = async (req, res) => {
  try {
    const { id: userId } = req.foundUser[0];
    const { cartItemId, quantity } = req.body;
    let err;

    if (!cartItemId && !quantity) {
      err = new Error('INVALID_CART_ITEM');
      err.statusCode = 400;
      throw err;
    } else if (!cartItemId) {
      err = new Error('INVALID_CART_ITEM');
      err.statusCode = 400;
      throw err;
    } else if (!quantity) {
      err = new Error('PLEASE_SET_THE_QUANTITY');
      err.statusCode = 400;
      throw err;
    } else {
      await OrderService.updateCartItemQuantity(userId, cartItemId, quantity);

      res.status(200).json({ message: 'CART_ITEM_QUANTITY_UPDATED' });
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

export default { findCartItems, updateCartItemQuantity };
