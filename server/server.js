var express = require('express');
var firebase = require('firebase');

var app = express();

app.use(express.bodyParser());

app.post('/message', function(req,res) {
  console.log(req.body);
  res.send("ok");
});

app.listen(8080);
