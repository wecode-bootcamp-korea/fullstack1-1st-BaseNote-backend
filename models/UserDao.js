import prisma from '../prisma';

const findUser = async (userAccount) => {
  return await prisma.$queryRaw(`
    SELECT id, user_account, password FROM users WHERE user_account='${userAccount}';
  `);
};

export default { findUser };
