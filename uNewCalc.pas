unit uNewCalc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, uDm2;

type
  TfNewCalc = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dm : TfDm2;
    procedure FillVolumes;
    procedure SetRangeVipusks;
  public
    { Public declarations }
    OneVipusk : Boolean;
    procedure DoCalc;
  end;

implementation

uses uDm;

{$R *.DFM}

{ TfNewCalc }

procedure TfNewCalc.DoCalc;
begin
// ��������� ������, ���� ������ ������ ��� �������� �������
  SetRangeVipusks;
// ��������� ��������� ������� � �������� �������������
  FillVolumes;
end;

procedure TfNewCalc.FillVolumes;
begin
//
end;

procedure TfNewCalc.FormCreate(Sender: TObject);
begin
  dm := TfDm2.Create(nil);
end;

procedure TfNewCalc.FormDestroy(Sender: TObject);
begin
  dm.Free;
end;

procedure TfNewCalc.SetRangeVipusks;
begin
//
end;

end.
