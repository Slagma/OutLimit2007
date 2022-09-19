{
TExDBGrid Version 2.6

Copyright (©) 1999 & 2000 by GJL Software
Updated 8th May 2000 (08/05/2000)

Email:         ExDBGrid@gjl-software.co.uk
Home Page:     http://www.gjl-software.co.uk

Description:   ExDBGrid is an Enhanced DBGrid Component that has plenty of new
               features:

               It has the following new Public Properties and Procedures:
               Canvas, Col, Row, FixedCols, FixedRows, TopRow, SelectedRows,
               DataLink, ColCount, RowCount, ColWidths, GridLineWidth,
               InplaceEdit, TitleOffset, OnColumnResize, OptWidth (making the
               'Grid' automatically size itself so that no white space is left
               at the right), VisibleRowCount, VisibleColCount, GridHeight,
               GridWidth, LeftCol, ExportGrid, ExportToFile, GridPreview,
               DataSetPreview, SaveToRegistry and LoadFromRegistry.

               It has the following new Published Properties:
               ScrollBars, EditColor, DefaultRowHeight, RowSizingAllowed,
               DisplayImages, DisplayMemo, DisplayBoolean, GridAutoSize
               (making the columns automatically resize so that they are as wide
               as the row with the widest entry), GridAutoWidth (making the
               columns automatically resize so that no white space is left at
               the right), FullSizeMemo, Cells3D (when False, the Grid has a
               Flat look and feel - also the 3D Cells can be any color),
               CellHints (when True and Columns are not wide enough for the
               DisplayText, moving the mouse over a cell shows the text in a
               hint window), RowColor1, RowColor2, UseRowColors (using the
               properties RowColor1 and RowColor2), MultiLineTitles, TitleCheck
               (which places a marker in the top left of the grid and enables
               the grid popup menu when clicked), BackgroundPicture,
               UseBackgroundPicture, ExportDelimiter, AllowAutoAppend,
               DrawFocusRect, EnterAsTab, HighlightColor, ImageHighlightColor,
               HighlightFontColor, ReportCaption, HotTrack, HotTrackColor,
               LockedCols, LockedFont, LockedColor, FlatCheckBox,
               FlatCheckBoxType, MemoViewType, RegistrySaveName,
               ShowTextEllipsis, ShowTitleEllipsis, MultiLineRows, LinesPerRow,
               DisplayDateTime, SearchMode (when True, clicking on the column
               titles will display a search box for the column - Case Sensitive),
               ExMenuOptions and ScrollHints.

               It has the following new Methods:
               MoveToRow and CellRect (which is extremely useful if you want to
               drop other controls on the grid i.e. pop a dropdown list over a
               cell when the user enters it).

               It has the following new Events:
               OnColumnResize, OnMouseDown, OnMouseUp, OnMouseMove, OnColEnter,
               OnRightClick and OnApplyCellAttribute (useful when you want to
               change the colour of an individual cell, based on the value in
               that cell or some other particular condition).

               In addition, it also has the following Features:
               Design Time and Run Time viewing of images, including JPEG
               support, Flat look and feel, Grid Printing, Grid Exporting,
               Enhanced Scrollbar Tracking, Selecting and UnSelecting all
               records, Column Customizing and Drag and Drop implementation.

               It also has popup viewers and Inplace Editors for Graphic/Memo
               and Date/Time Fields. To use these and the Checkbox, simply click
               on the Fields or use the Spacebar, F2 or Enter Keys.

*PLEASE NOTE*  Before making any bug reports please first verify you are
               using the latest version by checking my home page. And if
               you do report a bug, please, if applicable, include a code
               sample.

               Any suggested enhancements would also be appreciated.

Notes:         I cannot support modified versions of this code. So if you
               encounter a possible bug while using a modified version,
               always first revert back to the original code before making
               an attempt to contact me.

Thanks To:     Del Geist -           Mail: drgeist@ris.net
               Alberto Doria -       Mail: adoria@arsed.it
               Sergey Pjatakov -     Mail: psg@slav.ucom.dp.ua
               Martin Sedlak -       Mail: sedma@pobox.sk
               Jim Story -           Mail: jhstory@compuserve.com
               Pierre du Parte -     Mail: pierre@finalfiler.com
               Timothy Kelly -       Mail: tmk198@ecs.soton.ac.uk
               M.Bicak -             Mail: m.b@okay.net
               J.P. -                Mail: pcl-software@clix.pt

This notice may not be removed from or altered in any source distribution.

You are free to use the ExDBGrid Component Suite in compiled form for any
purpose. However, use in commercial or shareware applications requires
registration (see the Registration Documentation for information).

GJL Software products in source code or object form (including but not limited
to .PAS, .DCU, .OBJ), in whole or in part, modified or unmodified, may not be
redistributed for profit or as part of another commercial or shareware software
package without express written permission from me.

This component is provided 'as-is', without any express or implied warranty.
In no event shall the author be held liable for any damages arising from the
use of this component.
}

unit ExDBGrid;

interface

uses
    ShellAPI, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Grids, DBGrids, DB, DBTables, BDE, StdCtrls, ClipBrd, Menus, dbctrls, UnitReport, Jpeg,
    extctrls, Registry, ExDateTimePicker, comctrls;

