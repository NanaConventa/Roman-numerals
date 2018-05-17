unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ActnList, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    Menu1_2: TMenuItem;
    MenuItem2: TMenuItem;
    Menu1_1: TMenuItem;
    Zapisz: TMenuItem;
    Znaleziono_Liczb: TLabel;
    Wyczysc: TButton;
    Lancuch: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Menu1_1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure WyczyscClick(Sender: TObject);
    procedure ZapiszClick(Sender: TObject);
  private
    { private declarations }
  public
  end;
var
  Form1: TForm1;
Jednosci, Dziesiatki, Setki :array [1..10] of string;
Tysiace :array [1..5] of string;
Wpisany_Lancuch :string;
Znaleziona_Liczba :string;
i, l, o, p,z :integer; {zmienne pomocnicze w potrzebnych petlach}
Sprawdzana_Liczba, k1 :string;  {Kombinacja znakow szukanych}
j :integer; {pos(), sprawdza istnienie, warunek}
Liczba_W_Systemie_Dziesietnym :integer; NAPIS_W_Systemie_Dziesietnym :string;
ilosc_znalezionych_liczb :integer; Ilosc_znalezionych_liczb_string :string;
plik :text;

{Generowanie --} Litera, Wyraz :string;

implementation
procedure kalkulator();
 begin
    j:=0;
    k1:=Sprawdzana_Liczba;
for o:=5 downto 1 do
begin
for p:=10 downto 1 do
begin
for i:=10 downto 1 do
begin
for l:=10 downto 1 do
begin
Sprawdzana_Liczba:=tysiace[o]+Setki[p]+Dziesiatki[i]+Jednosci[l];
if Sprawdzana_Liczba=k1 then
begin
j:= pos(Sprawdzana_Liczba, k1);
if j>0 then
begin
break;
end;
end;
end;
if j>0 then
begin
break;
end;
end;
if j>0 then
begin
break;
end;
end;
if j>0 then
begin
break;
end;
end;
Liczba_W_Systemie_Dziesietnym:=(o-1)*1000+(p-1)*100+(i-1)*10+l-1;
str(Liczba_W_Systemie_Dziesietnym, NAPIS_W_Systemie_Dziesietnym);
end;

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
Jednosci[2]:='I';
Jednosci[3]:='II';                  {Baza danych}
Jednosci[4]:='III';
Jednosci[5]:='IV';
Jednosci[6]:='V';
Jednosci[7]:='VI';
Jednosci[8]:='VII';
Jednosci[9]:='VIII';
Jednosci[10]:='IX';
Dziesiatki[2]:='X';
Dziesiatki[3]:='XX';
Dziesiatki[4]:='XXX';
Dziesiatki[5]:='XL';
Dziesiatki[6]:='L';
Dziesiatki[7]:='LX';
Dziesiatki[8]:='LXX';
Dziesiatki[9]:='LXXX';
Dziesiatki[10]:='XC';
Setki[2]:='C';
Setki[3]:='CC';
Setki[4]:='CCC';
Setki[5]:='CD';
Setki[6]:='D';
Setki[7]:='DC';
Setki[8]:='DCC';
Setki[9]:='DCCC';
Setki[10]:='CM';
tysiace[2]:='M';
tysiace[3]:='MM';
tysiace[4]:='MMM';
tysiace[5]:='MMMM';

Wpisany_Lancuch:=string(Lancuch.text);
ilosc_znalezionych_liczb:=0;

      for i:=2 to 10 do
      begin
      for l:=1 to 10 do
      begin
      Sprawdzana_Liczba:=Dziesiatki[i]+Jednosci[l];
      j:= pos(Sprawdzana_Liczba, Wpisany_Lancuch);
      if j>0 then
      begin
      Znaleziona_Liczba:='Znaleziono '+Sprawdzana_Liczba+' rowne ';
        kalkulator();
       ilosc_znalezionych_liczb:=ilosc_znalezionych_liczb+1;
       str(Ilosc_znalezionych_liczb, Ilosc_znalezionych_liczb_string);
       Znaleziona_Liczba:=Znaleziona_Liczba+NAPIS_W_Systemie_Dziesietnym;
       ListBox1.Items.Add(Znaleziona_Liczba);
       label2.caption:=ilosc_znalezionych_liczb_string;
       end;
       end;
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Jednosci[2]:='I';
Jednosci[3]:='II';                  {Baza danych}
Jednosci[4]:='III';
Jednosci[5]:='IV';
Jednosci[6]:='V';
Jednosci[7]:='VI';
Jednosci[8]:='VII';
Jednosci[9]:='VIII';
Jednosci[10]:='IX';
Dziesiatki[2]:='X';
Dziesiatki[3]:='XX';
Dziesiatki[4]:='XXX';
Dziesiatki[5]:='XL';
Dziesiatki[6]:='L';
Dziesiatki[7]:='LX';
Dziesiatki[8]:='LXX';
Dziesiatki[9]:='LXXX';
Dziesiatki[10]:='XC';
Setki[2]:='C';
Setki[3]:='CC';
Setki[4]:='CCC';
Setki[5]:='CD';
Setki[6]:='D';
Setki[7]:='DC';
Setki[8]:='DCC';
Setki[9]:='DCCC';
Setki[10]:='CM';
tysiace[2]:='M';
tysiace[3]:='MM';
tysiace[4]:='MMM';
tysiace[5]:='MMMM';

