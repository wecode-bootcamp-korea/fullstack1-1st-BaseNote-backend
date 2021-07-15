import { ProductDao } from '../models';

const findProducts = async (volume) => {
  return await ProductDao.findProducts(volume);
};

export default { findProducts };
