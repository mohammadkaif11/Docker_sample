var express = require('express');
var app = express();
const port=process.env.port|| 3000;
app.get('/', function(req, res){
   res.send("Hello world!");
});

app.listen(port,()=>{
    console.log(`server is listen at ${port}`)
});