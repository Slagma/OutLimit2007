unit uNewNorma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ComCtrls, ToolWin, Grids, DBGrids;

type
  TfNewNorma = class(TForm)
    dsNewNorma            : TDataSource;
    DBGrid1               : TDBGrid;
    ToolBar1              : TToolBar;
    btnClose              : TToolButton;
    ToolButton2           : TToolButton;
    btnNew                : TToolButton;
    btnEdit               : TToolButton;
    btnDelete             : TToolButton;
    tNewNorma             : TTable;
    tNewNormaCode         : TAutoIncField;
    tNewNormaCode_I       : TIntegerField;
    tNewNormaNewNorma     : TFloatField;
    tNewNormaNewName      : TStringField;
    tNewNormaFactor       : TFloatField;
    tIngreds              : TTable;
    tIngredsCodeIngrid    : TAutoIncField;
    tIngredsIngrid        : TStringField;
    tIngredsLos           : TIntegerField;
    tIngredsPos           : TIntegerField;
    tIngredsNewCodeLab    : TFloatField;
    tIngredsKoefLOS       : TFloatField;
    tIngredsKoefPOS       : TFloatField;
    tIngredsNorma         : TFloatField;
    tIngredsToks          : TFloatField;
    tIngredsIsPH          : TBooleanField;
    tIngredsCodeLab       : TFloatField;
    tNewNormaIngrid       : TStringField;
    dsIngreds             : TDataSource;
    tNewNormaNewNormaLeft : TFloatField;
    tNewNormaNewName2: TStringField;

    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, uEditNewNorma;

{$R *.DFM}

procedure TfNewNorma.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfNewNorma.FormCreate(Sender: TObject);
begin
  tIngreds.Open;
  tNewNorma.Open;
end;

procedure TfNewNorma.btnNewClick(Sender: TObject);
var
  fNew : TfEditNewNorma;
begin
  fNew := TfEditNewNorma.Create(self);
  try
    tNewNorma.Insert;
    tNewNormaFactor.AsFloat := 1.0;
    if fNew.ShowModal = mrOk then
    begin
      try
        tNewNorma.Post;
      except on E : Exception do
        begin
          tNewNorma.Cancel;
          ShowMessage('ОШИБКА: ' + E.Message);
        end;
      end;
    end
    else
      tNewNorma.Cancel;
  finally
    fNew.Free;
  end;
end;

procedure TfNewNorma.btnEditClick(Sender: TObject);
var
  fEdit : TfEditNewNorma;
begin
  if tNewNorma.RecordCount = 0 then Exit;
  fEdit := TfEditNewNorma.Create(self);
  try
    fEdit.Caption := 'Редактирование нормы';
    tNewNorma.Edit;
    if fEdit.ShowModal = mrOk then
    begin
      try
        tNewNorma.Post;
      except on E : Exception do
        begin
          tNewNorma.Cancel;
          ShowMessage('ОШИБКА: ' + E.Message);
        end;
      end;
    end
    else
      tNewNorma.Cancel;
  finally
    fEdit.Free;
  end;
end;

procedure TfNewNorma.btnDeleteClick(Sender: TObject);
begin
  if (tNewNorma.RecordCount > 0) and (Application.MessageBox(PChar('Удалить ингредиент "' + tNewNormaIngrid.AsString + '"?'), 'Удаление ингредиента', MB_YESNO + MB_ICONQUESTION) = ID_YES) then
    tNewNorma.Delete;
end;

end.