type
    TCellAttribute = procedure(Sender: TObject; Field: TField; Canvas: TCanvas; State: TGridDrawState) of object;

    TExportDelimiter = (Pipe, Comma, Quote);
    TFlatCheckBoxType = (Normal, Bold);
    TMemoViewType = (WordWrapOn, ScrollBarsOn);

    TExMenuOptions = set of (exAutoSize, exAutoWidth, exDisplayBoolean,
        exDisplayImages, exDisplayMemo, exDisplayDateTime, exShowTextEllipsis,
        exShowTitleEllipsis, exFullSizeMemo, exAllowRowSizing,
        exCellHints, exMultiLineTitles, exUseRowColors, exPrintGrid,
        exPrintDataSet, exExportGrid, exSelectAll, exUnSelectAll,
        exCustomize, exSearchMode);

    TExDBGrid = class(TDBGrid)
    private
        FNewDefaultRowHeight: Integer;
        FRowSizingAllowed: Boolean;
        FOnApplyCellAttribute: TCellAttribute;
        FOnMouseDown: TMouseEvent;
        FOnMouseUp: TMouseEvent;
        FOnMouseMove: TMouseMoveEvent;
        FOnColEnter: TNotifyEvent;
        FRowHeight: Integer;
        FDisplayImages: Boolean;
        FDisplayMemo: Boolean;
        FDisplayBool: Boolean;
        FDisplayDateTime: Boolean;
        FGridAutoSize: Boolean;
        FGridAutoWidth: Boolean;
        FOnRightClick: TNotifyEvent;
        FFullSizeMemo: Boolean;
        FCells3D: Boolean;
        FCellHints: Boolean;
        FHintWnd: THintWindow;
        FRowColor1: TColor;
        FRowColor2: TColor;
        FUseRowColors: Boolean;
        FMultiLineTitles: Boolean;
        FMultiLineRows: Boolean;
        FExDBGridPopUpMenu: TPopUpMenu;
        FTitleCheck: Boolean;
        FBackgroundPicture: TBitmap;
        FUseBackgroundPicture: Boolean;
        FExportDelimiter: TExportDelimiter;
        FAllowAutoAppend: Boolean;
        FDrawFocusRect: Boolean;
        FEnterAsTab: Boolean;
        FHighlightColor: TColor;
        FImageHighlightColor: TColor;
        FHighlightFontColor: TColor;
        FReportCaption: string;
        FHotTrack: Boolean;
        FHotTrackColor: TColor;
        FOrigColor: TColor;
        FLockedCols: Integer;
        FLockedFont: TFont;
        FLockedColor: TColor;
        FFlatCheckBox: Boolean;
        FFlatCheckBoxType: TFlatCheckBoxType;
        FMemoViewType: TMemoViewType;
        FRegistrySaveName: string;
        FShowTextEllipsis: Boolean;
        FShowTitleEllipsis: Boolean;
        FLinesPerRow: Integer;
        FSearchMode: Boolean;
        FExMenuOptions: TExMenuOptions;
        FScrollHints: Boolean;
        FScrollHintWnd: THintWindow;
        function AcquireFocus: Boolean;
        function GetTitleOffset: Byte;
        procedure UpdateTitlesHeight;
        procedure SetRowSizingAllowed(Value: Boolean);
        procedure SetDisplayImages(Value: Boolean);
        procedure SetDisplayMemo(Value: Boolean);
        procedure SetDisplayBool(Value: Boolean);
        procedure SetDisplayDateTime(Value: Boolean);
        procedure SetGridAutoSize(Value: Boolean);
        procedure SetGridAutoWidth(Value: Boolean);
        procedure SetFullSizeMemo(Value: Boolean);
        procedure WMRButtonDown(var Message: TWMRButtonDown); message WM_RBUTTONDOWN;
        procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
        procedure SetCells3D(Value: Boolean);
        procedure SetCellHints(Value: Boolean);
        procedure SetRowColor1(Value: TColor);
        procedure SetRowColor2(Value: TColor);
        procedure SetUseRowColors(Value: Boolean);
        procedure SetMultiLineTitles(Value: Boolean);
        procedure SetMultiLineRows(Value: Boolean);
        procedure MnuAutoSizeClick(Sender: TObject);
        procedure MnuAutoWidthClick(Sender: TObject);
        procedure MnuDisplayBooleanClick(Sender: TObject);
        procedure MnuDisplayImagesClick(Sender: TObject);
        procedure MnuDisplayMemoClick(Sender: TObject);
        procedure MnuDisplayDateTimeClick(Sender: TObject);
        procedure MnuShowTextEllipsisClick(Sender: TObject);
        procedure MnuShowTitleEllipsisClick(Sender: TObject);
        procedure MnuFullSizeMemoClick(Sender: TObject);
        procedure MnuAllowRowSizingClick(Sender: TObject);
        procedure MnuCellHintsClick(Sender: TObject);
        procedure MnuMultiLineTitlesClick(Sender: TObject);
        procedure MnuUseRowColors(Sender: TObject);
        procedure MnuPrintGrid(Sender: TObject);
        procedure MnuPrintDataSet(Sender: TObject);
        procedure MnuExportGrid(Sender: TObject);
        procedure MnuCustomize(Sender: TObject);
        procedure MnuSearchModeClick(Sender: TObject);
        procedure MnuSelectAll(Sender: TObject);
        procedure MnuUnSelectAll(Sender: TObject);
        procedure FExDBGridPopUpMenuPopup(Sender: TObject);
        procedure SetTitleCheck(Value: Boolean);
        procedure SetBackgroundPicture(Value: TBitmap);
        procedure PictureChanged(Sender: TObject);
        procedure SetUseBackgroundPicture(Value: Boolean);
        procedure DrawBackground;
        procedure SetAllowAutoAppend(Value: Boolean);
        procedure SetDrawFocusRect(Value: Boolean);
        procedure SetHighlightColor(Value: TColor);
        procedure SetImageHighlightColor(Value: TColor);
        procedure SetHighlightFontColor(Value: TColor);
        procedure SetHotTrackColor(Value: TColor);
        procedure SetLockedCols(Value: Integer);
        procedure SetLockedColor(Value: TColor);
        procedure SetLockedFont(Value: TFont);
        procedure LockedChanged;
        procedure SetFlatCheckBox(Value: Boolean);
        procedure SetFlatCheckBoxType(Value: TFlatCheckBoxType);
        procedure SetMemoViewType(Value: TMemoViewType);
        procedure SetShowTextEllipsis(Value: Boolean);
        procedure SetShowTitleEllipsis(Value: Boolean);
        procedure SetLinesPerRow(Value: Integer);
        procedure SetSearchMode(Value: Boolean);
        procedure SetExMenuOptions(Value: TExMenuOptions);
        procedure SetScrollHints(Value: Boolean);
    protected
        FOnColResize: TNotifyEvent;
        FEditColor: TColor;
        FInplaceEdit: TInplaceEdit;
        function CreateEditor: TInplaceEdit; override;
        function GetDefaultRowHeight: Integer;
        function GetOptWidth: Integer;
        function CalcHintRect(MaxWidth: Integer; const AHint: string; HintWnd: THintWindow): TRect;
        procedure DoHint(X, Y: Integer);
        procedure SetDefaultRowHeight(Value: Integer);
        procedure LayoutChanged; override;
        procedure RowHeightsChanged; override;
        procedure CellClick(Column: TColumn); override;
        procedure DblClick; override;
        procedure DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState); override;
        procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
        procedure ColWidthsChanged; override;
        procedure ColumnMoved(FromIndex, ToIndex: LongInt); override;
        procedure RowMoved(FromIndex, ToIndex: LongInt); override;
        procedure SetCheckBoxSize;
        procedure ApplyCellAttribute(Field: TField; Canvas: TCanvas; State: TGridDrawState);
        procedure CellAttribute(Field: TField; Canvas: TCanvas; State: TGridDrawState); dynamic;
        procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
        procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
        procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
        procedure ColEnter; override;
        procedure WMSize(var Message: TWMSize); message WM_SIZE;
        procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
        procedure KeyDown(var Key: Word; Shift: TShiftState); override;
        procedure KeyUp(var Key: Word; Shift: TShiftState); override;
        procedure KeyPress(var Key: Char); override;
        procedure TitleClick(Column: TColumn); override;
        procedure Paint; override;
        procedure Loaded; override;
        procedure CreateWnd; override;
        procedure SetColumnAttributes; override;
        procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    public
        DBMemo: TDBMemo;
        DateTimePicker: TExDateTimePicker;
        FSearchEdit: TEdit;
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        property Canvas;
        property Col;
        property Row;
        property FixedCols;
        property FixedRows;
        property TopRow;
        property SelectedRows;
        property DataLink;
        property ColCount;
        property RowCount;
        property ColWidths;
        property GridLineWidth;
        property InplaceEdit: TInplaceEdit read FInplaceEdit;
        property TitleOffset: Byte read GetTitleOffset;
        property OnColumnResize: TNotifyEvent read FOnColResize write FOnColResize;
        property OptWidth: Integer read GetOptWidth;
        property VisibleRowCount;
        property VisibleColCount;
        property GridHeight;
        property GridWidth;
        property LeftCol;
        function CellRect(ACol, ARow: Longint): TRect;
        procedure MoveToRow(NewRow: Integer);
        procedure WMHScroll(var Msg: TWMHScroll); message wm_HScroll;
        procedure WMVScroll(var Msg: TWMVScroll); message wm_VScroll;
        procedure CMMouseEnter(var Msg: TMessage); message cm_MouseEnter;
        procedure CMMouseLeave(var Msg: TMessage); message cm_MouseLeave;
        procedure WMMouseMove(var Msg: TWMMouseMove); message wm_MouseMove;
        procedure OnKeyDBMemo(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure OnKeyDateTimePicker(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure OnKeyEditUp(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure OnKeyEditDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure OnDBExit(Sender: TObject);
        procedure OnDTPExit(Sender: TObject);
        procedure OnKeyEditExit(Sender: TObject);
        procedure ExportGrid(ExpFileName: string); virtual;
        procedure ExportToFile(ExpFileName: string; Delimiter: Char);
        procedure GridPreview;
        procedure DataSetPreview;
        procedure SaveToRegistry;
        procedure LoadFromRegistry;
    published
        property ScrollBars;
        property DefaultDrawing default False;
        property EditColor: TColor read FEditColor write FEditColor;
        property DefaultRowHeight: Integer read GetDefaultRowHeight write SetDefaultRowHeight;
        property RowSizingAllowed: Boolean read FRowSizingAllowed write SetRowSizingAllowed default False;
        property OnApplyCellAttribute: TCellAttribute read FOnApplyCellAttribute write FOnApplyCellAttribute;
        property OnMouseDown read FOnMouseDown write FOnMouseDown;
        property OnMouseUp read FOnMouseUp write FOnMouseUp;
        property OnMouseMove read FOnMouseMove write FOnMouseMove;
        property OnColEnter: TNotifyEvent read FOnColEnter write FOnColEnter;
        property DisplayImages: Boolean read FDisplayImages write SetDisplayImages default True;
        property DisplayMemo: Boolean read FDisplayMemo write SetDisplayMemo default True;
        property DisplayBoolean: Boolean read FDisplayBool write SetDisplayBool default True;
        property DisplayDateTime: Boolean read FDisplayDateTime write SetDisplayDateTime default True;
        property GridAutoSize: Boolean read FGridAutoSize write SetGridAutoSize default False;
        property GridAutoWidth: Boolean read FGridAutoWidth write SetGridAutoWidth default False;
        property FullSizeMemo: Boolean read FFullSizeMemo write SetFullSizeMemo default False;
        property OnRightClick: TNotifyEvent read FOnRightClick write FOnRightClick;
        property Cells3D: Boolean read FCells3D write SetCells3D default False;
        property CellHints: Boolean read FCellHints write SetCellHints default False;
        property RowColor1: TColor read FRowColor1 write SetRowColor1;
        property RowColor2: TColor read FRowColor2 write SetRowColor2;
        property UseRowColors: Boolean read FUseRowColors write SetUseRowColors default False;
        property MultiLineTitles: Boolean read FMultiLineTitles write SetMultiLineTitles default False;
        property TitleCheck: Boolean read FTitleCheck write SetTitleCheck default False;
        property BackgroundPicture: TBitmap read FBackgroundPicture write SetBackgroundPicture;
        property UseBackgroundPicture: Boolean read FUseBackgroundPicture write SetUseBackgroundPicture default False;
        property ExportDelimiter: TExportDelimiter read FExportDelimiter write FExportDelimiter default Pipe;
        property AllowAutoAppend: Boolean read FAllowAutoAppend write SetAllowAutoAppend default True;
        property DrawFocusRect: Boolean read FDrawFocusRect write SetDrawFocusRect default False;
        property EnterAsTab: Boolean read FEnterAsTab write FEnterAsTab default False;
        property HighlightColor: TColor read FHighlightColor write SetHighlightColor;
        property ImageHighlightColor: TColor read FImageHighlightColor write SetImageHighlightColor;
        property HighlightFontColor: TColor read FHighlightFontColor write SetHighlightFontColor;
        property ReportCaption: string read FReportCaption write FReportCaption;
        property HotTrack: Boolean read FHotTrack write FHotTrack default False;
        property HotTrackColor: TColor read FHotTrackColor write SetHotTrackColor;
        property LockedCols: Integer read FLockedCols write SetLockedCols;
        property LockedFont: TFont read FLockedFont write SetLockedFont;
        property LockedColor: TColor read FLockedColor write SetLockedColor;
        property FlatCheckBox: Boolean read FFlatCheckBox write SetFlatCheckBox default True;
        property FlatCheckBoxType: TFlatCheckBoxType read FFlatCheckBoxType write SetFlatCheckBoxType default Normal;
        property MemoViewType: TMemoViewType read FMemoViewType write SetMemoViewType default WordWrapOn;
        property RegistrySaveName: string read FRegistrySaveName write FRegistrySaveName;
        property ShowTextEllipsis: Boolean read FShowTextEllipsis write SetShowTextEllipsis default False;
        property ShowTitleEllipsis: Boolean read FShowTitleEllipsis write SetShowTitleEllipsis default False;
        property MultiLineRows: Boolean read FMultiLineRows write SetMultiLineRows default False;
        property LinesPerRow: Integer read FLinesPerRow write SetLinesPerRow default 1;
        property SearchMode: Boolean read FSearchMode write SetSearchMode default False;
        property ExMenuOptions: TExMenuOptions read FExMenuOptions write SetExMenuOptions;
        property ScrollHints: Boolean read FScrollHints write SetScrollHints default False;
    end;

    TInplaceEditCracker = class(TInplaceEdit)
    public
        property Color;
    end;

    TExDBGridMod = class(TCustomGrid)
    public
        property Options;
        property RowHeights;
    end;

procedure Register;

implementation

uses ExDBGridCtls, ExColSelect;

var
    GCheckWidth, GCheckHeight: Integer;
    gk: Word;
    BkBmp: TBitmap;

function Max(X, Y: Integer): Integer;
begin
    Result := Y;
    if X > Y then Result := X;
end;

constructor TExDBGrid.Create(AOwner: TComponent);
var
    i: Integer;
    NewItem: TMenuItem;
begin
    inherited Create(AOwner);

    DataSource := DataLink.DataSource;
    DefaultDrawing := False;
    ControlStyle := ControlStyle + [csAcceptsControls, csDisplayDragImage, csFramed, csOpaque];
    BorderStyle := bsNone;
    SetCheckBoxSize;
    FEditColor := clWindow;
    FRowheight := 17;
    FRowSizingAllowed := False;
    FDisplayImages := True;
    FDisplayMemo := True;
    FDisplayBool := True;
    FDisplayDateTime := True;
    FGridAutoSize := False;
    FGridAutoWidth := False;
    FullSizeMemo := False;
    FCells3D := False;
    FCellHints := False;
    FRowColor1 := $00BAFF6F;
    FRowColor2 := clWindow;
    FUseRowColors := False;
    FMultiLineTitles := False;
    FMultiLineRows := False;
    FTitleCheck := False;
    FBackGroundPicture := TBitmap.Create;
    FBackGroundPicture.OnChange := PictureChanged;
    FUseBackgroundPicture := False;
    BkBmp := nil;
    FExportDelimiter := Pipe;
    FAllowAutoAppend := True;
    FDrawFocusRect := False;
    FHighlightColor := clNavy;
    FImageHighlightColor := clWindow;
    FHighlightFontColor := clWhite;
    FHotTrackColor := clNavy;
    FLockedCols := 0;
    FLockedFont := TFont.Create;
    FLockedColor := clGray;
    FEnterAsTab := False;
    FFlatCheckBox := True;
    FFlatCheckBoxType := Normal;
    FMemoViewType := WordWrapOn;
    FShowTextEllipsis := False;
    FShowTitleEllipsis := False;
    FLinesPerRow := 1;
    FSearchMode := False;
    FExMenuOptions :=
        [exAutoSize, exAutoWidth, exDisplayBoolean, exDisplayImages,
        exDisplayMemo, exDisplayDateTime, exShowTextEllipsis,
        exShowTitleEllipsis, exFullSizeMemo, exAllowRowSizing,
        exCellHints, exMultiLineTitles, exUseRowColors, exPrintGrid,
        exPrintDataSet, exExportGrid, exSelectAll, exUnSelectAll,
        exCustomize, exSearchMode];

    if not (csDesigning in ComponentState) then
        begin
            FExDBGridPopUpMenu := TPopUpMenu.Create(Self);
            FExDBGridPopUpMenu.OnPopup := FExDBGridPopUpMenuPopup;

            for i := 0 to 26 do
                begin
                    NewItem := TMenuItem.Create(TExDBGrid(Self));
                    case i of
                        0:
                            begin
                                NewItem.OnClick := MnuAutoSizeClick;
                                NewItem.Caption := 'Auto Size';
                                NewItem.Checked := False;
                            end;
                        1:
                            begin
                                NewItem.OnClick := MnuAutoWidthClick;
                                NewItem.Caption := 'Auto Width';
                                NewItem.Checked := False;
                            end;
                        2:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        3:
                            begin
                                NewItem.OnClick := MnuDisplayBooleanClick;
                                NewItem.Caption := 'Display Boolean';
                                NewItem.Checked := False;
                            end;
                        4:
                            begin
                                NewItem.OnClick := MnuDisplayImagesClick;
                                NewItem.Caption := 'Display Images';
                                NewItem.Checked := False;
                            end;
                        5:
                            begin
                                NewItem.OnClick := MnuDisplayMemoClick;
                                NewItem.Caption := 'Display Memo';
                                NewItem.Checked := False;
                            end;
                        6:
                            begin
                                NewItem.OnClick := MnuDisplayDateTimeClick;
                                NewItem.Caption := 'Display Date/Time';
                                NewItem.Checked := False;
                            end;
                        7:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        8:
                            begin
                                NewItem.OnClick := MnuShowTextEllipsisClick;
                                NewItem.Caption := 'Show Text Ellipsis';
                                NewItem.Checked := False;
                            end;
                        9:
                            begin
                                NewItem.OnClick := MnuShowTitleEllipsisClick;
                                NewItem.Caption := 'Show Title Ellipsis';
                                NewItem.Checked := False;
                            end;
                        10:
                            begin
                                NewItem.OnClick := MnuFullSizeMemoClick;
                                NewItem.Caption := 'Full Size Memo';
                                NewItem.Checked := False;
                            end;
                        11:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        12:
                            begin
                                NewItem.OnClick := MnuAllowRowSizingClick;
                                NewItem.Caption := 'Allow Row Sizing';
                                NewItem.Checked := False;
                            end;
                        13:
                            begin
                                NewItem.OnClick := MnuCellHintsClick;
                                NewItem.Caption := 'Cell Hints';
                                NewItem.Checked := False;
                            end;
                        14:
                            begin
                                NewItem.OnClick := MnuMultiLineTitlesClick;
                                NewItem.Caption := 'Multi Line Titles';
                                NewItem.Checked := False;
                            end;
                        15:
                            begin
                                NewItem.OnClick := MnuUseRowColors;
                                NewItem.Caption := 'Use Row Colors';
                                NewItem.Checked := False;
                            end;
                        16:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        17:
                            begin
                                NewItem.OnClick := MnuPrintGrid;
                                NewItem.Caption := 'Print Grid';
                                NewItem.Checked := False;
                            end;
                        18:
                            begin
                                NewItem.OnClick := MnuPrintDataSet;
                                NewItem.Caption := 'Print DataSet';
                                NewItem.Checked := False;
                            end;
                        19:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        20:
                            begin
                                NewItem.OnClick := MnuExportGrid;
                                NewItem.Caption := 'Export Grid';
                                NewItem.Checked := False;
                            end;
                        21:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        22:
                            begin
                                NewItem.OnClick := MnuSelectAll;
                                NewItem.Caption := 'Select All';
                                NewItem.Checked := False;
                            end;
                        23:
                            begin
                                NewItem.OnClick := MnuUnSelectAll;
                                NewItem.Caption := 'UnSelect All';
                                NewItem.Checked := False;
                            end;
                        24:
                            begin
                                NewItem.Caption := '-';
                                NewItem.Checked := False;
                            end;
                        25:
                            begin
                                NewItem.OnClick := MnuCustomize;
                                NewItem.Caption := 'Customize';
                                NewItem.Checked := False;
                            end;
                        26:
                            begin
                                NewItem.OnClick := MnuSearchModeClick;
                                NewItem.Caption := 'Search Mode';
                                NewItem.Checked := False;
                            end;
                    end;
                    FExDBGridPopUpMenu.Items.Add(NewItem);
                end;
        end;

    FScrollHintWnd := THintWindow.Create(Self);
    FScrollHintWnd.Color := Application.HintColor;
    FScrollHints := False;
end;

{ BEGIN PRIVATE }

function TExDBGrid.AcquireFocus: Boolean;
begin
    Result := True;
    if FAcquireFocus and CanFocus and not (csDesigning in ComponentState) then
        begin
            SetFocus;
            Result := Focused or (InplaceEditor <> nil) and InplaceEditor.Focused;
        end;
end;

function TExDBGrid.GetTitleOffset: Byte;
begin
    Result := 0;
    if dgTitles in Options then
        Inc(Result);
end;

procedure TExDBGrid.UpdateTitlesHeight;
var
    i, MaxHeight: Integer;
    RRect: TRect;
begin
    if FMultiLineTitles then
        begin
            if (dgTitles in Options) then
                begin
                    MaxHeight := 0;
                    for i := 0 to Columns.Count - 1 do
                        begin
                            RRect := CellRect(0, 0);
                            RRect.Right := Columns[i].Width - 1;
                            RRect.Left := 0;

                            Canvas.Font := Columns[i].Title.Font;
                            MaxHeight := Max(MaxHeight, DrawText(Canvas.Handle,
                                PChar(Columns[i].Title.Caption),
                                Length(Columns[i].Title.Caption),
                                RRect,
                                DT_EXPANDTABS or DT_CALCRECT or DT_WORDBREAK));
                        end;

                    if (MaxHeight <> 0) then
                        begin
                            if (dgRowLines in Options) then
                                Inc(MaxHeight, 3)
                            else
                                Inc(MaxHeight, 2);

                            RowHeights[0] := MaxHeight;
                            if RowHeights[0] < 17 then
                                RowHeights[0] := 17;
                        end;
                end;
        end
    else
        begin
            if RowHeights[0] <> 17 then
                RowHeights[0] := 17;
        end;
end;

procedure TExDBGrid.SetRowSizingAllowed(Value: Boolean);
begin
    if Value <> FRowSizingAllowed then
        begin
            FRowSizingAllowed := Value;
            if FRowSizingAllowed then
                begin
                    if FMultiLineRows then
                        FMultiLineRows := False;
                    TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goRowSizing, goColSizing, goThumbTracking, goTabs, goColMoving, goRowMoving, goDrawFocusSelected]
                end
            else
                TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goColSizing, goThumbTracking, goTabs, goColMoving, goRowMoving, goDrawFocusSelected] - [goRowSizing];
        end
end;

procedure TExDBGrid.SetDisplayImages(value: Boolean);
begin
    if FDisplayImages <> value then
        begin
            FDisplayImages := value;
            ColEnter;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetDisplayMemo(value: Boolean);
begin
    if FDisplayMemo <> value then
        begin
            FDisplayMemo := value;

            if FDisplayMemo = False then
                begin
                    if FFullSizeMemo = True then
                        begin
                            SetFullSizeMemo(False);
                            FFullSizeMemo := True;
                        end;
                end
            else
                begin
                    if FFullSizeMemo = True then
                        begin
                            SetFullSizeMemo(True);
                        end;
                end;

            ColEnter;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetDisplayBool(value: Boolean);
begin
    if FDisplayBool <> value then
        begin
            FDisplayBool := value;
            ColEnter;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetDisplayDateTime(value: Boolean);
begin
    if FDisplayDateTime <> value then
        begin
            FDisplayDateTime := value;

            if FDisplayDateTime = False then
                if Assigned(DateTimePicker) then
                    if DateTimePicker.Visible then
                        DateTimePicker.Visible := False;

            ColEnter;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetGridAutoSize(value: Boolean);
var
    RowNo: Integer;
    ColNo: Integer;
    WidthNew: Integer;
    WidthMax: Integer;
    TmpDS: TDataSource;
begin
    FGridAutoSize := value;

    if FGridAutoSize = True then
        begin
            FGridAutoWidth := False;
        end;

    if not (csDesigning in ComponentState) then
        begin
            if Columns.State <> csCustomized then
                begin
                    if FGridAutoSize = True then
                        begin
                            if (DataLink <> nil) and (DataLink.Active) then
                                begin
                                    DataLink.DataSet.DisableControls;

                                    Columns.RestoreDefaults;

                                    for ColNo := 0 to (ColCount - 2) do
                                        begin
                                            WidthMax := 0;
                                            WidthNew := 0;
                                            DataLink.DataSet.First;

                                            for RowNo := 0 to (RowCount - 1) do
                                                begin
                                                    if not Fields[ColNo].IsNull then
                                                        begin
                                                            if FFullSizeMemo = False then
                                                                begin
                                                                    WidthNew := Canvas.TextWidth(Fields[ColNo].DisplayText);
                                                                end
                                                            else
                                                                begin
                                                                    if Fields[ColNo] is TMemoField then
                                                                        begin
                                                                            WidthNew := Canvas.TextWidth(Fields[ColNo].Value);
                                                                        end
                                                                    else
                                                                        begin
                                                                            WidthNew := Canvas.TextWidth(Fields[ColNo].DisplayText);
                                                                        end;
                                                                end;
                                                        end;

                                                    if WidthNew > WidthMax then
                                                        WidthMax := WidthNew;

                                                    DataLink.DataSet.Next;
                                                end;

                                            try
                                                Columns[ColNo].Width := (WidthMax + (GridLineWidth + 5))
                                            except
                                            end;
                                        end;

                                    DataLink.DataSet.First;

                                    DataLink.DataSet.EnableControls;
                                end;
                            Invalidate;
                        end
                    else
                        begin
                            if (DataLink <> nil) and (DataLink.Active) then
                                begin
                                    DataLink.DataSet.DisableControls;

                                    TmpDS := TExDBGrid(Self).DataSource;
                                    TExDBGrid(Self).DataSource := nil;
                                    TExDBGrid(Self).DataSource := TmpDS;
                                    Columns.RestoreDefaults;

                                    DataLink.DataSet.EnableControls;
                                end;
                        end;
                end;
        end;
end;

procedure TExDBGrid.SetGridAutoWidth(Value: Boolean);
var
    Available, Remaining, i, w: Integer;
    Total: Integer;
    FColumnSize: array[0..255] of Integer;
begin
    FGridAutoWidth := value;

    if FGridAutoWidth = True then
        begin
            FGridAutoSize := False;
        end;

    if not (csDesigning in ComponentState) then
        begin
            if Columns.State <> csCustomized then
                begin
                    if FGridAutoWidth = True then
                        begin
                            if (DataLink <> nil) and (DataLink.Active) then
                                begin
                                    DataLink.DataSet.DisableControls;

                                    Columns.RestoreDefaults;

                                    Total := TExDBGrid(Self).ClientWidth;
                                    Remaining := TExDBGrid(Self).Colcount - TExDBGrid(Self).Fixedcols;

                                    w := Total div Remaining;

                                    for i := 0 to Remaining - 1 do
                                        begin
                                            FColumnSize[i] := w;
                                            Dec(Total, w);
                                        end;
                                    FColumnSize[Remaining] := Total;

                                    with TExDBGrid(Self) do
                                        begin
                                            Available := ClientWidth;
                                            for i := 0 to FixedCols - 1 do
                                                Dec(Available, ColWidths[i] + GridlineWidth);

                                            for i := FixedCols to ColCount - 2 do
                                                begin
                                                    ColWidths[i] := FColumnSize[i - 1] - GridlineWidth;
                                                    Dec(Available, FColumnSize[i - 1]);
                                                end;
                                            ColWidths[ColCount - 1] := Available;
                                        end;

                                    Invalidate;

                                    DataLink.DataSet.EnableControls;
                                end;
                            Invalidate;
                        end
                    else
                        begin
                            if (DataLink <> nil) and (DataLink.Active) then
                                begin
                                    DataLink.DataSet.DisableControls;

                                    if FGridAutoSize = False then
                                        begin
                                            SetGridAutoSize(True);
                                            SetGridAutoSize(False);
                                        end
                                    else
                                        begin
                                            SetGridAutoSize(FGridAutoSize);
                                        end;

                                    DataLink.DataSet.EnableControls;
                                end;
                        end;
                end;
        end;
end;

procedure TExDBGrid.SetFullSizeMemo(value: Boolean);
begin
    FFullSizeMemo := value;

    if not (csDesigning in ComponentState) then
        begin
            if Columns.State <> csCustomized then
                begin
                    if (DataLink <> nil) and (DataLink.Active) then
                        begin
                            DataLink.DataSet.DisableControls;

                            if FFullSizeMemo = True then
                                FDisplayMemo := True;

                            if FGridAutoSize = False then
                                begin
                                    SetGridAutoSize(True);
                                    SetGridAutoSize(False);
                                end
                            else
                                begin
                                    SetGridAutoSize(FGridAutoSize);
                                end;

                            DataLink.DataSet.EnableControls;
                        end;
                end;
        end;
end;

procedure TExDBGrid.WMRButtonDown(var Message: TWMRButtonDown);
begin
    try
        SetFocus;
        inherited;

        if Assigned(FOnRightClick) then
            FOnRightClick(Self);
    except
    end;
end;

procedure TExDBGrid.WMLButtonDown(var Message: TWMLButtonDown);
begin
    try
        SetFocus;
        inherited;
    except
    end;
end;

procedure TExDBGrid.SetCells3D(Value: Boolean);
begin
    if FCells3D <> Value then
        begin
            FCells3D := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetCellHints(Value: Boolean);
begin
    if FCellHints <> Value then
        begin
            FCellHints := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetRowColor1(Value: TColor);
begin
    if FRowColor1 <> Value then
        begin
            FRowColor1 := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetRowColor2(Value: TColor);
begin
    if FRowColor2 <> Value then
        begin
            FRowColor2 := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetUseRowColors(Value: Boolean);
begin
    if FUseRowColors <> Value then
        begin
            FUseRowColors := Value;

            if FUseRowColors = True then
                begin
                    FUseBackgroundPicture := False;
                end;

            Invalidate;
        end;
end;

procedure TExDBGrid.SetMultiLineTitles(Value: Boolean);
begin
    if FMultiLineTitles <> Value then
        begin
            FMultiLineTitles := Value;
            Invalidate;
        end;

    UpdateTitlesHeight;
end;

procedure TExDBGrid.SetMultiLineRows(Value: Boolean);
begin
    if FMultiLineRows <> Value then
        begin
            FMultiLineRows := Value;

            if (FMultiLineRows) and (FRowSizingAllowed) then
                FRowSizingAllowed := False;

            LayoutChanged;
            Invalidate;
        end;
end;

procedure TExDBGrid.MnuAutoSizeClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[0].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).GridAutoSize := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[0].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).GridAutoSize := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[0].Checked := False;
        end;
