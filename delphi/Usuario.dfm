object cadastroUsuario: TcadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Usuario'
  ClientHeight = 433
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 40
    Top = 32
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblLogin: TLabel
    Left = 40
    Top = 80
    Width = 29
    Height = 13
    Caption = 'Login:'
  end
  object lblSenha: TLabel
    Left = 328
    Top = 80
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object lblListaUsuarios: TLabel
    Left = 40
    Top = 176
    Width = 45
    Height = 13
    Caption = 'Usu'#225'rios:'
  end
  object lblConfirmarSenha: TLabel
    Left = 279
    Top = 120
    Width = 83
    Height = 13
    Caption = 'Confirmar senha:'
  end
  object edtCodigo: TEdit
    Left = 104
    Top = 29
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = '2'
  end
  object dbUsuario: TDBGrid
    Left = 40
    Top = 195
    Width = 457
    Height = 120
    DataSource = DataModule1.DSUsuario2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tx_login'
        Title.Caption = 'Usuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tx_senha'
        Title.Caption = 'Senha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fl_ativo'
        Title.Caption = 'Ativo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cd_pessoa'
        Title.Caption = 'C'#243'd. Pessoa'
        Visible = True
      end>
  end
  object edtLogin: TEdit
    Left = 104
    Top = 77
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'admin'
  end
  object edtSenha: TEdit
    Left = 384
    Top = 77
    Width = 121
    Height = 21
    HelpType = htKeyword
    Enabled = False
    PasswordChar = '*'
    TabOrder = 3
    Text = 'admin'
  end
  object edtConfirmarSenha: TEdit
    Left = 384
    Top = 117
    Width = 121
    Height = 21
    HelpType = htKeyword
    Enabled = False
    PasswordChar = '*'
    TabOrder = 4
  end
  object ckbAtivo: TCheckBox
    Left = 40
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Ativo'
    Checked = True
    Enabled = False
    State = cbChecked
    TabOrder = 5
  end
  object cbPessoa: TComboBox
    Left = 360
    Top = 24
    Width = 145
    Height = 21
    Enabled = False
    ItemIndex = 0
    TabOrder = 6
    Text = 'Luiz Fernando Coppini de Lima'
    Items.Strings = (
      'Luiz Fernando Coppini de Lima'
      'Pedro Pascal'
      'Robert de Niro'
      'Al Pacino'
      'Joe Pesci'
      'Tom Hanks')
  end
  object btnNovo: TButton
    Left = 40
    Top = 368
    Width = 83
    Height = 41
    Caption = 'Novo'
    TabOrder = 7
    OnClick = btnNovoClick
  end
  object btnSalvar: TButton
    Left = 169
    Top = 368
    Width = 80
    Height = 41
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 8
    OnClick = btnSalvarClick
  end
  object btnEditar: TButton
    Left = 295
    Top = 368
    Width = 82
    Height = 41
    Caption = 'Editar'
    Enabled = False
    TabOrder = 9
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 424
    Top = 368
    Width = 81
    Height = 41
    Caption = 'Excluir'
    Enabled = False
    TabOrder = 10
    OnClick = btnExcluirClick
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.FDQUsuario2
    ScopeMappings = <>
    Left = 528
    Top = 88
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 524
    Top = 21
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
      FieldName = 'tx_login'
      Control = edtLogin
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tx_senha'
      Control = edtSenha
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'fl_ativo'
      Control = ckbAtivo
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cd_pessoa'
      Control = cbPessoa
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
    DataSet = DataModule1.FDQPessoa
    ScopeMappings = <>
    Left = 528
    Top = 152
  end
end
