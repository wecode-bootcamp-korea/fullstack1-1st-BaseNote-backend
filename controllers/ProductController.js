import { ProductService } from '../services';

const findAllProducts = async (req, res) => {
  try {
    const { volumeId } = req.params;
    const { scentName } = req.query;
    let err;

    if (!scentName) {
      const products = await ProductService.findAllProducts(volumeId);

      res.status(200).json({ messate: 'FIND_PRODUCTS_SUCCESSFULLY', products });
    } else if (volumeId < 3 && volumeId >= 1) {
      const filter = await ProductService.findProducts(volumeId, scentName);

      res.status(200).json({ message: 'FILTER_PRODUCTS_SUCCESSFULLY', filter });
    } else {
      err = new Error('INVALID_ACCESS');
      err.statusCode = 400;
      throw err;
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

export default { findAllProducts };
