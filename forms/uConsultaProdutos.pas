unit uConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmConsultaProdutos = class(TForm)
    pnlBG: TPanel;
    pnlTopCOnsulta: TPanel;
    cbxCampoConsultaProdutos: TComboBox;
    edtBuscaConsulta: TEdit;
    BitBtn1: TBitBtn;
    pnlDBgrid: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    dsProdutos: TDataSource;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaProdutos: TfrmConsultaProdutos;

implementation

{$R *.dfm}

uses uDM, uCadastroProdutos;

procedure TfrmConsultaProdutos.BitBtn1Click(Sender: TObject);
begin
  if cbxCampoConsultaProdutos.ItemIndex = 0 then
  begin
    ShowMessage('Selecione um Filtro Válido!!!');
  end;

  // par_cod
  if cbxCampoConsultaProdutos.ItemIndex = 1 then
  begin
    DM.Parceiros.Locate('PRO_COD', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  // PAR_CPF
  if cbxCampoConsultaProdutos.ItemIndex = 2 then
  begin
    DM.Parceiros.Locate('PRO_DESCRICAO', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  // para razao
  if cbxCampoConsultaProdutos.ItemIndex = 3 then
  begin
    DM.Parceiros.Locate('PRO_REF', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  if cbxCampoConsultaProdutos.ItemIndex = 4 then
  begin
    DM.Parceiros.Locate('PRO_COD_BARRA', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

end;

procedure TfrmConsultaProdutos.SpeedButton1Click(Sender: TObject);
begin
  frmConsultaProdutos.Hide;
  // close
  frmProdutos.Show;
end;

end.
