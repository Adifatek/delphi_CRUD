program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Udatamodule in 'Udatamodule.pas' {DataModule2: TDataModule},
  Umenu in 'Umenu.pas' {Form2},
  Uuser in 'Uuser.pas' {Fuser},
  Usiswa in 'Usiswa.pas' {Fsiswa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFuser, Fuser);
  Application.CreateForm(TFsiswa, Fsiswa);
  Application.Run;
end.
