unit Draw_Pocker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ImgList, Menus, IniFiles;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Quitter1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    ImageList1: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Nouvellepartie1: TMenuItem;
    N1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Aide1: TMenuItem;
    Aide2: TMenuItem;
    N2: TMenuItem;
    Apropos1: TMenuItem;
    Panel8: TPanel;
    Image6: TImage;
    Image7: TImage;
    Button2: TButton;
    Button3: TButton;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Label1: TLabel;
    Image12: TImage;
    Image13: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Image14: TImage;
    Label24: TLabel;
    Label25: TLabel;
    Image15: TImage;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel11: TPanel;
    Image4: TImage;
    Panel12: TPanel;
    Image5: TImage;
    Chargerunepartie1: TMenuItem;
    Enregistrerlapartie1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Nouvellepartie1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Apropos1Click(Sender: TObject);
    procedure Aide2Click(Sender: TObject);
    procedure Enregistrerlapartie1Click(Sender: TObject);
    procedure Chargerunepartie1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  nbcoup,mise,credit,cartetud:integer;
  index1,index2,index3,index4,index5:integer;
  carte:array[0..4] of integer;
  perdu:boolean;
implementation

uses apropos, Aide, sur, eff, quit;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var i,j,coeff:integer;

function SuiteCouleurAs():boolean;
      var cartesrangees:array[0..4] of integer;
          i,j,k:integer;
          echange:boolean;
      begin
      result:=true;
         for i:= 0 to 4 do
         cartesrangees[i]:=carte[i];

         echange:=true;
         j:=4;
         while (j>=1) and echange do
                begin
                echange:=false;
                for i:=0 to j-1 do
                if cartesrangees[i]>cartesrangees[i+1] then
                   begin
                   k:=cartesrangees[i];
                   cartesrangees[i]:=cartesrangees[i+1];
                   cartesrangees[i+1]:=k;
                   echange:=true;
                   end;
                j:=j-1;
                end;

         for i:=0 to 3 do
            if (cartesrangees[i+1]-cartesrangees[i]=1) and result then result:=true
            else result:=false;

         if not((cartesrangees[4]-12) mod 13 =0) then result:=false;

      end;





      function SuiteCouleur():boolean;
      var cartesrangees:array[0..4] of integer;
          i,j,k:integer;
          echange:boolean;
      begin
      result:=true;
         for i:= 0 to 4 do
         cartesrangees[i]:=carte[i];

         echange:=true;
         j:=4;
         while (j>=1) and echange do
                begin
                echange:=false;
                for i:=0 to j-1 do
                if cartesrangees[i]>cartesrangees[i+1] then
                   begin
                   k:=cartesrangees[i];
                   cartesrangees[i]:=cartesrangees[i+1];
                   cartesrangees[i+1]:=k;
                   echange:=true;
                   end;
                j:=j-1;
                end;

         for i:=0 to 3 do
            if (cartesrangees[i+1]-cartesrangees[i]=1) and result then result:=true
            else result:=false;

      end;


      function Suite():boolean;
      var cartesrangees:array[0..4] of integer;
          i,j,k:integer;
          echange:boolean;
      begin
      result:=true;
         for i:= 0 to 4 do
         cartesrangees[i]:=carte[i];

         for i:=0 to 4 do
         cartesrangees[i]:=cartesrangees[i]-13*(cartesrangees[i] div 13)+1;

         echange:=true;
         j:=4;
         while (j>=1) and echange do
                begin
                echange:=false;
                for i:=0 to j-1 do
                if cartesrangees[i]>cartesrangees[i+1] then
                   begin
                   k:=cartesrangees[i];
                   cartesrangees[i]:=cartesrangees[i+1];
                   cartesrangees[i+1]:=k;
                   echange:=true;
                   end;
                j:=j-1;
                end;

         for i:=0 to 3 do
            if (cartesrangees[i+1]-cartesrangees[i]=1) and result then result:=true
            else result:=false;
         end;



      function Couleur():boolean;
      var i,j:integer;
      begin
      result:=true;

         for i:=0 to 3 do
         if (carte[0]>=13*i)and (carte[0]<13*i+13) then j:=i;


         for i:=1 to 4 do
            if not(((carte[i]>=13*j)and(carte[i]<13*j+13)) and result) then
             result:=false;

      end;


      function Carre():boolean;
      var i,j,k,l,m,n,o,p,q:INTEGER;
      begin
      result:=false;
      for l:=0 to 12 do
      for k:=0 to 3 do
      for m:=0 to 3 do
      if carte[k]=l+13*m then
        begin
        for j:=k+1 to 4 do
        for i:=0 to 3 do
           if carte[j]=l+13*i then
                begin
                        for n:=j+1 to 4 do
                        for o:=0 to 3 do
                        if carte[n]=l+13*o then
                                begin
                                        for p:=n+1 to 4 do
                                        for q:=0 to 3 do
                                        if carte[p]=l+13*q then result:=true;
                               end;
        end;
        end;

      end;



      function Brelan(var cartetud:integer):boolean;
      var i,j,k,l,m,n,o:INTEGER;
      begin
      result:=false;
      for l:=0 to 12 do
      for k:=0 to 3 do
      for m:=0 to 3 do
      if carte[k]=l+13*m then
        begin
        for j:=k+1 to 4 do
        for i:=0 to 3 do
           if carte[j]=l+13*i then
                begin
                        for n:=j+1 to 4 do
                        for o:=0 to 3 do
                        if carte[n]=l+13*o then begin result:=true;cartetud:=l;end;

        end;
        end;
        
      end;


      function DeuxPaires():boolean;
      var i,j,k,l,m,nbpaire:INTEGER;
      begin
      nbpaire:=0;
      result:=false;
      for l:=0 to 12 do
      for k:=0 to 3 do
      for m:=0 to 3 do
      if carte[k]=l+13*m then
        begin
        for j:=k+1 to 4 do
        for i:=0 to 3 do
           if carte[j]=l+13*i then nbpaire:=nbpaire+1;
        end;

        if nbpaire=2 then result:=true;
      end;



      function Paire():boolean;
      var i,j,k,l,m:INTEGER;
      begin
      result:=false;
      for l:=9 to 12 do
      for k:=0 to 3 do
      for m:=0 to 3 do
      if carte[k]=l+13*m then
        begin
        for j:=k+1 to 4 do
        for i:=0 to 3 do
           if carte[j]=l+13*i then result:=true;
        end;
      end;

      function PaireSimple():boolean;
      var i,j,k,l,m:INTEGER;
          bool:boolean;
      begin
      result:=false;
      bool:=Brelan(cartetud);
      for l:=0 to 12 do
      for k:=0 to 3 do
      for m:=0 to 3 do
      if carte[k]=l+13*m then
        begin
        for j:=k+1 to 4 do
        for i:=0 to 3 do
           if (carte[j]=l+13*i) and (l<>cartetud) and bool then result:=true;
        end;
      end;

