//mevcut projeyi nodejs projesi haline getirin
//express serverı kuralım
//body-parser ı kuralım
//express serverın body-parser kullanmasını sağla
//3000 nolu porttan serverımızı yayın al
//yayına basladıgında "server is running.." concole.log mesajı yazdır

//hesapla.html sayfası olştur,sayfanın içerisinde 1 form, formun içerinde
//2 tane textbox olsun (input type text) 1 tane submit butonu olsun,
//formun methodu post olsun

//submit butonuna basıldığında server kısmına 2 tane sayı gönderelim bu 2 sayıyı
//server taradında toplayıp res.send komutu ile geri gönderelim



const express = require("express");
const app = express();
const bodyParser = require("body-parser");

app.use(bodyParser.urlencoded({extended:true}));

app.set("view engine","ejs");

//localhost:3000 olarak req geldiğinde yani ana dizin çağrıldığında hesapla.htmli çağırıyoruz
//hesapla.htmli açmış olmuyoruz onun içeriğini göndermiş oluyoruz
//htmli şutladık artık ejs kullanılıyoruz 

app.get("/",(req,res)=>{

res.render("index.ejs",{Model:{sonuc:toplam}});

});


app.post("/",(req,res)=>{

    var sayi1=parseInt(req.body.sayi1);
    var sayi2=parseInt(req.body.sayi2);
    var toplam=sayi1+sayi2;

   // res.render("index.ejs",{sonuc:toplam});
   res.render("index.ejs",{Model:{sonuc:toplam}});

 //  res.redirect("/");  post ettikten sonra anadizine dönmek için kullanır (redirect içerisinde verilen yolun get metodunu tetikliyor)

});












app.listen(3000,function(){
    console.log("Server is running..");
});
