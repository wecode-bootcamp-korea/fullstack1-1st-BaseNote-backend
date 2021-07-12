import express from 'express';
import userRouter from './userRouter';

const router = express.Router();
console.log('안되니', userRouter);
router.use('/member', userRouter);

export default router;
