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
      console.log('ok');

      res.status(201).json({ message: 'LOGIN_SUCCESS' });
    }
  } catch (err) {
    res.status(err.statusCode || 500).json({ message: err.message });
  }
};

export default { logIn };
