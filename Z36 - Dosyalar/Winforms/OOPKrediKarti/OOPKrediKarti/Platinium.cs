namespace OOPKrediKarti
{
    public class Platinium : KrediKarti, IHavale, IPuan, IEft
    {
        public bool ClubUyeligiVarMi { get; set; }
        public DateTime UyelikBaslangicTarihi { get; set; }
        public DateTime UyelikBitisTarihi { get; set; }
        public decimal KazanilanPuan { get; set; }

        public void HavaleGonder(string iban, decimal tutar)
        {
            throw new NotImplementedException();
        }

        public void UyeligiYenile()
        {
            throw new NotImplementedException();
        }

        public void UyeligiBitir()
        {
            throw new NotImplementedException();
        }

        public void EftGonder(string iban, decimal tutar)
        {
            throw new NotImplementedException();
        }
    }
}