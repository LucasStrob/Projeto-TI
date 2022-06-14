unit UnitNoteBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormNoteBook = class(TForm)
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlMenu: TPanel;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlEsquerda: TPanel;
    pnlDireita: TPanel;
    lblSetor: TLabel;
    cbSetorNotebook: TComboBox;
    pnlLista: TPanel;
    DBGrid1: TDBGrid;
    pnlPesquisar: TPanel;
    btnPesquisar: TSpeedButton;
    pnlRelatorio: TPanel;
    btnRelatorio: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PegaDados;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:string;
  end;

var
  FormNoteBook: TFormNoteBook;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormNoteBook.btnFecharClick(Sender: TObject);
begin
  close;
end;

//---------------------------ESTILO ARREDONDADO---------------------------------
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


procedure TFormNoteBook.btnPesquisarClick(Sender: TObject);
begin
	if cbSetorNotebook.text = '' then
	begin
	    ShowMessage ('Selecione um Setor');
	    exit;
	end
	else if cbSetorNotebook.Text <> '' then
	begin
	    with dm.qMaq do
	    begin
		    close;
		    sql.text := 'select * from maquinas where setor = '+ QuotedStr(cbSetorNotebook.Text)+
                                                          'AND tipo =  ''NoteBook''';
        open;
	    end;
	end;
end;


procedure TFormNoteBook.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFormNoteBook.FormShow(Sender: TObject);
begin
  makerounded(pnlFechar);
  makerounded(pnlTop);
  makerounded(pnlPesquisar);
  makerounded(pnlRelatorio);
  PegaDados;
end;


//-------------------------------PEGA DADOS-------------------------------------
procedure TFormNoteBook.PegaDados;
begin
   with dm.qMaq do
   begin
     close;
     sql.Text := 'SELECT * FROM maquinas WHERE tipo = ''NoteBook''';
     open;
   end;

end;



end.
