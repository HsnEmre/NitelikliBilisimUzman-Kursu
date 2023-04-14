using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PropKavrami
{
    public abstract class Dortgen
    {
        public int KenarA { get; set; }

        public abstract int AlanHesapla();
    }

    public sealed class Kare : Dortgen
    {
        public override int AlanHesapla()
        {
            return KenarA * KenarA;
        }
    }

    public sealed class Dikdortgen : Dortgen
    {
        public int KenarB { get; set; }

        public override int AlanHesapla()
        {
            return KenarA * KenarB;
        }
    }




    // Abstract sınıflar
    // Sadece miras alınabilen ve soyut metot içerebilen sınıflar.

    //public abstract class Dortgen
    //{
    //    public int KenarA { get; set; }

    //    public abstract int AlanHesapla();
    //}

    //public class Kare : Dortgen
    //{
    //    public override int AlanHesapla()
    //    {
    //        return KenarA * KenarA;
    //    }
    //}

    //public class Dikdortgen : Dortgen
    //{
    //    public int KenarB { get; set; }

    //    public override int AlanHesapla()
    //    {
    //        return KenarA * KenarB;
    //    }
    //}





    // OOP - encapsulation - inheritance - polymorphism

    //public abstract class Dortgen
    //{
    //    public int KenarA { get; set; }

    //    public virtual int AlanHesapla()
    //    {
    //        return KenarA * KenarA;
    //    }
    //}

    //public class Kare : Dortgen
    //{

    //}

    //public class Dikdortgen : Dortgen
    //{
    //    public int KenarB { get; set; }

    //    public override int AlanHesapla()
    //    {
    //        return KenarA * KenarB;
    //    }
    //}
}
