using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace discirandevu041122
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = .; Database = db_DisciRandevuProgrami; Trusted_Connection = True;");

        private void btnkaydet_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand("INSERT INTO [dbo].[Hastalar]([hastaAd],[hastaSoyad],[hastaTcKimlikNo],[hastaTelefonNo],[cinsiyetID],[randevuID],[ilID],[ilceID],[hastaAciklama],[hastaEPosta],[hastaKanGrubu],[hastaAktifMi])VALUES('" + txthastaad.Text + "', '" + txthastasoyad.Text + "', '" + txthastatckimlikno.Text + "', '" + txthastatelno.Text + "', " + txtcinsiyetid.Text + ", " + txtrandevuid.Text + ", " + txtilid.Text + ", " + txtilceid.Text + ", '" + txthastaaciklama.Text + "', '" + txthastaeposta.Text + "', '" + txthastakangrubu.Text + "', '" + cbxaktif.Checked + "')", baglanti);
                baglanti.Open();
                komut.ExecuteNonQuery();
                MessageBox.Show("Kaydedildi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("Kaydederken bir sıkıntı çıktı." + hata.Message);

            }
            finally
            {
                baglanti.Close();
            }
        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void btngetir_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from [dbo].[Hastalar]", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader reader = komut.ExecuteReader();
            while (reader.Read())
            {
                listBox1.Items.Add(reader[0].ToString() + " : " + reader[1].ToString() + " " + reader[2].ToString());
            }
            
                baglanti.Close();
            
        }

        private void btnsil_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand("DELETE FROM [dbo].[Hastalar] WHERE hastaID= " + txthastaid.Text.ToString(), baglanti);
                baglanti.Open();
                komut.ExecuteNonQuery();
                MessageBox.Show("Kayıt Silindi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("Kayıt Silinirken bir sıkıntı oldu." + hata.Message);

            }
            baglanti.Close();
        }

        private void btnguncelle_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand komut = new SqlCommand("UPDATE [dbo].[Hastalar] SET [hastaAd] = '" + txthastaad.Text + "' ,[hastaSoyad] = '" + txthastasoyad.Text + "',[hastaTcKimlikNo] = '" + txthastatckimlikno.Text + "',[hastaTelefonNo] = '" + txthastatelno.Text + "',[cinsiyetID] = " + txtcinsiyetid.Text + ",[randevuID] = " + txtrandevuid.Text + ",[ilID] = " + txtilid.Text + ",[ilceID] = " + txtilceid.Text + ",[hastaAciklama] = '" + txthastaaciklama.Text + "',[hastaEPosta] = '" + txthastaeposta.Text + "',[hastaKanGrubu] = '" + txthastakangrubu.Text + "',[hastaAktifMi] = '" + cbxaktif.Checked + "' WHERE hastaID=" + txthastaid.Text.ToString(), baglanti);

                baglanti.Open();
                komut.ExecuteNonQuery();
                MessageBox.Show("Güncellendi");
            }
            catch (Exception hata)
            {

                MessageBox.Show("Güncellerken bir sıkıntı çıktı"+ hata.Message);
            }
            baglanti.Close();
           
        }

        private void btnhastagetir_Click(object sender, EventArgs e)
        {
            
            {
                SqlCommand komut = new SqlCommand("select * from [dbo].[Hastalar] where hastaID="+txthastaid.Text, baglanti);
                if (baglanti.State==ConnectionState.Closed)
                {
                    baglanti.Open();
                }
                SqlDataReader read = komut.ExecuteReader();
                while (read.Read())
                {
                    txthastaad.Text = read["hastaAd"].ToString();
                    txthastasoyad.Text = read["hastaSoyad"].ToString();
                    txthastatckimlikno.Text = read["hastaTcKimlikNo"].ToString();
                   txthastatelno.Text = read["hastaTelefonNo"].ToString() ;
                    txtcinsiyetid.Text = read["cinsiyetID"].ToString();
                    txtrandevuid.Text = read["randevuID"].ToString();
                    txtilid.Text = read["ilID"].ToString();
                    txtilceid.Text = read["ilceID"].ToString();
                    txthastaaciklama.Text = read["hastaAciklama"].ToString();
                    txthastaeposta.Text = read["hastaEPosta"].ToString();
                    txthastakangrubu.Text = read["hastaKanGrubu"].ToString();
                    cbxaktif.Checked = (Convert.ToInt32(read["kisiAktifMi"]) == 1) ? true :false;

                }

            }
           
            
           
        }
    }
}
