import { UserDao } from '../models';
import bcrypt from 'bcrypt';

const logIn = async (user_account, password) => {
  const userInfo = await UserDao.getUser(user_account);
  let err;

  if (!userInfo.length) {
    err = new Error(`COULDN'T_FIND_YOUR_ACCOUNT.`);
    err.statusCode = 404;
    throw err;
  }

  const { user_account: id, password: hashedPassword } = userInfo[0];
  const isMatch = await bcrypt.compare(password, hashedPassword);

  if (!isMatch) {
    err = new Error('INCORRECT_PASSWORD.');
    err.statusCode = 401;
    throw err;
  }
};

export default { logIn };
