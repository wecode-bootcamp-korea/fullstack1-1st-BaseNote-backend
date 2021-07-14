import express from 'express';
import UserRouter from './UserRouter';
import ListRouter from './listRouter';

const router = express.Router();
router.use('/member', UserRouter);
router.use('/category', ListRouter);

export default router;
