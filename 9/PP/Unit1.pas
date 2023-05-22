unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, jpeg, ExtCtrls, Menus;

type
  TUser = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  User: TUser;

implementation

uses Unit5, Unit6, Unit3, Unit7, Unit8, Unit2, Unit12, Unit18;

{$R *.dfm}

procedure TUser.Button1Click(Sender: TObject);
begin
Tema1.Showmodal;
end;

procedure TUser.Button4Click(Sender: TObject);
begin
DM.tblpolzovatel.Edit;
Reg.ShowModal;
end;

procedure TUser.Button2Click(Sender: TObject);
begin
zadachi.Showmodal;
end;

procedure TUser.Button6Click(Sender: TObject);
begin
Tema2.Showmodal;
end;

procedure TUser.N4Click(Sender: TObject);
begin
DM.tblpolzovatel.Edit;
Reg.ShowModal;
end;

procedure TUser.Button3Click(Sender: TObject);
begin
test.Showmodal;

end;

procedure TUser.Button5Click(Sender: TObject);
begin
calc.Showmodal;
end;

procedure TUser.N2Click(Sender: TObject);
begin
User.Close;
end;

end.
