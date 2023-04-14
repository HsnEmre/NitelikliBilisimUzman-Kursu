namespace PropKavrami
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //sample1();
            //Sample2();
            //Sample3();
            //Sample4();
        }

        /// <summary>
        /// Abstract ve sealed class
        /// </summary>
        private static void Sample4()
        {
            //Dortgen dortgen = new Dortgen();  // New yapılamaz. Çünkü abstract
            //dortgen.KenarA = 4;
            //Console.WriteLine("Dörtgen Alan : " + dortgen.AlanHesapla());

            Kare kare = new Kare();
            kare.KenarA = 5;
            Console.WriteLine("Kare Alan : " + kare.AlanHesapla());

            Dikdortgen dikdortgen = new Dikdortgen();
            dikdortgen.KenarA = 3;
            dikdortgen.KenarB = 4;
            Console.WriteLine("Dikdörtgen alan : " + dikdortgen.AlanHesapla());
        }

        /// <summary>
        /// Miras alma - Kalıtım - inheritance
        /// </summary>
        private static void Sample3()
        {
            Calisan calisan = new Calisan();
            calisan.AdSoyad = "John Doe";
            calisan.Maas = 3000m;
            calisan.Departman = "İK";
            calisan.TcNo = "12345678978";
            calisan.Calis();

            Yonetici yonetici = new Yonetici();
            yonetici.AdSoyad = "Yonetici John";
            yonetici.Maas = 14000m;
            yonetici.TcNo = "97865432132";
            yonetici.AracPlaka = "34KL4";

            Koordinator koordinator = new Koordinator();
        }

        /// <summary>
        /// Property özelleştirme..
        /// </summary>
        private static void Sample2()
        {
            Urun urun1 = new Urun();
            urun1.Adi = "Gofret";
            urun1.Adet = 10;
            urun1.BirimFiyat = 1.2m;

            //urun1.ToplamTutarHesapla();

            Console.WriteLine($"{urun1.Adi}({urun1.Adet}) = {urun1.ToplamTutar} ₺ / {urun1.BirimFiyat} ₺ adet");
        }

        /// <summary>
        /// Property kullanımı..
        /// </summary>
        private static void sample1()
        {
            Console.Write("Müşteri 1 için yaş : ");

            Musteri musteri1 = new Musteri();
            musteri1.AdSoyad = "Furkan Öztürk";

            int yas1 = int.Parse(Console.ReadLine());
            //musteri1.SetYas(yas1);
            musteri1.Yas = yas1;

            Console.Write("Müşteri 2 için yaş : ");

            Musteri musteri2 = new Musteri();
            musteri2.AdSoyad = "Muhammed Karkaş";
            //musteri2.Yas = int.Parse(Console.ReadLine());

            int yas2 = int.Parse(Console.ReadLine());
            //musteri2.SetYas(yas2);
            musteri2.Yas = yas2;


            Console.Write("Müşteri 3 için yaş : ");

            Musteri musteri3 = new Musteri();
            musteri3.AdSoyad = "Ömer Halköver";
            //musteri3.Yas = int.Parse(Console.ReadLine());

            int yas3 = int.Parse(Console.ReadLine());
            //musteri3.SetYas(yas3);
            musteri3.Yas = yas3;
        }
    }
}