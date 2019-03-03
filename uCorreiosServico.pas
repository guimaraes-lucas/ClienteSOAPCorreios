unit uCorreiosServico;

interface

uses uCalcPrecoPrazoWS, System.SysUtils;

Type

  TCorreioServico = class
  public
    class function CalcularPrazo(Codigo_Servico: string; CEP_Origem, CEP_Destino: String): cServico;

  end;

implementation

class function TCorreioServico .CalcularPrazo(Codigo_Servico: string; CEP_Origem,
  CEP_Destino: String): cServico;
begin
  try
    Result := GetCalcPrecoPrazoWSSoap().CalcPrazo(Codigo_Servico, CEP_Origem, CEP_Destino).Servicos[0];
  except
    on E: Exception do
      raise Exception.Create('Erro ao executar metodo CalcPrazo.' + #13 +
                             'Original: ' + E.Message );
  end;
end;

end.
