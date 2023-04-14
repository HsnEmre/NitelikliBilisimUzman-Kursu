using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace hesapmakinesi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            for (int carpilan = 1; carpilan < 10; carpilan++)
            {
                for (int carpan = 1; carpan < 10; carpan++)
                {
                    listBox1.Items.Add(carpilan+ "x" +carpan+ "=" +carpilan*carpan);
                }
            }
        }
    }
}