begin
if not perdu then
begin
Label25.Caption:='';

if nbcoup=2 then
begin
 Image1.Visible:=True;
 Image2.Visible:=True;
 Image3.Visible:=True;
 Image4.Visible:=True;
 Image5.Visible:=True;
end;

if nbcoup mod 2 = 0 then
begin
Label1.Caption:='';
Label2.Caption:='';
Label3.Caption:='';
Label4.Caption:='';
Label5.Caption:='';
Label24.Caption:='';
credit:=credit-mise;
Panel3.Caption:=IntToStr(credit);
end;

if label1.Caption='' then
begin
index1:=Random(51);
ImageList1.GetBitmap(index1,Image1.Picture.Bitmap);
end;

if label2.Caption='' then
begin
index2:=Random(51);
while index2=index1 do index2:=Random(51);
ImageList1.GetBitmap(index2,Image2.Picture.Bitmap);
end;

if label3.Caption='' then
begin
index3:=Random(51);
while (index3=index1) or (index3=index2) do index3:=Random(51);
ImageList1.GetBitmap(index3,Image3.Picture.Bitmap);
end;

if label4.Caption='' then
begin
index4:=Random(51);
while (index4=index1) or (index4=index2) or (index4=index3) do index4:=Random(51);
ImageList1.GetBitmap(index4,Image4.Picture.Bitmap);
end;

if label5.Caption='' then
begin
index5:=Random(51);
while (index5=index1) or (index5=index2) or (index5=index3) or (index5=index4) do index5:=Random(51);
ImageList1.GetBitmap(index5,Image5.Picture.Bitmap);
end;

carte[0]:=index1;
carte[1]:=index2;
carte[2]:=index3;
carte[3]:=index4;
carte[4]:=index5;



coeff:=0;
if Paire then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=1;
 Label24.Caption:='JACKS OR BETTER';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='JACKS OR BETTER';
 Label24.Caption:='';
 end;
end;

if DeuxPaires then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=2;
 Label24.Caption:='TWO PAIR';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='TWO PAIR';
 Label24.Caption:='';
 end;
end;

if Brelan(cartetud) then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=3;
 Label24.Caption:='THREE OF A KIND';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='THREE OF A KIND';
 Label24.Caption:='';
 end;
