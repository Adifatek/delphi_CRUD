unit Udatamodule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TDataModule2 = class(TDataModule)
    ZConnection1: TZConnection;
    Zpoint: TZQuery;
    Zuser: TZQuery;
    dsuser: TDataSource;
    dspoint: TDataSource;
    Zsiswa: TZQuery;
    dssiswa: TDataSource;
    frxpoint: TfrxReport;
    frxDBpoint: TfrxDBDataset;
    Zaktifitas: TZQuery;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
