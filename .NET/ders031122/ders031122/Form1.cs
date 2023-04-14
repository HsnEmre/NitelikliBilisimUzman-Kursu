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

namespace ders031122
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = .; Database = DB_KitapEvi; Trusted_Connection = True;");
        List<KeyValuePair<int, string>> TurListesi = new List<KeyValuePair<int, string>>();
        List<KeyValuePair<int, string>> YazarListesi = new List<KeyValuePair<int,string>>();
        

        private void Form1_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("Select kategoriID,kategoriAd From Kategoriler", baglanti);
            SqlDataReader oku = cmd.ExecuteReader();

            while (oku.Read())
            {
                TurListesi.Add(new KeyValuePair<int, string>((int) oku[0], (string)oku[1]));
            }
            cbxtur.DataSource = TurListesi;
            cbxtur.ValueMember = "Key";
            cbxtur.DisplayMember = "Value";

            oku.Close();
            baglanti.Close();
            //TurListesi.Clear();


            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select yazarID, yazarAdSoyad From Yazarlar",baglanti);
            SqlDataReader read = komut.ExecuteReader();

            while (read.Read())
            {
                YazarListesi.Add(new KeyValuePair<int, string>((int) read[0], (string)read[1]));
            }
            cbxyazar.DataSource = YazarListesi; 
            cbxyazar.ValueMember = "Key";
            cbxyazar.DisplayMember = "Value";

            read.Close();
            baglanti.Close();
            //YazarListesi.Clear();

         
        }

        private void cbxtur_SelectionChangeCommitted(object sender, EventArgs e)
        {


            YazarListesi.Clear();
            string kategoriID = cbxtur.SelectedValue.ToString();
            SqlCommand komut2 = new SqlCommand("Select y.yazarID,y.yazarAdSoyad From Yazarlar as y join YazarlarKategoriler as yk on y.yazarID = yk.yazarID join Kategoriler as k on k.kategoriID = yk.kategoriID where k.kategoriID =" + kategoriID, baglanti);
            baglanti.Open();

            SqlDataReader read2 = komut2.ExecuteReader();
            while (read2.Read())
            {
                YazarListesi.Add(new KeyValuePair<int, string>((int)read2[0], (string)read2[1]));
               // YazarListesi.Add(new KeyValuePair<int, string>(read2.GetInt32(0), read2.GetString(1)));
               // YazarListesi.Add(new KeyValuePair<int, string>(Convert.ToInt32(read2[0]), read2[1].ToString()));
            }

            read2.Close();

            cbxyazar.DataSource = YazarListesi.ToList();
            cbxyazar.ValueMember = "Key";
            cbxyazar.DisplayMember = "Value";
            

            baglanti.Close();



        }

        private void cbxyazar_SelectionChangeCommitted(object sender, EventArgs e)
        {

            string kategoriID = cbxtur.SelectedValue.ToString();
            string yazarID = cbxyazar.SelectedValue.ToString();
            baglanti.Open();
            SqlCommand komut3 = new SqlCommand("select k.kitapISBN,k.kitapID, k.kitapAd, y.yazarID, y.yazarAdSoyad, ka.kategoriID from Kitaplar as k join KitaplarKategoriler kk on k.kitapID = kk.kitapID join Kategoriler ka on kk.kategoriID = ka.kategoriID join YazarlarKategoriler yk on ka.kategoriID = yk.kategoriID join Yazarlar y on y.yazarID = yk.yazarID where ka.kategoriID="+kategoriID+" and yk.yazarID="+yazarID, baglanti);

            SqlDataReader read3 = komut3.ExecuteReader();
            while (read3.Read())
            {
                listBox1.Items.Add(read3.GetString(0)+ " "+ read3.GetInt32(1)+" "+ read3.GetString(2)+ " " + read3.GetSqlInt32(3)+ " " + read3.GetString(4)+ " " + read3.GetInt32(5));
            }
            read3.Close();

            //cbxtur.DataSource = TurListesi.ToList();
            //cbxtur.ValueMember = "Key"; 
            //cbxtur.DisplayMember = "Value";

            //cbxyazar.DataSource = YazarListesi.ToList();
            //cbxyazar.ValueMember = "Key";
            //cbxyazar.DisplayMember = "Value";
            //baglanti.Close();
        }

        private void btntemizle_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
        }
    }
}
