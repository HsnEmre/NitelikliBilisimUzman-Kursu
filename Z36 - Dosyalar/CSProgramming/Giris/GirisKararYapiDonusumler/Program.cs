namespace GirisKararYapiDonusumler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] sayilar = new int[3];

            try
            {
                sayilar[0] = 1;
                sayilar[1] = 2;
                sayilar[2] = 3;
                sayilar[3] = 4;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Hata oluştu.");
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
            }





            int sayi = 3;

            for (int i = 0; i < 1000; i++)
            {
                Topla(i, 10);
            }

            Topla(sayi, 5);

            //if (sayi < 10)
            //{

            //}
            //else if (sayi > 10)
            //{

            //}
            //else
            //{

            //}

            if(sayi > 0 && sayi < 10)
            {

            }

            sayi = 7;

            if(sayi == 5 || sayi == 8 || (sayi < 8 && sayi > 5))
            {

            }

            switch (sayi)
            {
                case 2:
                case 3:
                case 4:
                    // kodlar..
                    break;

                case 5:
                    // kodlar..
                    break;

                default:
                    // kodlar..
                    break;
            }

            string yanit = sayi < 10 ? "evet" : "hayır";
            string yanit2 = sayi < 10 ? "evet" : (sayi > 10 ? "hayır" : "belirsiz");

        }

        static int Topla(int sayi1, int sayi2)
        {
            return sayi1 + sayi2;
        }
    }
}