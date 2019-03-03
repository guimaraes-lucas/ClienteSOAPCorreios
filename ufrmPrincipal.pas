unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ValEdit, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    lstResultadoCorreios: TValueListEditor;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnCalcular: TButton;
    edtCEPOrigem: TEdit;
    edtCEPDestino: TEdit;
    cbxCodServico: TComboBox;
    Label5: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarCampos: boolean;
    procedure CalcularPrazo(Codigo_Servico: String; CEP_Origem, CEP_Destino: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uCalcPrecoPrazoWS, uCorreiosServico;

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  if ValidarCampos then
      CalcularPrazo(Copy(cbxCodServico.Text, 1,5), edtCEPOrigem.Text, edtCEPDestino.Text)
  else
    ShowMessage('Campos obrigatorios nao preenchidos.');
end;

procedure TfrmPrincipal.CalcularPrazo(Codigo_Servico, CEP_Origem,
  CEP_Destino: String);
var
  Retorno: cServico;
begin
  try
    try
      Retorno := cServico.Create;
      Retorno := TCorreioServico.CalcularPrazo(Codigo_Servico, CEP_Origem, CEP_Destino);

      if Retorno.Erro.IsEmpty then
      begin
        lstResultadoCorreios.Values['Codigo']                  := IntToStr(Retorno.Codigo);
        lstResultadoCorreios.Values['Prazo de Entrega (Dias)'] := Retorno.PrazoEntrega;
        lstResultadoCorreios.Values['Data Maxima Entrega']     := Retorno.DataMaxEntrega;
      end
      else
      begin
        lstResultadoCorreios.Values['Codigo']                  := '';
        lstResultadoCorreios.Values['Prazo de Entrega (Dias)'] := '';
        lstResultadoCorreios.Values['Data Maxima Entrega']     := '';
        ShowMessage(Retorno.MsgErro + '***');
      end;
    except
      on e: Exception do
        ShowMessage(E.Message);
    end;
  finally
    if Assigned(Retorno) then
     FreeAndNil(Retorno);
  end;
end;

function TfrmPrincipal.ValidarCampos: boolean;
begin
  Result := False;
  if (cbxCodServico.ItemIndex > -1) and (EdtCEPOrigem.Text <> '') and (EdtCEPDestino.Text <> '') then
    Result := True
end;

end.
