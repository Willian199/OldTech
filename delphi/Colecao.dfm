object frmColecao: TfrmColecao
  Left = 0
  Top = 0
  Caption = 'Cole'#231#227'o'
  ClientHeight = 282
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 24
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblDescricao: TLabel
    Left = 24
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object edtNome: TEdit
    Left = 112
    Top = 21
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object edtDescricao: TEdit
    Left = 112
    Top = 48
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object cbSetor: TComboBox
    Left = 312
    Top = 21
    Width = 145
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQSetor
    ScopeMappings = <>
    Left = 272
    Top = 144
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tx_nome'
      Control = cbSetor
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