end;

procedure TExDBGrid.MnuAutoWidthClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[1].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).GridAutoWidth := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[1].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).GridAutoWidth := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[1].Checked := False;
        end;
end;

procedure TExDBGrid.MnuDisplayBooleanClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[3].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayBoolean := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[3].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayBoolean := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[3].Checked := False;
        end;
end;

procedure TExDBGrid.MnuDisplayImagesClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[4].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayImages := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[4].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayImages := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[4].Checked := False;
        end;
end;

procedure TExDBGrid.MnuDisplayMemoClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[5].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayMemo := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[5].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayMemo := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[5].Checked := False;
        end;
end;

procedure TExDBGrid.MnuDisplayDateTimeClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[6].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayDateTime := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[6].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).DisplayDateTime := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[6].Checked := False;
        end;
end;

procedure TExDBGrid.MnuShowTextEllipsisClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[8].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).ShowTextEllipsis := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[8].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).ShowTextEllipsis := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[8].Checked := False;
        end;
end;

procedure TExDBGrid.MnuShowTitleEllipsisClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[9].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).ShowTitleEllipsis := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[9].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).ShowTitleEllipsis := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[9].Checked := False;
        end;
end;

procedure TExDBGrid.MnuFullSizeMemoClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[10].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).FullSizeMemo := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[10].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).FullSizeMemo := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[10].Checked := False;
        end;
end;

procedure TExDBGrid.MnuAllowRowSizingClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[12].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).RowSizingAllowed := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[12].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).RowSizingAllowed := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[12].Checked := False;
        end;
end;

procedure TExDBGrid.MnuCellHintsClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[13].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).CellHints := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[13].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).CellHints := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[13].Checked := False;
        end;
end;

procedure TExDBGrid.MnuMultiLineTitlesClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[14].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).MultiLineTitles := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[14].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).MultiLineTitles := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[14].Checked := False;
        end;
end;

procedure TExDBGrid.MnuUseRowColors(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[15].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).UseRowColors := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[15].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).UseRowColors := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[15].Checked := False;
        end;
end;

procedure TExDBGrid.MnuPrintGrid(Sender: TObject);
begin
    TExDBGrid(Self).GridPreview;
    TExDBGrid(Self).DataSource.DataSet.First;
end;

procedure TExDBGrid.MnuPrintDataSet(Sender: TObject);
begin
    TExDBGrid(Self).DataSetPreview;
    TExDBGrid(Self).DataSource.DataSet.First;
end;

procedure TExDBGrid.MnuExportGrid(Sender: TObject);
begin
    TExDBGrid(Self).ExportGrid('');
    TExDBGrid(Self).DataSource.DataSet.First;
end;

procedure TExDBGrid.MnuCustomize(Sender: TObject);
begin
    Application.CreateForm(TExColSelectFrm, ExColSelectFrm);
    ExColSelectFrm.ExDBGrid := TExDBGrid(Self);
    ExColSelectFrm.DataSource := DataLink.DataSource;
    ExColSelectFrm.ShowModal;
    ExColSelectFrm.Release;
end;

procedure TExDBGrid.MnuSearchModeClick(Sender: TObject);
begin
    if FExDBGridPopUpMenu.Items[26].Checked = False then
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).SearchMode := True;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[26].Checked := True;
        end
    else
        begin
            DataLink.DataSet.DisableControls;
            TExDBGrid(Self).SearchMode := False;
            DataLink.DataSet.EnableControls;
            FExDBGridPopUpMenu.Items[26].Checked := False;
        end;
end;

procedure TExDBGrid.MnuSelectAll(Sender: TObject);
begin
    if not (dgMultiSelect in Options) then
        Options := Options + [dgMultiSelect];

    with TExDBGrid(Self).DataSource.DataSet do
        begin
            DisableControls;
            First;
            while not EOF do
                begin
                    SelectedRows.CurrentRowSelected := True;
                    Next;
                end;
            EnableControls;
        end;

    if FRowSizingAllowed = True then
        TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goRowSizing];
end;

procedure TExDBGrid.MnuUnSelectAll(Sender: TObject);
begin
    if dgMultiSelect in Options then
        Options := Options - [dgMultiSelect];

    with TExDBGrid(Self).DataSource.DataSet do
        begin
            First;
        end;

    if FRowSizingAllowed = True then
        TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goRowSizing];
end;

procedure TExDBGrid.FExDBGridPopUpMenuPopup(Sender: TObject);
begin
    FExDBGridPopUpMenu.Items[0].Checked := TExDBGrid(Self).GridAutoSize;
    FExDBGridPopUpMenu.Items[1].Checked := TExDBGrid(Self).GridAutoWidth;
    FExDBGridPopUpMenu.Items[3].Checked := TExDBGrid(Self).DisplayBoolean;
    FExDBGridPopUpMenu.Items[4].Checked := TExDBGrid(Self).DisplayImages;
    FExDBGridPopUpMenu.Items[5].Checked := TExDBGrid(Self).DisplayMemo;
    FExDBGridPopUpMenu.Items[6].Checked := TExDBGrid(Self).DisplayDateTime;
    FExDBGridPopUpMenu.Items[8].Checked := TExDBGrid(Self).ShowTextEllipsis;
    FExDBGridPopUpMenu.Items[9].Checked := TExDBGrid(Self).ShowTitleEllipsis;
    FExDBGridPopUpMenu.Items[10].Checked := TExDBGrid(Self).FullSizeMemo;
    FExDBGridPopUpMenu.Items[12].Checked := TExDBGrid(Self).RowSizingAllowed;
    FExDBGridPopUpMenu.Items[13].Checked := TExDBGrid(Self).CellHints;
    FExDBGridPopUpMenu.Items[14].Checked := TExDBGrid(Self).MultiLineTitles;
    FExDBGridPopUpMenu.Items[15].Checked := TExDBGrid(Self).UseRowColors;
    FExDBGridPopUpMenu.Items[26].Checked := TExDBGrid(Self).SearchMode;
