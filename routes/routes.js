const express = require("express");
const router = express.Router();
const createImage = require("./controllers/create");
const readImage = require("./controllers/read");
const updateImage = require("./controllers/update");
const deleteImage = require("./controllers/delete");

router.get("/", (request, response, next) => {
  response.json({ message: "Hey! This is your server response!" });
  next();
});

// image upload API
router.post("/image-upload", createImage.create);

// retrieve image
router.get("/retrieve-images", readImage.read);

// delete image
router.delete("/delete-image/:cloudinary_id", deleteImage.delete);

// update image
router.put("/update-image/:cloudinary_id", updateImage.update);

module.exports = router;