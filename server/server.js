const express = require("express");
const app = express();
const cloudinary = require("cloudinary").v2;
const bodyParser = require('body-parser');
const db = require("./dbConnect.js");
require('dotenv').config()
const routes = require('./routes/routes');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));


app.use('/', routes);

module.exports = app;