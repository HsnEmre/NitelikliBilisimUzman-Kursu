namespace MusteriTakip
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] isimler = new string[] { "Murat", "Kadir", "Ertuğrul", "Ekin", "Mustafa" };
            DiziIslemleri.EkranaDiziyiYaz(isimler);




            Musteri[] musteriler = new Musteri[3];

            for (int i = 0; i < musteriler.Length; i++)
            {
                Musteri m = new Musteri();
                

                Console.Write("Müşteri Adı : ");
                m.Ad = Console.ReadLine();

                Console.Write("Müşteri Soyadı : ");
                m.Soyad = Console.ReadLine();

                Console.Write("Müşteri Bakiye : ");
                m.Bakiye = decimal.Parse(Console.ReadLine());

                Console.Write("Müşteri Aktif E/H : ");
                string aktifString = Console.ReadLine();

                //if (aktifString.ToLower() == "e")
                if (aktifString == "E" || aktifString == "e")
                {
                    m.Aktif = true;
                }
                else
                {
                    m.Aktif = false;
                }

                musteriler[i] = m;
            }

            Console.Clear();

            Console.WriteLine("Müşteriler");
            Console.WriteLine("==========");
            Console.WriteLine();

            foreach (Musteri musteri in musteriler)
            {
                musteri.EkranaYaz();
            }
        }
    }
}