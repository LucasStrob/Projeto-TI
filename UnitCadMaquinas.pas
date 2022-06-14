unit UnitCadMaquinas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.XPMan;

type
  TFormCadMaq = class(TForm)
    pnlFull: TPanel;
    pnlTOP: TPanel;
    pnlExit: TPanel;
    btnFechar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    edID: TEdit;
    cbSETOR: TComboBox;
    edLIDER: TEdit;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    Image4: TImage;
    mOBS: TMemo;
    lblCodigo: TLabel;
    lblSetor: TLabel;
    Label3: TLabel;
    lblObs: TLabel;
    pnlGerar: TPanel;
    btnGerar: TSpeedButton;
    XPManifest1: TXPManifest;
    pnlGerarData: TPanel;
    btnGerarData: TSpeedButton;
    edData: TEdit;
    Label1: TLabel;
    cbTipo: TComboBox;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edIDChange(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnGerarDataClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  id : string;
  max : integer;
  cod_maq : string;

  end;

var
  FormCadMaq: TFormCadMaq;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitDashBoard, UnitDM;

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


procedure TFormCadMaq.btnFecharClick(Sender: TObject);
begin
  close;
end;

//---------------------------GERADOR DE CÓDIGO----------------------------------
procedure TFormCadMaq.btnGerarClick(Sender: TObject);
begin
var
  i:integer;
const
  str='1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  max:=8;
  begin
  Randomize;
  edID.Text:='HPC';
  for i:=1 to max do
  begin
    edID.Text := edID.Text+str[random(length(str))+1];

  end;
  end;
end;
//------------------------------------------------------------------------------

//----------------------------GERA A DATA---------------------------------------
procedure TFormCadMaq.btnGerarDataClick(Sender: TObject);
var
vData : Tdate;

begin
 vData := date();
 edData.Text := (DateToStr(vData));
end;
//-----------------------------------------------------------------------------

//--------------------VERIFICA E SALVA O CADASTRO-------------------------------
procedure TFormCadMaq.btnSalvarClick(Sender: TObject);
begin
 if edID.Text = '' then    //VERIFICAÇÃO
 begin
  ShowMessage ('O campo CÓDIGO não pode ser vázio');
  exit;
 end
 else if cbSETOR.Text = '' then
 begin
  ShowMessage ('O campo SETOR não pode ser vázio');
  exit;
 end
 else if edLIDER.Text = '' then
 begin
  ShowMessage ('O campo LIDER não pode ser vázio');
  exit;
 end
 else if edData.text = '' then
 begin
   ShowMessage ('O campo DATA não pode ser Vázio');
   exit;
 end
 else if cbTIPO.text = '' then
 begin
   ShowMessage ('O campo TIPO não pode ser Vázio');
   exit;
 end;

 with DM.qMaq do          //SALVA O CADASTRO
 begin
   close;
   if id <> '' then
   begin
            sql.text := 'UPDATE maquinas SET lider = '        +QuotedStr(edLIDER.Text) +
                                          ', setor = '        +QuotedStr(cbSETOR.Text) +
                                          ', observacao = '   +QuotedStr(mOBS.Text)    +
                                          ', cod_maq = '      +QuotedStr(edID.Text)    +
                                          ', cad_data = '     +QuotedStr(edData.text)  +
                                          ', tipo = '        +QuotedStr(cbTipo.Text)   +
                                          ' WHERE id = '      +id;
   end
   else
   begin
     sql.text := 'INSERT INTO maquinas (lider, setor, observacao, cod_maq, cad_data, tipo) VALUES ('+
                                                  QuotedStr(edLIDER.Text)+
                                            ', '                         +
                                                  QuotedStr(cbSETOR.Text)+
                                            ', '                         +
                                                  QuotedStr(mOBS.Text)   +
                                            ', '                         +
                                                  QuotedStr(edID.Text)   +
                                            ', '                         +
                                                  QuotedStr(edData.Text) +
                                            ', '                         +
                                                  QuotedStr(cbTipo.Text) +
                                                                      ')'
   end;
   execSQL;
   showmessage('Máquina Cadastrada com sucesso!');
   exit;

 end;
end;

procedure TFormCadMaq.edIDChange(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------



//-------------------------------SET ESTILO-------------------------------------
procedure TFormCadMaq.FormShow(Sender: TObject);
begin
 makeRounded (pnlSalvar);
 makeRounded (pnlExit);
 makeRounded (pnlTOP);
 makerounded (pnlGerar);
 makerounded (pnlGerarData);
end;
//------------------------------------------------------------------------------


end.
