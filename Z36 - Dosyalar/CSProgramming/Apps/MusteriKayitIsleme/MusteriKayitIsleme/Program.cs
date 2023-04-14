namespace MusteriKayitIsleme
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string secim = "";
            string[] musteriler = new string[0];
            //Array.Resize(...)
            //"Murat;Başeren;Codeove;5554448844"

            foreach (string musteri in musteriler)
            {
                //Console.WriteLine(musteri);
                musteri.Split(';');
            }

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
                secim = Console.ReadLine();

                Console.Clear();

                switch (secim)
                {
                    case "1":
                        //for (int i = 0; i < musteriler.Length; i++)
                        //{
                        //    string musteri = musteriler[i];
                        //}


                        Console.WriteLine("MÜŞTERİLER");
                        Console.WriteLine("==========");
                        Console.WriteLine();

                        foreach (string musteri in musteriler)
                        {
                            string[] musteriInfo = musteri.Split(';');

                            Console.WriteLine("Ad : " + musteriInfo[0]);
                            Console.WriteLine("Soyad : " + musteriInfo[1]);
                            Console.WriteLine("Firma : " + musteriInfo[2]);
                            Console.WriteLine("Telefon : " + musteriInfo[3]);
                            Console.WriteLine();
                        }

                        Console.WriteLine("Veriler Listelendi.");
                        break;

                    case "2":

                        Console.Write("Ad : ");
                        string name = Console.ReadLine();
                        Console.Write("Soyad : ");
                        string surname = Console.ReadLine();
                        Console.Write("Firma : ");
                        string company = Console.ReadLine();
                        Console.Write("Telefon : ");
                        string phone = Console.ReadLine();

                        //string info = name + ";" + surname + ";" + company + ";" + phone;
                        string info = $"{name};{surname};{company};{phone}";
                        //string info = string.Format("{0};{1};{2};{3}", name, surname, company, phone);

                        Array.Resize(ref musteriler, musteriler.Length + 1);
                        musteriler[musteriler.Length - 1] = info;

                        Console.WriteLine();
                        Console.WriteLine("Yeni Müşteri eklendi..");
                        break;

                    case "3":
                        // Müşteriler listelenecek..
                        // [0] - Murat Başeren
                        // [1] - Ertuğrul Erikçi
                        // ....

                        // Düzenlenecek index : 0

                        // Adı : Murat
                        // Soyadı : Başeren
                        // Firma : Codeove
                        // Telefon : 456789123

                        // Yeni Adı : ...
                        // Yeni Soyadı : ...
                        // ...

                        // string info = ("ad;soyad;...")
                        // musteriler[index] = info

                        Console.WriteLine("Müşteri Düzenlendi.");
                        break;

                    case "4":
                        // Müşteriler listelenecek..
                        // [0] - Murat Başeren
                        // [1] - Ertuğrul Erikçi
                        // ....

                        // Silinecek index : 0

                        // Adı : Murat
                        // Soyadı : Başeren
                        // Firma : Codeove
                        // Telefon : 456789123

                        // Silmek istediğinize emin misiniz? E/H
                        // Console.ReadLine()

                        // if (Evet mi) ...

                        // Bu diziyi eleman sayısı 1 eksik olan bir başka diziye kopyalamalısınız. (tmp dizi)
                        // musteriler = tmp;

                        Console.WriteLine("Müşteri silindi.");
                        break;

                    default:
                        break;
                }

                if (secim != "0")
                {
                    Console.WriteLine("Devem etmek için bir tuşa basınız.");
                    Console.ReadKey();
                }

            } while (secim != "0");

            Console.WriteLine("Çıkış yapmak için bir tuşa basınız.");
            Console.ReadKey();
        }
    }
}