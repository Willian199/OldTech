program museu;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  datamodulo in 'datamodulo.pas' {DataModule1: TDataModule},
  home in 'home.pas' {Principal},
  ListaItem in 'ListaItem.pas' {Item},
  Usuario in 'Usuario.pas' {cadastroUsuario},
  Pessoa in 'Pessoa.pas' {administrarPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TadministrarPessoa, administrarPessoa);
  //Application.CreateForm(TCadastroItem, CadastroItem);
  Application.CreateForm(TcadastroUsuario, cadastroUsuario);
  Application.Run;
end.