end;


if Couleur then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=4;
 Label24.Caption:='STRAIGHT';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='STRAIGHT';
 Label24.Caption:='';
 end;
end;


if Suite then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=6;
 Label24.Caption:='FLUSH';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='FLUSH';
 Label24.Caption:='';
 end;
end;


if (Brelan(cartetud) and PaireSimple) then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=9;
 Label24.Caption:='FULLHOUSE';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='FULLHOUSE';
 Label24.Caption:='';
 end;
end;


if Carre then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=25;
 Label24.Caption:='FOUR OF A KIND';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='FOUR OF A KIND';
 Label24.Caption:='';
 end;
end;


if SuiteCouleur then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 coeff:=50;
 Label24.Caption:='STRAIGHT FLUSH';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='STRAIGHT FLUSH';
 Label24.Caption:='';
 end;
end;


if SuiteCouleurAs then
begin
 if not(nbcoup mod 2 = 0) then
 begin
 if mise<5 then coeff:=250;
 if mise=5 then coeff:=800;
 Label24.Caption:='ROYAL FLUSH';
 Label25.Caption:='';
 end;
 if nbcoup mod 2 = 0 then
 begin
 Label25.Caption:='ROYAL FLUSH';
 Label24.Caption:='';
 end;
end;


if (coeff=0) and not(nbcoup mod 2 = 0) then
   Label24.Caption:='Vous avez perdu !!!';

credit:=credit+coeff*mise;
Panel3.Caption:=IntToStr(credit);




Image1.Refresh;
Image2.Refresh;
Image3.Refresh;
Image4.Refresh;
Image5.Refresh;

inc(nbcoup);

if (credit<=0) and (nbcoup mod 2 = 0) then
perdu:=true;

if (mise>credit) and (nbcoup mod 2 = 0) then begin mise:=1;panel4.Caption:=IntToStr(mise);Button2Click(nil);end;

end
else
 begin
 Label24.Caption:='Partie terminée';
 Label25.Caption:='Crédit épuisé';

end;



end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  perdu:=false;
  Randomize();
  nbcoup:=2;
  mise:=1;
  credit:=100;
  Panel3.Caption:='100';
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
if nbcoup mod 2 <> 0 then
  begin
  if Label1.Caption='' then
  Label1.Caption:='HELD'
  else Label1.Caption:='';
  end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
if nbcoup mod 2 <> 0 then
  begin
  if Label2.Caption='' then
  Label2.Caption:='HELD'
  else Label2.Caption:='';
  end;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
if nbcoup mod 2 <> 0 then
  begin
  if Label3.Caption='' then
  Label3.Caption:='HELD'
  else Label3.Caption:='';
  end;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
if nbcoup mod 2 <> 0 then
  begin
  if Label4.Caption='' then
  Label4.Caption:='HELD'
  else Label4.Caption:='';
  end;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
if nbcoup mod 2 <> 0 then
  begin
  if Label5.Caption='' then
  Label5.Caption:='HELD'
  else Label5.Caption:='';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if nbcoup mod 2= 0 then
begin
if mise<5 then inc(mise)
else mise:=1;
if mise>credit then mise:=1;
Panel4.Caption:=IntToStr(mise);

if mise<5 then Label15.Caption:=FloatToStr(250*mise);
 if mise=5 then Label15.Caption:='4000';
 Label16.Caption:=FloatToStr(50*mise);
 Label17.Caption:=FloatToStr(25*mise);
 Label18.Caption:=FloatToStr(9*mise);
 Label19.Caption:=FloatToStr(6*mise);
 Label20.Caption:=FloatToStr(4*mise);
 Label21.Caption:=FloatToStr(3*mise);
 Label22.Caption:=FloatToStr(2*mise);
 Label23.Caption:=FloatToStr(mise);
end;

end;

procedure TForm1.Quitter1Click(Sender: TObject);
begin
 OKBottomDlg2.Showmodal;
 Application.Terminate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

if nbcoup mod 2=0 then
begin
 mise:=5;
 if mise>credit then mise:=1;
 Panel4.Caption:=IntToStr(mise);
 if mise<5 then Label15.Caption:=FloatToStr(250*mise);
 if mise=5 then Label15.Caption:='4000';
 Label16.Caption:=FloatToStr(50*mise);
 Label17.Caption:=FloatToStr(25*mise);
 Label18.Caption:=FloatToStr(9*mise);
 Label19.Caption:=FloatToStr(6*mise);
 Label20.Caption:=FloatToStr(4*mise);
 Label21.Caption:=FloatToStr(3*mise);
 Label22.Caption:=FloatToStr(2*mise);
 Label23.Caption:=FloatToStr(mise);
