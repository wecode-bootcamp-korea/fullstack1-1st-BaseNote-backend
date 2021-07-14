import prisma from '../prisma';

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

const findUser = async (userAccount) => {
  return await prisma.$queryRaw(`
    SELECT id, user_account, password FROM users WHERE user_account='${userAccount}';
  `);
};

const findUserId = async (id) => {
  return await prisma.$queryRaw(`
    SELECT id, password FROM users WHERE id='${id}';
  `);
};

export default { createUsers, findUser, findUserId };
