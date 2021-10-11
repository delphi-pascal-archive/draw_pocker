unit Aide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
 Form2.Close;
end;

procedure TForm2.TabControl1Change(Sender: TObject);
begin
 Memo1.Visible:=not Memo1.Visible;
 Memo2.Visible:=not Memo2.Visible
end;

end.
