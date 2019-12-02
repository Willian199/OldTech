object cadastroBairro: TcadastroBairro
  Left = 0
  Top = 0
  Caption = 'Bairro'
  ClientHeight = 416
  ClientWidth = 432
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
    Left = 16
    Top = 32
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNome: TLabel
    Left = 16
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblCidade: TLabel
    Left = 200
    Top = 32
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object edtCodigo: TEdit
    Left = 64
    Top = 29
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = '1'
  end
  object edtNome: TEdit
    Left = 64
    Top = 101
    Width = 201
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'Centro'
  end
  object cbCidade: TComboBox
    Left = 256
    Top = 29
    Width = 145
    Height = 21
    Enabled = False
    ItemIndex = 0
    TabOrder = 2
    Text = 'S'#227'o Miguel do Oeste'
    Items.Strings = (
      'S'#227'o Miguel do Oeste'
      'Descanso'
      'Porto Alegre'
      'Curitiba'
      'Florian'#243'polis')
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 184
    Width = 337
    Height = 120
    DataSource = DataModule1.DSBairro
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnNovo: TButton
    Left = 16
    Top = 338
    Width = 83
    Height = 41
    Caption = 'Novo'
    TabOrder = 4
  end
  object btnSalvar: TButton
    Left = 113
    Top = 338
    Width = 80
    Height = 41
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
  end
  object btnEditar: TButton
    Left = 216
    Top = 338
    Width = 82
    Height = 41
    Caption = 'Editar'
    TabOrder = 6
  end
  object btnExcluir: TButton
    Left = 320
    Top = 338
    Width = 81
    Height = 41
    Caption = 'Excluir'
    TabOrder = 7
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQBairro
    ScopeMappings = <>
    Left = 384
    Top = 96
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 276
    Top = 101
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'id'
      Control = edtCodigo
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tx_nome'
      Control = edtNome
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cd_cidade'
      Control = cbCidade
      Track = True
      FillDataSource = BindSourceDB2
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'tx_nome'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FDQCidade
    ScopeMappings = <>
    Left = 336
    Top = 96
  end
end
