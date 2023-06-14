
namespace EncuestasForm
{
    partial class FormRegistroDeEncuesta
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
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.cbUsaBicicleta = new System.Windows.Forms.CheckBox();
            this.cbUsaAuto = new System.Windows.Forms.CheckBox();
            this.cbTranspPub = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnConfirmar.Location = new System.Drawing.Point(53, 147);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(75, 23);
            this.btnConfirmar.TabIndex = 0;
            this.btnConfirmar.Text = "Confirmar";
            this.btnConfirmar.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button2.Location = new System.Drawing.Point(249, 147);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 1;
            this.button2.Text = "Cancelar";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // checkBox1
            // 
            this.cbUsaBicicleta.AutoSize = true;
            this.cbUsaBicicleta.Location = new System.Drawing.Point(83, 31);
            this.cbUsaBicicleta.Name = "checkBox1";
            this.cbUsaBicicleta.Size = new System.Drawing.Size(92, 17);
            this.cbUsaBicicleta.TabIndex = 2;
            this.cbUsaBicicleta.Text = "¿Usa Bicleta?";
            this.cbUsaBicicleta.UseVisualStyleBackColor = true;
            // 
            // checkBox2
            // 
            this.cbUsaAuto.AutoSize = true;
            this.cbUsaAuto.Location = new System.Drawing.Point(83, 54);
            this.cbUsaAuto.Name = "checkBox2";
            this.cbUsaAuto.Size = new System.Drawing.Size(105, 17);
            this.cbUsaAuto.TabIndex = 3;
            this.cbUsaAuto.Text = "¿Usa automóvil?";
            this.cbUsaAuto.UseVisualStyleBackColor = true;
            // 
            // checkBox3
            // 
            this.cbTranspPub.AutoSize = true;
            this.cbTranspPub.Location = new System.Drawing.Point(83, 77);
            this.cbTranspPub.Name = "checkBox3";
            this.cbTranspPub.Size = new System.Drawing.Size(144, 17);
            this.cbTranspPub.TabIndex = 4;
            this.cbTranspPub.Text = "¿Usa transporte público?";
            this.cbTranspPub.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbUsaBicicleta);
            this.groupBox1.Controls.Add(this.cbTranspPub);
            this.groupBox1.Controls.Add(this.cbUsaAuto);
            this.groupBox1.Location = new System.Drawing.Point(25, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(357, 129);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Modo de transporte habitual";
            // 
            // FormRegistroDeEncuesta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(398, 178);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnConfirmar);
            this.Name = "FormRegistroDeEncuesta";
            this.Text = "FormRegistroDeEncuesta";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnConfirmar;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.GroupBox groupBox1;
        public System.Windows.Forms.CheckBox cbUsaBicicleta;
        public System.Windows.Forms.CheckBox cbUsaAuto;
        public System.Windows.Forms.CheckBox cbTranspPub;
    }
}