object frmloc_subgrupo: Tfrmloc_subgrupo
  Left = 279
  Top = 123
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'SUBGRUPO DE PRODUTOS | Localizar...'
  ClientHeight = 333
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 43
    Width = 356
    Height = 3
    Align = alTop
    ExplicitTop = 30
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 46
    Width = 356
    Height = 269
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'
      'SUBGRUPO'#9'30'#9'SUBGRUPO'
      'COMISSAO'#9'10'#9'COMISSAO')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dssubgrupo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGRID1DblClick
    OnKeyPress = DBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 16316664
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 56
      Top = 12
      Width = 184
      Height = 21
      DataSource = dssubgrupo
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 246
      Top = 1
      Width = 108
      Height = 42
      Caption = 'F2 | Cadastrar'
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
        702E6969643A4342304246463045453238323131453242383546434630383142
        4335303344322220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A434230424646304645323832313145324238354643463038314243353033
        4432223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A4342304246463043453238323131
        453242383546434630383142433530334432222073745265663A646F63756D65
        6E7449443D22786D702E6469643A434230424646304445323832313145324238
        3546434630383142433530334432222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E08842097000003F24944415478DACC99
        79884D7114C7EF3CCF3EC89691C11031D610118322658929EBC4107FA094B590
        ADA628D4D88A923F2C19593396063519EB64198A88923F64DFF7A5193CDF337D
        6F1DD7DCFDBD9E539FE6BCFBEEFBDD737FBFF33BBF73CEA418850F8D10521774
        03AD413A680922E039784CEE82D7411F100DF8BB116002C8026D5DEE7D092E82
        4270147CF3F3A0141F3358072C0293410787FB6295E3562D6FC05EB0093C8AA7
        8193C016D0545DFB058A4129B80DEE83CF343095CBDE03F4E48CD753BFFD0D96
        8175610DAC010AC038754D8CD90C8AC00B8FB32FC60D0673C15075FD3AC8010F
        8318D8085C01EDF9597C6731D86A8493D17CC10C7E2EA72F5FABEAE688CD20B2
        3C779471A741BB381827729C3EBC4DADD25530CC8F81974173EA3BC170868E78
        89CCDA1C6E3A53CEA8097134F01C68417D239861244E3680E9EAB3B8546D2703
        678341D425762D34122FBB3811A6DFEFB0DB240DC05B508D7F65892B7C3CA833
        4F1291EFE0BC4F4365420650EF4BBFFCEB24594FE30C4E7B85CF07E481B12A46
        FA3DA57278349AB39AA997B80998495D76EF89004BF556E94F03FCFE09D84EBD
        23E8A30DCC56372E09E84B31CB49114456297D96363057BD4591913C79054E52
        9F286E2206D607FD78F188917C39A352B9C111EE9CEACAFF922D1795DE3DC244
        D3947B2106FEA8F48A10E3DC02EFA8A74755EC2A7799C17E9CF65815DFFD049D
        2CD9CB1097DC508ED31F36DF3D63D06E125567EE27F0C5C1C0530CE65E248DB9
        A293B47348B34C3B5223EA0D632E03BE8FB3AFFDF29250475496529F69BD9D34
        8CB381D55C8AB1CA998CAAA85F9311FCBA43A1946A1384CB99CC8E5485D214DE
        1BF92749763F6DD2F8F75DD472631707034B5D6664A432F093071FB4934EAAF6
        792C6F7749F943E7104BA63750F510E30C52FADD08634E192F8CF90F02B569A0
        84A012D33F0AD4D6CF4AA271E2E3E3A91F93BCD234F090BA293F8906E6A94DB5
        4D673352DF1EA0DE1B0C0C30788A8DEE551AAA124312D70BD69A6481D2770778
        409AA56CF52B7B943EA3AAE69104ECE5600D8BEA424B22EB26F94C95626C81F8
        91A560943A528B9D3A0BD7B8CC22ABC1CA04FB9DD43187A97F6576F5C1A92E1E
        A80EEB15606D028DCB55C69921E6835BE12EF1A7BFEAE32DA14FD64EC08ED57E
        276DBD1B5E5B1FD2C1EAA62AB5A9E0818A5161A40F0D59653926F7F9E9CD18CC
        D532551123ED9083E02C0DAEE3D330E9EFEC6741DED33CCAE8EF4541DA6F5AE6
        7397EA17125F9196EE4D66C7CFE916B28B6B81C69CAD5E6CB96558C69486E83C
        F7E0EABD05DC8AB1729A4D6E185306D6B44918E4BBBD34AECC5BF4F7DFE537CF
        CB6CD61D753DFCA68431B280B5B78FE329DCBF21DA80AEF4CF665C5A33817DC3
        5CF301375D20F923C000A422DEAC6EFE30D60000000049454E44AE426082}
      Transparent = True
      TabOrder = 1
      OnClick = BitBtn1Click
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 315
    Width = 356
    Height = 18
    Panels = <>
  end
  object dssubgrupo: TDataSource
    DataSet = frmmodulo.qrsubgrupo
    Left = 216
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 168
    object Cadastrar1: TMenuItem
      Caption = 'Cadastrar'
      ShortCut = 113
      OnClick = Cadastrar1Click
    end
  end
end
