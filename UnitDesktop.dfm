object FormDesktop: TFormDesktop
  Left = 0
  Top = 0
  Caption = 'FormDesktop'
  ClientHeight = 446
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFull: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 446
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 684
      Height = 64
      Align = alTop
      Caption = 'Controle Desktops'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 0
    end
    object pnlMenu: TPanel
      Left = 1
      Top = 65
      Width = 684
      Height = 380
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
    end
  end
end