end;

procedure TExDBGrid.SetTitleCheck(Value: Boolean);
begin
    if FTitleCheck <> Value then
        begin
            FTitleCheck := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetBackgroundPicture(Value: TBitmap);
begin
    FBackGroundPicture.Assign(Value);

    if (csDesigning in ComponentState) then
        begin
            Refresh;
        end;
end;

procedure TExDBGrid.PictureChanged(Sender: TObject);
begin
    if Assigned(BKBmp) then
        begin
            BkBmp.Free;
            BkBmp := nil;
        end;
end;

procedure TExDBGrid.SetUseBackgroundPicture(Value: Boolean);
begin
    if FUseBackgroundPicture <> Value then
        begin
            FUseBackgroundPicture := Value;

            if FUseBackgroundPicture = True then
                begin
                    FUseRowColors := False;
                end;

            Invalidate;
        end;

    if (csDesigning in ComponentState) then
        begin
            Refresh;
        end;
end;

procedure TExDBGrid.DrawBackground;
begin
    if FUseBackgroundPicture = True then
        begin
            if BkBmp = nil then
                begin
                    BkBmp := TBitmap.Create;
                    BkBmp.Assign(FBackgroundPicture);
                end;
        end
    else
        begin
            if Assigned(BKBmp) then
                begin
                    BkBmp.Free;
                    BkBmp := nil;
                end;
        end;
end;

procedure TExDBGrid.SetAllowAutoAppend(Value: Boolean);
begin
    if FAllowAutoAppend <> Value then
        begin
            FAllowAutoAppend := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetDrawFocusRect(Value: Boolean);
begin
    if FDrawFocusRect <> Value then
        begin
            FDrawFocusRect := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetHighlightColor(Value: TColor);
begin
    if FHighlightColor <> Value then
        begin
            FHighlightColor := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetImageHighlightColor(Value: TColor);
begin
    if FImageHighlightColor <> Value then
        begin
            FImageHighlightColor := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetHighlightFontColor(Value: TColor);
begin
    if FHighlightFontColor <> Value then
        begin
            FHighlightFontColor := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetHotTrackColor(Value: TColor);
begin
    if FHotTrackColor <> Value then
        begin
            FHotTrackColor := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetLockedCols(Value: Integer);
begin
    if FLockedCols <> Value then
        begin
            FLockedCols := Value;
            LockedChanged;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetLockedColor(Value: TColor);
begin
    if FLockedColor <> Value then
        begin
            FLockedColor := Value;
            LockedChanged;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetLockedFont(Value: TFont);
begin
    if FLockedFont <> Value then
        begin
            FLockedFont.Assign(Value);
            LockedChanged;
            Invalidate;
        end;
end;

procedure TExDBGrid.LockedChanged;
var
    i: Integer;
begin
    if (DataLink <> nil) and (DataLink.Active) then
        with TExDBGrid(Self) do
            begin
                if FLockedCols = 0 then
                    begin
                        FixedCols := FLockedCols + IndicatorOffset;
                        for i := 0 to FLockedCols - 1 do
                            with Columns[i] do
                                begin
                                    Font := TExDBGrid(Self).Font;
                                    Color := TExDBGrid(Self).Color;
                                end;
                    end
                else
                    if FLockedCols < (ColCount - 1) - IndicatorOffset then
                        begin
                            FixedCols := FLockedCols + IndicatorOffset;
                            for i := 0 to FLockedCols - 1 do
                                with Columns[i] do
                                    begin
                                        Font := LockedFont;
                                        Color := LockedColor;
                                    end;
                        end;
            end;
end;

procedure TExDBGrid.SetFlatCheckBox(Value: Boolean);
begin
    if FFlatCheckBox <> Value then
        begin
            FFlatCheckBox := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetFlatCheckBoxType(Value: TFlatCheckBoxType);
begin
    if FFlatCheckBoxType <> Value then
        begin
            FFlatCheckBoxType := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetMemoViewType(Value: TMemoViewType);
begin
    if FMemoViewType <> Value then
        begin
            FMemoViewType := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetShowTextEllipsis(Value: Boolean);
begin
    if FShowTextEllipsis <> Value then
        begin
            FShowTextEllipsis := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetShowTitleEllipsis(Value: Boolean);
begin
    if FShowTitleEllipsis <> Value then
        begin
            FShowTitleEllipsis := Value;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetLinesPerRow(Value: Integer);
begin
    if FLinesPerRow <> Value then
        begin
            FLinesPerRow := Value;
            LayoutChanged;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetSearchMode(Value: Boolean);
begin
    if FSearchMode <> Value then
        begin
            FSearchMode := Value;

            if FSearchMode = False then
                if Assigned(FSearchEdit) then
                    if FSearchEdit.Visible then
                        FSearchEdit.Visible := False;

            LayoutChanged;
            Invalidate;
        end;
end;

procedure TExDBGrid.SetExMenuOptions(Value: TExMenuOptions);
begin
    if FExMenuOptions <> Value then
        begin
            FExMenuOptions := Value;

            if Assigned(FExDBGridPopUpMenu) then
                begin
                    if (exAutoSize in Value) then
                        FExDBGridPopUpMenu.Items[0].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[0].Visible := False;

                    if (exAutoWidth in Value) then
                        FExDBGridPopUpMenu.Items[1].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[1].Visible := False;

                    if not (exAutoSize in Value) and not (exAutoWidth in Value) then
                        FExDBGridPopUpMenu.Items[2].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[2].Visible := True;

                    if (exDisplayBoolean in Value) then
                        FExDBGridPopUpMenu.Items[3].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[3].Visible := False;

                    if (exDisplayImages in Value) then
                        FExDBGridPopUpMenu.Items[4].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[4].Visible := False;

                    if (exDisplayMemo in Value) then
                        FExDBGridPopUpMenu.Items[5].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[5].Visible := False;

                    if (exDisplayDateTime in Value) then
                        FExDBGridPopUpMenu.Items[6].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[6].Visible := False;

                    if not (exDisplayBoolean in Value) and not (exDisplayImages in Value)
                        and not (exDisplayMemo in Value) and not (exDisplayDateTime in Value) then
                        FExDBGridPopUpMenu.Items[7].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[7].Visible := True;

                    if (exShowTextEllipsis in Value) then
                        FExDBGridPopUpMenu.Items[8].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[8].Visible := False;

                    if (exShowTitleEllipsis in Value) then
                        FExDBGridPopUpMenu.Items[9].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[9].Visible := False;

                    if (exFullSizeMemo in Value) then
                        FExDBGridPopUpMenu.Items[10].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[10].Visible := False;

                    if not (exShowTextEllipsis in Value) and not (exShowTitleEllipsis in Value)
                        and not (exFullSizeMemo in Value) then
                        FExDBGridPopUpMenu.Items[11].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[11].Visible := True;

                    if (exAllowRowSizing in Value) then
                        FExDBGridPopUpMenu.Items[12].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[12].Visible := False;

                    if (exCellHints in Value) then
                        FExDBGridPopUpMenu.Items[13].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[13].Visible := False;

                    if (exMultiLineTitles in Value) then
                        FExDBGridPopUpMenu.Items[14].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[14].Visible := False;

                    if (exUseRowColors in Value) then
                        FExDBGridPopUpMenu.Items[15].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[15].Visible := False;

                    if not (exAllowRowSizing in Value) and not (exCellHints in Value)
                        and not (exMultiLineTitles in Value) and not (exUseRowColors in Value) then
                        FExDBGridPopUpMenu.Items[16].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[16].Visible := True;

                    if (exPrintGrid in Value) then
                        FExDBGridPopUpMenu.Items[17].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[17].Visible := False;

                    if (exPrintDataSet in Value) then
                        FExDBGridPopUpMenu.Items[18].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[18].Visible := False;

                    if not (exPrintGrid in Value) and not (exPrintDataSet in Value) then
                        FExDBGridPopUpMenu.Items[19].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[19].Visible := True;

                    if (exExportGrid in Value) then
                        FExDBGridPopUpMenu.Items[20].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[20].Visible := False;

                    if not (exExportGrid in Value) then
                        FExDBGridPopUpMenu.Items[21].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[21].Visible := True;

                    if (exSelectAll in Value) then
                        FExDBGridPopUpMenu.Items[22].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[22].Visible := False;

                    if (exUnSelectAll in Value) then
                        FExDBGridPopUpMenu.Items[23].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[23].Visible := False;

                    if not (exSelectAll in Value) and not (exUnSelectAll in Value) then
                        FExDBGridPopUpMenu.Items[19].Visible := False
                    else
                        FExDBGridPopUpMenu.Items[19].Visible := True;

                    if (exCustomize in Value) then
                        FExDBGridPopUpMenu.Items[25].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[25].Visible := False;

                    if (exSearchMode in Value) then
                        FExDBGridPopUpMenu.Items[26].Visible := True
                    else
                        FExDBGridPopUpMenu.Items[26].Visible := False;
                end;

            Invalidate;
        end;
end;

procedure TExDBGrid.SetScrollHints(Value: Boolean);
begin
    if FScrollHints <> Value then
        begin
            FScrollHints := Value;
            Invalidate;
        end;
end;

{ END PRIVATE }

{ BEGIN PROTECTED }

function TExDBGrid.CreateEditor: TInplaceEdit;
begin
    Result := inherited CreateEditor;

    TInplaceEditCracker(Result).Color := FEditColor;
    FInplaceEdit := Result;
end;

function TExDBGrid.GetDefaultRowHeight: Integer;
begin
    Result := inherited DefaultRowHeight;
end;

function TExDBGrid.GetOptWidth: Integer;
var
    Loop: Integer;
begin
    Result := GetSystemMetrics(sm_CXVScroll);

    if BorderStyle = bsSingle then
        Inc(Result, 2 * GetSystemMetrics(sm_CXBorder));

    for Loop := 0 to Pred(ColCount) do
        Inc(Result, Succ(ColWidths[Loop]));

    if Parent is TForm then
        begin
            if Result > TForm(Parent).ClientWidth then
                Result := TForm(Parent).ClientWidth;
        end
    else
        if Result > Parent.Width then
            Result := Parent.Width;
end;

function TExDBGrid.CalcHintRect(MaxWidth: Integer;
    const AHint: string; HintWnd: THintWindow): TRect;
begin
    Result := HintWnd.CalcHintRect(Screen.Width, AHint, nil)
end;

procedure TExDBGrid.DoHint(X, Y: Integer);
const
    TextOffset = 2;
var
    Col, Row, LogCol, LogRow: Longint;
    R, OldR: TRect;
    Pt: TPoint;
    GPt: TGridCoord;
    OldActive: Integer;
    Text: string;
begin
    GPt := MouseCoord(X, Y);
    Col := GPt.X;
    Row := GPt.Y;
    LogCol := Col;
    LogRow := Row;

    if dgTitles in Options then
        Dec(LogRow);

    if dgIndicator in Options then
        Dec(LogCol);

    Text := '';

    if (DataLink.Active) and (LogCol >= 0) and (LogRow >= 0) then
        begin
            OldActive := DataLink.ActiveRecord;
            try
                DataLink.ActiveRecord := LogRow;

                if not (Columns[LogCol].Field is TMemoField) then
                    Text := Columns[LogCol].Field.DisplayText
                else
                    begin
                        Text := Columns[LogCol].Field.AsString;
                    end;
            finally
                DataLink.ActiveRecord := OldActive
            end
        end;

    Canvas.Font := Font;

    if (Text <> '') and not EditorMode and
        (Canvas.TextWidth(Text) + TextOffset > ColWidths[Col]) and
        not (csDesigning in ComponentState) then
        begin
            if not Assigned(FHintWnd) then
                begin
                    FHintWnd := HintWindowClass.Create(Self);
                    FHintWnd.Color := Application.HintColor;
                end;
            Hint := Text + '|' + GetLongHint(Hint);
            R := CalcHintRect(Screen.Width, Hint, FHintWnd);

            Pt := ClientToScreen(CellRect(Col, Row).TopLeft);
            Dec(Pt.X);
            Dec(Pt.Y);
            OffsetRect(R, Pt.X, Pt.Y);
            if R.Right > Screen.Width then
                OffsetRect(R, Screen.Width - R.Right, 0);
            if R.Bottom > Screen.Height then
                OffsetRect(R, Screen.Height - R.Bottom, 0);

            GetWindowRect(FHintWnd.Handle, OldR);
            if not IsWindowVisible(FHintWnd.Handle) or
                not ((R.Left = OldR.Left) and (R.Top = OldR.Top)) then
                FHintWnd.ActivateHint(R, GetShortHint(Hint));
        end
    else
        if Assigned(FHintWnd) then
            FHintWnd.ReleaseHandle
end;

procedure TExDBGrid.SetDefaultRowHeight(Value: Integer);
begin
    if Value = 0 then
        Value := inherited DefaultRowHeight;

    inherited DefaultRowHeight := Value;

    FNewDefaultRowHeight := Value;

    if dgTitles in Options then
        begin
            Canvas.Font := TitleFont;
            RowHeights[0] := Canvas.TextHeight('Wg') + 4;
        end;
end;

procedure TExDBGrid.LayoutChanged;
begin
    inherited;

    SetDefaultRowHeight(FNewDefaultRowHeight);

    if FMultiLineTitles then
        begin
            UpdateTitlesHeight;
        end;

    if MultiLineRows then
        begin
            SetDefaultRowHeight(FRowHeight * LinesPerRow);
        end;
end;

procedure TExDBGrid.RowHeightsChanged;
var
    i, ThisHasChanged, Def: Integer;
