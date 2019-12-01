unit frmPeca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TnPeca = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    chExibicao: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtNome: TEdit;
    edtOrigem: TEdit;
    edtDescricao: TEdit;
    edtValor: TEdit;
    dtExposicao: TDateTimePicker;
    dtManutencao: TDateTimePicker;
    dtFabricacao: TDateTimePicker;
    dtConstrucao: TDateTimePicker;
    cbDono: TComboBox;
    cbMaterial: TComboBox;
    cbFabricante: TComboBox;
    cbPais: TComboBox;
    cbResponsavel: TComboBox;
    cbSetor: TComboBox;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField3: TLinkFillControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToField4: TLinkFillControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkFillControlToField5: TLinkFillControlToField;
    LinkFillControlToField6: TLinkFillControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure habilitaCampos();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nPeca: TnPeca;

implementation

{$R *.dfm}

uses datamodulo;

procedure TnPeca.btnNovoClick(Sender: TObject);
begin
 DataModule1.FDQItem.Insert;
 habilitaCampos();
end;
procedure TnPeca.habilitaCampos();
begin
 DataModule1.FDQItem.Insert;
 edtNome.Enabled:= true;
 edtOrigem.Enabled:= true;
 edtDescricao.Enabled:= true;
 edtValor.Enabled:= true;
 dtExposicao.Enabled:= true;
 dtManutencao.Enabled:= true;
 dtFabricacao.Enabled:= true;
 dtConstrucao.Enabled:= true;
 cbDono.Enabled:= true;
 cbMaterial.Enabled:= true;
 cbFabricante.Enabled:= true;
 cbPais.Enabled:=true;
 cbResponsavel.Enabled:=true;
 cbSetor.Enabled:=true;
 chExibicao.Enabled:= true;

end;
procedure TnPeca.FormShow(Sender: TObject);
begin
    DataModule1.FDConnection1.Connected:= True;
    DataModule1.FDQItem.Active:= True;
    DataModule1.FDQPessoa.Active:= True;
    DataModule1.FDQTipoMaterial.Active:= True;
    DataModule1.FDQPais.Active:= True;

end;

end.
