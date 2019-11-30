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
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure validarCampos();
    procedure setarCampos();
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  administrarPessoa: TadministrarPessoa;



implementation

uses datamodulo;

procedure TadministrarPessoa.btnEditarClick(Sender: TObject);
begin

  edtCodigo.Enabled:=true;
  edtNome.Enabled:=true;
  edtCpf.Enabled:=true;
  edtTelefone.Enabled:=true;
  cbTipoPessoa.Enabled:=true;
  cbComplemento.Enabled:=true;
  dtpNascimento.Enabled:=true;
  dbPessoa.Enabled:=false;
  btnNovo.Enabled:=false;
  btnEditar.Enabled:=false;
  btnExcluir.Enabled:=false;
  btnSalvar.Enabled:=true;

end;

procedure TadministrarPessoa.btnExcluirClick(Sender: TObject);
begin
  DataModule1.FDQPessoa.Delete;
end;

procedure TadministrarPessoa.btnNovoClick(Sender: TObject);
begin
  //LIMPAR E HABILITAR CAMPOS
  DataModule1.FDQPessoa.Insert;
  setarCampos();
  edtNome.Enabled:=true;
  edtCpf.Enabled:=true;
  edtTelefone.Enabled:=true;
  dtpNascimento.Enabled:=true;
  cbTipoPessoa.Enabled:=true;
  cbComplemento.Enabled:=true;
  dbPessoa.Enabled:=false;
  edtNome.SetFocus;
  btnNovo.Enabled:=false;
  btnSalvar.Enabled:=true;
  btnEditar.Enabled:=false;
  btnExcluir.Enabled:=false;
end;

procedure TadministrarPessoa.btnSalvarClick(Sender: TObject);
begin

    if(edtCodigo.Text='') then
    begin
    validarCampos();
    // Gravação no banco de dados
    DataModule1.FDQPessoa.Post;
    DataModule1.FDQPessoa.Refresh;
    ShowMessage('Dados salvos');
    setarCampos();
    end
    else
    begin
    validarCampos();
    DataModule1.FDQPessoa.Edit;
    DataModule1.FDQPessoa.Refresh;
    ShowMessage('Dados salvos');
    setarCampos();
    end;


end;

procedure TadministrarPessoa.FormShow(Sender: TObject);
begin
    DataModule1.FDQPessoa.Active:= True;
    DataModule1.FDConnection1.Connected:= True;
end;

procedure TadministrarPessoa.validarCampos();
begin
    if(edtNome.Text='')  then
    begin
    ShowMessage('O campo Nome precisa ser preenchido!');
    edtNome.SetFocus;
    end
    else if (edtCpf.Text='') then
    begin
    ShowMessage('O campo CPF precisa ser preenchido!');
    edtCpf.SetFocus;
    end
    else if (edtTelefone.Text='') then
    begin
    ShowMessage('O campo Telefone precisa ser preenchido!');
    edtTelefone.SetFocus;
    end
    else if (cbTipoPessoa.Text='') then
    begin
    ShowMessage('É preciso selecionar um Tipo de Pessoa!');
    cbTipoPessoa.SetFocus;
    end
     else if (cbComplemento.Text='') then
    begin
    ShowMessage('É preciso selecionar um Complemento!');
    cbComplemento.SetFocus;
    end


end;
procedure TadministrarPessoa.setarCampos();
begin

  edtCodigo.Text:='';
  edtNome.Text:='';
  edtCpf.Text:='';
  edtTelefone.Text:='';
  cbTipoPessoa.Text:='';
  cbComplemento.Text:='';
  edtCodigo.Enabled:=false;
  edtNome.Enabled:=false;
  edtCpf.Enabled:=false;
  edtTelefone.Enabled:=false;
  dtpNascimento.Enabled:=false;
  cbTipoPessoa.Enabled:=false;
  cbComplemento.Enabled:=false;
  dbPessoa.Enabled:=true;
  btnNovo.Enabled:=true;
  btnSalvar.Enabled:=false;
  btnEditar.Enabled:=true;
  btnExcluir.Enabled:=true;

end;

{$R *.dfm}

end.
