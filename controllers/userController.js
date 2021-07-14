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

export default { signUp };