begin
    ThisHasChanged := -1;
    Def := DefaultRowHeight;

    for i := Ord(dgTitles in Options) to RowCount do
        if RowHeights[i] <> Def then
            begin
                ThisHasChanged := i;
                Break;
            end;

    if ThisHasChanged <> -1 then
        begin
            SetDefaultRowHeight(RowHeights[ThisHasChanged]);
            RecreateWnd;
        end;

    if not (dgAlwaysShowEditor in TExDBGrid(Self).Options) then
        begin
            inherited;
        end;
end;

procedure TExDBGrid.CellClick(Column: TColumn);
begin
    if not (csDesigning in ComponentState) then
        begin
            if not ReadOnly and DataLink.Active and not DataLink.Readonly then
                begin
                    BeginUpdate;

                    if Assigned(FSearchEdit) then
                        FSearchEdit.Visible := False;

                    if not (dgRowSelect in Options) then
                        begin
                            if (FDisplayBool) then
                                begin
                                    if (DataLink <> nil) and (DataLink.Active) and Assigned(Column.Field) and (Column.Field.DataType = ftBoolean) and (CanEditModify = True) then
                                        begin
                                            try
                                                if Column.Field.AsBoolean = True then
                                                    Column.Field.AsBoolean := False
                                                else
                                                    if Column.Field.AsBoolean = False then
                                                        Column.Field.AsBoolean := True;
                                            except
                                                Column.Field.Clear;
                                            end;
                                        end;
                                end;

                            if (FDisplayDateTime) then
                                begin
                                    if (DataLink <> nil) and (DataLink.Active) and Assigned(Column.Field) and (Column.Field is TDateTimeField) then
                                        begin
                                            with DateTimePicker do
                                                begin
                                                    Application.ProcessMessages;
                                                    Visible := True;
                                                    SetFocus;
                                                    Application.ProcessMessages;
                                                    Exit;
                                                end;
                                        end;
                                end;
                        end;

                    inherited CellClick(Column);

                    EndUpdate;
                end;
        end;
end;

procedure TExDBGrid.DblClick;
begin
    if not (csDesigning in ComponentState) then
        begin
            if not ReadOnly and DataLink.Active and not DataLink.Readonly then
                begin
                    BeginUpdate;

                    if not (dgRowSelect in Options) then
                        begin
                            if (DataLink <> nil) and (DataLink.Active) and Assigned(SelectedField) and (not (SelectedField is TMemoField) and (SelectedField is TBlobField)) then
                                begin
                                    Application.CreateForm(TExDBGridCtlsForm, ExDBGridCtlsForm);
                                    ExDBGridCtlsForm.BlobCaption := Format('Field: %s', [SelectedField.DisplayLabel]);
                                    ExDBGridCtlsForm.BlobField := SelectedField;
                                    ExDBGridCtlsForm.DataSource := DataLink.DataSource;
                                    ExDBGridCtlsForm.ShowModal;
                                    ExDBGridCtlsForm.Release;
                                end;

                            if (DataLink <> nil) and DataLink.Active and Assigned(SelectedField) and (SelectedField is TMemoField) then
                                begin
                                    Application.CreateForm(TExDBGridCtlsForm, ExDBGridCtlsForm);
                                    ExDBGridCtlsForm.BlobCaption := Format('Field: %s', [SelectedField.DisplayLabel]);
                                    ExDBGridCtlsForm.BlobField := SelectedField;
                                    ExDBGridCtlsForm.DataSource := DataLink.DataSource;
                                    ExDBGridCtlsForm.ShowModal;
                                    ExDBGridCtlsForm.Release;
                                end;
                        end;

                    EndUpdate;
                end;

            inherited DblClick;
        end;
end;

procedure TExDBGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
    style: UINT;
    TmpRect: TRect;
    FactorX, FactorY: Double;
    TmpWidth, TmpHeight: Integer;
    CWidth, CHeight: Integer;
    BWidth, BHeight: Integer;
    vAlignment: TAlignment;
    I: Integer;
    w, h: Integer;
    Photo: TJPEGImage;
    Image1: TImage;
    FField: TBlobField;
    MS: TBlobStream;
    MemSize: LongInt;
    Buffer: Pointer;
    TempInfo: Boolean;
    Region, OldClipRegion: HRgn;
    ClipRegionExists: Boolean;
begin
    Image1 := nil;
    Photo := nil;
    MS := nil;

    BeginUpdate;

    with Canvas do
        begin
            Lock;

            TmpRect := Rect;

            FillRect(Rect);

            if FUseRowColors = True then
                begin
                    if (not (gdSelected in State)) and (not (gdFixed in State)) then
                        begin
                            Canvas.Brush.Style := bsSolid;
                            if ((Rect.Top div (Rect.Bottom - Rect.Top + 1)) mod 2) = 0 then
                                Canvas.Brush.Color := FRowColor2
                            else
                                Canvas.Brush.Color := FRowColor1;

                            FillRect(Rect);
                        end;
                end
            else
                begin
                    if FUseBackgroundPicture = True then
                        if (not (gdSelected in State)) and (not (gdFixed in State)) then
                            if Assigned(BKBmp) then
                                begin
                                    begin
                                        w := Rect.Right - Rect.Left;
                                        h := Rect.Bottom - Rect.Top;
                                        BitBlt(TExDBGrid(Self).Canvas.Handle, Rect.Left, Rect.Top, w, h,
                                            BkBmp.Canvas.Handle, Rect.Left, Rect.Top, SRCCOPY);
                                        Brush.Style := bsClear;
                                    end;
                                end;
                end;

            if (gdFocused in State) and (not (gdFixed in State)) then
                begin
                    Brush.Color := FHighlightColor;
                    Font.Color := FHighlightFontColor;

                    FillRect(Rect);
                end;

            if (gdSelected in State) and (not (gdFixed in State)) then
                begin
                    Brush.Color := FHighlightColor;
                    Font.Color := FHighlightFontColor;

                    FillRect(Rect);
                end;

            if (not (gdSelected in State)) and (not (gdFixed in State)) then
                begin
                    if (not (gdFixed in State)) and (Column <> nil) and (Column.Field <> nil) then
                        ApplyCellAttribute(Column.Field, Canvas, State);
                end;

            if not (Column.Field is TMemoField) and (Column.Field is TBlobField) then
                begin
                    if (FDisplayImages) then
                        begin
                            if (gdFocused in State) or (gdSelected in State) then
                                begin
                                    Brush.Color := FImageHighlightColor;
                                    Font.Color := TExDBGrid(Self).Font.Color;

                                    FillRect(Rect);
                                end;

                            try
                                try
                                    if Assigned(Column.Field) then
                                        begin
                                            FField := Column.Field as TBlobField;
                                            try
                                                Image1 := TImage.Create(TExDBGrid(Self));
                                                with Image1 do
                                                    begin
                                                        AutoSize := True;
                                                        Center := True;
                                                        Stretch := False;
                                                    end;

                                                Image1.Picture.Assign(FField);
                                            except
                                                try
                                                    Photo := TJPEGImage.Create;

                                                    if Assigned(Image1) then
                                                        begin
                                                            Image1.Free;
                                                            Image1 := nil;
                                                        end;

                                                    MS := TBlobStream.Create(FField, bmRead);
                                                    Photo.LoadFromStream(MS);

                                                    Image1 := TImage.Create(TExDBGrid(Self));
                                                    with Image1 do
                                                        begin
                                                            AutoSize := True;
                                                            Center := True;
                                                            Stretch := False;
                                                        end;

                                                    Image1.Picture.Assign(Photo);
                                                finally
                                                    if Assigned(Photo) then
                                                        Photo.Free;

                                                    if Assigned(MS) then
                                                        MS.Free;
                                                end;
                                            end;
                                        end;

                                    CWidth := Rect.Right - Rect.Left + 1 - 1;
                                    CHeight := Rect.Bottom - Rect.Top + 1 - 1;

                                    BWidth := Image1.Width;
                                    BHeight := Image1.Height;

                                    try
                                        if BWidth = 0 then
                                            FactorX := 0
                                        else
                                            FactorX := CWidth / BWidth;

                                        if BHeight = 0 then
                                            FactorY := 0
                                        else
                                            FactorY := CHeight / BHeight;
                                    except
                                        FactorX := 1;
                                        FactorY := 1;
                                    end;

                                    if FactorY < FactorX then
                                        begin
                                            TmpWidth := Round(BWidth * FactorY);
                                            TmpHeight := CHeight;
                                        end
                                    else
                                        begin
                                            TmpHeight := Round(BHeight * FactorX);
                                            TmpWidth := CWidth;
                                        end;

                                    SetRect(TmpRect, 0, 0, TmpWidth, TmpHeight);
                                    OffsetRect(TmpRect, Rect.Left + ((CWidth - TmpWidth) div 2), Rect.Top + ((CHeight - TmpHeight) div 2));

                                    try
                                        TempInfo := Image1.Picture.Graphic is TJPEGImage;

                                        if TempInfo then
                                            StretchDraw(TmpRect, TJPEGImage(Image1.Picture.Graphic))
                                        else
                                            StretchDraw(TmpRect, Image1.Picture.Graphic);
                                    except
                                        if (gdSelected in State) and (not (gdFixed in State)) then
                                            begin
                                                Brush.Color := FHighlightColor;
                                                Font.Color := FHighlightFontColor;

                                                FillRect(Rect);
                                            end;

                                        FillRect(Rect);
                                        TmpRect := Rect;
                                        Inc(TmpRect.Top, 2);
                                        Inc(TmpRect.Left, 2);
                                        Inc(TmpRect.Right, -2);

                                        if FShowTextEllipsis then
                                            DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                                        else
                                            DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                                    end;
                                except
                                    if (gdSelected in State) and (not (gdFixed in State)) then
                                        begin
                                            Brush.Color := FHighlightColor;
                                            Font.Color := FHighlightFontColor;

                                            FillRect(Rect);
                                        end;

                                    FillRect(Rect);
                                    TmpRect := Rect;
                                    Inc(TmpRect.Top, 2);
                                    Inc(TmpRect.Left, 2);
                                    Inc(TmpRect.Right, -2);

                                    if FShowTextEllipsis then
                                        DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                                    else
                                        DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                                end;
                            finally
                                if Assigned(Image1) then
                                    Image1.Free;
                            end;
                        end
                    else
                        begin
                            FillRect(Rect);
                            TmpRect := Rect;
                            Inc(TmpRect.Top, 2);
                            Inc(TmpRect.Left, 2);
                            Inc(TmpRect.Right, -2);

                            if FShowTextEllipsis then
                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                            else
                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                        end;
                end
            else
                if Column.Field is TMemoField then
                    begin
                        if (FDisplayMemo) then
                            begin
                                try
                                    FillRect(Rect);
                                    TmpRect := Rect;
                                    Inc(TmpRect.Top, 2);
                                    Inc(TmpRect.Left, 2);

                                    if FShowTextEllipsis then
                                        DrawText(Canvas.Handle, PChar(Column.Field.AsString), Length(Column.Field.AsString), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_LEFT)
                                    else
                                        DrawText(Canvas.Handle, PChar(Column.Field.AsString), Length(Column.Field.AsString), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_LEFT);

                                    if (gdFocused in State) then
                                        begin
                                            if DBMemo = nil then
                                                DBMemo := TDBMemo.Create(TExDBGrid(Self));

                                            with DBMemo do
                                                begin
                                                    Visible := False;
                                                    BorderStyle := bsNone;
                                                    ControlStyle := ControlStyle + [csOpaque];
                                                    Parent := TExDBGrid(Self);
                                                    DataSource := nil;
                                                    DataField := '';
                                                    OnKeyDown := OnKeyDBMemo;
                                                    OnExit := OnDBExit;
                                                    Top := TmpRect.Top - 2;
                                                    Left := TmpRect.Left - 2;
                                                    Height := (TmpRect.Bottom - TmpRect.Top + 2);
                                                    Width := (TmpRect.Right - TmpRect.Left + 2);
                                                    ParentFont := True;
                                                    ParentColor := False;
                                                    Color := TExDBGrid(Self).EditColor;
                                                    if FMemoViewType = WordWrapOn then
                                                        begin
                                                            ScrollBars := ssNone;
                                                            WordWrap := True;
                                                        end
                                                    else
                                                        if FMemoViewType = ScrollBarsOn then
                                                            begin
                                                                WordWrap := False;
                                                                ScrollBars := ssBoth;
                                                            end;
                                                    Self.SetFocus;
                                                end;
                                        end;
                                finally
                                end;
                            end
                        else
                            begin
                                FillRect(Rect);
                                TmpRect := Rect;
                                Inc(TmpRect.Top, 2);
                                Inc(TmpRect.Left, 2);
                                Inc(TmpRect.Right, -2);

                                if FShowTextEllipsis then
                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                                else
                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                            end;
                    end
                else
                    if Column.Field is TBooleanField then
                        begin
                            if (FDisplayBool) then
                                begin
                                    FillRect(Rect);

                                    if FFlatCheckBox then
                                        if FFlatCheckBoxType = Normal then
                                            begin
                                                ClipRegionExists := False;
                                                OldClipRegion := CreateRectRgn(0, 0, 0, 0);
                                                ClipRegionExists := GetClipRgn(Handle, OldClipRegion) = 1;
                                            end;

                                    TmpRect := Rect;
                                    TmpRect.Left := Rect.Left + (Rect.Right - Rect.Left - GCheckWidth) div 2;
                                    TmpRect.Right := TmpRect.Left + GCheckWidth;
                                    TmpRect.Top := Rect.Top + (Rect.Bottom - Rect.Top - GCheckWidth) div 2;
                                    TmpRect.Bottom := TmpRect.Top + GCheckHeight;

                                    if FFlatCheckBox then
                                        if FFlatCheckBoxType = Normal then
                                            begin
                                                Region := CreateRectRgnIndirect(TmpRect);
                                                ExtSelectClipRgn(Handle, Region, RGN_AND);
                                                DeleteObject(Region);
                                                InflateRect(TmpRect, 1, 1);
                                            end;

                                    Style := DFCS_CHECKED;

                                    if Column.Field.AsBoolean = True then
                                        style := DFCS_CHECKED
                                    else
                                        if Column.Field.AsBoolean = False then
                                            style := DFCS_BUTTONCHECK;

                                    if FFlatCheckBox then
                                        DrawFrameControl(Canvas.Handle, TmpRect, DFC_BUTTON, style or DFCS_FLAT)
                                    else
                                        DrawFrameControl(Canvas.Handle, TmpRect, DFC_BUTTON, style);

                                    if FFlatCheckBox then
                                        if FFlatCheckBoxType = Normal then
                                            begin
                                                if ClipRegionExists then
                                                    SelectClipRgn(Handle, OldClipRegion)
                                                else
                                                    SelectClipRgn(Handle, 0);

                                                DeleteObject(OldClipRegion);
                                                InflateRect(TmpRect, -1, -1);
                                                Brush.Color := clGray;
                                                FrameRect(TmpRect);
                                            end;
                                end
                            else
                                begin
                                    vAlignment := Column.Field.Alignment;

                                    case vAlignment of
                                        taRightJustify:
                                            begin
                                                FillRect(Rect);
                                                TmpRect := Rect;
                                                Inc(TmpRect.Top, 2);
                                                Inc(TmpRect.Left, 2);
                                                Inc(TmpRect.Right, -2);

                                                if FShowTextEllipsis then
                                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_RIGHT)
                                                else
                                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_RIGHT);
                                            end;

                                        taLeftJustify:
                                            begin
                                                FillRect(Rect);
                                                TmpRect := Rect;
                                                Inc(TmpRect.Top, 2);
                                                Inc(TmpRect.Left, 2);
                                                Inc(TmpRect.Right, -2);

                                                if FShowTextEllipsis then
                                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_LEFT)
                                                else
                                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_LEFT);
                                            end;

                                        taCenter:
                                            begin
                                                FillRect(Rect);
                                                TmpRect := Rect;
                                                Inc(TmpRect.Top, 2);
                                                Inc(TmpRect.Left, 2);
                                                Inc(TmpRect.Right, -2);

                                                if FShowTextEllipsis then
                                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                                                else
                                                    DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                                            end;
                                    end;
                                end;
                        end
                    else
                        if Column.Field is TDateTimeField then
                            begin
                                if (FDisplayDateTime) then
                                    begin
                                        try
                                            FillRect(Rect);
                                            TmpRect := Rect;
                                            Inc(TmpRect.Top, 2);
                                            Inc(TmpRect.Left, 2);

                                            if FShowTextEllipsis then
                                                DrawText(Canvas.Handle, PChar(Column.Field.AsString), Length(Column.Field.AsString), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_LEFT)
                                            else
                                                DrawText(Canvas.Handle, PChar(Column.Field.AsString), Length(Column.Field.AsString), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_LEFT);

                                            if (gdFocused in State) then
                                                begin
                                                    if DateTimePicker = nil then
                                                        DateTimePicker := TExDateTimePicker.Create(TExDBGrid(Self));

                                                    with DateTimePicker do
                                                        begin
                                                            Visible := False;
                                                            DateMode := dmComboBox;
                                                            if (not (Column.Field.DataType = ftTime)) and ((Column.Field.DataType = ftDate) or (Column.Field.DataType = ftDateTime)) then
                                                                Kind := (dtkDate)
                                                            else
                                                                Kind := (dtkTime);
                                                            BorderStyle := bsNone;
                                                            ControlStyle := ControlStyle + [csOpaque];
                                                            Parent := TExDBGrid(Self);
                                                            OnKeyDown := OnKeyDateTimePicker;
                                                            OnExit := OnDTPExit;
                                                            Top := TmpRect.Top - 2;
                                                            Left := TmpRect.Left - 2;
                                                            Height := (TmpRect.Bottom - TmpRect.Top + 2);
                                                            Width := (TmpRect.Right - TmpRect.Left + 2);
                                                            ParentFont := True;
                                                            ParentColor := False;
                                                            Color := TExDBGrid(Self).EditColor;
                                                            BorderColor := TExDBGrid(Self).EditColor;
                                                            if Column.Field.IsNull then
                                                                DateTimePicker.Date := Date
                                                            else
                                                                DateTimePicker.Date := Column.Field.AsDateTime;
                                                            Self.SetFocus;
                                                        end;
                                                end;
                                        finally
                                        end;
                                    end
                                else
                                    begin
                                        FillRect(Rect);
                                        TmpRect := Rect;
                                        Inc(TmpRect.Top, 2);
                                        Inc(TmpRect.Left, 2);
                                        Inc(TmpRect.Right, -2);

                                        if FShowTextEllipsis then
                                            DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                                        else
                                            DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                                    end;
                            end
                        else
                            begin
                                vAlignment := Column.Field.Alignment;

                                case vAlignment of
                                    taRightJustify:
                                        begin
                                            FillRect(Rect);
                                            TmpRect := Rect;
                                            Inc(TmpRect.Top, 2);
                                            Inc(TmpRect.Left, 2);
                                            Inc(TmpRect.Right, -2);

                                            if FShowTextEllipsis then
                                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_RIGHT)
                                            else
                                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_RIGHT);
                                        end;

                                    taLeftJustify:
                                        begin
                                            FillRect(Rect);
                                            TmpRect := Rect;
                                            Inc(TmpRect.Top, 2);
                                            Inc(TmpRect.Left, 2);
                                            Inc(TmpRect.Right, -2);

                                            if FShowTextEllipsis then
                                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_LEFT)
                                            else
                                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_LEFT);
                                        end;

                                    taCenter:
                                        begin
                                            FillRect(Rect);
                                            TmpRect := Rect;
                                            Inc(TmpRect.Top, 2);
                                            Inc(TmpRect.Left, 2);
                                            Inc(TmpRect.Right, -2);

                                            if FShowTextEllipsis then
                                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or DT_NOPREFIX or DT_CENTER)
                                            else
                                                DrawText(Canvas.Handle, PChar(Column.Field.DisplayText), Length(Column.Field.DisplayText), TmpRect, DT_WORDBREAK or DT_NOPREFIX or DT_CENTER);
                                        end;
                                end;
                            end;

            if FCells3D = False then
                if FDrawFocusRect then
                    if (dgAlwaysShowSelection in Options) then
                        begin
                            if (gdSelected in State) then
                                if not (dgRowSelect in Options) then
                                    Canvas.DrawFocusRect(Rect);
                        end
                    else
                        begin
                            if (gdFocused in State) then
                                begin
                                    if not (dgRowSelect in Options) then
                                        Canvas.DrawFocusRect(Rect);
                                end
                            else
                                begin
                                    if (not (gdFocused in State)) and (gdSelected in State) then
                                        if not (dgRowSelect in Options) then
                                            begin
                                                Canvas.Brush.Color := clYellow;
                                                Canvas.FrameRect(Rect);
                                            end;
                                end;
                        end;

            Unlock;
        end;

    inherited DrawColumnCell(Rect, DataCol, Column, State);

    EndUpdate;
