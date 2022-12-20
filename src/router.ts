import { Router } from 'express';

export const router = Router().get('/api/hello', (req, res) => {
    res.json({ message: 'Hello World!' });
});
