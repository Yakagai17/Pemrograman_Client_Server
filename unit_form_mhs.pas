unit unit_form_mhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl_header: TPanel;
    pnl_form: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn_insert: TButton;
    btn_update: TButton;
    btn_delete: TButton;
    btn_view: TButton;
    edt_nim: TEdit;
    edt_nama: TEdit;
    pnl_view_mhs: TPanel;
    dbgrd_list_mhs: TDBGrid;
    cbb_prodi: TComboBox;
    cbb_kelas: TComboBox;
    cbb_jk: TComboBox;
    ds_mhs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btn_insertClick(Sender: TObject);
    procedure btn_viewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses Unit_data_module_mhs;
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
//  try
//    ado_conn_mhs.LoginPrompt:=false;
//    ado_conn_mhs.Connected:=false;
//    ado_conn_mhs.ConnectionString:=
//      'Provider=SQLOLEDB.1;Integrated Security=SSPI;'+
//      'Persist Security Info=False;Initial Catalog=db_mhs_uty;'+
//      'Data Source=LK3NO23\SQLEXPRESS';
//    ado_conn_mhs.Connected:=True;
//    ShowMessage('Connection to Database Success !');
//    except
//      ShowMessage('Connection to Database failed !');
//  end;
//end;


end;


procedure TForm1.btn_insertClick(Sender: TObject);
begin
   with DataModule1.qry_input_mhs do
begin
Active:=False;
Close;
SQL.Clear;
SQL.Text:='insert into daftar_mahasiswa values('+QuotedStr(edt_nama.Text)+','
+QuotedStr(edt_nim.Text)+','
+QuotedStr(cbb_prodi.Text)+','
+QuotedStr(cbb_kelas.Text)+','
+QuotedStr(cbb_jk.Text)+')';
ExecSQL;
end;
end;

procedure TForm1.btn_viewClick(Sender: TObject);
begin
//  DataModule1.dbgrd_list_mhs.DataSource:=ds_mhs;
//  ds_mhs.DataSet:=DataModule1.tbl_daf_mhs;
//  DataModule1.tbl_daf_mhs.Connection:=DataModule1.con_conn_mhs;
//  DataModule1.tbl_daf_mhs.Active:=False;
//  DataModule1.tbl_daf_mhs.Close;
//  DataModule1.tbl_daf_mhs.TableName:='daftar_mahasiswa';
//  DataModule1.tbl_daf_mhs.Active:=True;

dbgrd_list_mhs.DataSource:=ds_mhs;
ds_mhs.DataSet:=DataModule1.qry_input_mhs;
DataModule1.qry_input_mhs.Connection:=DataModule1.con_conn_mhs;
with DataModule1.qry_input_mhs do
  begin
    Active:=False;
    Close;
    SQL.Clear;
    SQL.Text:='select * from daftar_mahasiswa';
    Active:=True;
  end;  

end;

end.
