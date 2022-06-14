program ProjetoPcs;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadMaquinas in 'UnitCadMaquinas.pas' {FormCadMaq},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitDashBoard in 'UnitDashBoard.pas' {Form1},
  UnitPesquisar in 'UnitPesquisar.pas' {FormPesquisar},
  UnitEtiqueta in 'UnitEtiqueta.pas' {FormEtiqueta},
  UnitNoteBook in 'UnitNoteBook.pas' {FormNoteBook},
  UnitDesktop in 'UnitDesktop.pas' {FormDesktop};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadMaq, FormCadMaq);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormDashBoard, FormDashBoard);
  Application.CreateForm(TFormPesquisar, FormPesquisar);
  Application.CreateForm(TFormEtiqueta, FormEtiqueta);
  Application.CreateForm(TFormNoteBook, FormNoteBook);
  Application.CreateForm(TFormDesktop, FormDesktop);
  Application.Run;
end.
