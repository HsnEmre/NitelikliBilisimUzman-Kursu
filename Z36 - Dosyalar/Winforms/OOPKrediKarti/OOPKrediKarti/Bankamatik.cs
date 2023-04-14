namespace OOPKrediKarti
{
    public class Bankamatik : Kart, IHavale
    {
        public HesapTuru HesapTuru { get; set; }
        public decimal Bakiye { get; set; }

        public void HavaleGonder(string iban, decimal tutar)
        {
            throw new NotImplementedException();
        }


        public void LimitTanimla(decimal tutar)
        {
            throw new NotImplementedException();
        }
    }
}