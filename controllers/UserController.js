import { UserService } from '../services';

const signUp = async (req, res) => {
  try {
    const { name, email, user_account, phone_number, password } = req.body;

    await UserService.signUp(name, email, user_account, phone_number, password);

    console.log({ user_account });
    res.status(201).json({ user_account });
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

const logIn = async (req, res) => {
  try {
    const { user_account, password } = req.body;
    let err;

    if (!user_account && !password) {
      err = new Error('PLEASE_ENTER_YOUR_USER_ID_AND_PASSWORD.');
      err.statusCode = 404;
      throw err;
    } else if (!user_account) {
      err = new Error('PLEASE_ENTER_YOUR_USER_ID.');
      err.statusCode = 404;
      throw err;
    } else if (!password) {
      err = new Error('PLEASE_ENTER_YOUR_PASSWORD.');
      err.statusCode = 404;
      throw err;
    } else {
      const access_token = await UserService.logIn(user_account, password);

      res.status(200).json({ message: 'LOGIN_SUCCESS', access_token });
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

export default { signUp, logIn };
