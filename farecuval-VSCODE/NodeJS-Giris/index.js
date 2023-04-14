//const fs = require("fs");
//fs.writeFileSync("file1.txt","Selamlaaaar");
//fs.copyFileSync("file1.txt","file2.txt");

//const superheroes = require("superheroes");
//console.log(superheroes.random());


//var superheroes = require("superheroes");

//ekrana 10 tane super kahraman ismi yazdıran kodu yazınız
/*
for (var i = 0; i < 10; i++){
    console.log(superheroes.random());
}
*/

//ekrana tüm super kahramanların isimlerini yazdıran kodu yazınız

/*let sayac = 0;
for (var i = 0; i < superheroes.all.length; i++){
    console.log(superheroes.all[i]);
    sayac++;
}
console.log("Toplam kahraman sayısı : "+sayac);*/

/* 2. YOL ;

for (var kahraman of superheroes.all)
console.log(kahraman);

*/

/*superheroes.all.forEach(function(kahraman){
    console.log(kahraman);
})*/

//express serverımızı kuralım

const express = require("express");
const bodyParser = require("body-parser");
const app = express();
app.use(bodyParser.urlencoded({extended:true}));

app.get("/",function(req,res){
    //res.send("<h1>Hello Express</h1>");
    res.sendFile(__dirname+"/index.html");
});

app.get("/Hakkimizda",function(req,res){
    //res.send("<h1>Hakkımızda sayfasına hoşgeldiniz</h1>");
    res.sendFile(__dirname+"/hakkimizda.html");
});

app.get("/iletisim",function(req,res){
    //res.send("<h1>Hakkımızda sayfasına hoşgeldiniz</h1>");
    res.sendFile(__dirname+"/iletisim.html");
});

app.post("/iletisim",function(req,res){
    console.log(req.body.inputAdSoyad);
});




app.listen(3000,function(){
    console.log("Sunucu yayına başladı");
});


