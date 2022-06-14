unit UnitDesktop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFormDesktop = class(TForm)
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlMenu: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDesktop: TFormDesktop;

implementation

{$R *.dfm}

end.
