import express from 'express';
import { OrderController } from '../controllers';
import validateToken from '../middlewares/validateToken';

const router = express.Router();

router.get('/cart', validateToken, OrderController.findCartItems);
router.patch('/cart', validateToken, OrderController.updateCartItemQuantity);

export default router;
