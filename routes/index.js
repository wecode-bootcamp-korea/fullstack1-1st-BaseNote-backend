import express from 'express';
import UserRouter from './UserRouter';

const router = express.Router();

router.use('/member', UserRouter);

export default router;
