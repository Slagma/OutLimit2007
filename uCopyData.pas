unit uCopyData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, IniFiles;

type
  TfCopyData = class(TForm)
    eInput: TEdit;
    eOutput: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Ini : TIniFile;
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TfCopyData.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfCopyData.FormCreate(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\OutLimit.ini');
  eInput.Text  := Ini.ReadString('LabData', 'Откуда', 'a:\lab.arj');
  eOutput.Text := Ini.ReadString('LabData', 'Куда', 'd:\Enin\DB\LAB\');
end;

procedure TfCopyData.FormDestroy(Sender: TObject);
begin
  Ini.WriteString('LabData', 'Откуда', eInput.Text);
  Ini.WriteString('LabData', 'Куда', eOutput.Text);
  Ini.Free;
end;

procedure TfCopyData.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
