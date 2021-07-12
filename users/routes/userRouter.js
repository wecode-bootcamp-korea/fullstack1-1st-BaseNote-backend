import express from 'express';
import { userController } from '../controllers';

const router = express.Router();
console.log('22');
router.post('/signup', userController.signUp);

export default router;
