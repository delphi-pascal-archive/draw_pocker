unit sur;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TOKBottomDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKBottomDlg: TOKBottomDlg;
  quitpartie:boolean;
implementation

{$R *.dfm}

procedure TOKBottomDlg.OKBtnClick(Sender: TObject);
begin
 quitpartie:=true;
 OKBottomDlg.Close;
end;

procedure TOKBottomDlg.CancelBtnClick(Sender: TObject);
begin
 quitpartie:=false;
 OKBottomDlg.Close;
end;

end.
