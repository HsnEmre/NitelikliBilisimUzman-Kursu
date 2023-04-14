using System.Collections;
using System.ComponentModel;

namespace Kolleksiyonlar
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] isimler = new string[2];
            isimler[0] = "Murat";

            ArrayList adlar = new ArrayList();
            adlar.Add("Murat");
            adlar.Add(1);
            adlar.Add(true);

            // Strongly-types
            List<int> sayilar = new List<int>();
            //sayilar.Add(3);
            //sayilar.Add(5);

            List<int> sayilar2 = new List<int>(5);
            sayilar2[0] = 10;

            for (int i = 0; i < 100; i++)
            {
                sayilar.Add(i);
            }

            //for (int i = 0; i < sayilar.Count; i++)
            //{
            //    Console.WriteLine(sayilar[i]);
            //}
        }
    }
}