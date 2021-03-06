unit UnitDashBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls;

type
  TFormDashBoard = class(TForm)
    pnlCheio: TPanel;
    pnlTopo: TPanel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    pnlAtualizar: TPanel;
    btnAtualizar: TSpeedButton;
    pnlEditar: TPanel;
    btnEditar: TSpeedButton;
    Label1: TLabel;
    pnlExcluir: TPanel;
    btnExcluir: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PegaDados;
    procedure btnAtualizarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEditarClick(Sender: TObject);
    procedure pnlTopoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:string;
  end;

var
  FormDashBoard: TFormDashBoard;

implementation

{$R *.dfm}

uses UnitDM, UnitCadMaquinas;

//----------------------------ARREDONDA AS BORDAS-------------------------------
procedure MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
with Control do
  begin
  R := ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
  Perform(EM_GETRECT, 0, lParam(@r));
  InflateRect(r, - 5, - 5);
  Perform(EM_SETRECTNP, 0, lParam(@r));
  SetWindowRgn(Handle, rgn, True);
  Invalidate;
  end;
end;

procedure TFormDashBoard.FormShow(Sender: TObject);
begin
  makerounded(pnlFechar);
  makerounded(pnlTopo);
  makerounded(pnlAtualizar);
  makerounded(pnlEditar);
  makerounded(pnlExcluir);
end;

//--------------------BOT?ES ATUALIZAR E FECHAR---------------------------------
procedure TFormDashBoard.btnAtualizarClick(Sender: TObject);

begin
  pegaDados;
end;







procedure TFormDashBoard.btnEditarClick(Sender: TObject);
begin
  with TFormCadMaq.Create(self) do
  begin
    dm.dsMaq.Edit;
    id := dm.qMaq.FieldByName('id').AsString;
    edID.Text := dm.qMaq.FieldByName('cod_maq').AsString;
    edLider.Text := dm.qMaq.FieldByName('lider').AsString;
    mOBS.Text := dm.qMaq.FieldByName('observacao').AsString;
    if ShowModal = mrOK then
    pegadados;
    end;
end;




//-------------------------------BOT?O EXCLUIR----------------------------------
procedure TFormDashBoard.btnExcluirClick(Sender: TObject);
begin
  with dm.qMaq do
  begin
   dm.dsMaq.DataSet.Delete;
  end;
  pegaDados;
end;
//------------------------------------------------------------------------------

//--------------------------------BOT?O FECHAR----------------------------------
procedure TFormDashBoard.btnFecharClick(Sender: TObject);
begin
  close;
end;
//------------------------------------------------------------------------------

//-------------------------------ZEBRAR DBGRID----------------------------------
procedure TFormDashBoard.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not (gdSelected in State) then
  begin
    if Odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color:= clWhite
    else
      (Sender as TDBGrid).Canvas.Brush.Color:= $00F1F2F3; // leve cinza

    // Aplicando prto para a cor da fonte
    (Sender as TDBGrid).Canvas.Font.Color:= clBlack;

    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.TextOut(Rect.Left + 2, Rect.Top,
    Column.Field.DisplayText);
  end;
end;

//------------------------------------------------------------------------------





//-------------------------------PEGA DADOS-------------------------------------
procedure TFormDashBoard.PegaDados;
begin
  close;
  with dm.qMaq do
  begin
    close;
    sql.text := 'SELECT * FROM maquinas';
    open;
    FormDashBoard.Show;
  end;
end;
procedure TFormDashBoard.pnlTopoClick(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
end.
