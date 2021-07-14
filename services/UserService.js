/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */
import { UserDao } from '../models';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

const { JWT_SECRET_KEY } = process.env;

const signUp = async (name, email, user_account, phone_number, password) => {
  const saltRounds = 10;
  const salt = await bcrypt.genSalt(saltRounds);
  const hashedPw = await bcrypt.hash(password, salt);

  const existingUser = await UserDao.getUser(user_account);

  if (existingUser.length) {
    const error = new Error('error');
    error.statusCode = 409;
    throw error;
  }

  return await UserDao.createUsers(
    name,
    email,
    user_account,
    phone_number,
    hashedPw
  );
};

const logIn = async (userAccount, password) => {
  const userInfo = await UserDao.findUser(userAccount);
  let err;

  if (!userInfo.length) {
    err = new Error('INVALID_USER');
    err.statusCode = 400;
    throw err;
  }

  const { id, password: hashedPassword } = userInfo[0];
  const isMatch = await bcrypt.compare(password, hashedPassword);

  if (!isMatch) {
    err = new Error('INVALID_USER');
    err.statusCode = 400;
    throw err;
  }

  const access_token = jwt.sign({ id }, JWT_SECRET_KEY, {
    expiresIn: '30m',
  });

  return access_token;
};

export default { signUp, logIn };
