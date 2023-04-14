using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp5
{
    
namespace SayiTahmin
    {
        class Program
        {
            static Random rastgele = new Random();

            static void Main(string[] args)
            {
                int enKucuk = 0, enBuyuk = 100;
                int tahmin, sayi = rastgele.Next(enBuyuk);
                int hak = 10;

                while (true)
                {
                    Console.WriteLine("\n\n" + hak-- + " hakkınız var.");
                    if (hak < 0)
                    {
                        Console.WriteLine("KAYBETTİNİZ! Tutulan sayı: " + sayi);
                        break;
                    }

                    Console.Write(enKucuk + " ile " + enBuyuk + " ARASI BİR SAYI GİRİNİZ: ");
                    tahmin = Convert.ToInt32(Console.ReadLine());

                    if (tahmin > sayi)
                    {
                        if (tahmin < enBuyuk)
                        {
                            enBuyuk = tahmin;
                        }
                    }
                    else if (tahmin < sayi)
                    {
                        if (tahmin > enKucuk)
                        {
                            enKucuk = tahmin;
                        }
                    }
                    else
                    {
                        Console.WriteLine("TEBRİKLER!");
                        break;
                    }

                }
                Console.ReadKey();

            }
        }
    }
}
    

