unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

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
    Image1: TImage;
    Endereco: TMenuItem;
    Pais: TMenuItem;
    Cidade: TMenuItem;
    Estado: TMenuItem;
    EnderecoSubMenu: TMenuItem;
    Bairro: TMenuItem;
    procedure PecaClick(Sender: TObject);
    procedure UsuarioClick(Sender: TObject);
    procedure cadastroPessoaClick(Sender: TObject);
    procedure FabricanteClick(Sender: TObject);
    procedure tipoMaterialClick(Sender: TObject);
    procedure ColecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses ListaItem, datamodulo, Usuario, Pessoa, frmFabricante, Material, Colecao,
  frmPeca;

procedure TPrincipal.cadastroPessoaClick(Sender: TObject);
begin
  administrarPessoa := TadministrarPessoa.Create(Self);
  administrarPessoa.ShowModal;
end;

procedure TPrincipal.ColecaoClick(Sender: TObject);
begin
  frmColecao:= TfrmColecao.Create(Self);
  frmColecao.ShowModal;
end;

procedure TPrincipal.FabricanteClick(Sender: TObject);
begin
  nFabricante:= TnFabricante.Create(Self);
  nFabricante.ShowModal;
end;

procedure TPrincipal.PecaClick(Sender: TObject);
begin
  nPeca:= TNPeca.Create(Self);
  nPeca.ShowModal;
end;

procedure TPrincipal.tipoMaterialClick(Sender: TObject);
begin
  nomeMaterial:= TnomeMaterial.Create(Self);
  nomeMaterial.ShowModal;

end;

procedure TPrincipal.UsuarioClick(Sender: TObject);
begin
  cadastroUsuario:= TCadastroUsuario.Create(Self);
  cadastroUsuario.ShowModal;
end;

end.
