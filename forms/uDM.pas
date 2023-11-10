unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase;

type
  TDM = class(TDataModule)
    fbClient: TFDPhysFBDriverLink;
    Conexao: TFDConnection;
    Parceiros: TFDQuery;
    Produtos: TFDQuery;
    ParceirosPAR_COD: TIntegerField;
    ParceirosPAR_RAZAO: TStringField;
    ParceirosPAR_APELIDO: TStringField;
    ParceirosPAR_LOGRADOURO: TStringField;
    ParceirosPAR_BAIRRO: TStringField;
    ParceirosPAR_CIDADE: TStringField;
    ParceirosPAR_UF: TStringField;
    ParceirosPAR_CELULAR: TStringField;
    ParceirosPAR_EMAIL: TStringField;
    ParceirosPAR_CPF: TStringField;
    ProdutosPRO_COD: TIntegerField;
    ProdutosPRO_DESCRICAO: TStringField;
    ProdutosPRO_ESTOQUE: TIntegerField;
    ProdutosPRO_COMPRA: TFloatField;
    ProdutosPRO_VENDA: TFloatField;
    ProdutosPRO_REF: TStringField;
    ProdutosPRO_COD_BARRA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
