import { ProductService } from '../services';

const findProducts = async (req, res) => {
  try {
    const { volume } = req.query;
    let err;

    if (!['2.5ml', '40ml'].includes(volume)) {
      err = new Error('INVALID_ACCESS');
      err.statusCode = 400;
      throw err;
    } else {
      const products = await ProductService.findProducts(volume);

      res.status(200).json({ message: 'FIND_PRODUCTS_SUCCESSFULLY', products });
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

const filterProducts = async (req, res) => {
  try {
    const { volume, scent } = req.query;
    let err;

    if (!['2.5ml', '40ml'].includes(volume)) {
      err = new Error('INVALID_ACCESS');
      err.statusCode = 400;
      throw err;
    } else if (!['시트러스', '아쿠아', '머스크'].includes(scent)) {
      err = new Error('INVALID_ACCESS');
      err.statusCode = 400;
      throw err;
    } else {
      const products = await ProductService.filterProducts(volume, scent);

      res.status(200).json({ message: 'FILTERED_PROPERLY', products });
    }
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

export default { findProducts, filterProducts };
