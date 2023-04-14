namespace OOPKrediKarti
{
    public class Kart
    {
        public string BankaAdi { get; set; }
        public string KartAdi { get; set; }
        public int CVCKodu { get; set; }
        public KartTuru KartTuru { get; set; }

        public void ParaCek(decimal tutar)
        {
            //NotImplementedException hata = new NotImplementedException();
            //throw hata;

            throw new NotImplementedException();
        }

        public void ParaYatir(decimal tutar)
        {
            throw new NotImplementedException();
        }
    }
}