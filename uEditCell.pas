unit uEditCell;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, Db, DBTables;

type
  TfEditCell = class(TForm)
    ToolBar1: TToolBar;
    btnWrite: TToolButton;
    btnCancel: TToolButton;
    Panel1: TPanel;
    eValue: TDBEdit;
    DBText1: TDBText;
    Panel2: TPanel;
    tNorms: TTable;
    tNormsDate: TDateField;
    tNormsCodeVipusk: TIntegerField;
    tNormsCodeIngrid: TIntegerField;
    tNormsNorma: TFloatField;
    tValues: TTable;
    tValuesDate: TDateField;
    tValuesAct: TFloatField;
    tValuesCodeIngrid: TIntegerField;
    tValuesValue: TFloatField;
    tIngrids: TTable;
    tIngridsCodeIngrid: TAutoIncField;
    tIngridsIngrid: TStringField;
    procedure btnWriteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    MyTypeValue : Integer;
    MyAct : Double;
    MyDate : TDate;
  public
    { Public declarations }
  end;

implementation

uses uDm, uSostav;

{$R *.DFM}

procedure TfEditCell.btnWriteClick(Sender: TObject);
begin
  fSostav.tTemp1.Post;
  tIngrids.FindKey([DBText1.Field.Value]);
  if MyTypeValue = 0 then       // Сохраняем норму
  begin
    if tNorms.FindKey([MyDate, fDm.tVipuskCode.Value, tIngridsCodeIngrid.Value]) then
    begin
      tNorms.Edit;
      tNormsNorma.Value := eValue.Field.Value;
      tNorms.Post;
    end
    else
    begin
      tNorms.Insert;
      tNormsDate.Value := MyDate;
      tNormsCodeVipusk.Value := fDm.tVipuskCode.Value;
      tNormsCodeIngrid.Value := tIngridsCodeIngrid.Value;
      tNormsNorma.Value := eValue.Field.Value;
      tNorms.Post;
    end;
  end
  else
  begin                        // Сохраняем значение отбора
    if tValues.FindKey([MyDate, MyAct, tIngridsCodeIngrid.Value]) then
    begin
      tValues.Edit;
      tValuesValue.Value := eValue.Field.Value;
      tValues.Post;
    end;
  end;
  Close
end;

procedure TfEditCell.btnCancelClick(Sender: TObject);
begin
  fSostav.tTemp1.Cancel;
  Close
end;

procedure TfEditCell.FormCreate(Sender: TObject);
begin
  fSostav.tTemp2.First;
  while not fSostav.tTemp2.Eof do
  begin
    if StrToDate(fSostav.Grid.Columns[fSostav.Grid.SelectedIndex].Title.Caption) =
       fSostav.tTemp2Data.Value then
    begin
      if fSostav.tTemp2Type.Value = 0 then
      begin
        Panel2.Caption := 'Значение нормы за '+DateToStr(fSostav.tTemp2Data.Value);
        MyDate := fSostav.tTemp2Data.Value;
        MyTypeValue := 0;
      end
      else
      begin
        Panel2.Caption := 'Значение отбора за '+DateToStr(fSostav.tTemp2Data.Value);
        MyAct := fSostav.tTemp2Act.Value;
        MyDate := fSostav.tTemp2Data.Value;
        MyTypeValue := 1;
      end;
      break;
    end;
    fSostav.tTemp2.Next;
  end;
  fSostav.tTemp1.Edit;
  eValue.DataField := fSostav.Grid.SelectedField.FieldName;
end;

procedure TfEditCell.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then
    case Key of
      VK_RETURN : begin Key := 0; btnWriteClick(nil); end;
      VK_ESCAPE : begin Key := 0; btnCancelClick(nil); end;
    end;
end;

end.
