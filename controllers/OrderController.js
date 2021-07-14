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

export default { findCartItems };
