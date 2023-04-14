namespace ClassKavrami
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Random random = new Random();
            random.Next();

            Musteri musteri1 = new Musteri();
            musteri1.A();
            musteri1.B();
            musteri1.AdSoyad = "Kadir Murat Başeren";
            Console.WriteLine(musteri1.PiSayisi);

            Musteri musteri2 = new Musteri();
            musteri2.AdSoyad = "Samet";
            musteri2.B();
            
        }
    }


    class Musteri
    {
        // field.. - değişken
        public string AdSoyad = "Murat Başeren";
        public double PiSayisi = 3.14;

        public void A()
        {
            // variables - değişken
            string ad = "";
        }

        public void B()
        {
            string s = "Kadir" + AdSoyad;
            A();
        }
    }
}