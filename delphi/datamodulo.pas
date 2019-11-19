unit datamodulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDataModule1 = class(TDataModule)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDConnection1: TFDConnection;
    FDQBairro: TFDQuery;
    DSBairro: TDataSource;
    DSCidade: TDataSource;
    DSColecao: TDataSource;
    DSEndereco: TDataSource;
    DSEstado: TDataSource;
    DSFabricante: TDataSource;
    DSImagem: TDataSource;
    DSItem: TDataSource;
    DSItemColecao: TDataSource;
    DSMuseu: TDataSource;
    DSPais: TDataSource;
    DSPessoa: TDataSource;
    DSSetor: TDataSource;
    DSTipoMaterial: TDataSource;
    DSTipoPessoa: TDataSource;
    DSUsuario: TDataSource;
    DSVideo: TDataSource;
    FDQCidade: TFDQuery;
    FDQColecao: TFDQuery;
    FDQEndereco: TFDQuery;
    FDQEstado: TFDQuery;
    FDQFabricante: TFDQuery;
    FDQPais: TFDQuery;
    FDQImagem: TFDQuery;
    FDQItem: TFDQuery;
    FDQItemColecao: TFDQuery;
    FDQMuseu: TFDQuery;
    FDQPessoa: TFDQuery;
    FDQTipoMaterial: TFDQuery;
    FDQSetor: TFDQuery;
    FDQUsuario: TFDQuery;
    FDQTipoPessoa: TFDQuery;
    FDQVideo: TFDQuery;
    FDQBairroid: TIntegerField;
    FDQBairrotx_nome: TWideStringField;
    FDQBairrocd_cidade: TIntegerField;
    FDQCidadeid: TIntegerField;
    FDQCidadetx_nome: TWideStringField;
    FDQCidadecd_estado: TIntegerField;
    FDQColecaoid: TIntegerField;
    FDQColecaotx_nome: TWideStringField;
    FDQColecaotx_descricao: TWideStringField;
    FDQColecaocd_setor: TIntegerField;
    FDQEnderecoid: TIntegerField;
    FDQEnderecotx_rua: TWideStringField;
    FDQEnderecotx_numerorua: TBCDField;
    FDQEnderecocd_bairro: TIntegerField;
    FDQEstadoid: TIntegerField;
    FDQEstadotx_nome: TWideStringField;
    FDQEstadotx_sigla: TWideStringField;
    FDQEstadocd_pais: TIntegerField;
    FDQFabricanteid: TIntegerField;
    FDQFabricantetx_nome: TWideStringField;
    FDQFabricantetx_biografia: TWideStringField;
    FDQImagemid: TIntegerField;
    FDQImagemtx_link: TWideStringField;
    FDQImagemcd_item: TIntegerField;
    FDQItemid: TIntegerField;
    FDQItemtx_nome: TWideStringField;
    FDQItemtx_origem: TWideStringField;
    FDQItemtx_descricao: TWideStringField;
    FDQItemdt_construido: TDateField;
    FDQItemtp_exposicao: TSQLTimeStampField;
    FDQItemtp_manutencao: TSQLTimeStampField;
    FDQItemdt_fabricacao: TDateField;
    FDQItemvl_valor: TFMTBCDField;
    FDQItemfl_exibicao: TBooleanField;
    FDQItemcd_responsavel: TIntegerField;
    FDQItemcd_pais: TIntegerField;
    FDQItemcd_setor: TIntegerField;
    FDQItemcd_fabricante: TIntegerField;
    FDQItemcd_material: TIntegerField;
    FDQItemcd_dono: TIntegerField;
    FDQItemColecaocd_item: TIntegerField;
    FDQItemColecaocd_colecao: TIntegerField;
    FDQMuseuid: TIntegerField;
    FDQMuseutx_nome: TWideStringField;
    FDQMuseutx_nomesocial: TWideStringField;
    FDQMuseutx_cnpj: TWideStringField;
    FDQMuseucd_endereco: TIntegerField;
    FDQPaisid: TIntegerField;
    FDQPaistx_nome: TWideStringField;
    FDQPessoaid: TIntegerField;
    FDQPessoatx_nome: TWideStringField;
    FDQPessoatx_cpf: TWideStringField;
    FDQPessoadt_nascimento: TDateField;
    FDQPessoatx_telefone: TWideStringField;
    FDQPessoacd_tipopessoa: TIntegerField;
    FDQPessoacd_complemento: TIntegerField;
    FDQSetorid: TIntegerField;
    FDQSetortx_nome: TWideStringField;
    FDQSetortx_descricao: TWideStringField;
    FDQSetornr_maxpessoas: TFMTBCDField;
    FDQSetorcd_museu: TIntegerField;
    FDQTipoMaterialid: TIntegerField;
    FDQTipoMaterialtx_material: TWideStringField;
    FDQTipoPessoaid: TIntegerField;
    FDQTipoPessoatipo: TWideStringField;
    FDQUsuarioid: TIntegerField;
    FDQUsuariotx_login: TWideStringField;
    FDQUsuariotx_senha: TWideStringField;
    FDQUsuariofl_ativo: TBooleanField;
    FDQUsuariocd_pessoa: TIntegerField;
    FDQVideoid: TIntegerField;
    FDQVideotx_link: TWideStringField;
    FDQVideocd_item: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
