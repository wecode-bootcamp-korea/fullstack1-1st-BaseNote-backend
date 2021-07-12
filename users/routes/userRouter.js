import express from 'express';
import { userController } from '../controllers';

const router = express.Router();

router.get('', userController.showAllUsers);
router.post('/signup', userController.signUp);

export default router;
