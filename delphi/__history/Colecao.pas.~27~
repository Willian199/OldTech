unit Colecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TfrmColecao = class(TForm)
    lblNome: TLabel;
    lblDescricao: TLabel;
    edtNome: TEdit;
    edtDescricao: TEdit;
    cbSetor: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColecao: TfrmColecao;

implementation

{$R *.dfm}

uses datamodulo;

procedure TfrmColecao.btnEditarClick(Sender: TObject);
begin
 edtNome.Enabled:= true;
 edtDescricao.Enabled:= true;
 cbSetor.Enabled:=true;
 edtNome.SetFocus;
end;

procedure TfrmColecao.btnExcluirClick(Sender: TObject);
begin
DataModule1.FDQColecao.Delete;
    ShowMessage('Coleção excluído!');
end;

procedure TfrmColecao.btnNovoClick(Sender: TObject);
begin
 edtNome.Enabled:= true;
 edtDescricao.Enabled:= true;
 cbSetor.Enabled:=true;
 DataModule1.FDQColecao.Insert;
 edtNome.SetFocus;
end;
procedure TfrmColecao.btnSalvarClick(Sender: TObject);
begin
  DataModule1.FDQColecao.Post;
    DataModule1.FDQColecao.Refresh;
    ShowMessage('Coleção salvo com sucesso.');
end;

procedure TfrmColecao.FormShow(Sender: TObject);
begin
    DataModule1.FDConnection1.Connected:= True;
    DataModule1.FDQColecao.Active:= True;
    DataModule1.FDQSetor.Active:= True;

end;

end.
