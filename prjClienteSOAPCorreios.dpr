program prjClienteSOAPCorreios;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uCalcPrecoPrazoWS in 'uCalcPrecoPrazoWS.pas',
  uCorreiosServico in 'uCorreiosServico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
