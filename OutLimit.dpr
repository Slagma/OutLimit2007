program OutLimit;

uses
  Forms,
  Controls,
  uMain in 'uMain.pas' {fMain},
  uDm in 'uDm.pas' {fDm: TDataModule},
  uIngrids in 'uIngrids.pas' {fIngrids},
  uSearchWorks in 'uSearchWorks.pas' {fSearchWorks},
  uChangeIngrid in 'uChangeIngrid.pas' {fChangeIngrid},
  uKoefs in 'uKoefs.pas' {fKoefs},
  uEditKoefs in 'uEditKoefs.pas' {fEditKoefs},
  uTarifs in 'uTarifs.pas' {fTarifs},
  uEditTarif in 'uEditTarif.pas' {fEditTarif},
  uEditWork in 'uEditWork.pas' {fEditWork},
  uSetYear in 'uSetYear.pas' {fSetYear},
  uOtved in 'uOtved.pas' {fOtved},
  uChoiceBereg in 'uChoiceBereg.pas' {fChoiceBereg},
  uVipusk in 'uVipusk.pas' {fVipusk},
  uSostav in 'uSostav.pas' {fSostav},
  uEditVipusk in 'uEditVipusk.pas' {fEditVipusk},
  uEditCell in 'uEditCell.pas' {fEditCell},
  uStoki in 'uStoki.pas' {fStoki},
  uEditValue in 'uEditValue.pas' {fEditValue},
  uEditAct in 'uEditAct.pas' {fEditAct},
  uNewAct in 'uNewAct.pas' {fNewAct},
  uMultiSostav in 'uMultiSostav.pas' {fMultiSostav},
  uMultiChange in 'uMultiChange.pas' {fMultiChange},
  uMultiNorms in 'uMultiNorms.pas' {fMultiNorms},
  DateUtils in 'DateUtils.pas',
  uCopyData in 'uCopyData.pas' {fCopyData},
  uNormativ in 'uNormativ.pas' {fNormativ},
  uNewDate in 'uNewDate.pas' {fNewDate},
  uMultiNorms2 in 'uMultiNorms2.pas' {fMultiNorms2},
  uGroupps in 'uGroupps.pas' {fGroupps},
  uEditGrouppa in 'uEditGrouppa.pas' {fEditGrouppa},
  uNewCalc in 'uNewCalc.pas' {fNewCalc},
  uDm2 in 'uDm2.pas' {fDm2: TDataModule},
  uConvert in 'uConvert.pas' {fConvert},
  uConvertIngred in 'uConvertIngred.pas' {fConvertIngred},
  uNewWork in 'uNewWork.pas' {fNewWork},
  uObied in 'uObied.pas' {fObied},
  uRazied in 'uRazied.pas' {fRazied},
  uPrintStoki in 'uPrintStoki.pas' {fPrintStoki},
  uMultiSostav2 in 'uMultiSostav2.pas' {fMultiSostav2},
  uMultiSostav3 in 'uMultiSostav3.pas' {fMultiSostav3},
  uMultiNorms3 in 'uMultiNorms3.pas' {fMultiNorms3},
  uVolley in 'uvolley.pas' {fVolley},
  uNewVolley in 'uNewVolley.pas' {fNewVolley},
  uNewNorma in 'uNewNorma.pas' {fNewNorma},
  uEditNewNorma in 'uEditNewNorma.pas' {fEditNewNorma},
  uMultiSostav4 in 'uMultiSostav4.pas' {fMultiSostav4},
  uMultiSostav5 in 'uMultiSostav5.pas' {fMultiSostav5},
  uMultiSostav6 in 'uMultiSostav6.pas' {fMultiSostav6},
  uMultiSostavNew6 in 'uMultiSostavNew6.pas' {fMultiSostavNew6},
  uMultiSostav7 in 'uMultiSostav7.pas' {fMultiSostav7},
  uMultiSostavNew8 in 'uMultiSostavNew8.pas' {fMultiSostavNew8},
  uMultiSostavNew7 in 'uMultiSostavNew7.pas' {fMultiSostavNew7},
  uMultiSostav8 in 'uMultiSostav8.pas' {fMultiSostav7},
  uNewMultiSostav5 in 'uNewMultiSostav5.pas' {fNewMultiSostav5},
  uOtvedNew in 'uOtvedNew.pas' {fOtvedNew},
  uVipuskNew in 'uVipuskNew.pas' {fVipuskNew},
  uIngridsNorms in 'uIngridsNorms.pas' {fIngridsNorms},
  uIngridEdit in 'uIngridEdit.pas' {fIngridEdit};

{$R *.RES}

var
  MyCursor : TCursor;
begin
  Application.Initialize;
  Application.Title := '????????????? ?????';
  MyCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  Application.CreateForm(TfDm, fDm);
  Application.CreateForm(TfMain, fMain);
  Screen.Cursor := MyCursor;
  Application.Run;
end.