end;

procedure TExDBGrid.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
const
    AlignFlags: array[TAlignment] of Integer =
        (DT_LEFT or DT_EXPANDTABS or DT_NOPREFIX,
        DT_RIGHT or DT_EXPANDTABS or DT_NOPREFIX,
        DT_CENTER or DT_EXPANDTABS or DT_NOPREFIX);
var
    TitleText: string;
    TmpCol, i, j: LongInt;
    TmpRect: TRect;
begin
    if (gdFixed in AState) and (Ctl3D) and (ARow >= TitleOffset) and (ACol >= IndicatorOffset) then
        inherited DrawCell(ACol, ARow, ARect, AState - [gdFixed])
    else
        inherited DrawCell(ACol, ARow, ARect, AState);

    if (dgIndicator in Options) then
        TmpCol := ACol - 1
    else
        TmpCol := ACol;

    if (FCells3D = True) and ([dgRowLines, dgColLines] * Options = [dgRowLines, dgColLines]) then
        begin
            with ARect do
                begin
                    if (Color = clWhite) or (Color = clWindow) then
                        Color := TExDBGrid(Self).FixedColor;

                    if FTitleCheck then
                        begin
                            if (ARow = 0) and (ACol = 0) and (dgIndicator in Options) and (dgTitles in Options) then
                                begin
                                    Canvas.Brush.Color := clBlack;
                                    i := (ARect.Bottom - ARect.Top - 7) div 2;
                                    j := (ARect.Right - ARect.Left - 7) div 2;
                                    Canvas.Polygon([Point(ARect.Left + j, ARect.Top + i),
                                        Point(ARect.Left + j + 7, ARect.Top + i),
                                            Point(ARect.Left + j + (7 div 2), ARect.Bottom - i)]);
                                end;
                        end;

                    if ARow = 0 then
                        begin
                            if dgTitles in Options then
                                begin
                                    if FMultiLineTitles then
                                        begin
                                            if TmpCol >= 0 then
                                                begin
                                                    if Assigned(Columns[TmpCol]) then
                                                        begin
                                                            TitleText := Columns[TmpCol].Title.Caption;
                                                            if TitleText <> '' then
                                                                begin
                                                                    Canvas.Font := Columns[TmpCol].Title.Font;
                                                                    Canvas.Brush.Color := Columns[TmpCol].Title.Color;

                                                                    TmpRect := ARect;
                                                                    Inc(TmpRect.Top, 2);
                                                                    Inc(TmpRect.Left, 2);
                                                                    Canvas.FillRect(TmpRect);

                                                                    if FShowTitleEllipsis then
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or AlignFlags[Columns[TmpCol].Title.Alignment])
                                                                    else
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_WORDBREAK or AlignFlags[Columns[TmpCol].Title.Alignment]);
                                                                end;
                                                        end;
                                                end;
                                        end
                                    else
                                        begin
                                            if TmpCol >= 0 then
                                                begin
                                                    if Assigned(Columns[TmpCol]) then
                                                        begin
                                                            TitleText := Columns[TmpCol].Title.Caption;
                                                            if TitleText <> '' then
                                                                begin
                                                                    Canvas.Font := Columns[TmpCol].Title.Font;
                                                                    Canvas.Brush.Color := Columns[TmpCol].Title.Color;

                                                                    TmpRect := ARect;
                                                                    Inc(TmpRect.Top, 2);
                                                                    Inc(TmpRect.Left, 2);
                                                                    Canvas.FillRect(TmpRect);

                                                                    if FShowTitleEllipsis then
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or AlignFlags[Columns[TmpCol].Title.Alignment])
                                                                    else
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_SINGLELINE or AlignFlags[Columns[TmpCol].Title.Alignment]);
                                                                end;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;

                    Canvas.Pen.Color := clHighLightText;
                    Canvas.PolyLine([Point(Left, Bottom - 1), Point(Left, Top), Point(Right, Top)]);
                end;
        end
    else
        begin
            with ARect do
                begin
                    if (Color = clBtnFace) or (Color = clSilver) then
                        Color := clWindow;

                    if FTitleCheck then
                        begin
                            if (ARow = 0) and (ACol = 0) and (dgIndicator in Options) and (dgTitles in Options) then
                                begin
                                    Canvas.Brush.Color := clBlack;
                                    i := (ARect.Bottom - ARect.Top - 7) div 2;
                                    j := (ARect.Right - ARect.Left - 7) div 2;
                                    Canvas.Polygon([Point(ARect.Left + j, ARect.Top + i),
                                        Point(ARect.Left + j + 7, ARect.Top + i),
                                            Point(ARect.Left + j + (7 div 2), ARect.Bottom - i)]);
                                end;
                        end;

                    if ARow = 0 then
                        begin
                            if dgTitles in Options then
                                begin
                                    if FMultiLineTitles then
                                        begin
                                            if TmpCol >= 0 then
                                                begin
                                                    if Assigned(Columns[TmpCol]) then
                                                        begin
                                                            TitleText := Columns[TmpCol].Title.Caption;
                                                            if TitleText <> '' then
                                                                begin
                                                                    Canvas.Font := Columns[TmpCol].Title.Font;
                                                                    Canvas.Brush.Color := Columns[TmpCol].Title.Color;

                                                                    TmpRect := ARect;
                                                                    Inc(TmpRect.Top, 2);
                                                                    Inc(TmpRect.Left, 2);
                                                                    Canvas.FillRect(TmpRect);

                                                                    if FShowTitleEllipsis then
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or AlignFlags[Columns[TmpCol].Title.Alignment])
                                                                    else
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_WORDBREAK or AlignFlags[Columns[TmpCol].Title.Alignment]);
                                                                end;
                                                        end;
                                                end;
                                        end
                                    else
                                        begin
                                            if TmpCol >= 0 then
                                                begin
                                                    if Assigned(Columns[TmpCol]) then
                                                        begin
                                                            TitleText := Columns[TmpCol].Title.Caption;
                                                            if TitleText <> '' then
                                                                begin
                                                                    Canvas.Font := Columns[TmpCol].Title.Font;
                                                                    Canvas.Brush.Color := Columns[TmpCol].Title.Color;

                                                                    TmpRect := ARect;
                                                                    Inc(TmpRect.Top, 2);
                                                                    Inc(TmpRect.Left, 2);
                                                                    Canvas.FillRect(TmpRect);

                                                                    if FShowTitleEllipsis then
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_SINGLELINE or DT_END_ELLIPSIS or AlignFlags[Columns[TmpCol].Title.Alignment])
                                                                    else
                                                                        DrawText(Canvas.Handle, PChar(TitleText), Length(TitleText), TmpRect, DT_SINGLELINE or AlignFlags[Columns[TmpCol].Title.Alignment]);
                                                                end;
                                                        end;
                                                end;
                                        end;

                                    Canvas.Pen.Color := TExDBGrid(Self).FixedColor;
                                    Canvas.PolyLine([Point(Left + 1, Bottom - 1), Point(Right - 1, Bottom - 1), Point(Right - 1, Top)]);

                                    Canvas.Pen.Color := clBtnShadow;
                                    Canvas.PolyLine([Point(Left - 1, Bottom), Point(Right, Bottom), Point(Right, Top - 1)]);
                                end
                            else
                                begin
                                    Canvas.Pen.Color := TExDBGrid(Self).FixedColor;
                                    Canvas.PolyLine([Point(Left, Bottom), Point(Right, Bottom), Point(Right, Top - 1)]);
                                end;

                            if dgIndicator in Options then
                                begin
                                    if ACol = 0 then
                                        begin
                                            Canvas.Pen.Color := TExDBGrid(Self).FixedColor;
                                            Canvas.PolyLine([Point(Left + 1, Bottom - 1), Point(Right - 1, Bottom - 1), Point(Right - 1, Top)]);

                                            Canvas.Pen.Color := clBtnShadow;
                                            Canvas.PolyLine([Point(Left - 1, Bottom), Point(Right, Bottom), Point(Right, Top - 1)]);
                                        end;
                                end;
                        end
                    else
                        if ARow > 0 then
                            begin
                                if dgIndicator in Options then
                                    begin
                                        if ACol = 0 then
                                            begin
                                                Canvas.Pen.Color := TExDBGrid(Self).FixedColor;
                                                Canvas.PolyLine([Point(Left + 1, Bottom - 1), Point(Right - 1, Bottom - 1), Point(Right - 1, Top)]);

                                                Canvas.Pen.Color := clBtnShadow;
                                                Canvas.PolyLine([Point(Left - 1, Bottom), Point(Right, Bottom), Point(Right, Top - 1)]);
                                            end
                                        else
                                            begin
                                                Canvas.Pen.Color := TExDBGrid(Self).FixedColor;
                                                Canvas.PolyLine([Point(Left, Bottom), Point(Right, Bottom), Point(Right, Top - 1)]);
                                            end;
                                    end
                                else
                                    begin
                                        Canvas.Pen.Color := TExDBGrid(Self).FixedColor;
                                        Canvas.PolyLine([Point(Left, Bottom), Point(Right, Bottom), Point(Right, Top - 1)]);
                                    end;
                            end;
                end;
        end;
