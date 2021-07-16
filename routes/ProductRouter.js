import express from 'express';
import { ProductController } from '../controllers';

const router = express.Router();

router.get('', ProductController.findProducts);

export default router;
