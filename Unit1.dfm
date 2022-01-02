object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 562
  ClientWidth = 778
  Color = clBtnFace
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
    Width = 16
    Height = 14
    Caption = '?'
    OnClick = Label1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 336
    Width = 762
    Height = 218
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 145
    Height = 25
    Caption = 'Importar banco de dados'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 347
    Top = 71
    Width = 113
    Height = 25
    Caption = 'Parar FireBird'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 347
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Parar Replicador'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 531
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Reiniciar/ Replicador'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 531
    Top = 71
    Width = 113
    Height = 25
    Caption = 'Reiniciar/ FireBird'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 680
    Top = 281
    Width = 75
    Height = 25
    Caption = 'reiniciar pc'
    TabOrder = 6
    OnClick = Button6Click
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 280
  end
end
