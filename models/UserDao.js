import prisma from '../prisma';

const getUser = async (user_account) => {
  return await prisma.$queryRaw(`
    SELECT id, user_account, password FROM users WHERE user_account='${user_account}';
  `);
};

export default { getUser };
