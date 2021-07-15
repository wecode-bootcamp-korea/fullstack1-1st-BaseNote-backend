import prisma from '../prisma';

const createUsers = async (name, email, userAccount, phoneNumber, hashedPw) => {
  return await prisma.$queryRaw(`
    INSERT INTO users(
      name, 
      email, 
      user_account, 
      phone_number, 
      password)
    VALUES ('${name}', '${email}', '${userAccount}', ${phoneNumber}, '${hashedPw}')
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
