import express from 'express';
import userRouter from './userRouter';

const router = express.Router();
router.use('/member', userRouter);

export default router;
