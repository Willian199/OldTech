program museu;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  datamodulo in 'datamodulo.pas' {DataModule1: TDataModule},
  home in 'home.pas' {Principal},
  ListaItem in 'ListaItem.pas' {Item},
  Usuario in 'Usuario.pas' {cadastroUsuario},
  Pessoa in 'Pessoa.pas' {administrarPessoa},
  frmFabricante in 'frmFabricante.pas' {nFabricante},
  Material in 'Material.pas' {nomeMaterial},
  Colecao in 'Colecao.pas' {frmColecao},
  frmPeca in 'frmPeca.pas' {nPeca},
  Pais in 'Pais.pas' {cadastroPais},
  Estado in 'Estado.pas' {cadastroEstado},
  Cidade in 'Cidade.pas' {cadastroCidade},
  Bairro in 'Bairro.pas' {cadastroBairro},
  Endereco in 'Endereco.pas' {cadastroEndereco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TadministrarPessoa, administrarPessoa);
  Application.CreateForm(TnFabricante, nFabricante);
  Application.CreateForm(TnomeMaterial, nomeMaterial);
  Application.CreateForm(TfrmColecao, frmColecao);
  Application.CreateForm(TnPeca, nPeca);
  Application.CreateForm(TcadastroPais, cadastroPais);
  Application.CreateForm(TcadastroEstado, cadastroEstado);
  Application.CreateForm(TcadastroCidade, cadastroCidade);
  Application.CreateForm(TcadastroBairro, cadastroBairro);
  Application.CreateForm(TcadastroEndereco, cadastroEndereco);
  //teForm(TCadastroItem, CadastroItem);
  Application.CreateForm(TcadastroUsuario, cadastroUsuario);
  Application.Run;
end.
