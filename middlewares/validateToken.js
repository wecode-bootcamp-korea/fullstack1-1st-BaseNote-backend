import jwt from 'jsonwebtoken';
import { UserDao } from '../models';

const { JWT_SECRET_KEY } = process.env;

const validateToken = async (req, res, next) => {
  try {
    let bearer, token;
    const bearerHeader = req.headers.authorization;

    if (bearerHeader) {
      [bearer, token] = req.headers.authorization.split(' ');
    } else {
      const err = new Error('TOKEN_REQUIRED');
      err.statusCode = 401;
      throw err;
    }

    const { id } = jwt.verify(token, JWT_SECRET_KEY);
    const foundUser = await UserDao.findUserId(id);

    if (!foundUser.length) {
      const err = new Error('INVALID_USER');
      err.statusCode = 400;
      throw err;
    }

    req.foundUser = foundUser;
    next();
  } catch (err) {
    next(err);
  }
};

export default validateToken;
