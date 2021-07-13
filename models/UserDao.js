import prisma from '../prisma';

const findUserId = async (id) => {
  return await prisma.$queryRaw(`
    SELECT id, password FROM users WHERE id='${id}';
  `);
};

export default { findUserId };
