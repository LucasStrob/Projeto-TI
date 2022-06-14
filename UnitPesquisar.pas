unit UnitPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormPesquisar = class(TForm)
    pnlFull: TPanel;
    pnlTopo: TPanel;
    pnlEdit: TPanel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    Panel1: TPanel;
    pnlMemo: TPanel;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    pnlAtualizar: TPanel;
    btnAtualizar: TSpeedButton;
    pnlPesquisar: TPanel;
    btnPesquisar: TSpeedButton;
    pnlEtiqueta: TPanel;
    btnEtiqueta: TSpeedButton;
    edPesquisar: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pegadados;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisar: TFormPesquisar;

implementation

{$R *.dfm}

uses UnitDM, UnitEtiqueta, UnitPrincipal;
//------------------------------------------------------------------------------
//-----------------------DEFININDO ESTILO ARREDONDADO---------------------------
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
//------------------------------------------------------------------------------
//------------------------VERIFICA PAGINA ABERTA--------------------------------
procedure TFormPesquisar.btnEtiquetaClick(Sender: TObject);
begin
  if FormEtiqueta.Visible then
  begin
    showmessage('A LISTA está aberta');
    exit;
  end
  else
  begin
    FormEtiqueta             :=   TFormEtiqueta.Create(self);
    FormEtiqueta.BorderStyle :=   bsSingle;
    FormEtiqueta.Show
  end;

end;

procedure TFormPesquisar.btnFecharClick(Sender: TObject);
begin
 close;
end;
//------------------------------------------------------------------------------
//--------------------------------PEGA DADOS------------------------------------
procedure TFormPesquisar.PegaDados;
begin
  close;
  with dm.qMaq do
  begin
    close;
    sql.text := 'SELECT * FROM maquinas';
    open;
    FormPesquisar.Show;
  end;
end;
//------------------------------------------------------------------------------

procedure TFormPesquisar.btnAtualizarClick(Sender: TObject);
begin
 pegaDados;
end;

//----------------------------BOTÃO PESQUISAR-----------------------------------
procedure TFormPesquisar.btnPesquisarClick(Sender: TObject);
begin
  if edPesquisar.Text <> '' then
  begin
     dm.qMaq.locate('cod_maq', edPesquisar.text,[loPartialKey]);
  end
  else
  begin
    ShowMessage('Insira o Código da Maquina');
    exit;
  end;
end;
//------------------------------------------------------------------------------


//-------------------------APLICANDO ZEBRA NO GRID------------------------------
procedure TFormPesquisar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not (gdSelected in State) then
  begin
    if Odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color:= clWhite
    else
      (Sender as TDBGrid).Canvas.Brush.Color:= $00F1F2F3; // leve cinza

    // Aplicando preto para a cor da fonte
    (Sender as TDBGrid).Canvas.Font.Color:= clBlack;

    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.TextOut(Rect.Left + 2, Rect.Top,
    Column.Field.DisplayText);
  end;
end;
//------------------------------------------------------------------------------


procedure TFormPesquisar.FormShow(Sender: TObject);
begin
 makerounded(pnlFechar);
 makerounded(pnlTopo);
 makerounded(pnlAtualizar);
 makerounded(pnlPesquisar);
 makerounded(pnlEdit);
 makerounded(pnlEtiqueta);

end;
end.
