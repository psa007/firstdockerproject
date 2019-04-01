"use strict";

const express = require("express");

// Constants
//the value on line 7 is a static var
const PORT = 8080;
const HOST = "0.0.0.0";

// App
const app = express();
app.get("/", (req, res) => {
  res.send("Hello World\n");
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
