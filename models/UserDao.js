import prisma from '../prisma';

const getUser = async (user_account) => {
  return await prisma.$queryRaw(
    `SELECT * FROM users WHERE user_account='${user_account}';`
  );
};

const createUsers = async (
  name,
  email,
  user_account,
  phone_number,
  hashedPw
) => {
  return await prisma.$queryRaw(`
    INSERT INTO users(name, email, user_account, phone_number, password)
    SELECT '${name}', '${email}', '${user_account}', '${phone_number}', '${hashedPw}'
    WHERE NOT EXISTS 
    (SELECT user_account FROM users 
      WHERE user_account = '${user_account}')
  `);
};

export default { getUser, createUsers };
