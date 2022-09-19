unit uObied;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfObied = class(TForm)
    Panel1     : TPanel;
    Splitter1  : TSplitter;
    Panel2     : TPanel;
    Panel3     : TPanel;
    btnOk      : TBitBtn;
    btnCancel  : TBitBtn;
    grWorks    : TDBGrid;
    Splitter2  : TSplitter;
    grVipusks  : TDBGrid;
    lbWorks    : TListBox;
    Panel4     : TPanel;
    eNameWorks : TEdit;
    Splitter3  : TSplitter;
    lbVipusk   : TListBox;
    btnClear   : TSpeedButton;

    procedure grWorksDblClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure lbWorksDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    NumberItems : Integer;
    ArrayCodes  : array [1..10] of Integer;
  public
    { Public declarations }
  end;

implementation

uses uConvert, uDm;

{$R *.DFM}

procedure TfObied.grWorksDblClick(Sender: TObject);
begin
  lbWorks.Items.Add(fDm.tWorksWorks.Value);
  fDm.tVipusk.First;
  while not fDm.tVipusk.Eof do
  begin
    lbVipusk.Items.Add(fDm.tVipuskOtbor.Value);
    fDm.tVipusk.Next;
  end;
  Inc(NumberItems);
  ArrayCodes[NumberItems] := fDm.tWorksCode.Value;
end;

procedure TfObied.btnClearClick(Sender: TObject);
begin
  lbWorks.Items.Clear;
  lbVipusk.Items.Clear;
  eNameWorks.Text := '';
  NumberItems := 0;
end;

procedure TfObied.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfObied.btnOkClick(Sender: TObject);
var
  J : Integer;
  OldIndexWorks : String;
begin
  if Application.MessageBox('Вы уверены?', 'Объединение предприятий', MB_YESNO+MB_ICONQUESTION) = ID_NO then
    Exit;
// Объединяем
  if Length(eNameWorks.Text) = 0 then
  begin
    ShowMessage('Введите название объединеннного предприятия');
    Exit;
  end;
  OldIndexWorks := fDm.tWorks.IndexFieldNames;
  fDm.tWorks.IndexFieldNames := 'Code';
  try
    for J := 2 to NumberItems do
    begin
      if fDm.tWorks.FindKey([ArrayCodes[J]]) then
      begin
        fDm.tVipusk.First;
        while not fDm.tVipusk.Eof do
        begin
          fDm.tVipusk.Edit;
          fDm.tVipuskCodeWorks.Value := ArrayCodes[1];
          fDm.tVipusk.Post;
        end;
        fDm.tWorks.Delete;
      end;
    end;
    if fDm.tWorks.FindKey([ArrayCodes[1]]) then
    begin
      fDm.tWorks.Edit;
      fDm.tWorksWorks.Value := eNameWorks.Text;
      fDm.tWorks.Post;
    end;
  finally
    fDm.tWorks.IndexFieldNames := OldIndexWorks;
    btnClearClick(nil);
  end;
end;

procedure TfObied.lbWorksDblClick(Sender: TObject);
begin
  eNameWorks.Text := lbWorks.Items[lbWorks.ItemIndex];
end;

procedure TfObied.FormCreate(Sender: TObject);
begin
  NumberItems := 0;
end;

end.