end;

procedure TExDBGrid.ColWidthsChanged;
begin
    inherited;
    try
        if Assigned(FOnColResize) then
            FOnColResize(TExDBGrid(Self));
    except
    end;
end;

procedure TExDBGrid.ColumnMoved(FromIndex, ToIndex: LongInt);
begin
    inherited ColumnMoved(FromIndex, ToIndex);
    Perform(WM_HSCROLL, 0, 0);
end;

procedure TExDBGrid.RowMoved(FromIndex, ToIndex: Longint);
begin
    inherited RowMoved(FromIndex, ToIndex);
    Perform(WM_HSCROLL, 0, 0);
end;

procedure TExDBGrid.SetCheckBoxSize;
begin
    with TBitmap.Create do
        try
            Handle := LoadBitmap(0, PChar(32759));
            GCheckWidth := Width div 4;
            GCheckHeight := Height div 3;
        finally
            Free;
        end;
end;

procedure TExDBGrid.ApplyCellAttribute(Field: TField; Canvas: TCanvas; State: TGridDrawState);
begin
    if Assigned(FOnApplyCellAttribute) then
        FOnApplyCellAttribute(Self, Field, Canvas, State);
end;

procedure TExDBGrid.CellAttribute(Field: TField; Canvas: TCanvas; State: TGridDrawState);
begin
    ApplyCellAttribute(Field, Canvas, State);
end;

procedure TExDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    CursorPos: TPoint;
begin
    if Button = mbRight then
        begin
            if Assigned(PopupMenu) then
                if not Assigned(FOnRightClick) then
                    begin
                        GetCursorPos(CursorPos);
                        PopupMenu.PopupComponent := Self;
                        PopupMenu.Popup(CursorPos.X, CursorPos.Y);
                        Exit;
                    end;
        end;

    if not AcquireFocus then
        Exit;

    if Assigned(FOnMouseDown) then
        FOnMouseDown(Self, Button, Shift, X, Y);

    inherited MouseDown(Button, Shift, X, Y);
end;

procedure TExDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    Cell: TGridCoord;
    ACol, ARow: Longint;
    PopCoord: TPoint;
begin
    if Assigned(FOnMouseUp) then
        FOnMouseUp(Self, Button, Shift, X, Y);

    inherited MouseUp(Button, Shift, X, Y);

    if not (csDesigning in ComponentState) then
        begin
            Cell := MouseCoord(X, Y);
            ACol := Cell.X;
            ARow := Cell.Y;

            if (dgIndicator in Options) then
                Dec(ACol);

            if FTitleCheck then
                begin
                    if dgTitles in Options then
                        if dgIndicator in Options then
                            begin
                                if DataLink.Active then
                                    if ARow = 0 then
                                        if ACol = -1 then
                                            begin
                                                PopCoord := ClientToScreen(Point(X, Y));
                                                FExDBGridPopUpMenu.Popup(PopCoord.X, PopCoord.Y);
                                            end;
                            end;
                end;

            if (Cell.Y < TitleOffset) then
                LockedChanged;
        end;
end;

procedure TExDBGrid.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
    if Assigned(FOnMouseMove) then
        FOnMouseMove(Self, Shift, X, Y);

    inherited MouseMove(Shift, X, Y);
end;

procedure TExDBGrid.ColEnter;
begin
    if Col <= FixedCols then
        begin
            LeftCol := FixedCols;
            Col := FixedCols;
        end;

    if not (csDesigning in ComponentState) then
        begin
            if not ReadOnly and DataLink.Active and not DataLink.Readonly then
                begin
                    with Columns[SelectedIndex] do
                        if (Field is TBooleanField) or
                            (Field is TBlobField) or
                            (Field is TMemoField) or
                            ((Field is TDateTimeField) and (FDisplayDateTime)) then
                            begin
                                if (goEditing in TExDBGridMod(Self).Options) then
                                    begin
                                        BeginUpdate;
                                        TExDBGridMod(Self).Options := TExDBGridMod(Self).Options - [goEditing];
                                        EndUpdate;
                                    end;
                            end
                        else
                            begin
                                if not (goEditing in TExDBGridMod(Self).Options) then
                                    begin
                                        BeginUpdate;
                                        TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goEditing];
                                        EndUpdate;
                                    end;
                            end;

                    if TExDBGrid(Self).SelectedField.Lookup = True then
                        begin
                            TExDBGrid(Self).EditorMode := True;
                            keybd_event(VK_MENU, MapVirtualKey(VK_MENU, 0), 0, 0);
                            keybd_event(VK_DOWN, MapVirtualKey(VK_DOWN, 0), 0, 0);
                            keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
                            keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);
                        end;

                    if Assigned(FOnColEnter) then
                        FOnColEnter(Self);
                end
            else
                if ReadOnly or DataLink.Readonly then
                    begin
                        if (goEditing in TExDBGridMod(Self).Options) then
                            begin
                                BeginUpdate;
                                TExDBGridMod(Self).Options := TExDBGridMod(Self).Options - [goEditing];
                                EndUpdate;
                            end;

                        if Assigned(FOnColEnter) then
                            FOnColEnter(Self);
                    end;
        end;
end;

procedure TExDBGrid.WMSize(var Message: TWMSize);
begin
    try
        inherited;

        if (DataLink <> nil) and (DataLink.Active) then
            begin
                if FGridAutoSize then
                    begin
                        if Columns.State <> csCustomized then
                            SetGridAutoSize(FGridAutoSize);
                    end;

                if FGridAutoWidth then
                    begin
                        if Columns.State <> csCustomized then
                            SetGridAutoWidth(FGridAutoWidth);
                    end;

                ColEnter;
            end;
        Invalidate;
    except
    end;
end;

procedure TExDBGrid.CMFontChanged(var Message: TMessage);
var
    h: Integer;
begin
    inherited;

    Canvas.Font.Assign(font);
    h := Canvas.TextHeight('Wg');

    if FRowHeight < h then
        SetDefaultRowHeight(h);

    if (csdesigning in componentstate) then
        Invalidate;
end;

procedure TExDBGrid.KeyDown(var Key: Word; Shift: TShiftState);
const
    vk_c = $43;
    vk_v = $56;
var
    h: THandle;
    r: Integer;
begin
    if FEnterAsTab then
        if Key = VK_RETURN then
            Key := VK_TAB;

    inherited KeyDown(Key, Shift);

    if not (csDesigning in ComponentState) then
        begin
            if not ReadOnly and DataLink.Active and not DataLink.Readonly then
                begin
                    BeginUpdate;

                    if Shift = [ssCtrl] then
                        begin
                            if key = vk_v then
                                Shift := [ssShift];
                            if (key = vk_c) or (key = vk_v) then
                                begin
                                    gk := Key;
                                    key := 0;
                                end;
                        end;

                    if (Key = 32) or (Key = VK_RETURN) then
                        begin
                            if not (dgRowSelect in Options) then
                                begin
                                    if Columns[SelectedIndex].Field is TBooleanField then
                                        begin
                                            if (FDisplayBool) then
                                                begin
                                                    if not Columns[SelectedIndex].Field.ReadOnly then
                                                        CellClick(Columns[SelectedIndex]);
                                                end
                                            else
                                                begin
                                                    if not (goEditing in TExDBGridMod(Self).Options) then
                                                        begin
                                                            BeginUpdate;
                                                            TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goEditing];
                                                            EndUpdate;
                                                        end;
                                                end;
                                        end;

                                    if not (Columns[SelectedIndex].Field is TMemoField) and (Columns[SelectedIndex].Field is TBlobField) then
                                        begin
                                            DblClick;
                                        end;

                                    if (FDisplayMemo) then
                                        begin
                                            if not (FFullSizeMemo) then
                                                if Columns[SelectedIndex].Field is TMemoField then
                                                    begin
                                                        with DBMemo do
                                                            begin
                                                                Application.ProcessMessages;
                                                                DataSource := DataLink.DataSource;
                                                                DataField := Columns[SelectedIndex].FieldName;
                                                                Visible := True;
                                                                SetFocus;
                                                                Application.ProcessMessages;
                                                                h := Windows.GetFocus;
                                                                SendMessage(h, EM_SETSEL, 0, -1);
                                                                SendMessage(h, EM_SCROLLCARET, 0, 0);
                                                            end;
                                                    end;
                                        end
                                    else
                                        begin
                                            if Columns[SelectedIndex].Field is TMemoField then
                                                begin
                                                    DblClick;
                                                end;
                                        end;

                                    if (FDisplayDateTime) then
                                        begin
                                            if Columns[SelectedIndex].Field is TDateTimeField then
                                                begin
                                                    with DateTimePicker do
                                                        begin
                                                            Application.ProcessMessages;
                                                            Visible := True;
                                                            SetFocus;
                                                            Application.ProcessMessages;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;

                    if (Key = VK_F2) then
                        begin
                            if not (dgRowSelect in Options) then
                                begin
                                    if Columns[SelectedIndex].Field is TBooleanField then
                                        begin
                                            if (FDisplayBool) then
                                                begin
                                                    if not Columns[SelectedIndex].Field.ReadOnly then
                                                        CellClick(Columns[SelectedIndex]);
                                                end
                                            else
                                                begin
                                                    if not (goEditing in TExDBGridMod(Self).Options) then
                                                        begin
                                                            BeginUpdate;
                                                            TExDBGridMod(Self).Options := TExDBGridMod(Self).Options + [goEditing];
                                                            EndUpdate;
                                                        end;
                                                end;
                                        end;

                                    if not (Columns[SelectedIndex].Field is TMemoField) and (Columns[SelectedIndex].Field is TBlobField) then
                                        begin
                                            DblClick;
                                        end;

                                    if (FDisplayMemo) then
                                        begin
                                            if not (FFullSizeMemo) then
                                                if Columns[SelectedIndex].Field is TMemoField then
                                                    begin
                                                        with DBMemo do
                                                            begin
                                                                Application.ProcessMessages;
                                                                DataSource := DataLink.DataSource;
                                                                DataField := Columns[SelectedIndex].FieldName;
                                                                Visible := True;
                                                                SetFocus;
                                                                Application.ProcessMessages;
                                                                h := Windows.GetFocus;
                                                                SendMessage(h, EM_SETSEL, Length(Columns[SelectedIndex].Field.Value), Length(Columns[SelectedIndex].Field.Value));
                                                                SendMessage(h, EM_SCROLLCARET, 0, 0);
                                                            end;
                                                    end;
                                        end
                                    else
                                        begin
                                            if Columns[SelectedIndex].Field is TMemoField then
                                                begin
                                                    DblClick;
                                                end;
                                        end;

                                    if (FDisplayDateTime) then
                                        begin
                                            if Columns[SelectedIndex].Field is TDateTimeField then
                                                begin
                                                    with DateTimePicker do
                                                        begin
                                                            Application.ProcessMessages;
                                                            Visible := True;
                                                            SetFocus;
                                                            Application.ProcessMessages;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;

                    if FAllowAutoAppend = False then
                        begin
                            if (Key = VK_DOWN) then
                                begin
                                    DataLink.DataSet.Next;
                                    if DataLink.DataSet.EOF then
                                        Key := 0
                                    else
                                        DataLink.DataSet.Prior;
                                end;
                        end;

                    if FUseRowColors then
                        begin
                            if (Key = VK_DOWN) or (Key = VK_NEXT) then
                                begin
                                    if FAllowAutoAppend then
                                        r := TExDBGrid(Self).VisibleRowCount
                                    else
                                        r := TExDBGrid(Self).VisibleRowCount - 1;
                                end
                            else
                                if (Key = VK_UP) or (Key = VK_PRIOR) then
                                    r := 1
                                else
                                    r := 0;
                            if TExDBGrid(Self).Row = r then
                                TExDBGrid(Self).Invalidate;
                        end;

                    EndUpdate;
                end;
        end;
end;

procedure TExDBGrid.KeyUp(var Key: Word; Shift: TShiftState);
begin
    if FEnterAsTab then
        if Key = VK_RETURN then
            Key := VK_TAB;

    inherited KeyUp(Key, Shift);
end;

procedure TExDBGrid.KeyPress(var Key: Char);
const
    vk_c = $43;
    vk_v = $56;
