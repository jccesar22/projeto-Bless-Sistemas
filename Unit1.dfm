object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Restore Bless Sistemas'
  ClientHeight = 562
  ClientWidth = 778
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 756
    Top = 8
    Width = 5
    Height = 13
    Caption = '?'
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 69
    Top = 54
    Width = 142
    Height = 13
    Caption = 'Banco de dados para Restore'
  end
  object Label3: TLabel
    Left = 69
    Top = 109
    Width = 36
    Height = 13
    Caption = 'Banco .'
  end
  object Memo1: TMemo
    Left = 8
    Top = 278
    Width = 762
    Height = 276
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 72
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Importar banco de dados'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 657
    Top = 102
    Width = 113
    Height = 25
    Caption = 'Parar FireBird'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 657
    Top = 71
    Width = 113
    Height = 25
    Caption = 'Parar Replicador'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 657
    Top = 133
    Width = 113
    Height = 25
    Caption = 'Reiniciar/ Replicador'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 657
    Top = 164
    Width = 113
    Height = 25
    Caption = 'Reiniciar/ FireBird'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 680
    Top = 247
    Width = 75
    Height = 25
    Caption = 'reiniciar pc'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 73
    Width = 257
    Height = 21
    TabOrder = 7
    Text = 'Banco de dados'
  end
  object Edit2: TEdit
    Left = 24
    Top = 128
    Width = 257
    Height = 21
    TabOrder = 8
    Text = 'Edit1'
  end
  object Gfix: TButton
    Left = 328
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Gfix'
    TabOrder = 9
    OnClick = GfixClick
  end
  object Button7: TButton
    Left = 680
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Ideris'
    TabOrder = 10
    OnClick = Button7Click
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 280
  end
end
