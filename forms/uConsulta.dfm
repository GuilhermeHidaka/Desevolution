object frmConsultaParceiros: TfrmConsultaParceiros
  Left = 0
  Top = 0
  Caption = 'Consulta Parceiros'
  ClientHeight = 463
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlBG: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 463
    Align = alClient
    TabOrder = 0
    object pnlTopCOnsulta: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 20
      Width = 717
      Height = 40
      Align = alTop
      Color = clHotLight
      ParentBackground = False
      TabOrder = 0
      object cbxCampoConsulta: TComboBox
        Left = 16
        Top = 9
        Width = 105
        Height = 23
        TabOrder = 0
        Items.Strings = (
          ''
          'C'#243'digo'
          'CPF'
          'Apelido'
          'Razao'
          'Email'
          'Celular')
      end
      object edtBuscaConsulta: TEdit
        Left = 127
        Top = 9
        Width = 458
        Height = 23
        CanUndoSelText = True
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 591
        Top = 5
        Width = 25
        Height = 30
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Glyph.Data = {
          42100000424D4210000000000000420000002800000020000000200000000100
          20000300000000100000C30E0000C30E000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000003AC1640039C0310000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006A67674A6B69676F6B6868470000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000035C9130D4DCFF61153D4FA003BC17D0000BF04000000000000
          0000000000000000000000000000000000000000000000000000000000005555
          5503716D6CB3969392FF9A9796FF979492FF6F6C689E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000003AC2862F74EBFF5C788FFF2A6AD9FF0340C6CA003AC4270000
          0000000000000000000000000000000000000000000000000000000000006C68
          678D9E9B9AFF979291FFA8A4A3FFA9A6A4FF959291FF6D69653A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000033CC0F0C4CCEEF5E82AAFF9D8435FF837437FF4776B7FF0F50D1F70039
          C06F00007F0200000000000000000000000000000000000000006C6966559491
          8FFE979291FFA8A4A3FFBAB6B5FFCBC9C8FF9E9B9AFF6E68665F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000003BC1792C70E6FFB2B097FFDCD4BAFF957925FF947826FF667675FF2567
          DCFF013FC5BE0037C72000000000000000000000000069696329888584F39894
          93FFA8A4A3FFBAB6B5FFCBC9C8FFBFBDBBFF93908FFF6D686831000000000000
          0000000000000000000000000000000000000000000000000000000000000038
          C6090949CDEB6283A4FFF0EEE6FFF8F7F7FFC9BC92FF967A27FF9A7D2EFF8073
          3AFF4276C1FF0C4DCFF1003DC4BA0343C8CB073FB7817D7977D69B9897FFA8A3
          A2FFBAB6B5FFCBC9C8FFC1BEBDFF9D9A98FF6C69679600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000039
          C06F2B6DDFFFB7B499FFF8F7F7FFF8F7F7FFF7F6F6FFCCC09AFF967B27FF9B7F
          31FF927726FF63767BFF657471FF60798BFF566D96FF9E9C9AFFA5A09FFFBAB6
          B5FFCBC9C8FFC3C0BFFFA19E9DFF6C6967960000000000000000000000000000
          00000000000000000000000000000000000000000000000000000033CC050647
          CBE266839EFFF3F1EDFFF8F7F7FFF7F6F6FFF6F5F5FFF4F3F3FFE5E1D3FFB3A1
          68FF967B28FF957824FF997C2BFF947A32FF8F8C88FF9C9897FFBAB6B5FFCBC9
          C8FFBEBBBAFF9C9A98FF6C696796000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000003BC1632868
          D8FFBEB99EFFF8F7F7FFF8F7F7FFF7F6F6FFF5F4F4FFF3F2F1FFF0EFEEFFECEA
          E9FFE5E3E1FFD0C9B6FF998E6FFF8A7330FF868381FFA29F9EFFC8C6C4FFBFBC
          BAFF999695FF6C68668B00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000FF020544C9DB6A85
          9AFFF5F3F0FFF8F7F7FFF7F6F6FFF6F4F4FFF4F3F2FFDFDEDCFFA7A4A2FF9490
          8FFF959290FF8D8988FF9F9C9AFF847F73FFCDCBCBFF8F8C8AFFA5A2A1FF9390
          8FFF4F5C7CB00000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000003AC1572664D1FFC5C0
          A3FFF8F7F7FFF7F6F6FFF6F5F5FFF4F3F3FFB9B7B5FF9B9997FFDFDDD8FFDDD5
          BAFFD7CEAFFFE6E1D2FFC4C3C2FFE3E2E1FFF9F9F9FF8E8A84FF81724CFF6271
          79FF195CDAFE003AC199002ED00B000000000000000000000000000000000000
          000000000000000000000000000000000000000000000341C6D16F8795FFF6F4
          F2FFF7F6F6FFF7F5F5FFF5F3F3FFC3C1C0FFADAAA9FFD8CEA8FFAA8918FFBD99
          1DFFB99209FFAB8404FFB8A051FFF8F6EEFFA4A2A1FF907D44FF9A7E2EFF977B
          2AFF737453FF3470D3FF0544C9DE003BC33C0000000000000000000000000000
          000000000000000000000000000000000000003AC146215DC7FFCAC4A8FFF8F7
          F7FFF7F6F6FFF6F4F4FFF0EEEEFF918E8CFFDFD7BCFFB08D12FFC9AA36FFB991
          0BFFBE9928FFC39F39FFC19D36FFB69E51FFCBCAC9FFB7B4AFFFBEAF7DFF977B
          29FF987C2BFF8A742BFF5177A5FF1557D7FD003BC28A00000000000000000000
          0000000000000000000000000000000000000033BF14636F76EBF7F6F5FFF7F6
          F6FFF6F5F5FFF4F3F3FFCBCAC8FFC0BEBDFFB59A41FFCEB042FFB89008FFC29D
          35FFCEAD5AFFD4B770FFD2B469FFC1A047FFDFD8C0FF959291FFF7F6F6FFF3F1
          EDFFD2C8A7FFB8A770FF667570FF2B71EAFF003AC3AA00000000000000000000
          0000000000000000000000000000000000007F590014D1C5A2F6F7F6F6FFF7F5
          F5FFF5F3F3FFF3F2F1FFB7B5B3FFD9D8D7FFAA870DFFCCAD3DFFBC951CFFCBA9
          51FFD9BD7EFFE8D5ABFFE1CA98FFD7BB79FFD2C596FF999695FFF8F7F7FFF8F7
          F7FFF6F5F3FF909689FF3074E9FF003DC3B70033CC0500000000000000000000
          00000000000000000000000000000000000000000001B7A671C4F7F6F6FFF6F4
          F4FFF4F2F2FFF1F0EFFFB8B5B4FFD6D5D4FFAB8812FFCCAE3DFFBE9827FFCEAE
          5DFFDFC690FFF6EEDCFFF4EAD4FFDEC68FFFD1C497FF989594FFF8F7F7FFF8F7
          F7FFA3A48AFF3576E3FF013EC4C30038C6090000000000000000000000000000
          0000000000000000000000000000000000000000000077570020CCC19BEAF4F3
          F3FFF2F1F0FFEEEDEBFFCECBCAFFB4B2B1FFBCA559FFCBAB39FFBE9925FFCDAD
          59FFDFC791FFEBDAB6FFEBDBB7FFC4A85DFFE5E1D1FF9A9796FFF8F7F7FFB6B2
          9AFF3A77D8FF0340C5CD0036C80E000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084660434C8BB
          94E8F0EEEDFFEBE9E8FFE4E2E1FF8C8987FFE5E1D3FFAB8917FFC9AA3FFFC7A4
          45FFCEAF5EFFD5B873FFD4BA77FFC8B883FFB6B4B3FFCDCBCAFFC8C2A6FF4178
          C8FF0342C8D70033BF1400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007958
          0017AA9759A2C8BD9DF9D7D3C7FFA8A4A1FF969391FFE4DFCFFFB69D49FFAC8B
          1EFFB18E2CFFB4963EFFD1C497FFCECCCBFF9F9C9BFFD7D1BBFF4B7ABAFF0645
          C9E00038C61B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007F5B000E7D5A003BA49565BFC5C2C1FF8E8A89FFBFBEBDFFE3E1
          DDFFE6E4DCFFD5D4D4FFA09D9CFFABA8A7FFDFD9C6FF577DA7FF0847CBE8003A
          C423000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000082620031CCC3A9F8EAE8E7FFC8C6C5FFACA9
          A8FFA9A6A5FFBBB9B8FFE6E5E5FFEBE7DCFF678299FF0A4BCDEE0039BF2C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009177234FD1C8AAF6F3F2F2FFF6F4
          F4FFF7F6F6FFF8F7F7FFF1EFE8FF788989FF0C4DCFF40038C136000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007C620027B2A168AED9D0
          B6FCF6F5F3FFF6F4F2FF7D8275F10947C8F9003AC44100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007A5B
          00198F721C62A18A478871550009003FBF080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000}
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object pnlDBgrid: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 717
      Height = 393
      Align = alClient
      TabOrder = 1
      object DBGridConsulta: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 709
        Height = 385
        Align = alClient
        DataSource = dsParceiros
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGridConsultaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PAR_COD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_RAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_APELIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_EMAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_CELULAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_LOGRADOURO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_UF'
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 723
      Height = 16
      Align = alTop
      Color = clSilver
      ParentBackground = False
      TabOrder = 2
      object SpeedButton1: TSpeedButton
        Left = 699
        Top = 1
        Width = 23
        Height = 14
        Align = alRight
        Caption = 'X'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 656
        ExplicitTop = 0
        ExplicitHeight = 22
      end
    end
  end
  object dsParceiros: TDataSource
    DataSet = DM.Parceiros
    Left = 672
    Top = 24
  end
end
