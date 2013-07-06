var express = require('express');
var firebase = require('firebase');
var async = require('async');

var app = express();

app.use(express.bodyParser());

app.post('/message', function(req,res) {
  var message = req.body;

  console.log('send message: ' + message.message);

  for (var i = 0; i < message.recipients.length; i++) {
    console.log(message.recipients[i]);
  }

  res.send("ok");
});

app.listen(8080);
