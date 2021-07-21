import { ProductDao } from '../models';

const findProducts = async (volume) => {
  return await ProductDao.findProducts(volume);
};

const filterProducts = async (volume, scent) => {
  return await ProductDao.filterProducts(volume, scent);
};

export default { findProducts, filterProducts };
