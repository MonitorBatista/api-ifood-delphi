object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Api do Ifood'
  ClientHeight = 585
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 931
    Height = 585
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Loja'
      object SpeedButton1: TSpeedButton
        Left = 607
        Top = 242
        Width = 110
        Height = 46
        Caption = 'Loja Aberta'
        Visible = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 607
        Top = 128
        Width = 110
        Height = 53
        Caption = 'Merchant'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 607
        Top = 24
        Width = 110
        Height = 49
        Caption = 'Solicitar Autoriza'#231#227'o'
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 607
        Top = 79
        Width = 110
        Height = 43
        Caption = 'Listar Merchant'
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 607
        Top = 187
        Width = 110
        Height = 49
        Caption = 'Status'
        OnClick = SpeedButton5Click
      end
      object Memo1: TMemo
        Left = 16
        Top = 24
        Width = 585
        Height = 505
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pedidos'
      ImageIndex = 1
      object Label1: TLabel
        Left = 31
        Top = 160
        Width = 27
        Height = 13
        Caption = 'Items'
      end
      object SpeedButton6: TSpeedButton
        Left = 575
        Top = 16
        Width = 146
        Height = 49
        Caption = 'Listar'
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 575
        Top = 71
        Width = 146
        Height = 50
        Caption = 'Listar Itens'
        OnClick = SpeedButton7Click
      end
      object Label2: TLabel
        Left = 64
        Top = 141
        Width = 41
        Height = 13
        Caption = 'Order Id'
      end
      object SpeedButton9: TSpeedButton
        Left = 575
        Top = 127
        Width = 146
        Height = 50
        Caption = 'Aceitar Pedido'
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 575
        Top = 183
        Width = 146
        Height = 50
        Caption = 'Recusar Pedido'
        OnClick = SpeedButton10Click
      end
      object SpeedButton11: TSpeedButton
        Left = 575
        Top = 239
        Width = 146
        Height = 50
        Caption = 'Preparando o Pedido'
        OnClick = SpeedButton11Click
      end
      object SpeedButton12: TSpeedButton
        Left = 727
        Top = 239
        Width = 154
        Height = 50
        Caption = 'Pronto Para Retirar'
        OnClick = SpeedButton12Click
      end
      object SpeedButton13: TSpeedButton
        Left = 727
        Top = 127
        Width = 154
        Height = 50
        Caption = 'ACEITAR CANCELAMENTO'
        OnClick = SpeedButton13Click
      end
      object SpeedButton14: TSpeedButton
        Left = 727
        Top = 183
        Width = 154
        Height = 50
        Caption = 'Negar Cancelamento'
        OnClick = SpeedButton14Click
      end
      object SpeedButton15: TSpeedButton
        Left = 727
        Top = 71
        Width = 154
        Height = 50
        Caption = 'Despachar'
        OnClick = SpeedButton15Click
      end
      object SpeedButton16: TSpeedButton
        Left = 727
        Top = 16
        Width = 154
        Height = 49
        Caption = 'Ler Pedidos'
        OnClick = SpeedButton16Click
      end
      object Label4: TLabel
        Left = 16
        Top = 295
        Width = 32
        Height = 13
        Caption = 'Pedido'
      end
      object SpeedButton17: TSpeedButton
        Left = 575
        Top = 295
        Width = 146
        Height = 50
        Caption = 'Ifood Portal'
        OnClick = SpeedButton17Click
      end
      object Memo2: TMemo
        Left = 16
        Top = 16
        Width = 553
        Height = 119
        Lines.Strings = (
          'Memo2')
        TabOrder = 0
        WordWrap = False
      end
      object Memo3: TMemo
        Left = 16
        Top = 183
        Width = 553
        Height = 106
        Lines.Strings = (
          'Memo2')
        TabOrder = 1
        WordWrap = False
      end
      object Edit1: TEdit
        Left = 64
        Top = 154
        Width = 505
        Height = 21
        TabOrder = 2
      end
      object Memo5: TMemo
        Left = 16
        Top = 314
        Width = 553
        Height = 215
        Lines.Strings = (
          'Memo2')
        TabOrder = 3
        WordWrap = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object SpeedButton8: TSpeedButton
        Left = 560
        Top = 19
        Width = 145
        Height = 54
        Caption = 'Listar Produto'
        OnClick = SpeedButton8Click
      end
      object Memo4: TMemo
        Left = 16
        Top = 19
        Width = 513
        Height = 382
        Lines.Strings = (
          'Memo4')
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 3
      object Label3: TLabel
        Left = 24
        Top = 32
        Width = 84
        Height = 13
        Caption = 'ID DO PARCEIRO'
      end
      object Edit2: TEdit
        Left = 24
        Top = 51
        Width = 425
        Height = 21
        TabOrder = 0
        Text = 'Edit2'
      end
      object Button1: TButton
        Left = 455
        Top = 49
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 1
        OnClick = Button1Click
      end
      object pnlEstoque: TPanel
        AlignWithMargins = True
        Left = 6
        Top = 3
        Width = 234
        Height = 542
        Margins.Left = 6
        Margins.Right = 0
        Margins.Bottom = 12
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Panel10: TPanel
          Left = 0
          Top = 484
          Width = 234
          Height = 58
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object btnEstNovaCompra: TSpeedButton
            AlignWithMargins = True
            Left = 120
            Top = 0
            Width = 108
            Height = 58
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 0
            Align = alRight
            Flat = True
          end
          object btnEstAdicionarItem: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 112
            Height = 58
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Flat = True
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 48
          end
          object Label5: TLabel
            Left = 39
            Top = 41
            Width = 40
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = 'F2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object pnlFinanceiro: TPanel
        AlignWithMargins = True
        Left = 475
        Top = 3
        Width = 235
        Height = 542
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 12
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 235
          Height = 484
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object btnFinReceber: TSpeedButton
            Left = 200
            Top = 85
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Flat = True
          end
          object btnFinPagar: TSpeedButton
            Left = 200
            Top = 114
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Flat = True
          end
          object SpeedButton20: TSpeedButton
            Left = 200
            Top = 142
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Flat = True
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 484
          Width = 235
          Height = 58
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object btnFinGerenciarContas: TSpeedButton
            AlignWithMargins = True
            Left = 117
            Top = 0
            Width = 112
            Height = 58
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 0
            Align = alRight
            Flat = True
            ExplicitLeft = 121
            ExplicitTop = 3
          end
          object btnFinFluxoDeCaixa: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 112
            Height = 58
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Flat = True
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 48
          end
        end
      end
      object pnlVendas: TPanel
        AlignWithMargins = True
        Left = 240
        Top = 3
        Width = 235
        Height = 542
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 12
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
        object Panel16: TPanel
          Left = 0
          Top = 484
          Width = 235
          Height = 58
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object btnVenClienteNovo: TSpeedButton
            AlignWithMargins = True
            Left = 116
            Top = 0
            Width = 113
            Height = 58
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 6
            Margins.Bottom = 0
            Align = alRight
            Flat = True
          end
          object btnVenPdv: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 116
            Height = 58
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Flat = True
          end
          object lblVenNomeStatusPDV: TLabel
            Left = 36
            Top = 15
            Width = 45
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Caption = 'FECHADO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton23: TSpeedButton
            Left = 12
            Top = 20
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00D1A8A2FF9E4D44FE7B0D05FF881B0EFF84160CFF7100
              00FF933F3FFEC99F9FFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00F1E4E1FFA04939FE9E3516FFD16E31FFF79B48FFFFA44DFFFFA44DFFF69A
              47FFCA652DFF8B1D0DFF8A2F2FFEEDDFDFFFFF00FF00FF00FF00FF00FF00F2E5
              E1FF99381EFEC75F21FFFF9A38FFFF9A38FFFF9A38FFFF9A38FFFF9A38FFFF9A
              38FFFF9A38FFFF9A38FFB84B19FF780F0FFEEDDFDFFFFF00FF00FF00FF00AD5A
              3FFECC6019FFFF8F23FFFF8F23FFFFB976FFD2C5C0FFCCC3C0FFC9C2BFFFCAC2
              BFFFB15F16FFFF8F23FFFF8F23FFB84711FF8A2F2FFEFF00FF00DCB6A8FFB148
              13FFFF840FFFFF840FFFFF840FFFFF840FFFFFCA94FFFFFFFFFFFFFFFFFF9454
              17FFFF840FFFFF840FFFFF840FFFFF840FFF8B1702FFC99F9FFFBC7252FEDD68
              0AFFFF7F00FFFF7F00FFFF7F00FFFF7F00FFFFBE7FFFFFFFFFFFFFFFFFFF8E44
              02FFFF7F00FFFF7F00FFFF7F00FFFF7F00FFCA4F00FF933F3FFEAB4A1CFFFA7F
              04FFFF8403FFFF8403FFFF8303FFFF8303FFFFC080FFFFFFFFFFFFFFFFFF9A4A
              03FFFF8200FFFF8200FFFF8200FFFF8200FFF67900FF710000FFB9561AFFFF8E
              16FFFF911EFFFF911EFFFF911EFFFF911EFFFFC88EFFFFFFFFFFFFFFFFFFA851
              04FFFF8500FFFF8500FFFF8500FFFF8500FFFF8500FF831100FFBC5A1CFFFF9A
              2FFFFFA13FFFFFA13FFFFFA13FFFFFA13FFFFFD6AAFFFFFFFFFFFFFFFFFFB55A
              0FFFFF8500FFFF8500FFFF8500FFFF8500FFFF8500FF841301FFB65821FFFAA0
              44FFFFB161FFFFB161FFFFB161FFF7D4B2FFFFFFFFFFFFFFFFFFFFFFFFFFC577
              3CFFFFAD56FFFF9727FFFF8500FFFF8500FFF77D00FF760703FFC98359FEE58B
              3CFFFFC181FFFFC181FFFFC181FFFFC181FFFFC181FFEFB682FFEFBE93FFFFC1
              81FFFFC181FFFFC181FFFFBE7AFFFFB05CFFCF6924FF9B4742FEE5C3ACFFC765
              1CFFFFC88BFFFFD2A1FFFFD2A1FFFFD2A1FFFFE7CEFFEFE5E1FFC5A294FFD69C
              70FFFFD2A1FFFFD2A1FFFFD2A1FFFFCC96FF992E10FFCEA5A1FFFF00FF00C77C
              4CFEDD8134FFFFDBB2FFFFE1BFFFFFE1BFFFFFFBF7FFFFFFFFFFFFFFFFFFC591
              71FFFFE1BFFFFFE1BFFFFFE1BFFFC4724BFF9A4437FEFF00FF00FF00FF00F6EB
              E3FFBF6830FEDD8439FFFFE1BFFFFFEEDDFFFFF6ECFFFFFCF9FFF7EBE2FFFFEE
              DDFFFFEEDDFFFFE7CEFFC9774AFF93301CFEF0E2E0FFFF00FF00FF00FF00FF00
              FF00F6EBE3FFC67C4CFEC5631CFFE39E65FFFAD2A8FFFFDDB6FFFFDDB6FFF9D8
              B7FFDB9B71FFAD4A1EFFA7543DFEF1E4E1FFFF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00E5C2ACFFC88158FEB35420FFB9561AFFB55118FFA644
              19FFB76D50FED9B4A6FFFF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
    end
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.CharSet = 'utf-8'
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = True
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 32
    Top = 184
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv3
    SSLOptions.SSLVersions = [sslvSSLv3]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 105
    Top = 248
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 36
    Top = 344
  end
  object FDMemTableResumo: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 28
    Top = 296
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 96
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = FDMemTableResumo
    Left = 120
    Top = 320
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 132
    Top = 168
  end
end
