object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Consulta CNPJ'
  ClientHeight = 366
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 343
    Width = 160
    Height = 16
    Caption = 'CNPJ sem pontos ou tra'#231'os:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 577
    Height = 337
    Enabled = False
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 400
    Top = 341
    Width = 75
    Height = 25
    Caption = 'OK'
    Enabled = False
    TabOrder = 1
    OnClick = btnOkClick
  end
  object tEdit: TEdit
    Left = 184
    Top = 343
    Width = 210
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 481
    Top = 341
    Width = 80
    Height = 25
    Caption = 'Nova Consulta'
    TabOrder = 3
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj'
    Params = <>
    HandleRedirects = True
    Left = 400
    Top = 144
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'ORIGEM'
        Options = [poAutoCreated]
      end>
    Resource = '{ORIGEM}'
    Response = RESTResponse1
    SynchronizedEvents = False
    OnHTTPProtocolError = RESTRequest1HTTPProtocolError
    Left = 400
    Top = 200
  end
  object RESTResponse1: TRESTResponse
    Left = 392
    Top = 272
  end
end
