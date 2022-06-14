object FormEtiqueta: TFormEtiqueta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 456
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFull: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 456
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlTamanho: TPanel
      Left = 136
      Top = 88
      Width = 415
      Height = 279
      Color = 15329769
      ParentBackground = False
      TabOrder = 0
      object pnlLogo: TPanel
        Left = 1
        Top = 1
        Width = 413
        Height = 56
        Align = alTop
        TabOrder = 0
      end
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 694
      Height = 56
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object pnlBotao: TPanel
        Left = 240
        Top = -1
        Width = 209
        Height = 57
        Caption = 'Imprimir Etiqueta'
        Color = clLime
        ParentBackground = False
        TabOrder = 0
        object btnImprimir: TSpeedButton
          Left = 1
          Top = 1
          Width = 207
          Height = 55
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          ExplicitLeft = 96
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
  end
end
