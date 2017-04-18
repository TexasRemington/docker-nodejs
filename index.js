'use strict';
const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
app.get('/', function (req, res) {
  res.send('Hello world\n');
});

//listening on:
app.listen(PORT);
console.log('Spinning on http://localhost:' + PORT);
