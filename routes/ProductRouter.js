import express from 'express';
import { ProductController } from '../controllers';

const router = express.Router();

router.get('', ProductController.findProducts);
router.get('/filter', ProductController.filterProducts);

export default router;
