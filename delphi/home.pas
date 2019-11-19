unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Item: TMenuItem;
    Pessoa: TMenuItem;
    Peca: TMenuItem;
    Colecao: TMenuItem;
    tipoMaterial: TMenuItem;
    Fabricante: TMenuItem;
    cadastroPessoa: TMenuItem;
    Usuario: TMenuItem;
    Controladoria: TMenuItem;
    Museu: TMenuItem;
    Setor: TMenuItem;
    Relatorio: TMenuItem;
    Sobre: TMenuItem;
    Sair: TMenuItem;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

end.
