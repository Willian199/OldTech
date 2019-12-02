object cadastroEndereco: TcadastroEndereco
  Left = 0
  Top = 0
  Caption = 'Endereco'
  ClientHeight = 520
  ClientWidth = 509
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
  object lblRua: TLabel
    Left = 16
    Top = 104
    Width = 23
    Height = 13
    Caption = 'Rua:'
  end
  object lblBairro: TLabel
    Left = 208
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object lblNumero: TLabel
    Left = 288
    Top = 104
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object lblCidade: TLabel
    Left = 233
    Top = 5
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object edtCodigo: TEdit
    Left = 59
    Top = 29
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = '1'
  end
  object edtRua: TEdit
    Left = 64
    Top = 101
    Width = 201
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'Rua Willy Barth'
  end
  object edtNumero: TEdit
    Left = 344
    Top = 101
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = '789'
  end
  object cbBairro: TComboBox
    Left = 256
    Top = 29
    Width = 145
    Height = 21
    Enabled = False
    TabOrder = 3
    Items.Strings = (
      'Centro'
      'S'#227'o Jorge'
      'Centro'
      'Centro'
      'Centro')
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 168
    Width = 313
    Height = 120
    DataSource = DataModule1.DSEndereco
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnNovo: TButton
    Left = 16
    Top = 322
    Width = 83
    Height = 41
    Caption = 'Novo'
    TabOrder = 5
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 113
    Top = 322
    Width = 80
    Height = 41
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 6
  end
  object btnEditar: TButton
    Left = 216
    Top = 322
    Width = 82
    Height = 41
    Caption = 'Editar'
    TabOrder = 7
  end
  object btnExcluir: TButton
    Left = 320
    Top = 322
    Width = 81
    Height = 41
    Caption = 'Excluir'
    TabOrder = 8
  end
  object cbCidade: TComboBox
    Left = 320
    Top = 2
    Width = 145
    Height = 21
    TabOrder = 9
    Text = 'Centro'
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQEndereco
    ScopeMappings = <>
    Left = 120
    Top = 416
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 421
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
      FieldName = 'tx_rua'
      Control = edtRua
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tx_numerorua'
      Control = edtNumero
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cd_bairro'
      Control = cbBairro
      Track = True
      FillDataSource = BindSourceDB2
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'tx_nome'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cd_cidade'
      Control = cbCidade
      Track = True
      FillDataSource = BindSourceDB3
      FillValueFieldName = 'id'
      FillDisplayFieldName = 'tx_nome'
      AutoFill = False
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DataModule1.FDQBairro
    ScopeMappings = <>
    Left = 64
    Top = 416
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DataModule1.FDQCidade
    ScopeMappings = <>
    Left = 176
    Top = 416
  end
end
