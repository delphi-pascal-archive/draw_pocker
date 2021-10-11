unit eff;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TOKBottomDlg1 = class(TForm)
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
  OKBottomDlg1: TOKBottomDlg1;
  effac:boolean;
implementation

{$R *.dfm}

procedure TOKBottomDlg1.OKBtnClick(Sender: TObject);
begin
  effac:=true;
  OKBottomDlg1.Close;
end;

procedure TOKBottomDlg1.CancelBtnClick(Sender: TObject);
begin
  effac:=false;
  OKBottomDlg1.Close;
end;

end.
