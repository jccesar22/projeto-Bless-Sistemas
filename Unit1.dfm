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
    Left = 72
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 515
    Top = 47
    Width = 113
    Height = 25
    Caption = 'Parar FireBird'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 515
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Parar Replicador'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 651
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Reiniciar/ Replicador'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 651
    Top = 47
    Width = 113
    Height = 25
    Caption = 'Reiniciar/ FireBird'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 672
    Top = 177
    Width = 75
    Height = 25
    Caption = 'reiniciar pc'
    TabOrder = 6
    OnClick = Button6Click
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 225
    Width = 329
    Height = 97
    TabOrder = 7
  end
  object DriveComboBox1: TDriveComboBox
    Left = 40
    Top = 64
    Width = 145
    Height = 19
    TabOrder = 8
  end
  object FileListBox1: TFileListBox
    Left = 304
    Top = 24
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 9
  end
end