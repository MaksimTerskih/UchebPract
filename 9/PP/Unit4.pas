unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, jpeg, Menus,
  Buttons;

type
  TAdmin = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DBGrid1: TDBGrid;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    N9: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Admin: TAdmin;

implementation

uses Unit1, Unit2, Unit3, Unit11, Unit6, Unit15, Unit10, Unit19;

{$R *.dfm}

procedure TAdmin.N1Click(Sender: TObject);
begin
  TestTopic.Showmodal;
end;

procedure TAdmin.N6Click(Sender: TObject);
begin
Reg.Panel1.top:=16;
Reg.Panel1.left:=16;
DM.tblpolzovatel.Insert;
Reg.Panel1.Visible:=True;
Reg.Showmodal;


end;

procedure TAdmin.N7Click(Sender: TObject);
begin
if DM.tblpolzovatel.Fields.Fields[8].AsBoolean =True then
  begin
  Reg.label4.Visible:=False;
  REG.DBLookupComboBox1.Visible:=False;
  reg.BitBtn2.Visible:=False;
  end;
if DM.tblpolzovatel.Fields.Fields[8].AsBoolean =False then
  begin
  Reg.label4.Visible:=true;
  reg.DBLookupComboBox1.Visible:=true;
  reg.BitBtn2.Visible:=true;
  end;
DM.tblpolzovatel.Edit;
Reg.Panel1.Visible:=False;
Reg.Showmodal;
end;

procedure TAdmin.N2Click(Sender: TObject);
begin
Dm.Z_stud.Active:=true;
students.Showmodal;

end;

procedure TAdmin.BitBtn1Click(Sender: TObject);
begin
  DM.tblrezultat.Sort:='������';
end;

procedure TAdmin.DBLookupComboBox1Click(Sender: TObject);
begin
  DM.tblrezultat.Filtered:=False;
  DM.tblrezultat.Filter:='id_������ ='''+IntToStr(DBLookupComboBox1.KeyValue)+'''';
  DM.tblrezultat.Filtered:=True;
end;

procedure TAdmin.N8Click(Sender: TObject);
begin
Admin.Close;
end;

procedure TAdmin.BitBtn3Click(Sender: TObject);
begin
students.Close;

end;

procedure TAdmin.N9Click(Sender: TObject);
begin
Calendar.ShowModal;
end;

procedure TAdmin.BitBtn2Click(Sender: TObject);
begin
  DM.tblgruppa.Filtered:=False;
  DM.tblgruppa.Filter:='';
  DM.tblgruppa.Filtered:=True;
end;

procedure TAdmin.N3Click(Sender: TObject);
begin
 Otchet_rez.QuickRep1.Previewmodal;
end;

end.
