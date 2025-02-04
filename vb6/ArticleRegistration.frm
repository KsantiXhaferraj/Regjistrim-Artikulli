VERSION 5.00
Begin VB.Form ArticleRegistration
   Caption         =   "Article Registration"
   ClientHeight    =   4515
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6525
   LinkTopic       =   "Form1"
   ScaleHeight     =   4515
   ScaleWidth      =   6525
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox TypeComboBox
      Height          =   315
      Left            =   4080
      TabIndex        =   9
      Top             =   1440
      Width           =   1695
   End
   Begin VB.CheckBox TaxCheckBox
      Caption         =   "Tax"
      Height          =   315
      Left            =   240
      TabIndex        =   8
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox BarcodeTextBox
      Height          =   315
      Left            =   4080
      TabIndex        =   7
      Top             =   2040
      Width           =   1695
   End
   Begin VB.TextBox PriceTextBox
      Height          =   315
      Left            =   4080
      TabIndex        =   5
      Top             =   840
      Width           =   1695
   End
   Begin VB.TextBox ExpirationDateTextBox
      Height          =   315
      Left            =   4080
      TabIndex        =   3
      Top             =   240
      Width           =   1695
   End
   Begin VB.TextBox AmountTextBox
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   840
      Width           =   1695
   End
   Begin VB.TextBox NameTextBox
      Height          =   315
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
   Begin VB.CommandButton ExitButton
      Caption         =   "Exit"
      Height          =   495
      Left            =   5280
      TabIndex        =   12
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton DeleteButton
      Caption         =   "Delete"
      Height          =   495
      Left            =   3840
      TabIndex        =   11
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton SearchButton
      Caption         =   "Search"
      Height          =   495
      Left            =   2400
      TabIndex        =   10
      Top             =   3600
      Width           =   975
   End
   Begin VB.CommandButton SaveButton
      Caption         =   "Save"
      Height          =   495
      Left            =   960
      TabIndex        =   6
      Top             =   3600
      Width           =   975
   End
   Begin VB.Label TypeLabel
      Caption         =   "Type:"
      Height          =   255
      Left            =   3360
      TabIndex        =   4
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label BarcodeLabel
      Caption         =   "Barcode/Code:"
      Height          =   255
      Left            =   3360
      TabIndex        =   13
      Top             =   2040
      Width           =   975
   End
   Begin VB.Label PriceLabel
      Caption         =   "Price:"
      Height          =   255
      Left            =   3360
      TabIndex        =   14
      Top             =   840
      Width           =   495
   End
   Begin VB.Label ExpirationDateLabel
      Caption         =   "Expiration Date:"
      Height          =   255
      Left            =   3360
      TabIndex        =   15
      Top             =   240
      Width           =   975
   End
   Begin VB.Label AmountLabel
      Caption         =   "Amount:"
      Height          =   255
      Left            =   240
      TabIndex        =   16
      Top             =   600
      Width           =   735
   End
   Begin VB.Label NameLabel
      Caption         =   "Name:"
      Height          =   255
      Left            =   240
      TabIndex        =   17
      Top             =   0
      Width           =   495
   End
End
Attribute VB_Name = "ArticleRegistration"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    TypeComboBox.AddItem "Ushqimore"
    TypeComboBox.AddItem "Bulmet"
    TypeComboBox.AddItem "Pije"
    TypeComboBox.AddItem "Embelsire"
    TypeComboBox.Style = vbComboDropDownList ' Optional: To prevent typing in the combo box
End Sub
