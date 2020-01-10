unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl4: TLabel;
    cbb1: TComboBox;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    cbb2: TComboBox;
    lbl3: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure angkaonly(Sender: TObject; var Key: Char);
    procedure hurufonly(Sender: TObject; var Key: Char);
    procedure defaultform;
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:string;

implementation
uses
  Udatamodule;
{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
 if cbb1.Text ='' then
 begin
    ShowMessage('JENIS POINT TIDAK BOLEH KOSONG!');
 end else
 if edt1.Text ='' then
 begin
    ShowMessage('NAMA POINT TIDAK BOLEH KOSONG!');
 end else
 if edt2.Text ='' then
 begin
    ShowMessage('NILAI POINT TIDAK BOLEH KOSONG!');
 end else
 if DataModule2.Zpoint.Locate('nama_point',edt1.Text,[]) then
 begin
    ShowMessage('DATA SUDAH ADA DIDALAM SISTEM!');
 end else
 begin
       with DataModule2.Zpoint do
       begin
         SQL.Clear;
         SQL.Add('insert into point values("''","'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+'Y'+'","'+'CREATE'+'",now(),1001,"'+'0000-00-00'+'",0)');
         ExecSQL;

         SQL.Clear;
         SQL.Add('select * from point');
         Open;
       end;
        defaultform;
       ShowMessage('DATA BERHASIL DISIMPAN!');
 end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
 if (cbb1.text='')or(edt1.Text='')or(edt2.Text='') then
 begin
   ShowMessage('SILAHKAN PILIH DATA TERLEBIH DAHULU!');
 end else
 if MessageDlg('APAKAH DATA INI AKAN DIHAPUS?',mtWarning,[mbYes,mbNo],0)=mrNo then
 begin
   ShowMessage('DATA BATAL DIHAPUS.!');
 end else
 begin
   with DataModule2.Zpoint do
   begin
     SQL.Clear;
     SQL.Add('delete from point where id_point="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from point');
     Open;
   end;
   defaultform;
   ShowMessage('DATA BERHASIL DIHAPUS.!');
 end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule2.Zpoint.Fields[1].AsString;
  edt2.Text:= DataModule2.Zpoint.Fields[2].AsString;
  cbb1.Text:= DataModule2.Zpoint.Fields[3].AsString;
  a:=DataModule2.Zpoint.Fields[0].AsString;

  edt1.Enabled:=True;
  edt2.Enabled:=True;
  btn5.Enabled:=False; //TAMBAH
  btn3.Enabled:=True; //EDIT
  btn2.Enabled:=True; //HAPUS
  btn4.Enabled:=True; //BATAL
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
   if ((cbb1.Text='')or(edt1.Text='')or(edt2.Text='')) then
   begin
       ShowMessage('DATA HARUS DIPILIH!');
   end else
   if DataModule2.Zpoint.Fields[1].AsString = edt1.Text then
   begin
      ShowMessage('DATA TIDAK ADA PRUBAHAN!');
   end else
   begin
    with DataModule2.Zpoint do
     begin
       SQL.Clear;
       SQL.Add('update point set nama_point="'+edt1.Text+'",nilai_point="'+edt2.text+'",jenis_point="'+cbb1.Text+'" where id_point="'+a+'"');
       ExecSQL;

       SQL.Clear;
       SQL.Add('select * from point');
       Open;
     end;
     defaultform;
     ShowMessage('DATA BERHASIL DIUPDATE!');
   end;
end;

procedure TForm1.angkaonly(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8,#13,#32]) then
 begin
 key:=#0;
 //ShowMessage('INPUTAN HANYA ANGKA');
 end;
end;

procedure TForm1.hurufonly(Sender: TObject; var Key: Char);
begin
if not (key in['a'..'z','A'..'Z',#8,#13,#32]) then
 begin
 key:=#0;
 //showmessage('INPUTAN HANYA HURUF');
 end;
end;

procedure TForm1.defaultform;
begin
 cbb1.Text:='';
 edt1.Clear;
 edt2.Clear;
 cbb1.Enabled:=False;
 edt1.Enabled:=False;
 edt2.Enabled:=False;
 btn5.Enabled:=True; //TAMBAH
 btn1.Enabled:=False; //SIMPAN
 btn3.Enabled:=False; //EDIT
 btn2.Enabled:=False; //HAPUS
 btn4.Enabled:=False; //BATAL
end;

procedure TForm1.FormShow(Sender: TObject);
begin
defaultform;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 cbb1.Enabled:=True;
 edt1.Enabled:=True;
 edt2.Enabled:=True;
 btn5.Enabled:=FALSE; //TAMBAH
 btn1.Enabled:=True; //SIMPAN
 btn4.Enabled:=True; //BATAL
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
defaultform;
end;

procedure TForm1.cbb2Change(Sender: TObject);
begin
with DataModule2.Zpoint do
begin
  SQL.Clear;
  SQL.Add('select * from point where jenis_point="'+cbb2.Text+'"');
  Open;
end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
DataModule2.frxpoint.ShowReport(); //panggil cetak laporan point
end;

end.
