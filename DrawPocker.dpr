program DrawPocker;

uses
  Forms,
  Draw_Pocker in 'Draw_Pocker.pas' {Form1},
  apropos in 'apropos.pas' {AboutBox},
  Aide in 'Aide.pas' {Form2},
  sur in 'sur.pas' {OKBottomDlg},
  eff in 'eff.pas' {OKBottomDlg1},
  quit in 'quit.pas' {OKBottomDlg2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TOKBottomDlg, OKBottomDlg);
  Application.CreateForm(TOKBottomDlg1, OKBottomDlg1);
  Application.CreateForm(TOKBottomDlg2, OKBottomDlg2);
  Application.Run;
end.
