const express = require('express');
const app = express();

const routes = require('./routes/index');

app.use(express.json());
app.use('/', routes);

const PORT = 3000;

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server running on port ${PORT}`);
});