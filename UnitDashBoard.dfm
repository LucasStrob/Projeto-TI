object FormDashBoard: TFormDashBoard
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
  object pnlCheio: TPanel
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlTopoClick
      object Label1: TLabel
        Left = 128
        Top = 10
        Width = 204
        Height = 19
        Caption = 'Vis'#227'o Geral de Cadastros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlFechar: TPanel
        Left = 568
        Top = 1
        Width = 115
        Height = 39
        Align = alRight
        Caption = 'Fechar'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnFechar: TSpeedButton
          Left = 1
          Top = 1
          Width = 113
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnFecharClick
          ExplicitLeft = 6
          ExplicitTop = -2
        end
      end
      object pnlAtualizar: TPanel
        Left = 1
        Top = 1
        Width = 115
        Height = 39
        Align = alLeft
        Caption = 'Atualizar'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btnAtualizar: TSpeedButton
          Left = 1
          Top = 1
          Width = 113
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnAtualizarClick
          ExplicitLeft = 8
          ExplicitTop = -2
        end
      end
      object pnlEditar: TPanel
        Left = 453
        Top = 1
        Width = 115
        Height = 39
        Align = alRight
        Caption = 'Editar'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object btnEditar: TSpeedButton
          Left = 1
          Top = 1
          Width = 113
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnEditarClick
          ExplicitLeft = -3
          ExplicitTop = -2
        end
      end
      object pnlExcluir: TPanel
        Left = 338
        Top = 1
        Width = 115
        Height = 39
        Align = alRight
        Caption = 'Excluir'
        Color = 4194432
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object btnExcluir: TSpeedButton
          Left = 1
          Top = 1
          Width = 113
          Height = 37
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          OnClick = btnExcluirClick
          ExplicitTop = -2
        end
      end
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 42
      Width = 684
      Height = 403
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 682
        Height = 401
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DM.dsMaq
        ReadOnly = True
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
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cod_maq'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'C'#211'DIGO'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Title.Caption = 'TIPO'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'setor'
            Title.Caption = 'SETOR'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lider'
            Title.Caption = 'RESPONS'#193'VEL'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cad_data'
            Title.Caption = 'DATA'
            Width = 150
            Visible = True
          end>
      end
    end
  end
end
