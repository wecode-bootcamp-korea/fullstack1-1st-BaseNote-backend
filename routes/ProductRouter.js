import express from 'express';
import { ProductController } from '../controllers';

const router = express.Router();

router.get('/:volumeId', ProductController.findAllProducts);

export default router;
