object Form1: TForm1
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = #1042#1099#1074#1086#1076' '#1082#1083#1080#1082#1086#1074' '#1084#1099#1096#1080
  ClientHeight = 416
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 662
    Height = 416
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1060#1072#1081#1083
      object LabeledEdit1: TLabeledEdit
        Left = 22
        Top = 31
        Width = 337
        Height = 21
        EditLabel.Width = 69
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
        TabOrder = 0
      end
      object GroupBox3: TGroupBox
        Left = 22
        Top = 199
        Width = 553
        Height = 178
        Caption = #1056#1080#1089#1086#1074#1072#1085#1080#1077
        TabOrder = 1
        object GroupBox4: TGroupBox
          Left = 16
          Top = 24
          Width = 297
          Height = 137
          Caption = #1058#1086#1095#1082#1080
          TabOrder = 0
          object Label2: TLabel
            Left = 17
            Top = 68
            Width = 64
            Height = 13
            Caption = #1062#1074#1077#1090' '#1075#1088#1072#1085#1080#1094
          end
          object Label1: TLabel
            Left = 17
            Top = 27
            Width = 106
            Height = 13
            Caption = #1047#1072#1083#1080#1074#1082#1072' '#1086#1082#1088#1091#1078#1085#1086#1089#1090#1080
          end
          object ColorBox1: TColorBox
            Left = 144
            Top = 23
            Width = 145
            Height = 22
            Selected = clBlue
            TabOrder = 0
          end
          object ColorBox2: TColorBox
            Left = 144
            Top = 63
            Width = 145
            Height = 22
            Selected = clActiveCaption
            TabOrder = 1
          end
          object LabeledEdit6: TLabeledEdit
            Left = 17
            Top = 105
            Width = 65
            Height = 21
            EditLabel.Width = 36
            EditLabel.Height = 13
            EditLabel.Caption = #1056#1072#1076#1080#1091#1089
            TabOrder = 2
            Text = '2'
          end
        end
        object GroupBox1: TGroupBox
          Left = 319
          Top = 24
          Width = 176
          Height = 71
          Caption = #1056#1072#1079#1084#1077#1088#1099
          TabOrder = 1
          object LabeledEdit5: TLabeledEdit
            Left = 96
            Top = 36
            Width = 65
            Height = 21
            EditLabel.Width = 37
            EditLabel.Height = 13
            EditLabel.Caption = #1042#1099#1089#1086#1090#1072
            TabOrder = 0
            Text = '768'
          end
          object LabeledEdit4: TLabeledEdit
            Left = 15
            Top = 36
            Width = 65
            Height = 21
            EditLabel.Width = 40
            EditLabel.Height = 13
            EditLabel.Caption = #1064#1080#1088#1080#1085#1072
            TabOrder = 1
            Text = '1024'
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 22
        Top = 58
        Width = 619
        Height = 135
        Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072
        TabOrder = 2
        object Label3: TLabel
          Left = 24
          Top = 80
          Width = 435
          Height = 13
          Caption = 
            #1048#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1090#1072#1082#1086#1075#1086' '#1090#1080#1087#1072': [log] CLICK on L(515,487)@S(0)[0,0 1' +
            '280x1024], - '#1090#1086#1075#1076#1072
        end
        object Label4: TLabel
          Left = 24
          Top = 104
          Width = 459
          Height = 13
          Caption = 
            #1053#1072#1095#1072#1083#1086': "[log] CLICK on L("         '#1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100' '#1094#1080#1092#1088': ","       ' +
            '            '#1050#1086#1085#1077#1094':")[0,0 1280x1024]"'
        end
        object LabeledEdit2: TLabeledEdit
          Left = 16
          Top = 40
          Width = 162
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1095#1072#1083#1086
          TabOrder = 0
          Text = '[log] CLICK on L('
        end
        object LabeledEdit3: TLabeledEdit
          Left = 355
          Top = 40
          Width = 162
          Height = 21
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1086#1085#1077#1094
          TabOrder = 1
          Text = ')@S(0)[0,0 1280x1024]'
        end
        object GroupBox2: TGroupBox
          Left = 523
          Top = 15
          Width = 79
          Height = 81
          Caption = #1047#1085#1072#1095#1077#1085#1080#1103
          TabOrder = 2
          object CheckBox1: TCheckBox
            Left = 16
            Top = 25
            Width = 33
            Height = 17
            Caption = '-x'
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 16
            Top = 48
            Width = 33
            Height = 17
            Caption = '-y'
            TabOrder = 1
          end
        end
        object Button6: TButton
          Left = 523
          Top = 99
          Width = 75
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 3
          OnClick = Button6Click
        end
        object LabeledEdit7: TLabeledEdit
          Left = 184
          Top = 40
          Width = 162
          Height = 21
          EditLabel.Width = 95
          EditLabel.Height = 13
          EditLabel.Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100' '#1094#1080#1092#1088
          TabOrder = 4
          Text = ','
        end
      end
      object Button4: TButton
        Left = 365
        Top = 29
        Width = 33
        Height = 25
        Caption = '...'
        TabOrder = 3
        OnClick = Button4Click
      end
      object Button7: TButton
        Left = 416
        Top = 29
        Width = 101
        Height = 25
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091
        TabOrder = 4
        OnClick = Button7Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1073#1088#1072#1073#1086#1090#1082#1072
      ImageIndex = 1
      object Button1: TButton
        Left = 0
        Top = 338
        Width = 654
        Height = 25
        Align = alBottom
        Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100
        TabOrder = 0
        OnClick = Button1Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 391
        Height = 338
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Memo2: TMemo
        Left = 391
        Top = 0
        Width = 263
        Height = 338
        Align = alRight
        ScrollBars = ssBoth
        TabOrder = 2
      end
      object Button2: TButton
        Left = 0
        Top = 363
        Width = 654
        Height = 25
        Align = alBottom
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1058#1086#1095#1082#1080
      ImageIndex = 2
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 654
        Height = 338
        Align = alClient
        ExplicitLeft = 184
        ExplicitTop = 104
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object Button3: TButton
        Left = 0
        Top = 363
        Width = 654
        Height = 25
        Align = alBottom
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button5: TButton
        Left = 0
        Top = 338
        Width = 654
        Height = 25
        Align = alBottom
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = Button5Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 3
      object GroupBox6: TGroupBox
        Left = 16
        Top = 16
        Width = 161
        Height = 81
        Caption = #1055#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100' '#1086#1082#1085#1072
        TabOrder = 0
        object ScrollBar1: TScrollBar
          Left = 16
          Top = 48
          Width = 121
          Height = 16
          Max = 255
          Min = 100
          PageSize = 0
          Position = 255
          TabOrder = 0
          OnChange = ScrollBar1Change
        end
      end
    end
  end
end
