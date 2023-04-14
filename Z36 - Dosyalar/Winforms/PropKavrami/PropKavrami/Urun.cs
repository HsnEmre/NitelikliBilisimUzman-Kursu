using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PropKavrami
{
    internal class Urun
    {
        public string Adi { get; set; }
        public int Adet { get; set; }
        public decimal BirimFiyat { get; set; }

        public decimal ToplamTutar
        {
            get
            {
                return BirimFiyat * Adet;
            }
            
        }

        //public decimal ToplamTutar { get; private set; }
        //public void ToplamTutarHesapla()
        //{
        //    ToplamTutar = BirimFiyat * Adet;
        //}
    }
}
