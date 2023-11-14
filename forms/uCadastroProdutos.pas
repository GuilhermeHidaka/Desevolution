unit uCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfrmProdutos = class(TForm)
    pnlClientesbg: TPanel;
    tps: TPageControl;
    tbsProdutosCadastro: TTabSheet;
    pnlTopCadastroClientes: TPanel;
    pnlBotoesTop: TPanel;
    btnExcluir: TBitBtn;
    btnCancel: TBitBtn;
    btnEditar: TBitBtn;
    btnAdicionar: TBitBtn;
    btnSalvar: TBitBtn;
    btnPesquisa: TBitBtn;
    pnlCenter: TPanel;
    pnlCen2: TPanel;
    pnlApelido: TPanel;
    pnlApelidou: TPanel;
    pnlbgApelido: TPanel;
    pnlRS: TPanel;
    pnlCodCpf: TPanel;
    pnlCPF: TPanel;
    pnlCod: TPanel;
    pnldiv: TPanel;
    pnldiv2: TPanel;
    Panel1: TPanel;
    pnlCidadeUF: TPanel;
    pnlCidade: TPanel;
    pnlUF: TPanel;
    pnlCelEmail: TPanel;
    pblCel: TPanel;
    pnlEmail: TPanel;
    pnlDiv1: TPanel;
    pnlLogrBairro: TPanel;
    pnlLogradouro: TPanel;
    pnlBairro: TPanel;
    pnlBottom: TPanel;
    btnVoltar: TBitBtn;
    Memo2: TMemo;
    Label1: TLabel;
    lblProCod: TLabel;
    edtProCod: TDBEdit;
    lblDescricao: TLabel;
    edtDescricao: TDBEdit;
    lblCodBarra: TLabel;
    edtCodBarra: TDBEdit;
    lblReferencia: TLabel;
    edtReferencia: TDBEdit;
    lblEstoqueView: TLabel;
    edtEstoqueView: TDBEdit;
    lblCompra: TLabel;
    edtCompra: TDBEdit;
    edtVenda: TDBEdit;
    lblVenda: TLabel;
    tbsProdutoEstoque: TTabSheet;
    dsProdutos: TDataSource;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses uDM, uMenu, uConsultaProdutos;

procedure TfrmProdutos.btnAdicionarClick(Sender: TObject);
begin
  btnAdicionar.Enabled := false;
  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancel.Enabled := True;
  btnSalvar.Enabled := True;
  // Habilitar cancel

  // campos abaixo
  DM.Produtos.Insert;
  edtDescricao.Enabled := True;
  edtCodBarra.Enabled := True;
  edtReferencia.Enabled := True;
  edtEstoqueView.Enabled := True;
  edtCompra.Enabled := True;
  edtVenda.Enabled := True;
end;

procedure TfrmProdutos.btnCancelClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar as alterações?', mtConfirmation, [mbYes, mbNo],
    0) = mrYes then
  begin
    DM.Produtos.Cancel;

    // botões
    btnCancel.Enabled := false;
    btnExcluir.Enabled := True;
    btnAdicionar.Enabled := True;
    btnEditar.Enabled := True;
    btnSalvar.Enabled := false;

    // voltando enabled false
    edtDescricao.Enabled := false;
    edtCodBarra.Enabled := false;
    edtReferencia.Enabled := false;
    edtEstoqueView.Enabled := false;
    edtCompra.Enabled := false;
    edtVenda.Enabled := false;
  end;
end;

procedure TfrmProdutos.btnEditarClick(Sender: TObject);
begin

  DM.Produtos.Edit;
  btnAdicionar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancel.Enabled := True;
  btnSalvar.Enabled := True;

  // campos
  edtDescricao.Enabled := True;
  edtCodBarra.Enabled := True;
  edtReferencia.Enabled := True;
  edtEstoqueView.Enabled := True;
  edtCompra.Enabled := True;
  edtVenda.Enabled := True;
end;

procedure TfrmProdutos.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    DM.Produtos.Delete;

end;

procedure TfrmProdutos.btnPesquisaClick(Sender: TObject);
begin
  frmConsultaProdutos := TfrmConsultaProdutos.Create(self);
  frmConsultaProdutos.Show;
end;

procedure TfrmProdutos.btnSalvarClick(Sender: TObject);
var
  listaLines: TStringList;
begin
  // quando ok
  if (edtProCod.Text <> '') and (edtDescricao.Text <> '') and
    (edtCodBarra.Text <> '') and (edtReferencia.Text <> '') and
    (edtEstoqueView.Text <> '') and (edtCompra.Text <> '') and
    (edtVenda.Text <> '') then

  begin
    DM.Produtos.Post;
    ShowMessage('Registro Salvo Com Sucesso!');
    btnExcluir.Enabled := True;
    btnEditar.Enabled := True;
    btnAdicionar.Enabled := True;
    btnSalvar.Enabled := false;
    btnCancel.Enabled := false;
    // botões

    // voltando enabled false
    edtDescricao.Enabled := false;
    edtCodBarra.Enabled := false;
    edtReferencia.Enabled := false;
    edtEstoqueView.Enabled := false;
    edtCompra.Enabled := false;
    edtVenda.Enabled := false;
  end;

  if (edtProCod.Text <> '') and (edtDescricao.Text <> '') and
    (edtCodBarra.Text <> '') and (edtReferencia.Text <> '') and
    (edtEstoqueView.Text <> '') and (edtCompra.Text <> '') and
    (edtVenda.Text <> '') then
  begin
    // verificando Cod Barras
    // compara text <>'' e atribui string ao lines [x]
    if edtDescricao.Text <> '' then
    begin
      Memo2.Lines[0] := 'Código de Barras = OK'
    end
    else
    begin
      Memo2.Lines[0] := 'Codigo de Barras = VAZIO!'
    end;

    // verificando descrição
    if edtDescricao.Text <> '' then
    begin
      Memo2.Lines[1] := 'Descrição = OK'
    end
    else
    begin
      Memo2.Lines[1] := 'Descrição = VAZIO!'
    end;

    // Verificando Referência
    if edtReferencia.Text <> '' then
    begin
      Memo2.Lines[2] := 'Referência = OK'
    end
    else
    begin
      Memo2.Lines[2] := 'Referência = VAZIO!'
    end;

    // verificando     estoque
    if edtReferencia.Text <> '' then
    begin
      Memo2.Lines[3] := 'Estoque = OK'
    end
    else
    begin
      Memo2.Lines[3] := 'Estoque = VAZIO!'
    end;

    // verificando Compra
    if edtCompra.Text <> '' then
    begin
      Memo2.Lines[4] := 'Compra = OK'
    end
    else
    begin
      Memo2.Lines[4] := 'Compra = VAZIO!'
    end;

    // verificando Venda
    if edtVenda.Text <> '' then
    begin
      Memo2.Lines[5] := 'Venda = OK'
    end
    else
    begin
      Memo2.Lines[5] := 'Venda = VAZIO!'
    end;

  end;
end;

procedure TfrmProdutos.btnVoltarClick(Sender: TObject);
begin
  frmProdutos.Hide;
  // close teste
  frmMenu.Show;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  edtProCod.Enabled := false;
  btnSalvar.Enabled := false;
  btnCancel.Enabled := false;
end;

end.
