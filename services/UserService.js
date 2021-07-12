import { UserDao } from '../models';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

const { JWT_SECRET_KEY } = process.env;

const logIn = async (userAccount, password) => {
  const userInfo = await UserDao.findUser(userAccount);
  let err;

  if (!userInfo.length) {
    err = new Error('INVALID_USER');
    err.statusCode = 400;
    throw err;
  }

  const { user_account, password: hashedPassword } = userInfo[0];
  const isMatch = await bcrypt.compare(password, hashedPassword);

  if (!isMatch) {
    err = new Error('INVALID_USER');
    err.statusCode = 400;
    throw err;
  }

  const access_token = jwt.sign({ user_account }, JWT_SECRET_KEY, {
    expiresIn: '30m',
  });

  return access_token;
};

export default { logIn };
