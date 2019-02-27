program Project_form_mhs;

uses
  Forms,
  unit_form_mhs in 'unit_form_mhs.pas' {Form1},
  Unit_data_module_mhs in 'Unit_data_module_mhs.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
