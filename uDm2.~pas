unit uDm2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TfDm2 = class(TDataModule)
    tVipusks: TTable;
    tWorks: TTable;
    tLocalVolumes: TTable;
    tLocalVolumesCode: TAutoIncField;
    tLocalVolumesCodeVipusk: TIntegerField;
    tLocalVolumesChangeYear: TIntegerField;
    tLocalVolumesChangeNorms: TDateField;
    tLocalVolumesChangeGrouppa: TDateField;
    tLocalVolumesCancelTarif: TDateField;
    tLocalVolumesMonth: TIntegerField;
    tLocalVolumesDaysToMonth: TIntegerField;
    tLocalVolumesV_Month: TFloatField;
    tLocalVolumesV_Day: TFloatField;
    tLocalVolumesDate1: TDateField;
    tLocalVolumesDate2: TDateField;
    tLocalVolumesDays: TIntegerField;
    tLocalVolumesV: TFloatField;
    tLocalVolumesLimitDay: TFloatField;
    tLocalVolumesLimit: TFloatField;
    tLocalVolumesWorksLimit: TFloatField;
    tLocalVolumesWorksPhakt: TFloatField;
    tLocalVolumesVipuskVolume: TFloatField;
    tVipusksCode: TAutoIncField;
    tVipusksCodeWorks: TIntegerField;
    tVipusksCodeLab: TFloatField;
    tVipusksWorks: TStringField;
    tVipusksAddress: TStringField;
    tVipusksOtbor: TStringField;
    tVipusksPH_Min: TFloatField;
    tVipusksPH_Max: TFloatField;
    tWorksCode: TAutoIncField;
    tWorksCodeArea: TFloatField;
    tWorksWorks: TStringField;
    tWorksBereg: TBooleanField;
    tWorksSchet: TBooleanField;
    tWorksPlatNumber: TStringField;
    tWorksGruppa: TIntegerField;
    tWorksPH_Min: TFloatField;
    tWorksPH_Max: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TfDm2.DataModuleCreate(Sender: TObject);
begin
  tLocalVolumes.EmptyTable;
  tLocalVolumes.Open;
end;

end.
