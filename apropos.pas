unit apropos;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ShellApi;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Comments: TLabel;
    procedure CommentsClick(Sender: TObject);
    procedure CommentsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CommentsMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.CommentsClick(Sender: TObject);
begin
ShellExecute (handle,'Open', 'mailto:armag17@yahoo.fr','','',SW_SHOWNORMAL);
end;

procedure TAboutBox.CommentsMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
Comments.Font.Style:=[fsBold,fsItalic,fsUnderline];
Comments.Font.Color:=clBlue;
end;

procedure TAboutBox.CommentsMouseLeave(Sender: TObject);
begin
Comments.Font.Style:=[fsBold];
Comments.Font.Color:=clSilver;
end;

end.
 
