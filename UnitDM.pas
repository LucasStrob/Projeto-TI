unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    conexao: TADOConnection;
    dsMaq: TDataSource;
    qMaq: TADOQuery;
    qMaqid: TAutoIncField;
    qMaqsetor: TStringField;
    qMaqlider: TStringField;
    qMaqcad_data: TStringField;
    qMaqpreventiva: TStringField;
    qMaqcod_maq: TStringField;
    qMaqobservacao: TMemoField;
    qMaqtipo: TStringField;
    qNot: TADOQuery;
    dsNot: TDataSource;
    qNotsetor: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
