import http from 'http';
import app from './app';
import prisma from '../prisma';

const server = http.createServer(app);
console.log(server);
const PORT = process.env.PORT;

console.log(app);

const start = async () => {
  try {
    console.log('엥', app);
    server.listen(PORT, () => console.log(`SERVER is listening on ${PORT}!!`));
  } catch (err) {
    console.log(err);
  } finally {
    await prisma.$disconnect();
  }
};

start();
