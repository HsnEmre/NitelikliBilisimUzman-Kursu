namespace OOPKrediKarti
{
    //public interface IExtra
    //{
    //    DateTime SonKullanimTarihi { get; set; }
    //    bool EkKartMi { get; set; }

    //    void BorcOde(decimal tutar);
    //}

    public class KrediKarti : Kart
    {
        public DateTime SonKullanimTarihi { get; set; }
        public bool EkKartMi { get; set; }

        public void BorcOde(decimal tutar)
        {
            throw new NotImplementedException();
        }
    }
}