namespace OOPKrediKarti
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
        }
    }

    public interface IHavale
    {
        void HavaleGonder(string iban, decimal tutar);
    }

    public interface IPuan
    {
        decimal KazanilanPuan { get; set; }
    }

    public interface IEft
    {
        void EftGonder(string iban, decimal tutar);
    }

    public interface ITaksit
    {
        void TaksitYap(decimal tutar, int taksitSayisi);
    }

    public class Silver : KrediKarti, IEft, ITaksit
    {
        public bool KisitlamaVarMi { get; set; }
        public DateTime KisitlamaTarihi { get; set; }


        public void EftGonder(string iban, decimal tutar)
        {
            throw new NotImplementedException();
        }

        public void TaksitYap(decimal tutar, int taksitSayisi)
        {
            throw new NotImplementedException();
        }
    }
}