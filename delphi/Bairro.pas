unit Bairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TcadastroBairro = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    lblNome: TLabel;
    lblCidade: TLabel;
    edtNome: TEdit;
    cbCidade: TComboBox;
    DBGrid1: TDBGrid;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastroBairro: TcadastroBairro;

implementation

{$R *.dfm}

uses datamodulo;

procedure TcadastroBairro.FormShow(Sender: TObject);
begin
    DataModule1.FDConnection1.Connected:= True;
    DataModule1.FDQBairro.Active:= True;
    DataModule1.FDQCidade.Active:= True;
end;

end.
