namespace Giris
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string ad = "murat";

            int sayi = 4;
            bool evetHayir = true;

            float virgullu2 = 2.3f;
            double virgullu = 1.2;
            decimal virgullu3 = 4.5m;

            char karakter = 'k';

            string[] metinler = new string[4];
            metinler[0] = "Murat";
            metinler[1] = "Başeren";

            int[] sayilar = new int[3];


            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine(i);
            }


            int k = 0;

            while (k < 10)
            {
                Console.WriteLine(k);

                //++k;
                k++;
                //k += 1;
                //k = k + 1;
            }

            

            int z = 0;

            do
            {
                Console.WriteLine(z);
                z++;
            } while (z < 10);



            foreach (string adi in metinler)
            {
                Console.WriteLine(adi);
            }

        }
    }
}