namespace OOPKrediKarti
{
    public class Gold : KrediKarti, IHavale, IPuan, ITaksit
    {
        public decimal KazanilanPuan { get; set; }
        public bool IndirimOzelligiVarMi { get; set; }
        public bool KampanyaTanimliMi { get; set; }
        public DateTime KampanyaBaslangicTarihi { get; set; }
        public DateTime KampanyaBitisTarihi { get; set; }

        public void HavaleGonder(string iban, decimal tutar)
        {
            throw new NotImplementedException();
        }

        public void KampanyaTanimla()
        {
            throw new NotImplementedException();
        }

        public void KampanyaBitir()
        {
            throw new NotImplementedException();
        }

        public void TaksitYap(decimal tutar, int taksitSayisi)
        {
            throw new NotImplementedException();
        }
    }
}