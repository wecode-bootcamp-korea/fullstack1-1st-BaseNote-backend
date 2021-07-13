import prisma from '../prisma';

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

export default { findUser, findUserId };
