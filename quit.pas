unit quit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TOKBottomDlg2 = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  OKBottomDlg2: TOKBottomDlg2;
  quite:boolean;
implementation

uses Draw_Pocker,eff;

{$R *.dfm}

procedure TOKBottomDlg2.OKBtnClick(Sender: TObject);
begin
effac:=true;
OKBottomDlg2.Close;
quite:=true;
Form1.Enregistrerlapartie1Click(nil);
end;

procedure TOKBottomDlg2.CancelBtnClick(Sender: TObject);
begin
quite:=false;
OKBottomDlg2.Close;
end;

procedure TOKBottomDlg2.FormActivate(Sender: TObject);
begin
beep;
end;

end.
