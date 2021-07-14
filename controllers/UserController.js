import { UserService } from '../services';

const signUp = async (req, res) => {
  try {
    const { name, email, userAccount, phoneNumber, password } = req.body;

    await UserService.signUp(name, email, userAccount, phoneNumber, password);

    res.status(201).json({ userAccount });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

const logIn = async (req, res) => {
  try {
    const { userAccount, password } = req.body;
    let err;

    if (!userAccount && !password) {
      err = new Error('PLEASE_ENTER_YOUR_USER_ID_AND_PASSWORD.');
      err.statusCode = 400;
      throw err;
    } else if (!userAccount) {
      err = new Error('PLEASE_ENTER_YOUR_USER_ID.');
      err.statusCode = 400;
      throw err;
    } else if (!password) {
      err = new Error('PLEASE_ENTER_YOUR_PASSWORD.');
      err.statusCode = 400;
      throw err;
    } else {
      const accessToken = await UserService.logIn(userAccount, password);

      res.status(200).json({ message: 'LOGIN_SUCCESS', accessToken });
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

export default { signUp, logIn };
