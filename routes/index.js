import express from 'express';
import UserRouter from './UserRouter';
import OrderRouter from './OrderRouter';

const router = express.Router();
router.use('/member', UserRouter);
router.use('/order', OrderRouter);

export default router;
