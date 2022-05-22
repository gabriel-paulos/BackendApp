const cloudinary = require("cloudinary").v2;
require("dotenv").config();
const db = require("../../dbConnect");

// cloudinary configuration
cloudinary.config({
  cloud_name: process.env.CLOUD_NAME,
  api_key: process.env.API_KEY,
  api_secret: process.env.API_SECRET,
});


exports.update = (req,res) =>{

    const { cloudinary_id } = req.params;

    db.pool.connect((err,client)=>{
        const query = "SELECT * FROM images where cloudinary_id = $1";
        const value = [cloudinary_id];
        
        client.query(query,value)
        .then((output)=>{
            res.status(200).send({
                status:"success",
                data:{
                    id: output.rows[0].cloudinary_id,
                    title: output.rows[0].title,
                    url:output.rows[0].image_url,
                },
            });
        }).catch((error)=>{
            res.status(401).send({
                status: "failure",
                data: {
                    message: "could not retrieve record!",
                    error,
                  },
            });
        });

    });

}