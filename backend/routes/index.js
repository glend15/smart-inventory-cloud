const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    res.json({ message: "Smart Inventory Dashboard API Running"})
})

module.exports = router;