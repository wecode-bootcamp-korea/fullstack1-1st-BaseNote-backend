import express from 'express';
import UserRouter from './UserRouter';
import OrderRouter from './OrderRouter';
import ProductRouter from './ProductRouter';

const router = express.Router();

router.use('/member', UserRouter);
router.use('/order', OrderRouter);
router.use('/product', ProductRouter);

export default router;
