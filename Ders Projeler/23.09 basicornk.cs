using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp6
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //kullanıcıdan alınan sayının karesi ve kökü

            /*   Console.WriteLine("1 sayı giriniz ");
               int sayi = Convert.ToInt32(Console.ReadLine());
               int kare = sayi * sayi;
               int kup = sayi * sayi * sayi;
               Console.WriteLine("sayının karesi" + kare);
               Console.WriteLine("sayının kupu" + kup); */

            //double kareSayi = Math.Pow(sayi,2);
            //double kupSayi = Math.Pow (sayi,3);

            //string değer 1leştirme 

            /*  string ad = "samet";
              string soyad = "aydin";
              string mail = "@gmail.com";
                  string str = ad + soyad + mail;
              Console.WriteLine(str); */

            //klavyeden 5 sayının ortalama

            /*  double toplam = 0, ortalama = 0;
              for (int i = 0; i < 5; i++)
              {
                  Console.Write((i + 1) + ". sayıyı giriniz:");
                  double sayi = Convert.ToDouble(Console.ReadLine());
                  toplam += sayi;
              }
              ortalama = toplam / 5;
              Console.WriteLine("Toplam={0}\nOrtalama={1}", toplam, ortalama);
              Console.ReadKey();*/

            // fahrenhayt c çevirme

            /* double san;
             Console.Write("Fahrenheit derecesi girin : ");
             double fah = Convert.ToDouble(Console.ReadLine());
             san = (fah - 32) * 5 / 9;
             Console.WriteLine("Santigrat derecesi:" + san);
             Console.ReadLine(); */


            // hesap makinesi

            /* int sayi1, sayi2;
             char opt;
             double sonuc;


             Console.WriteLine("\n\tMenu");
             Console.WriteLine("\nTOPLAMA İÇİN + TUŞUNA BASIN");
             Console.WriteLine("ÇIKARMA İÇİN - TUŞUNA BASIN");
             Console.WriteLine("ÇARPMA İÇİN * TUŞUNA BASIN");
             Console.WriteLine("BÖLME İÇİN / TUŞUNA BASIN");

             Console.Write("\n\n Birinci Sayıyı Girin :");
             sayi1 = Convert.ToInt32(Console.ReadLine());

             Console.Write(" İkinci Sayıyı Girin :");
             sayi2 = Convert.ToInt32(Console.ReadLine());

             Console.Write("\nİŞLEM YAPMAK İÇİN BİR OPERATÖR SEÇİN:\t");
             opt = Convert.ToChar(Console.ReadLine());

             if (opt == '+')
             {
                 sonuc = sayi1 + sayi2;
                 Console.WriteLine("\n{0} + {1} = {2}", sayi1, sayi2, sonuc);
             }
             else if (opt == '-')
             {
                 sonuc = sayi1 - sayi2;
                 Console.WriteLine("\n{0} - {1} = {2}", sayi1, sayi2, sonuc);
             }
             else if (opt == '*')
             {
                 sonuc = sayi1 * sayi2;
                 Console.WriteLine("\n{0} x {1} = {2}", sayi1, sayi2, sonuc);
             }
             else if (opt == '/')
             {
                 sonuc = (double)sayi1 / sayi2;
                 Console.WriteLine("\n{0} / {1} = {2}", sayi1, sayi2, sonuc);
             }
             else
             {
                 Console.WriteLine("ÜZGÜNÜN YANLIŞ BİR OPERATÖR GİRDİNİZ!");
             }


             Console.ReadKey(); */


            // kullanıcıdan gelen 3 sayının basamak değerleri

            int sayi, yuzler, onlar, birler;
            Console.Write("Sayıyı Girin : ");
            sayi = Convert.ToInt32(Console.ReadLine());
            yuzler = sayi / 100;
            sayi = sayi - (yuzler * 100);
            onlar = sayi / 10;
            sayi = sayi - (onlar * 10);
            birler = sayi;
            Console.WriteLine("Yüzler Basamağı : " + yuzler);
            Console.WriteLine("Onlar Basamağı : " + onlar);
            Console.WriteLine("Birler Basamağı : " + birler);
            Console.ReadKey();


        }
    }
    
}
