import express from 'express';
import { UserController } from '../controllers';

const router = express.Router();

router.post('/login', UserController.logIn);

export default router;
