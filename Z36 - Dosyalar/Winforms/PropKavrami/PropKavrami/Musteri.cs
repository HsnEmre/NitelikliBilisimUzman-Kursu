using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PropKavrami
{
    internal class Musteri
    {
        // property - prop
        public string AdSoyad { get; set; }

        //// fields..
        //private string _AdSoyad;

        //// property
        //public string AdSoyad
        //{
        //    get { return _AdSoyad; }
        //    set { _AdSoyad = value; }
        //}

        
        // field..
        private int _Yas;

        // property..
        public int Yas
        {
            get
            {
                return _Yas;
            }
            set
            {
                if (value < 18)
                {
                    _Yas = 18;
                }
                else
                {
                    _Yas = value;
                }

            }
        }


        //private int _Yas;

        //public int GetYas()
        //{
        //    return _Yas;
        //}

        //public void SetYas(int value)
        //{
        //    if (value < 18)
        //    {
        //        _Yas = 18;
        //    }
        //    else
        //    {
        //        _Yas = value;
        //    }
        //}

    }
}
