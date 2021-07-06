import http from 'http';
import app from './app';
// import prisma from './prisma';
import dotenv from 'dotenv';

const server = http.createServer(app);
dotenv.config();
const { PORT } = process.env;
console.log(process.env.PORT);

const start = async () => {
  try {
    server.listen(PORT, () =>
      console.log(`✅ Server is listening on http://localhost:${PORT}`)
    );
  } catch (err) {
    console.error(err);
    // await prisma.$disconnect();
  }
};

start();