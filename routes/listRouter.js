import express from 'express';
import { ListController } from '../controllers';

const router = express.Router();

router.get('/:volume_ml', ListController.volume);
// (req, res) => {
//   console.log(req.params);
//   res.send(req.params.volume_ml);
// });

export default router;
