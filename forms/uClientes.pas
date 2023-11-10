unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TfrmParceiros = class(TForm)
    pnlClientesbg: TPanel;
    tps: TPageControl;
    tbsClientesCadastro: TTabSheet;
    pnlTopCadastroClientes: TPanel;
    lblCadastro: TLabel;
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
    lblApelido: TLabel;
    edtApelido: TDBEdit;
    pnlbgApelido: TPanel;
    pnlRS: TPanel;
    lblRzs: TLabel;
    edtRzS: TDBEdit;
    pnlCodCpf: TPanel;
    pnlCPF: TPanel;
    lblCPF: TLabel;
    edtCPF: TDBEdit;
    pnlCod: TPanel;
    lblCod: TLabel;
    edtParCod: TDBEdit;
    pnldiv: TPanel;
    pnldiv2: TPanel;
    pnlCidadeUF: TPanel;
    pnlCidade: TPanel;
    lblCidade: TLabel;
    edtCidade: TDBEdit;
    pnlUF: TPanel;
    lblUF: TLabel;
    pnlCelEmail: TPanel;
    pblCel: TPanel;
    c: TLabel;
    edtCelular: TDBEdit;
    pnlEmail: TPanel;
    Label7: TLabel;
    edtEmail: TDBEdit;
    pnlDiv1: TPanel;
    pnlLogrBairro: TPanel;
    pnlLogradouro: TPanel;
    lblLogradouro: TLabel;
    edtLogradouro: TDBEdit;
    pnlBairro: TPanel;
    lblBairro: TLabel;
    edtBairro: TDBEdit;
    dsParceiros: TDataSource;
    cbxUF: TDBComboBox;
    Panel1: TPanel;
    pnlBottom: TPanel;
    btnVoltar: TBitBtn;
    Memo1: TMemo;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParceiros: TfrmParceiros;

implementation

{$R *.dfm}

uses uConsulta, uDM, uMenu;

procedure TfrmParceiros.btnAdicionarClick(Sender: TObject);
begin
  btnAdicionar.Enabled := false;
  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancel.Enabled := True;
  btnSalvar.Enabled := True;
  // Habilitar cancel

  // campos abaixo
  DM.Parceiros.Insert;
  edtRzS.Enabled := True;
  edtCPF.Enabled := True;
  edtParCod.Enabled := True;
  edtCidade.Enabled := True;
  edtLogradouro.Enabled := True;
  edtBairro.Enabled := True;
  edtCelular.Enabled := True;
  edtEmail.Enabled := True;
  edtApelido.Enabled := True;
  cbxUF.Enabled := True;
end;

procedure TfrmParceiros.btnCancelClick(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar as alterações?', mtConfirmation, [mbYes, mbNo],
    0) = mrYes then
  begin
    DM.Parceiros.Cancel;

    // botões
    btnCancel.Enabled := false;
    btnExcluir.Enabled := True;
    btnAdicionar.Enabled := True;
    btnEditar.Enabled := True;
    btnSalvar.Enabled := false;

    // voltando enabled false
    edtRzS.Enabled := false;
    edtCPF.Enabled := false;
    edtParCod.Enabled := false;
    edtCidade.Enabled := false;
    edtLogradouro.Enabled := false;
    edtBairro.Enabled := false;
    edtCelular.Enabled := false;
    edtEmail.Enabled := false;
    edtApelido.Enabled := false;
    cbxUF.Enabled := false;
  end;
end;

procedure TfrmParceiros.btnEditarClick(Sender: TObject);
begin

  DM.Parceiros.Edit;
  btnAdicionar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancel.Enabled := True;
  btnSalvar.Enabled := True;

  // campos
  edtRzS.Enabled := True;
  edtCPF.Enabled := True;
  edtParCod.Enabled := True;
  edtCidade.Enabled := True;
  edtLogradouro.Enabled := True;
  edtBairro.Enabled := True;
  edtCelular.Enabled := True;
  edtEmail.Enabled := True;
  edtApelido.Enabled := True;
  cbxUF.Enabled := True;

end;

procedure TfrmParceiros.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    DM.Parceiros.Delete;

end;

procedure TfrmParceiros.btnPesquisaClick(Sender: TObject);
begin
  frmConsulta := TfrmConsulta.Create(self);
  frmConsulta.Show;
end;

procedure TfrmParceiros.btnSalvarClick(Sender: TObject);
var
  listaLines: TStringList;
