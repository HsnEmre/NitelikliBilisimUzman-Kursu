using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace rest_menü
{
       class Program
        {
            static int hesap = 0;

            static void yiyecekler()
            {
                Console.WriteLine("İstediğiniz yemeğin numarasını giriniz:");
                Console.WriteLine("1 - Et yemeği");
                Console.WriteLine("2 - Mantı");
                Console.WriteLine("3 - Tavuk");

                int secim = Convert.ToInt32(Console.ReadLine());
                if (secim == 1)
                {
                    hesap += 20;
                    Console.WriteLine("Et yemeğiniz hazırlanıyor.");
                }
                else if (secim == 2)
                {
                    hesap += 15;
                    Console.WriteLine("Mantınız hazırlanıyor.");
                }
                else if (secim == 3)
                {
                    hesap += 10;
                    Console.WriteLine("Tavuğunuz hazırlanıyor.");
                }

                else
                    Console.WriteLine("Geçersiz İşlem");
                Console.ReadLine();
            }

            static void icecekler()
            {
                Console.WriteLine("İstediğiniz içeceğin numarasını giriniz:");
                Console.WriteLine("1 - Ayran");
                Console.WriteLine("2 - Kola");
                Console.WriteLine("3 - Limonata");

                int secim = Convert.ToInt32(Console.ReadLine());
                if (secim == 1)
                {
                    hesap += 3;
                    Console.WriteLine("İçeceğiniz Ayran");
                }
                else if (secim == 2)
                {
                    hesap += 4;
                    Console.WriteLine("İçeceğiniz Kola");
                }
                else if (secim == 3)
                {
                    hesap += 5;
                    Console.WriteLine("İçeceğiniz Limonata");
                }
                else
                {
                    Console.WriteLine("Geçersiz İşlem");
                    Console.ReadLine();
                }

            }

            static void tatlilar()
            {
                Console.WriteLine("İstediğiniz tatlının numarasını giriniz:");
                Console.WriteLine("1 - Sütlaç");
                Console.WriteLine("2 - Kazandibi");
                Console.WriteLine("3 - Tavuk Göğsü");

                int secim = Convert.ToInt32(Console.ReadLine());
                if (secim == 1)
                {
                    hesap += 7;
                    Console.WriteLine("Tatlınız Sütlaç");
                }
                else if (secim == 2)
                {
                    hesap += 7;
                    Console.WriteLine("Tatlınız Kazandibi");
                }
                else if (secim == 3)
                {
                    hesap += 7;
                    Console.WriteLine("Tatlınız Tavuk Göğsü");
                }
                else
                {
                    Console.WriteLine("Geçersiz İşlem");
                    Console.ReadLine();
                }
            }

            static void hesapode()
            {
                Console.WriteLine("Ödemeniz gereken ücret {0}TL", hesap);
                Console.ReadLine();
            }

            static void Main(string[] args)
            {
                int secim;
                do
                {

                    Console.WriteLine("**********Ana Menü**********");
                    Console.WriteLine("1 - Yiyecekler");
                    Console.WriteLine("2 - İçecekler");
                    Console.WriteLine("3 - Tatlılar");
                    Console.WriteLine("4 - Hesap Öde");
                    Console.WriteLine("İşlem yapmak için numara giriniz:");
                    secim = Convert.ToInt32(Console.ReadLine());
                    if (secim == 1)
                        yiyecekler();
                    else if (secim == 2)
                        icecekler();
                    else if (secim == 3)
                        tatlilar();
                    else if (secim == 4)
                        hesapode();
                    else
                        break;

                } while (secim != 4);


            }
        }
    }

        

    
