const express = require("express");
const path = require('path');
const router = express.Router();
const app = express();
app.set('port', process.env.PORT || 3000);



// Pages
router.get('/',function(req,res){res.sendFile(path.join(__dirname+'/pages/index.html'));});
router.get('/login',function(req,res){res.sendFile(path.join(__dirname+'/pages/login.html'));});

 //add the router
app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port: ' , app.get('port'));