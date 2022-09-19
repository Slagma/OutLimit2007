object fDm2: TfDm2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 607
  Top = 114
  Height = 480
  Width = 400
  object tVipusks: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'CodeWorks;Otbor'
    TableName = 'Vipusk.DB'
    Left = 56
    Top = 112
    object tVipusksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tVipusksCodeWorks: TIntegerField
      FieldName = 'CodeWorks'
    end
    object tVipusksCodeLab: TFloatField
      FieldName = 'CodeLab'
    end
    object tVipusksWorks: TStringField
      FieldName = 'Works'
      Size = 100
    end
    object tVipusksAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object tVipusksOtbor: TStringField
      FieldName = 'Otbor'
      Size = 30
    end
    object tVipusksPH_Min: TFloatField
      FieldName = 'PH_Min'
    end
    object tVipusksPH_Max: TFloatField
      FieldName = 'PH_Max'
    end
  end
  object tWorks: TTable
    Active = True
    DatabaseName = 'BD_Share2007'
    IndexFieldNames = 'Code'
    TableName = 'NewWorks.DB'
    Left = 56
    Top = 64
    object tWorksCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tWorksCodeArea: TFloatField
      FieldName = 'CodeArea'
    end
    object tWorksWorks: TStringField
      FieldName = 'Works'
      Size = 50
    end
    object tWorksBereg: TBooleanField
      FieldName = 'Bereg'
    end
    object tWorksSchet: TBooleanField
      FieldName = 'Schet'
    end
    object tWorksPlatNumber: TStringField
      FieldName = 'PlatNumber'
      Size = 5
    end
    object tWorksGruppa: TIntegerField
      FieldName = 'Gruppa'
    end
    object tWorksPH_Min: TFloatField
      FieldName = 'PH_Min'
    end
    object tWorksPH_Max: TFloatField
      FieldName = 'PH_Max'
    end
  end
  object tLocalVolumes: TTable
    DatabaseName = 'LocalBD2007'
    TableName = 'Volumes.DB'
    Left = 56
    Top = 16
    object tLocalVolumesCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object tLocalVolumesCodeVipusk: TIntegerField
      FieldName = 'CodeVipusk'
    end
    object tLocalVolumesChangeYear: TIntegerField
      FieldName = 'ChangeYear'
    end
    object tLocalVolumesChangeNorms: TDateField
      FieldName = 'ChangeNorms'
    end
    object tLocalVolumesChangeGrouppa: TDateField
      FieldName = 'ChangeGrouppa'
    end
    object tLocalVolumesCancelTarif: TDateField
      FieldName = 'CancelTarif'
    end
    object tLocalVolumesMonth: TIntegerField
      FieldName = 'Month'
    end
    object tLocalVolumesDaysToMonth: TIntegerField
      FieldName = 'DaysToMonth'
    end
    object tLocalVolumesV_Month: TFloatField
      FieldName = 'V_Month'
    end
    object tLocalVolumesV_Day: TFloatField
      FieldName = 'V_Day'
    end
    object tLocalVolumesDate1: TDateField
      FieldName = 'Date1'
    end
    object tLocalVolumesDate2: TDateField
      FieldName = 'Date2'
    end
    object tLocalVolumesDays: TIntegerField
      FieldName = 'Days'
    end
    object tLocalVolumesV: TFloatField
      FieldName = 'V'
    end
    object tLocalVolumesLimitDay: TFloatField
      FieldName = 'LimitDay'
    end
    object tLocalVolumesLimit: TFloatField
      FieldName = 'Limit'
    end
    object tLocalVolumesWorksLimit: TFloatField
      FieldName = 'WorksLimit'
    end
    object tLocalVolumesWorksPhakt: TFloatField
      FieldName = 'WorksPhakt'
    end
    object tLocalVolumesVipuskVolume: TFloatField
      FieldName = 'VipuskVolume'
    end
  end
end