begin
  // quando ok
  if (edtApelido.Text <> '') and (edtRzS.Text <> '') and (edtCPF.Text <> '') and
    (edtParCod.Text <> '') and (edtCidade.Text <> '') and
    (edtCelular.Text <> '') and (edtEmail.Text <> '') and
    (edtLogradouro.Text <> '') and (edtBairro.Text <> '') and
    (cbxUF.ItemIndex <> 0) then
  begin
    DM.Parceiros.Post;
    ShowMessage('Registro Salvo Com Sucesso!');
    btnExcluir.Enabled := True;
    btnEditar.Enabled := True;
    btnAdicionar.Enabled := True;
    btnSalvar.Enabled := false;
    btnCancel.Enabled := false;
    // botões

    // voltando enabled false
    edtRzS.Enabled := false;
    edtCPF.Enabled := false;
    edtParCod.Enabled := false;
    edtCidade.Enabled := false;
    edtLogradouro.Enabled := false;
    edtBairro.Enabled := false;
    edtCelular.Enabled := false;
    edtEmail.Enabled := false;
    edtApelido.Enabled := false;
    cbxUF.Enabled := false;
  end;

  if (edtApelido.Text = '') or (edtRzS.Text = '') or (edtCPF.Text = '') or
    (edtParCod.Text = '') or (edtCidade.Text = '') or (edtCelular.Text = '') or
    (edtEmail.Text = '') or (edtLogradouro.Text = '') or (edtBairro.Text = '')
    or (cbxUF.ItemIndex = 0) then
  begin
    // verificando cpf
    // compara text <>'' e atribui string ao lines [x]
    if edtCPF.Text <> '' then
    begin
      Memo1.Lines[0] := 'CPF = OK'
    end
    else
    begin
      Memo1.Lines[0] := 'CPF = VAZIO!'
    end;

    // verificando razao
    if edtRzS.Text <> '' then
    begin
      Memo1.Lines[1] := 'Razão Social = OK'
    end
    else
    begin
      Memo1.Lines[1] := 'Razão Social = VAZIO!'
    end;

    // Verificando Apelido
    if edtApelido.Text <> '' then
    begin
      Memo1.Lines[2] := 'Apelido = OK'
    end
    else
    begin
      Memo1.Lines[2] := 'Apelido = VAZIO!'
    end;

    // verificando Celular
    if edtCelular.Text <> '' then
    begin
      Memo1.Lines[3] := 'Celular = OK'
    end
    else
    begin
      Memo1.Lines[3] := 'Celular = VAZIO!'
    end;

    // verificando E-mail
    if edtEmail.Text <> '' then
    begin
      Memo1.Lines[4] := 'E-mail = OK'
    end
    else
    begin
      Memo1.Lines[4] := 'E-mail = VAZIO!'
    end;

    // verificando Logradouro
    if edtLogradouro.Text <> '' then
    begin
      Memo1.Lines[5] := 'Logradouro = OK'
    end
    else
    begin
      Memo1.Lines[5] := 'Logradouro = VAZIO!'
    end;

    // verificando  Bairro
    if edtBairro.Text <> '' then
    begin
      Memo1.Lines[6] := 'Bairro = OK'
    end
    else
    begin
      Memo1.Lines[6] := 'Bairr0 = VAZIO!'
    end;

    // verificando Cidade
    if edtCidade.Text <> '' then
    begin
      Memo1.Lines[7] := 'Cidade = OK'
    end
    else
    begin
      Memo1.Lines[7] := 'Cidade = VAZIO!'
    end;

    // verificando UF
    if cbxUF.ItemIndex <> 0 then
    begin
      Memo1.Lines[8] := 'UF = OK'
    end
    else
    begin
      Memo1.Lines[8] := 'UF = VAZIO!'
    end;

    listaLines := TStringList.Create;
    try
      listaLines.Assign(Memo1.Lines);
    finally

    end;
    ShowMessage('Status dos campos: ' + sLineBreak + listaLines.Text);
  end;

end;

procedure TfrmParceiros.btnVoltarClick(Sender: TObject);
begin
  frmParceiros.Hide;
  // close teste
  frmMenu.Show;
end;

procedure TfrmParceiros.FormCreate(Sender: TObject);
begin
  btnSalvar.Enabled := false;
  btnCancel.Enabled := false;
  cbxUF.ItemIndex := 0;
end;

end.
