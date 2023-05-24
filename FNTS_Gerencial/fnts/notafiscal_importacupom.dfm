object frmnotafiscal_importacupom: Tfrmnotafiscal_importacupom
  Left = 603
  Top = 128
  BorderIcons = []
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'NOTAS FISCAIS | Importa Cupom Fiscal'
  ClientHeight = 536
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 420
    Width = 420
    Height = 20
    Align = alCustom
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 169
    Width = 436
    Height = 291
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCupom
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1SEL: TcxGridDBColumn
        Caption = 'Sel'
        DataBinding.FieldName = 'SEL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Properties.OnEditValueChanged = cxGrid1DBTableView1SELPropertiesEditValueChanged
        Width = 26
      end
      object cxGrid1DBTableView1CUPOM_NUMERO: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'NUMERO'
        Options.Editing = False
        Width = 130
      end
      object cxGrid1DBTableView1DATA: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DATA'
        Options.Editing = False
        Width = 97
      end
      object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
        Caption = 'Vlr Total'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 103
      end
      object cxGrid1DBTableView1NFE: TcxGridDBColumn
        Caption = 'NF-e'
        DataBinding.FieldName = 'NFE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            ImageIndex = 0
            Value = 'S'
          end
          item
            ImageIndex = 1
            Value = 'N'
          end>
        Properties.ShowDescriptions = False
        Options.Editing = False
        Width = 40
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'SAT'
        DataBinding.FieldName = 'GEROU_SAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            ImageIndex = 0
            Value = 'S'
          end
          item
            ImageIndex = 1
            Value = 'N'
          end
          item
            ImageIndex = 1
          end>
        Properties.ReadOnly = True
        Properties.ShowDescriptions = False
        Options.Editing = False
        Width = 38
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 35
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 6
      Top = 5
      Width = 175
      Height = 25
      Caption = 'Importar Cupom'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 480
    Width = 436
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    Color = 13618085
    ParentBackground = False
    TabOrder = 3
    object bcancela: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 114
      Height = 56
      Align = alLeft
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3039393945413941453238333131453238343743414236334536
        3745374338342220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A303939394541394245323833313145323834374341423633453637453743
        3834223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3039393945413938453238333131
        453238343743414236334536374537433834222073745265663A646F63756D65
        6E7449443D22786D702E6469643A303939394541393945323833313145323834
        3743414236334536374537433834222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E92C56603000005424944415478DAB459
        096C5645107EFDE9A140550C0A22281EA0B68AB55A3945A336206942288848A2
        522F30468518538F88423882311062D06A0236864304154AAAC12018AD28B14A
        3C209E512CD6563C38022DE5A8DF906FC964B2EFFDEFB53F937C79EFEDEEBF3B
        3B3B333B337F56B0EE97A08374317023500CF407FA1059C01EE00FA001F806D8
        027CD79145B2138E3F1DB81DB81BB825625C2FE04AD3F625B01A7803688EBB60
        5602095602D381DE9EBE6F814D945C3B7001308C4C7631635B80D78067810399
        607030F00A708D6A6B2243EB817AE0376024702DD00AAC04F6F1C80B80F15487
        2BCC1C8F026B3AC3A0486C91FAFE1B984309B4A8F6451C2B923C0BE80714023B
        CD7CA21E4F0345AAED55605A1803A908E6E61AE684A901C062C39CDBC8526010
        8F57689667CE353C89E754DB54E09DA40C2EE64E03EAD4784EB437624396E97F
        23C6CEA63A34F07B1C2D3D16830F5037840E02433D3B1429D5028D6A116D998D
        94E6E3C00C1EB9A5AF28CD1DFCBE89A710C960318FD2D175C036CFE49F03A540
        15F036DBB4B58A0F1C023CC1A3FE8912B3F40F99DCCDEF7BAD3E5A0657ABF73B
        80EF438EE83CEAD16CEA9FD0F9AAFF6A602D5DD219401EF04CC85C47805BD5F7
        CB40BE8FC187814B9565BD15A14387B9B0A663EA5DA4F95F44BFA51F80BB4E7A
        9620A8B60CCA0DB14029FBB4188EDB4ABFDD30739AE9FF2BCD7CCB792D0A9503
        57E945EE01BAF1FDF920F3243A791B0DAB06181E32EE3EF5FE986670129FADC6
        F7658AE4542EA20A950075BC592CD513421381DC142F7637B89A4A9B8EE43873
        4D5B9E0942B40A08632B80CB6860CE627DB4844F3194D132D128D5B93E82A947
        E82A0E928166A38BC78D7E9E637E7FD4BC87050A75EABD4C16BAC158938F36C8
        60E053A02719DCA7AC4EE6D0977A99E7D6C98F69D53F03BF52250666F3889D95
        FD1EF2A3323A5C67406D0C52DD4275667CADF94E1AAC6E2383BDB39583FD3A62
        57ED3420BDFB548205C565F44D307E0F9F3DB4AEEC4F6314DA0872E2049B8676
        2718EBE6EE9AA20E25A5233CE2CB5578752A282BA5C4D93DE68F52B4E40A7AFE
        5D948E040EE7668831C7CB2159EC4F7E14C694A6DCB31318AD94D0872E675B33
        C3B5F4A946349DCDE75EEDCFFAF2B876C538DE8F4CDBC7C093C07C866BDDD3DC
        48C7D3AC51E2F296147D9BA381113B3E1643324F31AC5AC8F4208CDA2252DE0B
        79E39CF089C2E007AA7354048371DDCA3C86FB2B23C6E49AE847D310F5BE31C5
        90DD45CDF7471C6B410225AF62349E17D29FA374DFD2432AE6AC71527993CF33
        19B85A7A1F189B8041A7C73D3D7D2E3059E7E92B50FD9201B63806972A1D9B1F
        221109402F89C9E0609573589AC1E70E4FDF3293599ED4AB032A57CD674E6C25
        E8F2853854CD54B5D5A3CB6369449646AB8D6D7671A1AD2C34A9E0A194E58D40
        05B5AB5834DADC4107FC0930C2E3077BD116725452D6E4CB2BEE54EF352A6271
        7A2A6D1F9AF6B83493CC957AFA3629E62A1D733E06B730977589D47695E9053C
        9EAD8CD7C624606E19C3B50A732A5D389F2BD5BD0BBC90AEB2F022C3F38085A0
        7AEEDCD1704AB29696561871674FA4342A783AD5AABF3F6B864355CC589EA4BA
        25B9F183C601EBE4BB94D62F658D43F4A50DBC218A94DF9434628A89B0E5BE7E
        49F9C93A26EF879396DFE618A676B26D95B91EC5775ECF4BFE28A39BF7B8C956
        73534DA7C5EA6AC6A4CE14306F065E37715F036B322B549A184683A8BBE5A62E
        D8C6DCB72A1325E0AEF48D53693C36FAFD8252DBCF3BB61B5D45914A336D0DA8
        3246E494A846EDFC9528FC64579A48408D540D09C77E8C1D5277E26F8862BA1A
        61B40F739B5C3AE136168F1A99468A3E7EE6338274F4BF000300DD60333ABE03
        1B2E0000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bcancelaClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bconfirma: TAdvGlowButton
      Left = 329
      Top = 0
      Width = 107
      Height = 56
      Align = alRight
      Caption = 'Importar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3730373643394131453238323131453238424631414239324639
        3531323732392220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A373037364339413245323832313145323842463141423932463935313237
        3239223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3730373643393946453238323131
        453238424631414239324639353132373239222073745265663A646F63756D65
        6E7449443D22786D702E6469643A373037364339413045323832313145323842
        4631414239324639353132373239222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E85C699DD000004694944415478DABC99
        7D6855651CC7CFBD5397F992D82A6F6BE83F41D636415BBE4DD9302C16B39AD5
        1F2DDA1688CC22D4105F10054551D0A58822FEA1992ECA556CAB940AC5AD65A5
        942EC531342DA76C922FB8ADE6FBFCFEC6F7C08F67E7DC7BEE3967FBC287FB3C
        E7EDFEEE739EE7F7F2DC8855FD971540D9E069900ED2C0201EBF092E834BE024
        38EFF70B06F8B8E729500C5E02F91EAEEF04874035A862DFB322498CE0F3E043
        1A1775387F07DCEA79A6653DCC4F53D7C16EF031B810A6819B699CD6DFA016FC
        0E8E82AB7CB5B6813130158C07AF8311EADEFBE023B029A881326A9F80E7D4B1
        2F380A0792785362F01BA00CE4A9E3DF82F7C0BF7E0C2C00DFA9FE1FA09CA315
        446FF215A7B32F23FF0238E77471D4E5216F1BC6AD02134230CEE2429195FF29
        FB8F824690E5D54031A452F5DF052BAD70D5054AC07AF6878223E0A14406CA44
        AE53FDD9608FD5775A02D62823EB1319F81918C2F652F0B5D5F75A0E6AD8CE01
        CBDC16C98BE047B5BA0A3D7EC140FAC0A092683386ED2741AB39823B8D79E755
        8F80EFE9178F287E063393784EA96A579823385DCDBD0A3AD164348DAB7E98C3
        B9F7C1368FCF3946DF6BD1D1B7D923384F79783F2BF6272EB0C30EE7B69AF32A
        8E161AFEB2E7150F06AF2A1FD5E9730EDD67F2B0DBE1DC1A630AC5FBA167D92E
        B60DCC57FEE7700893BD94B1DB5419175F22D5A8303B326AC4D9BA905CC77CF0
        0EB8671C7F85D168449C7B4FF33305E44A3E98C10312B09BD485299CA87E7487
        D16834586D788B1C1A3119FCE370EF29D54E170347B2D3665C380AB4041C49B7
        FB631C8C19E017E35C13F3CA543130CA1023FAAF57A6135C19711292C1F497E5
        C63512A73BEC1F2227BA5D1ED06DF58F4A8CC1D0DFDB1D556E65A84308EB6B49
        CA35C9584C62C770B65B650E5E51F14FEB1AD3A188CFD1BCC64A6F814B71268B
        6785C3F14C551DB6C88D17D991C5328EC9A3A89DE9501055D21B985A0436B8DC
        3356B52F0E5006D931B5318457F70C38E8F056446F3162B9294BB9AA8628A387
        BD826786605C2E38E1605C170BA6AA04F717F153DC4FBB187817ECE341C9011F
        0F605C11E369AA833FCCF610A90AB83160D999BCED7FB61B05921F893FFBCA25
        7465AA24209ED6A976B53650E26333DB73D5AFF02289ABDFB8E47CB534AEDDC3
        730AD5FCDB617B179DF24F04BFB2DDC005E3453116DF1754EA1F61FBCB24CA86
        5696A0F7F879C3A970DF6BE7612CAE17F65334A9570352AEA79C1927E7D0C15A
        74B0A5FD605C8532AECE580FBD0CEC62E8B1B5AB8F47712707C2E25E629E979D
        8533DCFBB3B59175C5A0100D8B71F3A9CC8EB9DC09F3BC37F30347F2B62AAA64
        95CF0AC1B80FE8725E560392E992BCBA1A28FA0D3CCB52D062515DC3E2BED0A5
        C474D328AE7409A35BB81D671769996ADE27BD3F686B31586BFC20492AF7735B
        EE3847A083D70C633C96E83185BB163A6990F24236443F0FBA81A9355A154369
        7192DC78997833331C99D7FF7BF9D2888F5D7E793DB2A5FB1ADDC31309AE3FC7
        F8BC8F239E942201FF86788C656B0689B1806F619E29AFFD4F877AC7B31E0830
        00629EF941A5EB70210000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = bconfirmaClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 35
    Width = 436
    Height = 134
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object btnAbre: TSpeedButton
      Left = 295
      Top = 104
      Width = 133
      Height = 24
      Caption = 'Recarrregar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003827174DB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003827174DB8824DFFB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFFB8824DFFB5804CFB9F7042DC7955
        32A747321E630E0A061400000000000000000000000000000000000000000000
        00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF7C5834AC2B1E123B000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF855E38B91E150C290000000000000000000000000000
        0000484F3879212419373827174DB8824DFFB8824DFF060402082A1E123A6144
        2886A27344E1B8824DFFB8824DFF5D4227810000000000000000000000000000
        000077845DC98E9D6FF0212419373827174DB8824DFF00000000000000000000
        00004C36206AB8824DFFB8824DFF91663DC90000000000000000000000000000
        000093A273F897A776FF8E9D6FF0020302040000000000000000000000000000
        000003020104AD7A48F0B8824DFFB37E4BF80000000000000000000000000000
        000077845DC997A776FF97A776FF3F45316A00000000000000000000000097A7
        76FF2E32244D281C1137AD7A48F091663DC90000000000000000000000000000
        00004C543C8197A776FF97A776FF859368E14F583E8622261B3A0505040897A7
        76FF97A776FF2E32244D281C1137573E25790000000000000000000000000000
        0000181B13296E7956B997A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        00000000000023271B3B667150AC97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF2E32244D0000000000000000000000000000
        000000000000000000000C0D09143B412E63636D4DA7829066DC95A474FB97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF97A776FF2E32244D00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF2E32244D0000000000000000000000000000000000000000}
      OnClick = btnAbreClick
    end
    object Label3: TLabel
      Left = 8
      Top = 15
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 5
      Top = 42
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object ckHoje: TCheckBox
      Left = 267
      Top = 41
      Width = 125
      Height = 17
      Caption = 'Apenas Emitidos Hoje'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = ckHojeClick
    end
    object ckNFe: TCheckBox
      Left = 267
      Top = 58
      Width = 144
      Height = 17
      Caption = 'Apenas N'#227'o Gerado NF-e'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = ckNFeClick
    end
    object DateEdit1: TJvDateEdit
      Left = 51
      Top = 39
      Width = 101
      Height = 21
      Date = 36892.000000000000000000
      Color = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 2
      OnExit = DateEdit1Exit
    end
    object DateEdit2: TJvDateEdit
      Left = 158
      Top = 39
      Width = 104
      Height = 21
      Date = 73050.000000000000000000
      Color = clWhite
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 3
      OnExit = DateEdit2Exit
    end
    object Edit1: TEdit
      Left = 119
      Top = 12
      Width = 309
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
    end
    object ecliente: TRzButtonEdit
      Left = 51
      Top = 12
      Width = 67
      Height = 21
      Text = ''
      TabOrder = 5
      OnExit = eclienteExit
      OnKeyPress = eclienteKeyPress
      ButtonKind = bkFind
      AltBtnWidth = 15
      ButtonWidth = 15
      OnButtonClick = eclienteButtonClick
    end
    object CheckBox1: TCheckBox
      Left = 5
      Top = 105
      Width = 113
      Height = 17
      Caption = 'Selecionar Todos'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = CheckBox1Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 460
    Width = 436
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = 5466694
    ParentBackground = False
    TabOrder = 5
    object lbtotal: TLabel
      Left = 326
      Top = 0
      Width = 110
      Height = 20
      Align = alRight
      Alignment = taRightJustify
      Caption = 'Total R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 19
    end
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 328
    Top = 266
  end
  object dsnotafiscal_item: TDataSource
    DataSet = frmnotafiscal.qrnotafiscal_item
    Left = 96
    Top = 330
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025 where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 240
    Top = 306
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qrprodutoCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object qrprodutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TWideStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TWideStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TWideStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TWideStringField
      FieldName = 'NOTAFISCAL'
      Size = 7
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TWideStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TWideMemoField
      FieldName = 'APLICACAO'
      BlobType = ftWideMemo
    end
    object qrprodutoLOCALICAZAO: TWideStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TWideStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TWideStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TWideStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TWideStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TWideStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TWideStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TWideStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
    object qrprodutoULTIMA_ALTERACAO: TDateField
      FieldName = 'ULTIMA_ALTERACAO'
    end
    object qrprodutoULTIMA_CARGA: TDateField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrprodutoDATA_INVENTARIO: TDateField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
    end
    object qrprodutoAPRESENTACAO: TWideStringField
      FieldName = 'APRESENTACAO'
      Size = 60
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
    end
    object qrprodutoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
    end
    object qrprodutoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
    end
    object qrprodutoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
    end
    object qrprodutoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
    end
    object qrprodutoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
    end
    object qrprodutoDATA_INVENTARIO_ATUAL: TDateField
      FieldName = 'DATA_INVENTARIO_ATUAL'
    end
    object qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qrprodutoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
    end
    object qrprodutoPISCOFINS: TWideStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object qrprodutoREFERENCIA_FORNECEDOR: TWideStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qrprodutoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
    end
    object qrprodutoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrprodutoTAMANHO: TWideStringField
      FieldName = 'TAMANHO'
      Size = 6
    end
    object qrprodutoCOR: TWideStringField
      FieldName = 'COR'
      Size = 6
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TWideStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qrprodutoVEIC_CHASSI: TWideStringField
      FieldName = 'VEIC_CHASSI'
      Size = 50
    end
    object qrprodutoVEIC_SERIE: TWideStringField
      FieldName = 'VEIC_SERIE'
      Size = 50
    end
    object qrprodutoVEIC_POTENCIA: TWideStringField
      FieldName = 'VEIC_POTENCIA'
      Size = 50
    end
    object qrprodutoVEIC_PESO_LIQUIDO: TWideStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qrprodutoVEIC_PESO_BRUTO: TWideStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qrprodutoVEIC_RENAVAM: TWideStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 50
    end
    object qrprodutoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
    end
    object qrprodutoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
    end
    object qrprodutoVEIC_TIPO: TWideStringField
      FieldName = 'VEIC_TIPO'
      Size = 50
    end
    object qrprodutoVEIC_TIPO_PINTURA: TWideStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qrprodutoVEIC_COD_COR: TWideStringField
      FieldName = 'VEIC_COD_COR'
      Size = 15
    end
    object qrprodutoVEIC_COR: TWideStringField
      FieldName = 'VEIC_COR'
      Size = 30
    end
    object qrprodutoVEIC_VIN: TWideStringField
      FieldName = 'VEIC_VIN'
      Size = 10
    end
    object qrprodutoVEIC_NUMERO_MOTOR: TWideStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qrprodutoVEIC_CMKG: TWideStringField
      FieldName = 'VEIC_CMKG'
      Size = 15
    end
    object qrprodutoVEIC_CM3: TWideStringField
      FieldName = 'VEIC_CM3'
      Size = 15
    end
    object qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qrprodutoVEIC_COD_MARCA: TWideStringField
      FieldName = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qrprodutoVEIC_ESPECIE: TWideStringField
      FieldName = 'VEIC_ESPECIE'
      Size = 50
    end
    object qrprodutoVEIC_CONDICAO: TWideStringField
      FieldName = 'VEIC_CONDICAO'
      Size = 50
    end
    object qrprodutoLOTE_FABRICACAO: TWideStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateField
      FieldName = 'LOTE_VALIDADE'
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrprodutoCODBARRA_NOVARTIS: TWideStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qrprodutoFARMACIA_DCB: TWideStringField
      FieldName = 'FARMACIA_DCB'
    end
    object qrprodutoFARMACIA_ABCFARMA: TWideStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qrprodutoULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object qrprodutoFARMACIA_DATAVIGENCIA: TDateField
      FieldName = 'FARMACIA_DATAVIGENCIA'
    end
    object qrprodutoFARMACIA_TIPO: TWideStringField
      FieldName = 'FARMACIA_TIPO'
      Size = 1
    end
    object qrprodutoUSA_COMBUSTIVEL: TWideStringField
      FieldName = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qrprodutoREFERENCIA: TWideStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrprodutoPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object qrprodutoCOMPOSICAO1: TWideStringField
      FieldName = 'COMPOSICAO1'
      Size = 30
    end
    object qrprodutoCOMPOSICAO2: TWideStringField
      FieldName = 'COMPOSICAO2'
      Size = 30
    end
    object qrprodutoIAT: TWideStringField
      FieldName = 'IAT'
      Size = 1
    end
    object qrprodutoIPPT: TWideStringField
      FieldName = 'IPPT'
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TWideStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qrprodutoFLAG_SIS: TWideStringField
      FieldName = 'FLAG_SIS'
      Size = 1
    end
    object qrprodutoFLAG_ACEITO: TWideStringField
      FieldName = 'FLAG_ACEITO'
      Size = 3
    end
    object qrprodutoFLAG_EST: TWideStringField
      FieldName = 'FLAG_EST'
      Size = 1
    end
    object qrprodutoCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 60
    end
    object qrprodutoCODORIGINAL: TWideStringField
      FieldName = 'CODORIGINAL'
    end
    object qrprodutoCUSTO_ATACADO: TFloatField
      FieldName = 'CUSTO_ATACADO'
    end
    object qrprodutoUNIDADE_ATACADO: TWideStringField
      FieldName = 'UNIDADE_ATACADO'
      Size = 2
    end
    object qrprodutoQTDE_EMBALAGEMATACADO: TFloatField
      FieldName = 'QTDE_EMBALAGEMATACADO'
    end
    object qrprodutoPMARGEM1: TFloatField
      FieldName = 'PMARGEM1'
    end
    object qrprodutoPMARGEM2: TFloatField
      FieldName = 'PMARGEM2'
    end
    object qrprodutoPMARGEM3: TFloatField
      FieldName = 'PMARGEM3'
    end
    object qrprodutoPMARGEM4: TFloatField
      FieldName = 'PMARGEM4'
    end
    object qrprodutoPMARGEM5: TFloatField
      FieldName = 'PMARGEM5'
    end
    object qrprodutoPMARGEMATACADO1: TFloatField
      FieldName = 'PMARGEMATACADO1'
    end
    object qrprodutoPMARGEMATACADO2: TFloatField
      FieldName = 'PMARGEMATACADO2'
    end
    object qrprodutoPMARGEMATACADO3: TFloatField
      FieldName = 'PMARGEMATACADO3'
    end
    object qrprodutoPMARGEMATACADO4: TFloatField
      FieldName = 'PMARGEMATACADO4'
    end
    object qrprodutoPMARGEMATACADO5: TFloatField
      FieldName = 'PMARGEMATACADO5'
    end
    object qrprodutoPMARGEMATACADO6: TFloatField
      FieldName = 'PMARGEMATACADO6'
    end
    object qrprodutoPRECOATACADO1: TFloatField
      FieldName = 'PRECOATACADO1'
    end
    object qrprodutoPRECOATACADO2: TFloatField
      FieldName = 'PRECOATACADO2'
    end
    object qrprodutoPRECOATACADO3: TFloatField
      FieldName = 'PRECOATACADO3'
    end
    object qrprodutoPRECOATACADO4: TFloatField
      FieldName = 'PRECOATACADO4'
    end
    object qrprodutoPRECOATACADO5: TFloatField
      FieldName = 'PRECOATACADO5'
    end
    object qrprodutoIND_CFOP: TWideStringField
      FieldName = 'IND_CFOP'
      Size = 6
    end
    object qrprodutoCFOP_DESC: TWideStringField
      FieldName = 'CFOP_DESC'
      Size = 30
    end
    object qrprodutoUSA_LOTE: TIntegerField
      FieldName = 'USA_LOTE'
    end
    object qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_VENDA_DENTRO'
      Size = 6
    end
    object qrprodutoCODCONTA: TWideStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrprodutoIND_CFOP_VENDA_FORA: TWideStringField
      FieldName = 'IND_CFOP_VENDA_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEVOLUCAO_FORA'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField
      FieldName = 'IND_CFOP_GARANTIA_FORA'
      Size = 6
    end
    object qrprodutoUSA_TB_PC: TWideStringField
      FieldName = 'USA_TB_PC'
      Size = 4
    end
    object qrprodutoATIVA: TWideStringField
      FieldName = 'ATIVA'
      Size = 10
    end
    object qrprodutoCEST: TWideStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
    object qrprodutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object qrprodutoIND_CFOP_NFCE: TWideStringField
      FieldName = 'IND_CFOP_NFCE'
      Size = 4
    end
    object qrprodutoFOTOBD: TBlobField
      FieldName = 'FOTOBD'
    end
    object qrprodutoID_TIPO_SERVICO: TIntegerField
      FieldName = 'ID_TIPO_SERVICO'
    end
    object qrprodutoNAO_MOVIMENTA_ESTOQUE: TWideStringField
      FieldName = 'NAO_MOVIMENTA_ESTOQUE'
      Size = 1
    end
    object qrprodutoPESAGEM_AUOTMATICA: TWideStringField
      FieldName = 'PESAGEM_AUOTMATICA'
      Size = 1
    end
    object qrprodutoUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrprodutoINFORMA_CODIGO_BARRA_XML: TWideStringField
      FieldName = 'INFORMA_CODIGO_BARRA_XML'
      Size = 1
    end
    object qrprodutoCODIGO_ANP: TWideStringField
      FieldName = 'CODIGO_ANP'
      Size = 10
    end
    object qrprodutoCOMBO: TWideStringField
      FieldName = 'COMBO'
      Size = 1
    end
    object qrprodutoIND_CFOP_DEV_COMPRA_DENTRO: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_DENTRO'
      Size = 6
    end
    object qrprodutoIND_CFOP_DEV_COMPRA_FORA: TWideStringField
      FieldName = 'IND_CFOP_DEV_COMPRA_FORA'
      Size = 6
    end
    object qrprodutoPIZZA: TWideStringField
      FieldName = 'PIZZA'
      Size = 1
    end
    object qrprodutoPERCGLNN: TFloatField
      FieldName = 'PERCGLNN'
    end
    object qrprodutoPERCGLGNI: TFloatField
      FieldName = 'PERCGLGNI'
    end
    object qrprodutoPGLP: TFloatField
      FieldName = 'PGLP'
    end
    object qrprodutoVPART: TFloatField
      FieldName = 'VPART'
    end
    object qrprodutoECF_ICMS: TWideStringField
      FieldName = 'ECF_ICMS'
      Size = 30
    end
  end
  object qrnotafiscal_item: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000062')
    Params = <>
    Left = 311
    Top = 339
    object qrnotafiscal_itemCODNOTA: TWideStringField
      FieldName = 'CODNOTA'
      Required = True
      Size = 6
    end
    object qrnotafiscal_itemCODPRODUTO: TWideStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrnotafiscal_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrnotafiscal_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrnotafiscal_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrnotafiscal_itemIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrnotafiscal_itemICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrnotafiscal_itemCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnotafiscal_itemCODGRADE: TWideStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrnotafiscal_itemSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrnotafiscal_itemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrnotafiscal_itemCST: TWideStringField
      FieldName = 'CST'
      Size = 4
    end
    object qrnotafiscal_itemVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotafiscal_itemICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrnotafiscal_itemBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrnotafiscal_itemMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
    object qrnotafiscal_itemBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotafiscal_itemICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrnotafiscal_itemISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qrnotafiscal_itemCODLANCAMENTO: TWideStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrnotafiscal_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotafiscal_itemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrnotafiscal_itemPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object qrnotafiscal_itemPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrnotafiscal_itemITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qrnotafiscal_itemCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qrnotafiscal_itemGRADE: TWideStringField
      FieldName = 'GRADE'
      Size = 10
    end
    object qrnotafiscal_itemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnotafiscal_itemPIS_ALIQUOTA: TFloatField
      FieldName = 'PIS_ALIQUOTA'
    end
    object qrnotafiscal_itemPIS_BASE: TFloatField
      FieldName = 'PIS_BASE'
    end
    object qrnotafiscal_itemPIS_VALOR: TFloatField
      FieldName = 'PIS_VALOR'
    end
    object qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField
      FieldName = 'COFINS_ALIQUOTA'
    end
    object qrnotafiscal_itemCOFINS_BASE: TFloatField
      FieldName = 'COFINS_BASE'
    end
    object qrnotafiscal_itemCOFINS_VALOR: TFloatField
      FieldName = 'COFINS_VALOR'
    end
    object qrnotafiscal_itemCODBARRA: TWideStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrnotafiscal_itemALTERA_ITEM: TIntegerField
      FieldName = 'ALTERA_ITEM'
    end
    object qrnotafiscal_itemCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object qrnotafiscal_itemCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 250
    end
    object qrnotafiscal_itemCEST: TWideStringField
      FieldName = 'CEST'
      Size = 7
    end
    object qrnotafiscal_itemORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object qrnotafiscal_itemPFCP: TFloatField
      FieldName = 'PFCP'
    end
    object qrnotafiscal_itemVBCFCP: TFloatField
      FieldName = 'VBCFCP'
    end
    object qrnotafiscal_itemVFCP: TFloatField
      FieldName = 'VFCP'
    end
    object qrnotafiscal_itemVBCFCPST: TFloatField
      FieldName = 'VBCFCPST'
    end
    object qrnotafiscal_itemPFCPST: TFloatField
      FieldName = 'PFCPST'
    end
    object qrnotafiscal_itemVFCPST: TFloatField
      FieldName = 'VFCPST'
    end
    object qrnotafiscal_itemPFCPSTRET: TFloatField
      FieldName = 'PFCPSTRET'
    end
    object qrnotafiscal_itemVFCPSTRET: TFloatField
      FieldName = 'VFCPSTRET'
    end
    object qrnotafiscal_itemPST: TFloatField
      FieldName = 'PST'
    end
    object qrnotafiscal_itemXITEM: TWideStringField
      FieldName = 'XITEM'
      Size = 30
    end
    object qrnotafiscal_itemXPED: TWideStringField
      FieldName = 'XPED'
      Size = 15
    end
    object qrnotafiscal_itemALIQUOTA_SUB: TFloatField
      FieldName = 'ALIQUOTA_SUB'
    end
    object qrnotafiscal_itemATB: TWideStringField
      FieldName = 'ATB'
      Size = 30
    end
  end
  object dsCupom: TDataSource
    DataSet = qrCupom
    Left = 107
    Top = 111
  end
  object qrCupom: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select'
      '  '#39'S'#39' sel,'
      '  cup.cupom_numero,'
      '  cup.data,'
      '  sum(cup.total) - sum(cup.desconto) total,'
      '  cup.nfce,'
      '  case cup.cupom_modelo when '#39'2D'#39' then'
      '    '#39'N'#39
      '  else'
      '    '#39'S'#39
      '  end nfe,'
      '  cup.gerou_sat, '
      '  cup.numeronota'
      'from'
      '  c000032 cup'
      'where'
      '  (cup.cupom_modelo = '#39'2D'#39' or cup.cupom_modelo = '#39'01'#39')'
      '  and coalesce(cup.cupom_numero, '#39#39') <> '#39#39
      ' -- and cup.data = '#39'29.06.2018'#39
      'group by'
      '  cup.cupom_numero,'
      '  cup.data,'
      '  cup.nfce,'
      '  cup.cupom_modelo,'
      '  cup.gerou_sat, '
      '  cup.numeronota'
      ' ')
    Params = <>
    Left = 67
    Top = 129
    object qrCupomCUPOM_NUMERO: TWideStringField
      FieldName = 'CUPOM_NUMERO'
    end
    object qrCupomDATA: TDateField
      FieldName = 'DATA'
    end
    object qrCupomNFCE: TWideStringField
      FieldName = 'NFCE'
      Size = 1
    end
    object qrCupomNFE: TWideStringField
      FieldName = 'NFE'
      ReadOnly = True
      Size = 1
    end
    object qrCupomTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrCupomSEL: TWideStringField
      FieldName = 'SEL'
      Size = 1
    end
    object qrCupomGEROU_SAT: TWideStringField
      FieldName = 'GEROU_SAT'
      Size = 1
    end
    object qrCupomNUMERONOTA: TWideStringField
      FieldName = 'NUMERONOTA'
    end
    object qrCupomNUMERO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'NUMERO'
      LookupDataSet = qNFCE
      LookupKeyFields = 'CUPOM'
      LookupResultField = 'NUMERO'
      KeyFields = 'NUMERONOTA'
      Lookup = True
    end
  end
  object ImageList1: TImageList
    Left = 128
    Top = 194
    Bitmap = {
      494C0101020005002C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8004463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8004463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D800768C
      E10094A6E7004463D8004463D8004463D8004463D8004463D8004463D80098A9
      E800768CE1004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDCE1D1009AA97B00DEE3D400FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D800768CE100FFFF
      FFFFFFFFFFFF96A7E8004463D8004463D8004463D8004463D8009AAAE800FFFF
      FFFFFFFFFFFF768CE1004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDCE1D10097A7770097A7760097A77700DFE4D600FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8009DADE900FFFF
      FFFFFFFFFFFFFFFFFFFF96A7E8004463D8004463D8009AAAE800FFFFFFFFFFFF
      FFFFFFFFFFFF9BACE9004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFDCE1
      D10097A7770097A7760097A7760097A7760098A77800E0E4D600FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D800A0B0
      E900FFFFFFFFFFFFFFFFFFFFFFFF96A7E8009AAAE800FFFFFFFFFFFFFFFFFFFF
      FFFF9EAEE9004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFDBE0D00097A7
      770097A7760099A87900CBD3BB0098A7780097A7760098A77800E0E4D600FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D800A0B0E900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EAE
      E9004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFA3B1860097A7
      760099A87900E3E7DC00FFFFFFFFE0E4D60098A7780097A7760098A77800DFE4
      D600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8004463D800A0B0E900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EAEE9004463
      D8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFEFF1EA00A5B2
      8900E3E7DC00FFFFFFFFFFFFFFFFFFFFFFFFE0E4D60098A7780097A7760098A7
      7800DFE4D600FFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8004463D8009AAAE800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A8E8004463
      D8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E4D60098A7780097A7
      760098A77800DFE4D600FFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8009AAAE800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97A8
      E8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E4D60098A7
      780097A7760098A77800DFE4D600FFFFFFFF4463D8004463D8004463D8009AAA
      E800FFFFFFFFFFFFFFFFFFFFFFFF9EAEE900A0B0E900FFFFFFFFFFFFFFFFFFFF
      FFFF97A8E8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E4
      D60098A7780097A77600ACB89200FFFFFFFF4463D8004463D80098A9E800FFFF
      FFFFFFFFFFFFFFFFFFFF9FADE9004463D8004463D800A0B0E900FFFFFFFFFFFF
      FFFFFFFFFFFF97A7E7004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE0E4D600ACB99300FFFFFFFFFFFFFFFF4463D8004463D8007A90E200FFFF
      FFFFFFFFFFFF9FADE9004463D8004463D8004463D8004463D800A0B0E900FFFF
      FFFFFFFFFFFF7C91E2004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8007A90
      E2009BACE9004463D8004463D8004463D8004463D8004463D8004463D8009DAD
      E9007A90E2004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8004463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8004463D8004463D8004463D8004463
      D8004463D8004463D8004463D8004463D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object qrChave: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 264
    Top = 186
  end
  object qNFCE: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from nfce where atb like :atb')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atb'
        ParamType = ptUnknown
      end>
    object qNFCENUMERO: TIntegerField
      FieldName = 'NUMERO'
      Required = True
    end
    object qNFCEDATA: TDateField
      FieldName = 'DATA'
    end
    object qNFCETOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qNFCECLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 255
    end
    object qNFCECHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 255
    end
    object qNFCESITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qNFCETROCO: TFloatField
      FieldName = 'TROCO'
    end
    object qNFCEHORA: TWideStringField
      FieldName = 'HORA'
      Size = 8
    end
    object qNFCECONTINGENCIA: TWideStringField
      FieldName = 'CONTINGENCIA'
      Size = 1
    end
    object qNFCEENVIADOCONTINGENCIA: TWideStringField
      FieldName = 'ENVIADOCONTINGENCIA'
      Size = 1
    end
    object qNFCEMOTIVOCONTIGENCIA: TWideStringField
      FieldName = 'MOTIVOCONTIGENCIA'
      Size = 255
    end
    object qNFCEXMLENVIO: TBlobField
      FieldName = 'XMLENVIO'
    end
    object qNFCEXMLCACNELAMENTO: TBlobField
      FieldName = 'XMLCACNELAMENTO'
    end
    object qNFCECUPOM: TWideStringField
      FieldName = 'CUPOM'
      Size = 12
    end
  end
end
