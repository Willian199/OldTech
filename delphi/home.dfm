object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 509
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 41
    Caption = 'Panel1'
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 744
    Top = 472
    object Cadastro: TMenuItem
      Caption = 'Cadastro'
      object Item: TMenuItem
        Caption = 'Item'
        object Peca: TMenuItem
          Caption = 'Pe'#231'a'
          OnClick = PecaClick
        end
        object Colecao: TMenuItem
          Caption = 'Cole'#231#227'o'
        end
        object tipoMaterial: TMenuItem
          Caption = 'Tipo de Material'
        end
        object Fabricante: TMenuItem
          Caption = 'Fabricante'
        end
      end
      object Pessoa: TMenuItem
        Caption = 'Pessoa'
        object cadastroPessoa: TMenuItem
          Caption = 'Pessoa'
        end
        object Usuario: TMenuItem
          Caption = 'Usuario'
        end
      end
    end
    object Controladoria: TMenuItem
      Caption = 'Controladoria'
      object Museu: TMenuItem
        Caption = 'Museu'
      end
      object Setor: TMenuItem
        Caption = 'Setor'
      end
    end
    object Relatorio: TMenuItem
      Caption = 'Relat'#243'rio'
    end
    object Sobre: TMenuItem
      Caption = 'Sobre'
    end
    object Sair: TMenuItem
      Caption = 'Sair'
    end
  end
end
