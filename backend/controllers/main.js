exports.home = (req, res) => {
    res.json({ 
        status: "success",
        message: "Welcome to the Smart Inventory Dashboard API" 
    });
};