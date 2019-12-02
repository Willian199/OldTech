object cadastroEstado: TcadastroEstado
  Left = 0
  Top = 0
  Caption = 'Estado'
  ClientHeight = 408
  ClientWidth = 436
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
  object lblPais: TLabel
    Left = 224
    Top = 32
    Width = 23
    Height = 13
    Caption = 'Pa'#237's:'
  end
  object lblSigla: TLabel
    Left = 312
    Top = 104
    Width = 26
    Height = 13
    Caption = 'Sigla:'
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
    Text = 'Santa Catarina'
  end
  object edtSigla: TEdit
    Left = 352
    Top = 101
    Width = 57
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'SC'
  end
  object cbPais: TComboBox
    Left = 264
    Top = 29
    Width = 145
    Height = 21
    Enabled = False
    ItemIndex = 0
    TabOrder = 3
    Text = 'Brasil'
    Items.Strings = (
      'Brasil')
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
    Left = 121
    Top = 338
    Width = 80
    Height = 41
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
  end
  object btnEditar: TButton
    Left = 224
    Top = 338
    Width = 82
    Height = 41
    Caption = 'Editar'
    TabOrder = 6
  end
  object btnExcluir: TButton
    Left = 328
    Top = 338
    Width = 81
    Height = 41
    Caption = 'Excluir'
    TabOrder = 7
  end
  object dbEstado: TDBGrid
    Left = 56
    Top = 176
    Width = 320
    Height = 120
    DataSource = DataModule1.DSEstado
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQEstado
    ScopeMappings = <>
    Left = 72
    Top = 128
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 28
    Top = 133
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
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tx_sigla'
      Control = edtSigla
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cd_pais'
      Control = cbPais
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
    DataSet = DataModule1.FDQPais
    ScopeMappings = <>
    Left = 112
    Top = 128
  end
end
