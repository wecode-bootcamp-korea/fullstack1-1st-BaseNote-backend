import http from 'http';
import app from './app';
import prisma from '../prisma';

const server = http.createServer(app);
const PORT = process.env.PORT;

const start = async () => {
  try {
    server.listen(PORT, () => console.log(`SERVER is listening on ${PORT}!!`));
  } catch (err) {
    console.log(err);
  } finally {
    await prisma.$disconnect();
  }
};

start();
