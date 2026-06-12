const express = require('express');
const router = express.Router();

router.get('/test-ok', (req, res) => {
    res.send("OK");
});

router.get('/test-error', (req, res) => {
    throw new Error("Simulasi error monitoring");
});

router.get('/test-load', (req, res) => {
    let total = 0;
    for (let i = 0; i < 1e7; i++) total += i;
    res.send("Load selesai");
});

module.exports = router;