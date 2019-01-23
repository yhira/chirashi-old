object FormOption: TFormOption
  Left = 439
  Top = 200
  Width = 339
  Height = 287
  Caption = #12458#12503#12471#12519#12531
  Color = clBtnFace
  Font.Charset = SHIFTJIS_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    331
    260)
  PixelsPerInch = 96
  TextHeight = 12
  object Bevel1: TBevel
    Left = 8
    Top = 6
    Width = 313
    Height = 219
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 45
    Height = 12
    Caption = #20181#20999#12426#32218
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 36
    Height = 12
    Caption = #25913#34892#25968
  end
  object Label4: TLabel
    Left = 132
    Top = 81
    Width = 48
    Height = 12
    Caption = #26085#20184#26360#24335
  end
  object CheckBoxDelete: TCheckBox
    Left = 16
    Top = 24
    Width = 297
    Height = 17
    Caption = #12288#12288#12288#12288#12288#12288#12288'KB'#12434#36229#12360#12427#12513#12514#12399#19979#12363#12425#21066#38500
    TabOrder = 0
    OnClick = CheckBoxDeleteClick
  end
  object ButtonOK: TButton
    Left = 170
    Top = 230
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 6
  end
  object ButtonCancel: TButton
    Left = 250
    Top = 230
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #12461#12515#12531#12475#12523
    ModalResult = 2
    TabOrder = 7
  end
  object SpinEditDeleatSize: TSpinEdit
    Left = 32
    Top = 21
    Width = 49
    Height = 21
    MaxValue = 1000
    MinValue = 1
    TabOrder = 1
    Value = 10
  end
  object CheckBoxDateTime: TCheckBox
    Left = 16
    Top = 80
    Width = 105
    Height = 17
    Caption = #26085#20184#12434#25407#20837#12377#12427
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object EditSeparator: TEdit
    Left = 16
    Top = 120
    Width = 297
    Height = 20
    TabOrder = 4
    Text = '----------------'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 144
    Width = 297
    Height = 73
    Caption = #12510#12540#12459#12540
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 48
      Height = 12
      Caption = #26085#26178#12398#33394
    end
    object CheckBoxMarker: TCheckBox
      Left = 8
      Top = 16
      Width = 217
      Height = 17
      Caption = #12510#12540#12459#12540#12398#21033#29992
      TabOrder = 0
    end
    object ColorBoxDateTimeColor: TColorBox
      Left = 64
      Top = 43
      Width = 145
      Height = 22
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbPrettyNames]
      ItemHeight = 16
      TabOrder = 1
    end
  end
  object SpinEditLFCount: TSpinEdit
    Left = 56
    Top = 52
    Width = 33
    Height = 21
    MaxValue = 100
    MinValue = 0
    TabOrder = 3
    Value = 2
  end
  object EditDateFormat: TEdit
    Left = 184
    Top = 78
    Width = 129
    Height = 20
    TabOrder = 8
    Text = 'yyyy/mm/dd hh:nn'
  end
  object XPManifest1: TXPManifest
    Left = 264
    Top = 48
  end
end
