//klasörümüzü node jse göre hazır edelim
//express server kuralım
//body-parse kuralım
//ejs kuralım
//express servera body-parser kullanması gerektiğini söyle
//express servera kullanması gerektiği view engine'in ejs olduğuna SET edelim

//express serverımızı 3000 nolu porttan listen yapmasını sağla
//server çalıştığında "server is running.." mesajı yollat

//projemiz altında 1 tane ejs dosyalarını barındırmak üzere views klasörü oluştur


const express =require("express");
const app=express();
const bodyParser=require("body-parser");
app.use(bodyParser.urlencoded({extended:true}));
app.set("view engine","ejs");

//In Memory veritabanımız, 1 array
var ToDos=[];
var id=1;


app.get("/",(req,res) => { 

    if(req.query.islem=="sil")
    {
        var silinecekId=parseInt(req.query.id);
        
        for(var x of ToDos)

        {
            if(x.id==silinecekId)

            {
                //silinen array indexini verir
                // console.log("silinen index" +ToDos.indexOf(x))

                //arraydeki idyi siler
                ToDos.splice(ToDos.indexOf(x),1);
              

            }

        }

    }



    var data={
        "ToDos":ToDos
    };
    //console.log(ToDos);

    res.render("index.ejs",{Model:data});

});

app.post("/",(req,res)=>{

    var baslik = req.body.baslik;  //body-parse sayesinde bu şekilde inputların datalarına erişiyoruz
    var aciklama = req.body.aciklama;
    var todo = {   //json yazım şekli (obje ieklinde değerleri almak için todo adında json objesi oluşturduk)
        "id":id,
        "baslik":baslik,
        "aciklama":aciklama
    };

    ToDos.push(todo);  //burdan üst kısımdaoluşturduğumuz todos arrayına değerleri atıyoruz
    id++;  // her atama işleminde idleri artırıyoruz

    res.redirect("/"); //get methoduna yönlendirme
//(her post işlemi bittiğinden sonra get metoduna gönderiyor ve sayfaya güncel datalar geliyor)



});

app.listen(3000,()=>{
    console.log("Server is runnig..");
});


