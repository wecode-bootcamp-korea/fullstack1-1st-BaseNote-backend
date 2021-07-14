import express from 'express';
import { ListController } from '../controllers';

const router = express.Router();
router.get('/:volume_ml', (req, res) => {
  console.log(req.params.volume_ml);
  res.send(req.params.volume_ml);
});

export default router;
