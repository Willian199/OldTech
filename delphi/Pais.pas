unit Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

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
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastroPais: TcadastroPais;

implementation

{$R *.dfm}

uses datamodulo;

procedure TcadastroPais.FormShow(Sender: TObject);
begin
    DataModule1.FDConnection1.Connected:= True;
    DataModule1.FDQPais.Active:= True;
end;

end.
