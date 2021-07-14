import express from 'express';
import { OrderController } from '../controllers';
import validateToken from '../middlewares/validateToken';

const router = express.Router();

router.get('/cart', validateToken, OrderController.findCartItems);

export default router;
