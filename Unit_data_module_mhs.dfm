object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 191
  Top = 125
  Height = 185
  Width = 308
  object con_conn_mhs: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=db_mhs_uty;Data Source=LK3NO23\SQLEXPRE' +
      'SS;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=LK3NO23;Use Encryption for Data=False;Tag wit' +
      'h column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 32
  end
  object tbl_daf_mhs: TADOTable
    CursorType = ctStatic
    TableName = 'daftar_mahasiswa'
    Left = 208
    Top = 32
  end
  object qry_input_mhs: TADOQuery
    Parameters = <>
    Left = 120
    Top = 32
  end
end