begin
    if not EditorMode then
        if FEnterAsTab and (Key = #13) then
            Key := #9;

    inherited KeyPress(Key);

    if not (csDesigning in ComponentState) then
        begin
            if not ReadOnly and DataLink.Active and not DataLink.Readonly then
                begin
                    BeginUpdate;

                    if gk <> 0 then
                        begin
                            Key := chr(0);
                            if gk = vk_c then
                                ClipBoard.AsText := Columns[SelectedIndex].Field.AsString;
                            if gk = vk_v then
                                begin
                                    if (DataLink.DataSet.State = dsEdit) or (DataLink.DataSet.State = dsInsert) then
                                        Columns[SelectedIndex].Field.AsString := ClipBoard.AsText
                                    else
                                        MessageBeep(0);
                                end;
                            gk := 0;
                        end;

                    EndUpdate;
                end;
        end;
end;

procedure TExDBGrid.Paint;
begin
    DrawBackground;

    inherited;
end;

procedure TExDBGrid.Loaded;
begin
    DBMemo := nil;
    DateTimePicker := nil;
    FSearchEdit := nil;

    FOrigColor := Font.Color;

    inherited Loaded;
end;

procedure TExDBGrid.CreateWnd;
begin
    inherited CreateWnd;

    SetLockedCols(FLockedCols);
end;

procedure TExDBGrid.SetColumnAttributes;
begin
    inherited SetColumnAttributes;

    LockedChanged;
    Invalidate;
end;

procedure TExDBGrid.Notification(AComponent: TComponent; AOperation: TOperation);
begin
    inherited Notification(AComponent, AOperation);
end;

procedure TExDBGrid.TitleClick(Column: TColumn);
var
    K: Integer;
    TempIndex: string;
    SearchTable: TTable;
    TmpRect: TRect;
begin
    if FSearchMode then
        begin
            if dgIndicator in Options then
                TmpRect := CellRect((Column.Index + 1), 0)
            else
                TmpRect := CellRect(Column.Index, 0);

            if FSearchEdit = nil then
                FSearchEdit := TEdit.Create(TExDBGrid(Self));

            with FSearchEdit do
                begin
                    Visible := False;
                    BorderStyle := bsNone;
                    ControlStyle := ControlStyle + [csOpaque];
                    Parent := TExDBGrid(Self);
                    OnKeyUp := OnKeyEditUp;
                    OnKeyDown := OnKeyEditDown;
                    OnExit := OnKeyEditExit;
                    Top := TmpRect.Top;
                    Left := TmpRect.Left;
                    Height := (TmpRect.Bottom - TmpRect.Top);
                    Width := (TmpRect.Right - TmpRect.Left);
                    ParentFont := True;
                    ParentColor := False;
                    Color := TExDBGrid(Self).EditColor;
                end;

            SearchTable := nil;

            if (Assigned(TExDBGrid(Self).DataSource)) and (TExDBGrid(Self).DataSource.DataSet <> nil) then
                begin
                    if TExDBGrid(Self).DataSource.DataSet is TTable then
                        SearchTable := TTable(TExDBGrid(Self).DataSource.DataSet);

                    if Assigned(SearchTable) then
                        begin
                            TempIndex := '';

                            with Columns[Column.Index] do
                                begin
                                    SearchTable.IndexDefs.Update;
                                    for K := 0 to SearchTable.IndexDefs.Count - 1 do
                                        if SearchTable.IndexDefs.Items[K].Fields = Columns[Column.Index].Field.FieldName then
                                            begin
                                                TempIndex := SearchTable.IndexDefs.Items[K].Fields;
                                            end;
                                end;

                            if TempIndex = '' then
                                FSearchEdit.Visible := False
                            else
                                begin
                                    with TTable(TExDBGrid(Self).DataSource.DataSet) do
                                        begin
                                            IndexFieldNames := TempIndex;
                                            First;
                                            TTable(TExDBGrid(Self).DataSource.DataSet).Refresh;
                                        end;
                                    FSearchEdit.Visible := True;
                                end;
                        end
                    else
                        FSearchEdit.Visible := False;
                end
            else
                FSearchEdit.Visible := False;

            if FSearchEdit.Visible then
                begin
                    FSearchEdit.Text := '';
                    FSearchEdit.SetFocus;
                end;
        end;

    inherited TitleClick(column);
end;

{ END PROTECTED }

{ BEGIN PUBLIC }

function TExDBGrid.CellRect(ACol, ARow: Longint): TRect;
begin
    Result := inherited CellRect(ACol, ARow);
end;

procedure TExDBGrid.MoveToRow(NewRow: Integer);
var
    Mark: TBookmarkStr;
begin
    Mark := DataLink.DataSet.Bookmark;
    DataLink.ActiveRecord := NewRow;
    DbiSetToBookmark(TDBDataSet(DataLink.DataSet).Handle, Pointer(Mark));
    DataLink.DataSet.Resync([rmExact]);
end;

procedure TExDBGrid.WMHScroll(var Msg: TWMHScroll);
begin
    BeginUpdate;

    if Msg.ScrollCode = sb_ThumbTrack then
        Perform(wm_HScroll, MakeLong(sb_ThumbPosition, Msg.Pos), Msg.ScrollBar);

    inherited;

    EndUpdate;
end;

procedure TExDBGrid.WMVScroll(var Msg: TWMVScroll);
var
    SHintText: string;
    SHintPoint: TPoint;
    SRHint: TRect;
begin
    BeginUpdate;

    if Msg.ScrollCode = sb_ThumbTrack then
        Perform(wm_VScroll, MakeLong(sb_ThumbPosition, Msg.Pos), Msg.ScrollBar);

    inherited;

    if not (csDesigning in ComponentState) then
        begin
            if FScrollHints and (not (DataLink.DataSource.State = dsInactive)) and Assigned(DataLink.DataSource) then
                begin
                    FScrollHintWnd.ReleaseHandle;

                    SHintText := ' ' + IntToStr(DataLink.DataSource.DataSet.RecNo) + ' of ' +
                        IntToStr(DataLink.DataSource.DataSet.RecordCount) + ' ';

                    GetCursorPos(SHintPoint);

                    SRHint := FScrollHintWnd.CalcHintRect(100, SHintText, nil);

                    OffsetRect(SRHint, SHintPoint.x + GetSystemMetrics(SM_CXCURSOR) div 2,
                        SHintPoint.y + GetSystemMetrics(SM_CYCURSOR) div 2);

                    if (GetKeystate(VK_LBUTTON) and $80) = $80 then
                        FScrollHintWnd.ActivateHint(SRHint, SHintText)
                    else
                        FScrollHintWnd.ReleaseHandle;
                end;
        end;

    EndUpdate;
end;

procedure TExDBGrid.CMMouseEnter(var Msg: TMessage);
var
    Pt: TPoint;
begin
    if FCellHints = True then
        begin
            GetCursorPos(Pt);
            Pt := ScreenToClient(Pt);
            DoHint(Pt.X, Pt.Y);
        end;

    if FHotTrack = True then
        begin
            Font.Color := FHotTrackColor;
        end;
end;

procedure TExDBGrid.CMMouseLeave(var Msg: TMessage);
begin
    inherited;

    if FCellHints = True then
        if Assigned(FHintWnd) then
            begin
                FHintWnd.Destroy;
                FHintWnd := nil;
            end;

    if FHotTrack = True then
        begin
            Font.Color := FOrigColor;
        end;
end;

procedure TExDBGrid.WMMouseMove(var Msg: TWMMouseMove);
begin
    inherited;

    if FCellHints = True then
        DoHint(Msg.XPos, Msg.YPos)
end;

procedure TExDBGrid.OnKeyDBMemo(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Key = VK_ESCAPE then
        with DBMemo do
            begin
                Visible := False;
                DataSource := nil;
                DataField := '';
                Self.SetFocus;
            end;
end;

procedure TExDBGrid.OnKeyDateTimePicker(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    case Key of
        VK_TAB, VK_RETURN:
            begin
                with DateTimePicker do
                    begin
                        Visible := False;
                        TExDBGrid(Self).DataSource.DataSet.Edit;
                        Columns[SelectedIndex].Field.AsDateTime := DateTimePicker.Date;
                        Self.SetFocus;
                    end;
            end;

        VK_ESCAPE:
            begin
                with DateTimePicker do
                    begin
                        Visible := False;
                        Self.SetFocus;
                    end;
            end;
    end;
end;

procedure TExDBGrid.OnKeyEditUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if (TExDBGrid(Self).DataSource <> nil) and (TExDBGrid(Self).DataSource.DataSet <> nil) then
        begin
            if TExDBGrid(Self).DataSource.DataSet is TTable then
                begin
                    with TTable(TExDBGrid(Self).DataSource.DataSet) do
                        FindNearest([FSearchEdit.Text]);
                end;
        end;
end;

procedure TExDBGrid.OnKeyEditDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if (Key = VK_ESCAPE) or (Key = VK_RETURN) then
        with FSearchEdit do
            begin
                Visible := False;
                Self.SetFocus;
            end;
end;

procedure TExDBGrid.OnDBExit(Sender: TObject);
begin
    if DBMemo.Visible then
        begin
            with DBMemo do
                begin
                    Visible := False;
                    DataSource := nil;
                    DataField := '';
                    Self.SetFocus;
                end;
        end;
end;

procedure TExDBGrid.OnDTPExit(Sender: TObject);
begin
    if DateTimePicker.Visible then
        begin
            with DateTimePicker do
                begin
                    Visible := False;
                    Self.SetFocus;
                end;
        end;
end;

procedure TExDBGrid.OnKeyEditExit(Sender: TObject);
begin
    if FSearchEdit.Visible then
        begin
            with FSearchEdit do
                begin
                    Visible := False;
                    Self.SetFocus;
                end;
        end;
end;

procedure TExDBGrid.ExportGrid(ExpFileName: string);
begin
    if ExpFileName = '' then
        ExpFileName := ExtractFilePath(Application.ExeName) + 'DataExport.Dat';

    if FExportDelimiter = Pipe then
        ExportToFile(ExpFileName, '|')
    else
        if FExportDelimiter = Comma then
            ExportToFile(ExpFileName, ',')
        else
            if FExportDelimiter = Quote then
                ExportToFile(ExpFileName, '"');

    MessageDlg('Exported To File: ' + ExtractFilePath(Application.ExeName) + 'DataExport.Dat', mtInformation, [mbOk], 0);
end;

procedure TExDBGrid.ExportToFile(ExpFileName: string; Delimiter: Char);
var
    slst: TStringList;
    strRow: string;
    j: Integer;
begin
    DataLink.DataSet.DisableControls;
    DataLink.DataSet.First;

    slst := TStringList.Create;
    try
        while not DataLink.DataSet.EOF do
            begin
                strRow := '';
                if dgIndicator in Options then
                    begin
                        for j := 0 to ColCount - 2 do
                            if strRow = '' then
                                begin
                                    strRow := TExDBGrid(Self).Columns[j].Field.DisplayText;
                                end
                            else
                                begin
                                    strRow := strRow + Delimiter + TExDBGrid(Self).Columns[j].Field.DisplayText;
                                end;
                        slst.Add(strRow);
                    end
                else
                    begin
                        for j := 0 to ColCount - 1 do
                            if strRow = '' then
                                begin
                                    strRow := TExDBGrid(Self).Columns[j].Field.DisplayText;
                                end
                            else
                                begin
                                    strRow := strRow + Delimiter + TExDBGrid(Self).Columns[j].Field.DisplayText;
                                end;
                        slst.Add(strRow);
                    end;
                DataLink.DataSet.Next;
            end;

        if (ExpFileName <> '') then
            slst.SaveToFile(ExpFileName);
    finally
        slst.Free;
    end;

    DataLink.DataSet.First;
    DataLink.DataSet.EnableControls;
end;

procedure TExDBGrid.GridPreview;
begin
    if ReportCaption <> '' then
        ShowReportByGrid(TExDBGrid(Self), ReportCaption)
    else
        ShowReportByGrid(TExDBGrid(Self), 'Data Printout');
end;

procedure TExDBGrid.DataSetPreview;
begin
    if ReportCaption <> '' then
        ShowReportByDataSet(TExDBGrid(Self).DataSource.DataSet, ReportCaption)
    else
        ShowReportByDataSet(TExDBGrid(Self).DataSource.DataSet, 'Data Printout');
end;

procedure TExDBGrid.SaveToRegistry;
var
    TempReg: TRegistry;
    I: Integer;
begin
    TempReg := TRegistry.Create;
    try
        TempReg.RootKey := HKEY_CURRENT_USER;

        if RegistrySaveName = '' then
            RegistrySaveName := 'ExDBGrid';

        TempReg.OpenKey('\Software\' + RegistrySaveName, True);

        for I := 0 to Columns.Count - 1 do
            begin
                TempReg.WriteString('Column' + IntToStr(I), DataLink.DataSource.DataSet.Fields[I].FieldName + ',' + IntToStr(Columns.Items[I].Width));
            end;
    finally
        TempReg.Free;
    end;
end;

procedure TExDBGrid.LoadFromRegistry;
var
    TempReg: TRegistry;
    I: Integer;
    RegString: string;
    TheField: TField;
    PosComma: Integer;
    TheFieldName: string;
    TheFieldWidth: Integer;
begin
    TempReg := TRegistry.Create;
    try
        if FGridAutoSize then
            FGridAutoSize := False;

        if FGridAutoWidth then
            FGridAutoWidth := False;

        TempReg.RootKey := HKEY_CURRENT_USER;

        if RegistrySaveName = '' then
            RegistrySaveName := 'ExDBGrid';

        TempReg.OpenKey('\Software\' + RegistrySaveName, False);

        for I := 0 to Columns.Count - 1 do
            begin
                RegString := TempReg.ReadString('Column' + IntToStr(I));
                PosComma := pos(',', RegString);
                if PosComma > 0 then
                    begin
                        TheFieldName := copy(RegString, 1, PosComma - 1);
                        TheFieldWidth := StrToInt(copy(RegString, PosComma + 1, 20));
                        if TheFieldName > '' then
                            begin
                                TheField := DataLink.DataSource.Dataset.FindField(TheFieldName);
                                if TheField <> nil then
                                    begin
                                        TheField.Index := I;
                                        Columns.Items[I].Width := TheFieldWidth;
                                    end;
                            end;
                    end;
            end;
    finally
        TempReg.Free;
    end;
end;

{ END PUBLIC }

destructor TExDBGrid.Destroy;
begin
    FExDBGridPopUpMenu.Free;

    FLockedFont.Free;
    FLockedFont := nil;

    if Assigned(DBMemo) then
        begin
            DBMemo.Free;
            DBMemo := nil;
        end;

    if Assigned(DateTimePicker) then
        begin
            DateTimePicker.Free;
            DateTimePicker := nil;
        end;

    if Assigned(FSearchEdit) then
        begin
            DBMemo.Free;
            DBMemo := nil;
        end;

    if Assigned(BkBmp) then
        begin
            BkBmp.Free;
            BkBmp := nil;
        end;

    if Assigned(FBackGroundPicture) then
        begin
            FBackGroundPicture.Free;
            FBackGroundPicture := nil;
        end;

    inherited Destroy;
end;

procedure Register;
begin
    RegisterComponents('GJL Software', [TExDBGrid]);
end;

end.

