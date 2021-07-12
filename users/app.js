import express from 'express';
import routes from './routes';
import cors from 'cors';

const app = express();
const logger = morgan('dev');
console.log(routes);

app.use(cors());
app.use(express.json());
app.use(logger);
app.use(routes);

export default app;
