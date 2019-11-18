unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    edtLogin: TEdit;
    edtSenha: TEdit;
    btnLogar: TButton;
    Image1: TImage;
    lblLogin: TLabel;
    lblSenha: TLabel;
    lblTitulo: TLabel;
    procedure edtLoginChange(Sender: TObject);
    procedure edtSenhaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtLoginChange(Sender: TObject);
begin
if ((length(edtLogin.Text)>3) and ((Length(edtSenha.Text)>3))) then
begin
     btnLogar.Enabled:=true;
end
else
begin
  btnLogar.Enabled:=false;
end;
end;

procedure TForm1.edtSenhaChange(Sender: TObject);
begin
if((length(edtLogin.Text)>3) and ((Length(edtSenha.Text)>3))) then
begin
     btnLogar.Enabled:=true;
end
else
begin
  btnLogar.Enabled:=false;
end;
end;

end.
