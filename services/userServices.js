/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */
import { userDao } from '../models';
import bcrypt from 'bcrypt';

const signUp = async (name, email, user_account, phone_number, password) => {
  const saltRounds = 10;
  const salt = await bcrypt.genSalt(saltRounds);
  const hashedPw = await bcrypt.hash(password, salt);

  const existingUser = await userDao.getUser(user_account);

  if (existingUser.length) {
    const error = new Error('error');
    error.statusCode = 409;
    throw error;
  }

  return await userDao.createUsers(
    name,
    email,
    user_account,
    phone_number,
    hashedPw
  );
};

export default { signUp };
