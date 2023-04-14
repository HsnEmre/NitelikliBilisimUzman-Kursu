const express = require("express");
const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({extended:true}));
app.set("view engine","ejs");
const sql=require("mssql/msnodesqlv8");
var config={
    user:"",
    password:"",
    server:".",
    database:"NodeJSBlog"
}



app.get("/",function(req,res){

sql.connection(config,function(){
    var Request=new sql.Request();
    Request.query("select * from Posts",function(err,result){

        console.log(result.recordset);
    });

})

    res.render("index.ejs");
});

app.get("/new",function(req,res){
    res.render("new.ejs");
});


app.listen(3000,()=>{
    console.log("server is running....");
})