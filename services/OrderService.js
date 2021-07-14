import { OrderDao } from '../models';

const findCartItems = async (id) => {
  return await OrderDao.findCartItems(id);
};

export default { findCartItems };
