object FormNoteBook: TFormNoteBook
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 446
  ClientWidth = 686
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
    Width = 686
    Height = 446
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 684
      Height = 48
      Align = alTop
      Caption = 'Controle Notebooks'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object pnlFechar: TPanel
        Left = 568
        Top = 1
        Width = 115
        Height = 46
        Align = alRight
        Caption = 'Fechar'
        Color = clRed
        ParentBackground = False
        TabOrder = 0
        object btnFechar: TSpeedButton
          Left = 1
          Top = 1
          Width = 113
          Height = 44
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnFecharClick
          ExplicitTop = -2
        end
      end
    end
    object pnlMenu: TPanel
      Left = 1
      Top = 49
      Width = 684
      Height = 396
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnlEsquerda: TPanel
        Left = 1
        Top = 1
        Width = 360
        Height = 394
        Align = alLeft
        TabOrder = 0
        object lblSetor: TLabel
          Left = 32
          Top = 5
          Width = 26
          Height = 13
          Caption = 'Setor'
        end
        object cbSetorNotebook: TComboBox
          Left = 32
          Top = 24
          Width = 145
          Height = 21
          Cursor = crHandPoint
          Style = csDropDownList
          TabOrder = 0
          Items.Strings = (
            'Frasco'
            'Envase'
            'ADM'
            'Qualidade'
            'Injetora'
            'Selo'
            'Estoque'
            'T.I'
            'Manuten'#231#227'o')
        end
        object pnlLista: TPanel
          Left = 32
          Top = 62
          Width = 281
          Height = 217
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 279
            Height = 215
            Align = alClient
            DataSource = DM.dsMaq
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
            Columns = <
              item
                Alignment = taLeftJustify
                Expanded = False
                FieldName = 'id'
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'setor'
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tipo'
                Width = 93
                Visible = True
              end>
          end
        end
        object pnlPesquisar: TPanel
          Left = 197
          Top = 15
          Width = 115
          Height = 41
          Caption = 'Pesquisar'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          object btnPesquisar: TSpeedButton
            Left = 1
            Top = 1
            Width = 113
            Height = 39
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            OnClick = btnPesquisarClick
            ExplicitTop = 2
          end
        end
        object pnlRelatorio: TPanel
          Left = 72
          Top = 301
          Width = 185
          Height = 41
          Caption = 'Gerar Relat'#243'rio'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          object btnRelatorio: TSpeedButton
            Left = 1
            Top = 1
            Width = 183
            Height = 39
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 0
            ExplicitHeight = 16
          end
        end
      end
      object pnlDireita: TPanel
        Left = 328
        Top = 1
        Width = 355
        Height = 394
        Align = alRight
        Color = clBlack
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
