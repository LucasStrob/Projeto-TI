object FormPesquisar: TFormPesquisar
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
    object pnlTopo: TPanel
      Left = 1
      Top = 1
      Width = 684
      Height = 41
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnlEdit: TPanel
        Left = 114
        Top = 1
        Width = 199
        Height = 39
        Align = alLeft
        TabOrder = 0
        object edPesquisar: TEdit
          Left = 16
          Top = 10
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
      object pnlFechar: TPanel
        Left = 570
        Top = 1
        Width = 113
        Height = 39
        Align = alRight
        Caption = 'Fechar'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btnFechar: TSpeedButton
          Left = 1
          Top = 1
          Width = 111
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnFecharClick
          ExplicitLeft = 5
          ExplicitTop = -2
        end
      end
      object pnlAtualizar: TPanel
        Left = 457
        Top = 1
        Width = 113
        Height = 39
        Align = alRight
        Caption = 'Atualizar'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object btnAtualizar: TSpeedButton
          Left = 1
          Top = 1
          Width = 111
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnAtualizarClick
          ExplicitLeft = -3
          ExplicitTop = -2
        end
      end
      object pnlPesquisar: TPanel
        Left = 1
        Top = 1
        Width = 113
        Height = 39
        Align = alLeft
        Caption = 'Pesquisar'
        Color = 10485760
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object btnPesquisar: TSpeedButton
          Left = 1
          Top = 1
          Width = 111
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnPesquisarClick
          ExplicitLeft = -4
          ExplicitTop = -2
        end
      end
      object pnlEtiqueta: TPanel
        Left = 344
        Top = 1
        Width = 113
        Height = 39
        Align = alRight
        Caption = 'Gerar Etiqueta'
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        object btnEtiqueta: TSpeedButton
          Left = 1
          Top = 1
          Width = 111
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnEtiquetaClick
          ExplicitLeft = 4
          ExplicitTop = -2
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 42
      Width = 343
      Height = 403
      Align = alLeft
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 341
        Height = 401
        Align = alClient
        DataSource = DM.dsMaq
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_maq'
            Title.Caption = 'C'#211'DIGO'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preventiva'
            Title.Caption = 'PREVENTIVA'
            Width = 114
            Visible = True
          end>
      end
    end
    object pnlMemo: TPanel
      Left = 342
      Top = 42
      Width = 343
      Height = 403
      Align = alRight
      TabOrder = 2
      object DBMemo1: TDBMemo
        Left = 1
        Top = 1
        Width = 341
        Height = 401
        Align = alClient
        DataField = 'observacao'
        DataSource = DM.dsMaq
        TabOrder = 0
      end
    end
  end
end
