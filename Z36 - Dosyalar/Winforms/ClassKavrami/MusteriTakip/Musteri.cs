
namespace MusteriTakip
{
    internal class Musteri
    {
        public string Ad;
        public string Soyad;
        public decimal Bakiye;
        public bool Aktif;

        // overload - aşırı yüklenmiş versiyon..

        public Musteri()
        {

        }

        public Musteri(string adi, string soyadi)
        {
            Ad = adi;
            Soyad = soyadi;
        }

        public void EkranaYaz()
        {
            string durum = "";

            if (Aktif == true)
            {
                durum = "aktif";
            }
            else
            {
                durum = "pasif";
            }

            Console.WriteLine($"{Ad} {Soyad} - Bakiye : {Bakiye} ({durum})");
        }
    }
}
