unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    FILE1: TMenuItem;
    MASTERDATA1: TMenuItem;
    DATAPOINT1: TMenuItem;
    DATAUSER1: TMenuItem;
    LAPORAN1: TMenuItem;
    LAPORANDATAPELANGGARAN1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    procedure DATAPOINT1Click(Sender: TObject);
    procedure DATAUSER1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1,Uuser;

{$R *.dfm}

procedure TForm2.DATAPOINT1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TForm2.DATAUSER1Click(Sender: TObject);
begin
  Fuser.ShowModal;
end;

procedure TForm2.LOGOUT1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
