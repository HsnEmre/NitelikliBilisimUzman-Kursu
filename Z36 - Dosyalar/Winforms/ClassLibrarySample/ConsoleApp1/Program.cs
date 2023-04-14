using Matematik;
using MFramework.Services.FakeData;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //UseMatematikClassLibrary();

            for (int i = 0; i < 10; i++)
            {
                string name = NameData.GetFirstName();
                string surname = NameData.GetSurname();
                int age = NumberData.GetNumber(18, 100);
                string address = PlaceData.GetAddress();
                string email = NetworkData.GetEmail();

                Console.WriteLine($"{name} {surname} ({age}) - {email} | {address}");
            }

        }

        private static void UseMatematikClassLibrary()
        {
            DortIslem dortIslem = new DortIslem();

            Console.Write("1. Sayı : ");
            int sayi1 = int.Parse(Console.ReadLine());

            Console.Write("2. Sayı : ");
            int sayi2 = int.Parse(Console.ReadLine());

            int toplam = dortIslem.Topla(sayi1, sayi2);

            Console.WriteLine();
            Console.Write("Toplam : " + toplam);
        }
    }
}