Wpisany_Lancuch:=string(Lancuch.text);
ilosc_znalezionych_liczb:=0;

      for p:=2 to 10 do
      begin
      for i:=1 to 10 do
      begin
      for l:=1 to 10 do
      begin
      Sprawdzana_Liczba:=setki[p]+Dziesiatki[i]+Jednosci[l];
      j:= pos(Sprawdzana_Liczba, Wpisany_Lancuch);
      if j>0 then
      begin
      Znaleziona_Liczba:='Znaleziono '+Sprawdzana_Liczba+' rowne ';
        kalkulator();
       ilosc_znalezionych_liczb:=ilosc_znalezionych_liczb+1;
       str(Ilosc_znalezionych_liczb, Ilosc_znalezionych_liczb_string);
       Znaleziona_Liczba:=Znaleziona_Liczba+NAPIS_W_Systemie_Dziesietnym;
       ListBox1.Items.Add(Znaleziona_Liczba);
       label2.caption:=ilosc_znalezionych_liczb_string;
       end;
       end;
      end;
      end;
      end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Jednosci[2]:='I';
Jednosci[3]:='II';                  {Baza danych}
Jednosci[4]:='III';
Jednosci[5]:='IV';
Jednosci[6]:='V';
Jednosci[7]:='VI';
Jednosci[8]:='VII';
Jednosci[9]:='VIII';
Jednosci[10]:='IX';
Dziesiatki[2]:='X';
Dziesiatki[3]:='XX';
Dziesiatki[4]:='XXX';
Dziesiatki[5]:='XL';
Dziesiatki[6]:='L';
Dziesiatki[7]:='LX';
Dziesiatki[8]:='LXX';
Dziesiatki[9]:='LXXX';
Dziesiatki[10]:='XC';
Setki[2]:='C';
Setki[3]:='CC';
Setki[4]:='CCC';
Setki[5]:='CD';
Setki[6]:='D';
Setki[7]:='DC';
Setki[8]:='DCC';
Setki[9]:='DCCC';
Setki[10]:='CM';
tysiace[2]:='M';
tysiace[3]:='MM';
tysiace[4]:='MMM';
tysiace[5]:='MMMM';

Wpisany_Lancuch:=string(Lancuch.text);
ilosc_znalezionych_liczb:=0;
      for o:=2 to 5 do
      begin
      for p:=1 to 10 do
      begin
      for i:=1 to 10 do
      begin
      for l:=1 to 10 do
      begin
      Sprawdzana_Liczba:=tysiace[o]+setki[p]+Dziesiatki[i]+Jednosci[l];
      j:= pos(Sprawdzana_Liczba, Wpisany_Lancuch);
      if j>0 then
      begin
      Znaleziona_Liczba:='Znaleziono '+Sprawdzana_Liczba+' rowne ';
        kalkulator();
       ilosc_znalezionych_liczb:=ilosc_znalezionych_liczb+1;
       str(Ilosc_znalezionych_liczb, Ilosc_znalezionych_liczb_string);
       Znaleziona_Liczba:=Znaleziona_Liczba+NAPIS_W_Systemie_Dziesietnym;
       ListBox1.Items.Add(Znaleziona_Liczba);
       label2.caption:=ilosc_znalezionych_liczb_string;
       end;
       end;
      end;
      end;
      end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
wyraz:='';
randomize;
j:=1+random(11);
for i:=1 to j do
begin
        z:=1+random(7);
        case (z) of
        1: litera:='I';
        2: litera:='V';
        3: litera:='X';
        4: litera:='L';
        5: litera:='C';
        6: litera:='D';
        7: litera:='M';
        end;
        wyraz:=wyraz+litera;
        end;
        lancuch.text:=wyraz;
        end;



procedure TForm1.Menu1_1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  halt;
end;

procedure TForm1.WyczyscClick(Sender: TObject);
begin
for i:=1 to 100 do
ListBox1.Items.Delete(0);
label2.caption:='0';
end;

procedure TForm1.ZapiszClick(Sender: TObject);
begin
Wpisany_Lancuch:=string(Lancuch.text);
assignFile(plik, 'Zapisane.txt');
rewrite(plik);
writeln(plik, Wpisany_Lancuch);
closeFile(plik);
end;

end.



