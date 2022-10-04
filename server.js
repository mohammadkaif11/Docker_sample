var express = require('express');
var app = express();
const port=process.env.port|| 8080;
app.get('/', function(req, res){
   res.send("Hello world!");
});
app.get('/kaif', function(req, res){
    res.send("hii sharding developer");
 });
 app.get('/sohail', function(req, res){
    res.send("hii Post");
 });

app.listen(port,()=>{
    console.log(`server is listen at ${port}`)
});