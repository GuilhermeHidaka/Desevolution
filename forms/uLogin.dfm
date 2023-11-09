object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'uLogin'
  ClientHeight = 411
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 411
    Align = alClient
    BevelOuter = bvNone
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 64
      Top = 168
      Width = 49
      Height = 21
      Caption = 'Login :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 61
      Top = 216
      Width = 52
      Height = 21
      Caption = 'Senha :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 96
      Top = 72
      Width = 122
      Height = 25
      Caption = 'Desevolution.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 119
      Top = 392
      Width = 70
      Height = 15
      Caption = 'Vers'#227'o 1.0.0.0'
    end
    object Panel2: TPanel
      Left = 323
      Top = 0
      Width = 194
      Height = 411
      Align = alRight
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 416
    end
    object Edit1: TEdit
      Left = 119
      Top = 170
      Width = 130
      Height = 23
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 119
      Top = 218
      Width = 130
      Height = 23
      TabOrder = 2
    end
    object Button1: TButton
      Left = 104
      Top = 288
      Width = 98
      Height = 25
      Caption = 'Entrar'
      TabOrder = 3
    end
  end
end
