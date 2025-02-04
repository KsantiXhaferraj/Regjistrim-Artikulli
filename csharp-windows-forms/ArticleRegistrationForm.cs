using System;
using System.Windows.Forms;

namespace ArticleRegistrationApp
{
  public partial class ArticleRegistrationForm : Form
  {
    private Label typeLabel;
    private ComboBox typeComboBox;

    public ArticleRegistrationForm()
    {
      InitializeComponent();
      InitializeTypeDropdown();
    }

    private void InitializeComponent()
    {
      this.typeLabel = new Label();
      this.typeComboBox = new ComboBox();
      this.SuspendLayout();
      //
      // typeLabel
      //
      this.typeLabel.AutoSize = true;
      this.typeLabel.Location = new System.Drawing.Point(20, 180); // Example position
      this.typeLabel.Name = "typeLabel";
      this.typeLabel.Size = new System.Drawing.Size(35, 13);
      this.typeLabel.TabIndex = 0;
      this.typeLabel.Text = "Type:";
      //
      // typeComboBox
      //
      this.typeComboBox.FormattingEnabled = true;
      this.typeComboBox.Location = new System.Drawing.Point(100, 180); // Example position
      this.typeComboBox.Name = "typeComboBox";
      this.typeComboBox.Size = new System.Drawing.Size(200, 21);
      this.typeComboBox.TabIndex = 1;
      //
      // ArticleRegistrationForm
      //
      this.ClientSize = new System.Drawing.Size(800, 600);
      this.Controls.Add(this.typeLabel);
      this.Controls.Add(this.typeComboBox);
      this.Name = "ArticleRegistrationForm";
      this.Text = "Article Registration";
      this.ResumeLayout(false);
      this.PerformLayout();
    }

    private void InitializeTypeDropdown()
    {
      this.typeComboBox.Items.AddRange(new object[] {
            "Ushqimore",
            "Bulmet",
            "Pije",
            "Embelsire"});
      this.typeComboBox.DropDownStyle = ComboBoxStyle.DropDownList; // Prevent free-form typing
    }
  }
}
