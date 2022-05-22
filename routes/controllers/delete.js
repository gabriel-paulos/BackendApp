require("dotenv").config();
const db = require("../../dbConnect");


// delete image
exports.delete = (req, res) => {
    // unique ID
    const { cloudinary_id } = req.params;
  
    // delete image from cloudinary first
    
      // delete image record from postgres also
      
    db.pool.connect((err, client) => {
       
        // delete query
        const deleteQuery = "DELETE FROM images WHERE cloudinary_id = $1";
        const deleteValue = [cloudinary_id];
  
        // execute delete query
        client
          .query(deleteQuery, deleteValue)
          .then((deleteResult) => {
            response.status(200).send({
              message: "Image Deleted Successfully!",
              deleteResult,
            });
          })
          .catch((e) => {
            response.status(500).send({
              message: "Image Couldn't be Deleted!",
              e,
            });
          });
    });

}
