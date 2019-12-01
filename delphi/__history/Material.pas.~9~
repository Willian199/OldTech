unit Material;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TnomeMaterial = class(TForm)
    lblMaterial: TLabel;
    edtMaterial: TEdit;
    DBGrid1: TDBGrid;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nomeMaterial: TnomeMaterial;

implementation

{$R *.dfm}

uses datamodulo;

procedure TnomeMaterial.btnSalvarClick(Sender: TObject);
begin
   DataModule1.FDQTipoMaterial.Post;
    DataModule1.FDQTipoMaterial.Refresh;
    ShowMessage('Dados salvos');
end;

end.
