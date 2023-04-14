using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PropKavrami
{
    public class Calisan
    {
        public string AdSoyad { get; set; }
        public string TcNo { get; set; }
        public string Departman { get; set; }
        public decimal Maas { get; set; }

        public void Calis()
        {
            Console.WriteLine("çalıştı.");
        }
    }


    public class YoneticiBase : Calisan
    {
        public void Planlama()
        {
            Console.WriteLine("planladı.");
        }
    }

    public class Yonetici : YoneticiBase
    {
        public string AracPlaka { get; set; }

        public void Denetleme()
        {
            Console.WriteLine("denetledi.");
        }
    }

    public class Mudur : Yonetici
    {
        public decimal EvKira { get; set; }

        public void RaporAl()
        {
            Console.WriteLine("rapor aldı.");
        }
    }

    public class Koordinator : YoneticiBase
    {


    }
}
