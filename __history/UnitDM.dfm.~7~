object DM: TDM
  OldCreateOrder = False
  Height = 626
  Width = 863
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sql;Persist Security Info=True;User' +
      ' ID=sa;Initial Catalog=principal;Data Source=(local);Use Procedu' +
      're for Prepare=1;Auto Translate=True;Packet Size=4096;Workstatio' +
      'n ID=DESKTOP-1SBDJKS;Use Encryption for Data=False;Tag with colu' +
      'mn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 200
    Top = 200
  end
  object dsMaq: TDataSource
    DataSet = qMaq
    Left = 288
    Top = 272
  end
  object qMaq: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM maquinas')
    Left = 288
    Top = 200
    object qMaqid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qMaqsetor: TStringField
      FieldName = 'setor'
      Size = 50
    end
    object qMaqlider: TStringField
      FieldName = 'lider'
      Size = 30
    end
    object qMaqtipo: TStringField
      FieldName = 'tipo'
      Size = 15
    end
    object qMaqcad_data: TStringField
      FieldName = 'cad_data'
      Size = 30
    end
    object qMaqpreventiva: TStringField
      FieldName = 'preventiva'
      Size = 3
    end
    object qMaqcod_maq: TStringField
      FieldName = 'cod_maq'
      Size = 50
    end
    object qMaqobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
  end
  object qNot: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select setor from maquinas')
    Left = 408
    Top = 200
    object qNotsetor: TStringField
      FieldName = 'setor'
      Size = 50
    end
  end
  object dsNot: TDataSource
    DataSet = qNot
    Left = 408
    Top = 272
  end
end
