import express from 'express';
import cors from 'cors';
import morgan from 'morgan';
import routes from './routes';

const app = express();
const logger = morgan('dev');

app.use(cors());
app.use(express.json());
app.use(logger);
app.use(routes);

app.use((err, req, res, next) => {
  const { status, message } = err;
  console.error(err);
  res.status(status || 500).json({ message });
});

export default app;
