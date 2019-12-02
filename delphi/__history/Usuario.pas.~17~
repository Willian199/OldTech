unit Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TcadastroUsuario = class(TForm)
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    lblLogin: TLabel;
    lblSenha: TLabel;
    lblListaUsuarios: TLabel;
    dbUsuario: TDBGrid;
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblConfirmarSenha: TLabel;
    edtConfirmarSenha: TEdit;
    ckbAtivo: TCheckBox;
    cbPessoa: TComboBox;
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
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    procedure FormShow(Sender: TObject);
    procedure limparCampos();
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure validarCampos();
    procedure desabilitarCampos();
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastroUsuario: TcadastroUsuario;



implementation

{$R *.dfm}

uses datamodulo;

procedure TcadastroUsuario.btnEditarClick(Sender: TObject);
begin
  edtCodigo.Enabled:=false;
  dbUsuario.Enabled:=false;
  edtLogin.Enabled:=true;
  edtSenha.Enabled:=true;
  edtConfirmarSenha.Enabled:=true;
  cbPessoa.Enabled:=true;
  ckbAtivo.Enabled:=true;
  edtLogin.SetFocus;
  btnNovo.Enabled:=false;
  btnSalvar.Enabled:=true;
  btnEditar.Enabled:=false;
  btnExcluir.Enabled:=false;
end;

procedure TcadastroUsuario.btnExcluirClick(Sender: TObject);
begin
  DataModule1.FDQUsuario.Delete;
end;

procedure TcadastroUsuario.btnNovoClick(Sender: TObject);
begin
  DataModule1.FDQUsuario2.Insert;
  dbUsuario.Enabled:=false;
  edtCodigo.Enabled:=false;
  edtLogin.Enabled:=true;
  edtSenha.Enabled:=true;
  edtConfirmarSenha.Enabled:=true;
  ckbAtivo.Enabled:=true;
  cbPessoa.Enabled:=true;
  limparCampos();
  edtLogin.SetFocus;
  btnSalvar.Enabled:=true;
  btnNovo.Enabled:=false;
  btnEditar.Enabled:=false;
  btnExcluir.Enabled:=false;

end;

procedure TcadastroUsuario.btnSalvarClick(Sender: TObject);
begin
  if(edtCodigo.Text='') then
    begin
    validarCampos();
    DataModule1.FDQUsuario2.Post;
    DataModule1.FDQUsuario2.Refresh;
    ShowMessage('Dados salvos');
    limparCampos();
    desabilitarCampos();
    end
    else
    begin
    validarCampos();
    DataModule1.FDQPessoa.Edit;
    DataModule1.FDQPessoa.Refresh;
    ShowMessage('Dados salvos');
    limparCampos();
    desabilitarCampos();

    end;
end;

procedure TcadastroUsuario.FormShow(Sender: TObject);
begin
    DataModule1.FDConnection1.Connected:= True;
    DataModule1.FDQUsuario.Active:= True;
    DataModule1.FDQUsuario2.Active:= True;
    DataModule1.FDQPessoa.Active:= True;
end;

procedure TcadastroUsuario.limparCampos();
begin
  edtCodigo.Text:='';
  edtLogin.Text:='';
  edtSenha.Text:='';
  edtConfirmarSenha.Text:='';
  cbPessoa.Text:='';
  ckbAtivo.Checked:=false;
end;

procedure TcadastroUsuario.validarCampos();
begin
  if(Length(edtLogin.Text)<4)then
  begin
   ShowMessage('O campo Login deve ter no mínimo 4 caracteres!');
   edtLogin.SetFocus;
  end
  else if (Length(edtSenha.Text)<4) then
  begin
    ShowMessage('O campo Senha deve ter no mínimo 4 caracteres!');
    edtSenha.SetFocus;
  end
  else if (Length(edtConfirmarSenha.Text)<4) then
  begin
    ShowMessage('O campo Confirmar Senha deve ter no mínimo 4 caracteres!');
    edtConfirmarSenha.SetFocus;
  end
   else if (cbPessoa.Text='') then
  begin
    ShowMessage('É necessário escolhe uma Pessoa!');
    cbPessoa.SetFocus;
  end
   else if (edtSenha.Text<>edtConfirmarSenha.Text) then
  begin
    ShowMessage('Senhas não conferem!');
    cbPessoa.SetFocus;
  end;

end;

procedure TcadastroUsuario.desabilitarCampos();
begin
  edtCodigo.Enabled:=false;
  edtLogin.Enabled:=false;
  edtSenha.Enabled:=false;
  edtConfirmarSenha.Enabled:=false;
  ckbAtivo.Enabled:=false;
  cbPessoa.Enabled:=false;
  dbUsuario.Enabled:=true;
  btnNovo.Enabled:=true;
  btnSalvar.Enabled:=false;
  btnEditar.Enabled:=true;
  btnExcluir.Enabled:=true;
end;

end.
