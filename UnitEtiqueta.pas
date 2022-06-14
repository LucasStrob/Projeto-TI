unit UnitEtiqueta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFormEtiqueta = class(TForm)
    pnlFull: TPanel;
    pnlTamanho: TPanel;
    pnlTop: TPanel;
    pnlBotao: TPanel;
    btnImprimir: TSpeedButton;
    pnlLogo: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtiqueta: TFormEtiqueta;

implementation

{$R *.dfm}

uses UnitDM, UnitPesquisar;
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

procedure TFormEtiqueta.FormShow(Sender: TObject);
begin
  makerounded(pnlTop);
 makerounded(pnlBotao);
end;

end.
