unit Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TadministrarPessoa = class(TForm)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCpf: TLabel;
    lblNascimento: TLabel;
    lblTelefone: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtCpf: TMaskEdit;
    dtpNascimento: TDateTimePicker;
    edtTelefone: TMaskEdit;
    cbTipoPessoa: TComboBox;
    cbComplemento: TComboBox;
    dbPessoa: TDBGrid;
    lblListaPessoa: TLabel;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  administrarPessoa: TadministrarPessoa;



implementation

uses datamodulo;

procedure TadministrarPessoa.FormShow(Sender: TObject);
begin
    DataModule1.FDQPessoa.Active:= True;
    DataModule1.FDConnection1.Connected:= True;
end;

{$R *.dfm}

end.
