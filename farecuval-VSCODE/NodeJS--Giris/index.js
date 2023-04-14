
//express server tanımlama

const express=require("express");
const app = express();



app.get("/",function(req,res){

    //res.send("<h1>Hello Express</h1>");

    res.sendFile(__dirname+"/index.html");
});

app.get("/hakkimizda",function(req,res){

    res.sendFile(__dirname+"/hakkimizda.html");
});

app.get("/iletisim",function(req,res){

    res.sendFile(__dirname+"/iletisim.html");
});














//test olarak 3000 kullanılır genelde boş olur
app.listen(3000,function(){
    console.log("sunucu yayına basladı");
}); 
















