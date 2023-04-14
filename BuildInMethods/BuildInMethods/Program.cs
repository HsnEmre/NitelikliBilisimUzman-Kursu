using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuildInMethods
{
    internal class Program
    {      
        static void Main(string[] args)
        {
            //Müşteri bilgilerinin kaydedildiği, düzenlendiği,listelendiği,silinebildiği 1 uyglama
            //veriler dizi olarak tutulacak(String[])
            //müşterinin adı soyadı firma adı ve telefeon bilgisi olarak tutulacak

            /* MENÜ
             * [1]- Verilerin Listelenmesi
             * [2]-Yeni Müşteri Ekleme
             * [3]-Müşteri Düzenle
             * [4]-Müşteri Sil
             * [0]
             */

            string select = "";
            string[,] customers = new string[4, 0];
            do
            {
                Console.Clear();

                Console.WriteLine("MENÜ");
                Console.WriteLine("====");
                Console.WriteLine();

                Console.WriteLine("[1] - Verileri Listele");
                Console.WriteLine("[2] - Yeni Müşteri Ekle");
                Console.WriteLine("[3] - Müşteri Düzenle");
                Console.WriteLine("[4] - Müşteri Sil");
                Console.WriteLine("[0] - Çıkış");

                Console.WriteLine();
                Console.Write("Seçimiz : ");
                select = Console.ReadLine();

                Console.Clear();

                switch (select)
                {
                    case "1":
                        Console.WriteLine("Veriler Listelendi.");
                        for (var row = 0; row < customers.GetLength(1); row++)
                        {
                            for (int col = 0; col < customers.GetLength(0); col++)
                            {
                                Console.Write(customers[col, row] + " ");
                            }
                            Console.WriteLine("");
                        }
                        Console.ReadLine();
                        break;

                    case "2":
                        //Console.WriteLine("Yeni Müşteri eklendi..");

                        Console.WriteLine("Adı Gir");
                        string name = Console.ReadLine();

                        Console.WriteLine("Soyadı Gir");
                        string surname = Console.ReadLine();

                        Console.WriteLine("Firma Adı Gir");
                        string company = Console.ReadLine();

                        Console.WriteLine("Telefon Gir");
                        string phone = Console.ReadLine();

                        string[,] customers2 = new string[customers.GetLength(0), customers.GetLength(1) + 1];

                        for (int col = 0; col < customers.GetLength(0); col++)
                        {
                            for (int row = 0; row < customers.GetLength(1); row++)
                            {
                                customers2[col, row] = customers[col, row];
                            }
                        }

                        customers2[0, customers2.GetLength(1) - 1] = name;
                        customers2[1, customers2.GetLength(1) - 1] = surname;
                        customers2[2, customers2.GetLength(1) - 1] = company;
                        customers2[3, customers2.GetLength(1) - 1] = phone;

                        customers = customers2;


                        break;

                    case "3":
                        Console.WriteLine("Müşteri Düzenlendi.");
                        break;

                    case "4":
                        Console.WriteLine("Müşteri silindi.");
                        break;

                    default:
                        break;
                }

                if (select != "0")
                {
                    Console.WriteLine("Devem etmek için bir tuşa basınız.");
                    Console.ReadKey();
                }

            } while (select != "0");

            Console.WriteLine("Çıkış yapmak için bir tuşa basınız.");
            Console.ReadKey();
        }
    }
}
