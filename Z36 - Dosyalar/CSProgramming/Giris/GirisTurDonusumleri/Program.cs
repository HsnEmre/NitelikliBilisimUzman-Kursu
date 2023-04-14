namespace GirisTurDonusumleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
            object obj = 5;
            object obj2 = "Murat";  // boxing

            string ad = (string)obj2; // unboxing - cast işlemi
            Console.WriteLine(ad);

            string boolString = "false";
            bool deger = bool.Parse(boolString);

            string intString = "55";
            int deger2 = int.Parse(intString);

            string int2String = "aa";
            int deger3;
            bool degerDondumu = int.TryParse(int2String, out deger3);

            if (degerDondumu == true)
            {
                Console.WriteLine("Tür dönüşü yapıldı.");
                Console.WriteLine(deger3);
            }
            else
            {
                Console.WriteLine("Tür dönüştürülemedi.");
                Console.WriteLine(deger3);
            }

            string sayi = "44";
            int deger4 = Convert.ToInt32(sayi);
            
        }
    }
}