using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusteriTakip
{
    internal static class DiziIslemleri
    {
        public static void EkranaDiziyiYaz(string[] dizi)
        {
            for (int i = 0; i < dizi.Length; i++)
            {
                Console.WriteLine(dizi[i]);
            }
        }
    }
}
