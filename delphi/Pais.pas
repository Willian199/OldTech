unit Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TcadastroPais = class(TForm)
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    lblNome: TLabel;
    edtPais: TEdit;
    dbPais: TDBGrid;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastroPais: TcadastroPais;

implementation

{$R *.dfm}

end.
