namespace ders031122
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbltur = new System.Windows.Forms.Label();
            this.lblyazar = new System.Windows.Forms.Label();
            this.cbxtur = new System.Windows.Forms.ComboBox();
            this.cbxyazar = new System.Windows.Forms.ComboBox();
            this.lblkitap = new System.Windows.Forms.Label();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.btntemizle = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbltur
            // 
            this.lbltur.AutoSize = true;
            this.lbltur.Location = new System.Drawing.Point(43, 28);
            this.lbltur.Name = "lbltur";
            this.lbltur.Size = new System.Drawing.Size(37, 13);
            this.lbltur.TabIndex = 0;
            this.lbltur.Text = "Türler:";
            // 
            // lblyazar
            // 
            this.lblyazar.AutoSize = true;
            this.lblyazar.Location = new System.Drawing.Point(46, 63);
            this.lblyazar.Name = "lblyazar";
            this.lblyazar.Size = new System.Drawing.Size(48, 13);
            this.lblyazar.TabIndex = 1;
            this.lblyazar.Text = "Yazarlar:";
            // 
            // cbxtur
            // 
            this.cbxtur.FormattingEnabled = true;
            this.cbxtur.Location = new System.Drawing.Point(121, 28);
            this.cbxtur.Name = "cbxtur";
            this.cbxtur.Size = new System.Drawing.Size(121, 21);
            this.cbxtur.TabIndex = 2;
            this.cbxtur.SelectionChangeCommitted += new System.EventHandler(this.cbxtur_SelectionChangeCommitted);
            // 
            // cbxyazar
            // 
            this.cbxyazar.FormattingEnabled = true;
            this.cbxyazar.Location = new System.Drawing.Point(121, 63);
            this.cbxyazar.Name = "cbxyazar";
            this.cbxyazar.Size = new System.Drawing.Size(121, 21);
            this.cbxyazar.TabIndex = 3;
            this.cbxyazar.SelectionChangeCommitted += new System.EventHandler(this.cbxyazar_SelectionChangeCommitted);
            // 
            // lblkitap
            // 
            this.lblkitap.AutoSize = true;
            this.lblkitap.Location = new System.Drawing.Point(46, 109);
            this.lblkitap.Name = "lblkitap";
            this.lblkitap.Size = new System.Drawing.Size(45, 13);
            this.lblkitap.TabIndex = 4;
            this.lblkitap.Text = "Kitaplar:";
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.Location = new System.Drawing.Point(49, 137);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(516, 277);
            this.listBox1.TabIndex = 5;
            // 
            // btntemizle
            // 
            this.btntemizle.Location = new System.Drawing.Point(474, 26);
            this.btntemizle.Name = "btntemizle";
            this.btntemizle.Size = new System.Drawing.Size(75, 23);
            this.btntemizle.TabIndex = 6;
            this.btntemizle.Text = "Temizle";
            this.btntemizle.UseVisualStyleBackColor = true;
            this.btntemizle.Click += new System.EventHandler(this.btntemizle_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(591, 450);
            this.Controls.Add(this.btntemizle);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.lblkitap);
            this.Controls.Add(this.cbxyazar);
            this.Controls.Add(this.cbxtur);
            this.Controls.Add(this.lblyazar);
            this.Controls.Add(this.lbltur);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbltur;
        private System.Windows.Forms.Label lblyazar;
        private System.Windows.Forms.ComboBox cbxtur;
        private System.Windows.Forms.ComboBox cbxyazar;
        private System.Windows.Forms.Label lblkitap;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Button btntemizle;
    }
}

