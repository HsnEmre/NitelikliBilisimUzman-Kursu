using System.Runtime.CompilerServices;

namespace GirisMetotlar
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Console.WriteLine("Hello, World!");

            //string aaa = null;
            //bool? aaaa = null;
            //Nullable<bool> aaaaa = null;

            string[] isimler = new string[4];
            isimler[0] = "Murat";
            isimler[1] = "Başeren";
            isimler[2] = "tets";
            isimler[3] = "mavi";

            Array.Resize(ref isimler, 5);
            isimler[4] = "aaa";

            IsimleriListele(isimler);
            IsimleriListele2("Murat", "Başeren", "Yeşil");
            IsimleriListele2("Murat", "Başeren", "Yeşil","Mavi");
        }

        /// <summary>
        /// Buraya istediğiniz açıklama, metot ile ilgili.
        /// </summary>
        /// <param name="a">Sayı 1</param>
        /// <param name="b">Sayı 2</param>
        /// <returns>Toplamı verir.</returns>
        static int Topla(int b, int a = 1)
        {
            int sonuc = a + b;
            return sonuc;
        }

        static string BuyukHarfCevir(string ad)
        {
            string sonuc = ad.ToUpper();

            return sonuc;
        }

        static string KucukHarf(string parametre)
        {
            return parametre.ToLower();
        }

        static void Test(int a)
        {
            if (a == 0)
            {
                return;
            }

            //return;

            Console.WriteLine(a + 10);
        }


        static void IsimleriListele(string[] isimler)
        {
            foreach (string isim in isimler)
            {
                Console.WriteLine(isim.ToUpper());
            }
        }

        static void IsimleriListele2(params string[] isimler)
        {
            foreach (string isim in isimler)
            {
                Console.WriteLine(isim.ToUpper());
            }
        }
    }
}