unit Unit_data_module_mhs;

interface

uses
  SysUtils, Classes, ADODB, DB,Dialogs;

type
  TDataModule1 = class(TDataModule)
    con_conn_mhs: TADOConnection;
    tbl_daf_mhs: TADOTable;
    qry_input_mhs: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);

var NamaFile,svr,dbku,hos,pss,CS,InScur,pass:String;
    List:TStringList;
begin
  try
    NamaFile:='koneksi';
    NamaFile:= ChangeFileExt(NamaFile,'.ini');
    List:=TStringList.Create;
    try
      List.NameValueSeparator:=':';
        try
          List.LoadFromFile(NamaFile);
          svr:=List.Values['SVR'];
          dbku:=List.Values['DB'];
          hos:=List.Values['ID'];
      if hos='' then
      begin
        hos:='sa';
        InScur:='Integrated Security=SSPI';
      end
      else
      begin
        hos:=hos;
        InScur:='Integrated Security=';
      end;
      pss:=List.Values['PAS'];
      if pss='' then pass:=List.Values['PAS'];
      CS:='Provider=SQLOLEDB.1;Password='+pss+';'+InScur+';Persist Security Info=true;User ID='+hos+';;Initial Catalog='+dbku+';Data Source='+svr+';';
      Except
      end;
    finally
    List.Free;
    end;
    DataModule1.con_conn_mhs.connected:=false;
    DataModule1.con_conn_mhs.LoginPrompt:=False;
    DataModule1.con_conn_mhs.isolationLevel:=ilReadCommitted;
    DataModule1.con_conn_mhs.ConnectionString:=CS;
    DataModule1.con_conn_mhs.connected:=true;
    ShowMessage('koneksi database berhasil');
    Except
    ShowMessage('koneksi database gagal');
    end;
end;

end.
