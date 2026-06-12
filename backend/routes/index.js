const express = require('express');
const router = express.Router();

const mainController = require('../controllers/main');
const db = require('../config/db');

router.get('/', mainController.home);

router.get('/items', (req, res) => {
    db.query('SELECT * FROM inventory_items', (err, result) => {
        if (err) {
            return res.status(500).json(err);
        }

        res.json(result);
    });
});

module.exports = router;