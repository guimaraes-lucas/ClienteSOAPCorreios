object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'SOAP em Delphi'
  ClientHeight = 216
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object Label5: TLabel
      Left = 1
      Top = 1
      Width = 873
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Cliente SOAP - Correios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 200
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 512
    Height = 175
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label2: TLabel
      Left = 16
      Top = 26
      Width = 100
      Height = 25
      Caption = 'C'#243'd Servi'#231'o'
    end
    object Label3: TLabel
      Left = 16
      Top = 76
      Width = 114
      Height = 25
      Caption = 'CEP - Origem'
    end
    object Label4: TLabel
      Left = 16
      Top = 122
      Width = 115
      Height = 25
      Caption = 'CEP - Destino'
    end
    object btnCalcular: TButton
      Left = 312
      Top = 90
      Width = 185
      Height = 65
      Caption = '<< Calcular >>'
      Default = True
      TabOrder = 0
      OnClick = btnCalcularClick
    end
    object edtCEPOrigem: TEdit
      Left = 146
      Top = 73
      Width = 121
      Height = 33
      TabOrder = 1
    end
    object edtCEPDestino: TEdit
      Left = 146
      Top = 122
      Width = 121
      Height = 33
      TabOrder = 2
    end
    object cbxCodServico: TComboBox
      Left = 146
      Top = 23
      Width = 351
      Height = 33
      ItemIndex = 0
      TabOrder = 3
      Text = '04014 = SEDEX '#224' vista'
      Items.Strings = (
        '04014 = SEDEX '#224' vista'
        '04065 = SEDEX '#224' vista pagamento na entrega'
        '40169 = SEDEX 12 ( '#224' vista e a faturar)'
        '40215 = SEDEX 10 ('#224' vista e a faturar)'
        '40290 = SEDEX Hoje Varejo'
        '04510 = PAC '#224' vista'
        '04707 = PAC '#224' vista pagamento na entrega')
    end
  end
  object Panel3: TPanel
    Left = 512
    Top = 41
    Width = 363
    Height = 175
    Align = alRight
    TabOrder = 2
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 361
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Resultado dos Correios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 193
    end
    object lstResultadoCorreios: TValueListEditor
      Left = 1
      Top = 26
      Width = 361
      Height = 148
      Align = alClient
      DefaultRowHeight = 33
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect, goThumbTracking]
      TabOrder = 0
      TitleCaptions.Strings = (
        'Descri'#231#227'o'
        'Valor')
      ExplicitWidth = 325
      ColWidths = (
        150
        205)
    end
  end
end
