"use strict";
const fs = require("fs");

const express = require("express");

// Constants`
//the value on line 7 is a static var
const PORT = 8080;
const HOST = "0.0.0.0";

// App
const app = express();
app.get("/", (req, res) => {
  const filename = "data/file.txt";
  const randomString = `${Math.floor(Math.random() * 10)} \n`;
  // newline with
  fs.appendFileSync(filename, randomString);
  const fileContent = fs.readFileSync(filename);
  const fileContentToString = fileContent.toString("utf8");

  res.send(fileContentToString);

  // res.send(fileContent);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
