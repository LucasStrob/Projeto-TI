unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    pnlFull: TPanel;
    pnlMenu: TPanel;
    Panel1: TPanel;
    pnlPrincipal: TPanel;
    btnDashBoard: TSpeedButton;
    btnCadastro: TSpeedButton;
    btnContato: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    PCs1: TMenuItem;
    Desktop1: TMenuItem;
    pnlContato: TPanel;
    pnlCadastro: TPanel;
    pnlDashBoard: TPanel;
    procedure btnCadastroClick(Sender: TObject);
    procedure btnDashBoardClick(Sender: TObject);
    procedure btnContatoClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure PCs1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadMaquinas, UnitDashBoard, UnitDM, UnitPesquisar, UnitDesktop,
  UnitEtiqueta, UnitNoteBook;

//---------------------VERIFICA E CRIA OS FORMULÁRIOS---------------------------

//FORMULÁRIO PESQUISAR
procedure TFormPrincipal.btnContatoClick(Sender: TObject);
begin
  if FormPesquisar.Visible then
  begin
    showmessage('A janela PESQUISAR está aberta');
    exit;
  end
  else
  begin
    FormPesquisar             :=   TFormPesquisar.Create(self);
    FormPesquisar.Parent      :=   pnlPrincipal;
    FormPesquisar.align       :=   alClient;
    FormPesquisar.BorderStyle :=   bsSingle;
    FormPesquisar.Show
  end;

end;

//FORMULÁRIO LISTA
procedure TFormPrincipal.btnDashBoardClick(Sender: TObject);
begin
  if FormDashBoard.Visible then
  begin
    showmessage('A LISTA está aberta');
    exit;
  end
  else
  begin
    FormDashBoard             :=   TFormDashBoard.Create(self);
    FormDashBoard.Parent      :=   pnlPrincipal;
    FormDashBoard.align       :=   alClient;
    FormDashBoard.BorderStyle :=   bsSingle;
    FormDashBoard.Show
  end;
end;




procedure TFormPrincipal.PCs1Click(Sender: TObject);
begin
  if FormNoteBook.Visible then
  begin
    showmessage('O Controle de Notebooks já esta aberto!');
    exit;
  end
  else
  begin
    FormNoteBook             :=   TFormNoteBook.Create(self);
    FormNoteBook.Parent      :=   pnlPrincipal;
    FormNoteBook.align       :=   alClient;
    FormNoteBook.BorderStyle :=   bsSingle;
    FormNoteBook.Show
  end;
end;

procedure TFormPrincipal.Sair2Click(Sender: TObject);
begin

end;

//FORMULÁRIO CADASTRO
procedure TFormPrincipal.btnCadastroClick(Sender: TObject);
begin

  if FormCadMaq.Visible then
  begin
    showmessage('O Cadastro está aberto');
    exit;
  end
  else
  begin
    FormCadMaq             :=   TFormCadMaq.Create(self);
    FormCadMaq.Parent      :=   pnlPrincipal;
    FormCadMaq.align       :=   alClient;
    FormCadMaq.BorderStyle :=   bsSingle;
    FormCadMaq.Show
  end;
end;
//------------------------------------------------------------------------------

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

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
 makerounded(pnlCadastro);
 makerounded(pnlDashBoard);
 makerounded(pnlContato);
end;

end.
