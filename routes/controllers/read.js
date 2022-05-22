require("dotenv").config();
const db = require("../../dbConnect");


// read all images
exports.read = (req, res) => {
    db.pool.query('SELECT * FROM images ORDER BY id ASC', (error, results) => {
        if (error) {
          throw error
        }
        res.status(200).json(results.rows)
    });
    
}