end;
end;

procedure TForm1.Image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image6.Visible:=False;
  Image7.Visible:=True;
end;

procedure TForm1.Image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image6.Visible:=True;
  Image7.Visible:=False;
end;

procedure TForm1.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image8.Visible:=False;
Image9.Visible:=True;
end;

procedure TForm1.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Image9.Visible:=False;
Image8.Visible:=True;
end;

procedure TForm1.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image11.Visible:=False;
   Image10.Visible:=True;
end;

procedure TForm1.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image10.Visible:=False;
   Image11.Visible:=True;
end;

procedure TForm1.Image13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image13.Visible:=False;
   Image12.Visible:=True;
end;

procedure TForm1.Image13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Image12.Visible:=False;
   Image13.Visible:=True;
end;

procedure TForm1.Nouvellepartie1Click(Sender: TObject);
begin
perdu:=false;
credit:=100;
mise:=1;
nbcoup:=2;
Panel3.Caption:='100';
Panel4.Caption:='1';
 Label15.Caption:='250';
 Label16.Caption:=FloatToStr(50);
 Label17.Caption:=FloatToStr(25);
 Label18.Caption:=FloatToStr(9);
 Label19.Caption:=FloatToStr(6);
 Label20.Caption:=FloatToStr(4);
 Label21.Caption:=FloatToStr(3);
 Label22.Caption:=FloatToStr(2);
 Label23.Caption:=FloatToStr(1);

 Image1.Visible:=False;
 Image2.Visible:=False;
 Image3.Visible:=False;
 Image4.Visible:=False;
 Image5.Visible:=False;

 Label1.Caption:='';
Label2.Caption:='';
Label3.Caption:='';
Label4.Caption:='';
Label5.Caption:='';
Label24.Caption:='';
Label25.Caption:='';

end;
procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1Click(nil);
if ord(key)=112 then Button3Click(nil);
if ord(key)=111 then Button2Click(nil);
if ord(key)=38 then Image1Click(nil);
if ord(key)=233 then Image2Click(nil);
if ord(key)=34 then Image3Click(nil);
if ord(key)=39 then Image4Click(nil);
if ord(key)=40 then Image5Click(nil);
end;

procedure TForm1.Apropos1Click(Sender: TObject);
begin
AboutBox.ShowModal;
end;

procedure TForm1.Aide2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.Enregistrerlapartie1Click(Sender: TObject);
Var FichierIni : TIniFile;
begin
if not quite then begin OKBottomDlg1.ShowModal;end;
if effac then
begin
FichierIni:=TIniFile.Create('rnEeitraP.ini');
FichierIni.WriteInteger('Preference','credit',credit);
FichierIni.WriteInteger('Preference','mise',mise);
FichierIni.Free;
end;
end;

procedure TForm1.Chargerunepartie1Click(Sender: TObject);
 Var FichierIni : TIniFile;
begin


OKBottomDlg.ShowModal;

if quitpartie then
begin
 FichierIni:=TIniFile.Create('rnEeitraP.ini');
if (FichierIni.ReadString('Preference','credit','')<>'') or (FichierIni.ReadString('Preference','mise','')<>'') then
begin
credit:=StrToInt(FichierIni.ReadString('Preference','credit',''));
Panel3.Caption:=IntToStr(credit);
mise:=StrToInt(FichierIni.ReadString('Preference','mise',''));
Panel4.Caption:=IntToStr(mise);

if mise<5 then Label15.Caption:=FloatToStr(250*mise);
 if mise=5 then Label15.Caption:='4000';
 Label16.Caption:=FloatToStr(50*mise);
 Label17.Caption:=FloatToStr(25*mise);
 Label18.Caption:=FloatToStr(9*mise);
 Label19.Caption:=FloatToStr(6*mise);
 Label20.Caption:=FloatToStr(4*mise);
 Label21.Caption:=FloatToStr(3*mise);
 Label22.Caption:=FloatToStr(2*mise);
 Label23.Caption:=FloatToStr(mise);
 perdu:=false;
 nbcoup:=2;
 Image1.Visible:=False;
 Image2.Visible:=False;
 Image3.Visible:=False;
 Image4.Visible:=False;
 Image5.Visible:=False;

 Label1.Caption:='';
Label2.Caption:='';
Label3.Caption:='';
Label4.Caption:='';
Label5.Caption:='';
Label24.Caption:='';
Label25.Caption:='';
FichierIni.Free;
end
else Showmessage('Aucune partie sauvegardée.');
end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Quitter1Click(nil);
end;

end.
