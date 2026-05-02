require('./config/appInsights');

const express = require('express');
const app = express();

const logger = require('./config/logger');
app.use(logger);

app.use(express.json());

const routes = require('./routes/index');
app.use('/', routes);

const testRoutes = require('./routes/test');
app.use('/', testRoutes);

const PORT = 3000;

app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server running on port ${PORT}`);
});