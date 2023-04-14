//npm init ile projeyi npm e uygun getirelim
//express ve body-parser modullerini kuralım
//ejs modulunu kuralım
//express serverı örnekleyelim ve , view engine olarak ejs kullanması gerektiğini söyleyelim,
//aynı zamanda express serverın body parser kullanması gerektiğini de söyleyelim.
//uygulamayı 3000 nolu porttan yayına alacak komutu yazalım,
// ana sayfa için GET metodu tanımlayalım
// views klasoru açıp, içerisine index.ejs dosyasını ekleyelim
//ana sayfanın get metodu çalıştıgında, kullanıcıya index.ejs nin gönderilmesini sağlayalım

const express = require("express");
const app = express();
const bodyParser=require("body-parser");
app.use(bodyParser.urlencoded({extended:true}));
app.set("view engine","ejs");
const sql= require("mssql");
var config = {
    userName: 'sa', //username created from SQL Management Studio
    password: '123',
    server: 'localhost',    //the IP of the machine where SQL Server runs

    options: {
        database: 'NodeJSBlog',  //the username above should have granted permissions in order to access this DB.
        debug: {
            packet: false,
            payload: false,
            token: false,
            data: false
        },
        encrypt: false
    }

};


app.get("/",(req,res)=>{

    
    var conn = new sql.ConnectionPool(config);
    var req = new sql.Request(conn);
     
    conn.connect(function(error){
         
        if(error){
             
            console.log(error);
            return;
        }
         
        req.query("SELECT * FROM Posts",function(err, redocrset){
            if(err)
            {
                 
            }
            else{
                console.log(redocrset)
            }
             
        })
         
    })
     
    


res.render("index.ejs");

});

//new sayfası için verileri alıp console'a basan post metodunu yazalım.

app.post("/new",(req,res)=>{

    
    console.log(req.body.txtBaslik);
    console.log(req.body.txtIcerik);

});


app.get("/new",(req,res)=>{
    res.render("new.ejs");
})


app.listen(3000,()=>console.log("Yayın başladı"));



