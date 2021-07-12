import prisma from '../../prisma';

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
    (SELECT FROM users 
      WHERE user_account = '${user_account}')
  `);
};

export default { createUsers };
