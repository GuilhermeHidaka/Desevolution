unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmMenu = class(TForm)
    pnlBackground: TPanel;
    pnlLateral: TPanel;
    btnRealtorios: TBitBtn;
    btnCaixa: TBitBtn;
    btnProdutos: TBitBtn;
    btnParceiros: TBitBtn;
    imgMenu: TImage;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnParceirosClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uClientes, uCadastroProdutos;

procedure TfrmMenu.btnParceirosClick(Sender: TObject);
begin
  frmParceiros := TfrmParceiros.Create(self);
  frmParceiros.Show;
  frmMenu.Hide;
end;

procedure TfrmMenu.btnProdutosClick(Sender: TObject);
begin
  frmProdutos := TfrmProdutos.Create(self);
  frmProdutos.Show;
  frmMenu.Hide;
end;

procedure TfrmMenu.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
