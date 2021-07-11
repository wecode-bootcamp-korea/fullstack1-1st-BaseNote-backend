import { UserDao } from '../models';

const { JWT_SECRET_KEY } = process.env;

const logIn = async (user_account, password) => {
  const userInfo = await UserDao.getUser(user_account);
};

export default { logIn };
