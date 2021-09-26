import { ProductDao } from '../models';

const findProducts = async (volumeId, scentName) => {
  return await ProductDao.findProducts(volumeId, scentName);
};

const findAllProducts = async (volumeId) => {
  return await ProductDao.findAllProducts(volumeId);
};

export default { findProducts, findAllProducts };
