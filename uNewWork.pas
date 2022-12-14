unit uNewWork;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls, Mask, Db,
  DBTables;

type
  TfNewWork = class(TForm)
    ToolBar1               : TToolBar;
    btnOk                  : TToolButton;
    btnCancel              : TToolButton;
    Panel1                 : TPanel;
    Panel2                 : TPanel;
    ToolBar2               : TToolBar;
    btnAdd                 : TToolButton;
    btnEdit                : TToolButton;
    btnDelete              : TToolButton;
    grVipusk               : TDBGrid;
    Label1                 : TLabel;
    Label2                 : TLabel;
    DBRadioGroup1          : TDBRadioGroup;
    DBEdit1                : TDBEdit;
    DBLookupComboBox1      : TDBLookupComboBox;
    tTempVipusks           : TTable;
    dsTemVipusk            : TDataSource;
    tTempVipusksCode       : TAutoIncField;
    tTempVipusksCodeVipusk : TIntegerField;
    tTempVipusksWorks      : TStringField;
    tTempVipusksAddress    : TStringField;
    tTempVipusksOtbor      : TStringField;

    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDm, uConvert;

{$R *.DFM}

procedure TfNewWork.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfNewWork.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfNewWork.FormCreate(Sender: TObject);
begin
//
// ??????? ????????? ??????? ??? ????????
//
  tTempVipusks.DatabaseName := ExtractFilePath(ParamStr(0));
// ??????? ????
  tTempVipusks.FieldDefs.Clear;
  tTempVipusks.FieldDefs.Add('Code',       ftAutoInc,  0, True);
  tTempVipusks.FieldDefs.Add('CodeVipusk', ftInteger,  0, True);
  tTempVipusks.FieldDefs.Add('Works',      ftString, 100, False);
  tTempVipusks.FieldDefs.Add('Address',    ftString, 100, False);
  tTempVipusks.FieldDefs.Add('Otbor',      ftString,  30, False);
// ??????? ???????
  tTempVipusks.IndexDefs.Clear;
  tTempVipusks.IndexDefs.Add('',        'Code',  [ixPrimary, ixUnique]);
  tTempVipusks.IndexDefs.Add('IVipusk', 'Otbor', [ixCaseInsensitive]);
// ??????? ???????
  tTempVipusks.CreateTable;
  tTempVipusks.IndexFieldNames := 'Otbor';
  tTempVipusks.Open;
  if fDm.TypeEdit = 1 then  // ???? ??????????????
  begin
    fDm.tVipusk.First;
    while not fDm.tVipusk.Eof do
    begin
      tTempVipusks.Insert;
      tTempVipusksCodeVipusk.Value := fDm.tVipuskCode.Value;
      tTempVipusksWorks.Value      := fDm.tVipuskWorks.Value;
      tTempVipusksAddress.Value    := fDm.tVipuskAddress.Value;
      tTempVipusksOtbor.Value      := fDm.tVipuskOtbor.Value;
      tTempVipusks.Post;
      fDm.tVipusk.Next;
    end;
  end;
end;

end.
