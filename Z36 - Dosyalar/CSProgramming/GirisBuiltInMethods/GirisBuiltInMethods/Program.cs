namespace GirisBuiltInMethods
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string ad = "Murat";
            DateOnly dateOnly = new DateOnly();
            DateTime dateTime = DateTime.Now;
            bool isExists = false;
            int value = 19;

            ad.ToUpper();
            ad.ToLower();

            int dayOfYear = dateTime.DayOfYear;


            string[] dizi = new string[3];
            string[] dizi2 = new string[] { "Kadir", "Murat", "Başeren" };

            int length = dizi.Length;

            dizi.CopyTo(dizi2, 0);

            Array.Reverse(dizi);
            Array.Sort(dizi);
            Array.Copy(dizi, dizi2, 3);
            Array.Copy(dizi, dizi.Length - 3, dizi2, 0, 3);

            Array.Reverse(dizi);
            Array.Copy(dizi, dizi2, 3);

        }
    }
}