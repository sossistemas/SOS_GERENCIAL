object frmxloc_produto: Tfrmxloc_produto
  Left = 23
  Top = 23
  BorderIcons = []
  BorderStyle = bsNone
  Caption = ' PRODUTO | Localizar'
  ClientHeight = 552
  ClientWidth = 841
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
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 48
    Width = 841
    Height = 44
    Color = clSilver
    ColorHighLight = clSilver
    ColorShadow = clSilver
    TabOrder = 0
    object Label12: TLabel
      Left = 638
      Top = 21
      Width = 58
      Height = 12
      Caption = '* | TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 884
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 872
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Color = 15916445
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'C'#211'D.BARRAS'
        'FORNECEDOR'
        'MARCA')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Color = 15916445
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 2
      Text = 'PARTE'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Color = 15916445
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 1
    Top = 93
    Width = 840
    Height = 398
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'#9'F'#9
      'TIPO'#9'9'#9'TIPO'#9'F'
      'PRODUTO'#9'100'#9'PRODUTO'#9'F'#9
      'UNIDADE'#9'6'#9'UNIDADE'#9'F'#9
      'PRECOVENDA'#9'10'#9'PRECOVENDA'#9'F'#9
      'CODBARRA'#9'13'#9'CODBARRA'#9'F'#9
      'CODGRUPO'#9'6'#9'CODGRUPO'#9'F'#9
      'CODSUBGRUPO'#9'6'#9'CODSUBGRUPO'#9'F'#9
      'CODMARCA'#9'6'#9'CODMARCA'#9'F'#9
      'PROIDONLINE'#9'10'#9'PROIDONLINE'#9'F'#9
      'EMDESTAQUE'#9'1'#9'EMDESTAQUE'#9'F'#9
      'CODFORNECEDOR'#9'6'#9'CODFORNECEDOR'#9'F'#9
      'CODPRODUTO'#9'10'#9'CODPRODUTO'#9'F'#9
      'CODFILIAL'#9'10'#9'CODFILIAL'#9'F'#9
      'ESTOQUE_INICIAL'#9'10'#9'ESTOQUE_INICIAL'#9'F'#9
      'ENTRADAS'#9'10'#9'ENTRADAS'#9'F'#9
      'SAIDAS'#9'10'#9'SAIDAS'#9'F'#9
      'ESTOQUE_ATUAL'#9'10'#9'ESTOQUE_ATUAL'#9#9
      'ULTIMA_ENTRADA'#9'10'#9'ULTIMA_ENTRADA'#9'F'#9
      'ULTIMA_SAIDA'#9'10'#9'ULTIMA_SAIDA'#9'F'#9
      'NOTA_FISCAL'#9'10'#9'NOTA_FISCAL'#9'F'#9
      'IDONLINE'#9'10'#9'IDONLINE'#9'F'#9
      'ATB'#9'30'#9'ATB'#9'F'#9
      'grupo'#9'40'#9'grupo'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDrawDataCell = GRIDDrawDataCell
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 492
    Width = 841
    Height = 60
    Color = 6723891
    ColorHighLight = 6723891
    ColorShadow = 6723891
    Align = alBottom
    TabOrder = 2
    object Bevel3: TBevel
      Left = 64
      Top = 7
      Width = 341
      Height = 18
    end
    object Label8: TLabel
      Left = 8
      Top = 10
      Width = 55
      Height = 13
      Caption = 'Fabricante:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 29
      Top = 34
      Width = 33
      Height = 13
      Caption = 'Grupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 66
      Top = 31
      Width = 142
      Height = 18
    end
    object Label10: TLabel
      Left = 213
      Top = 34
      Width = 50
      Height = 13
      Caption = 'Subgrupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 279
      Top = 31
      Width = 126
      Height = 18
    end
    object DBText1: TDBText
      Left = 67
      Top = 10
      Width = 326
      Height = 14
      DataField = 'MARCA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 70
      Top = 34
      Width = 134
      Height = 14
      DataField = 'GRUPO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 284
      Top = 34
      Width = 119
      Height = 14
      DataField = 'SUBGRUPO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 413
      Top = -5
      Width = 2
      Height = 85
    end
    object Bevel9: TBevel
      Left = 541
      Top = -7
      Width = 2
      Height = 90
    end
    object Label11: TLabel
      Left = 454
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object bitbtn1: TAdvGlowButton
      Left = 549
      Top = 2
      Width = 132
      Height = 56
      Caption = 'Cadastrar '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F90000008114944415478DAC4996B6C93E715C78F5475D22A4D9AC6A47EDB56
        50271589065448207142B817125FE25C80006D40A0B5ABD0A441C7C23A41416C
        48D3BE4C95360DA9ADB8A4B939972A0112B29CC749C6AA96EE46E25B204460BF
        EF6BBF6F9CC431F12597FF3ED8E4E2C4C44E53EDC34FB22C3D8F7E7ACE73CE79
        7C4CE71834970F19749E41A5AC52296B54CE4364642F1DE0009958A352F65311
        FBC8C8CA6B46A1BC6712CAC745C2FB37A3501E1B851288214B66E1ED3209EF75
        A3504E9B58596F622F15B1970CAC52190F53190F5309AB54CA2AE959A1333C41
        97125CCE318852152CE7312AE2A15545C25769125EBB5128788661CEE767E885
        3CEF7B93F00E988472C9C0EA4FF6F308EDE7916F2E58C61A1D663F19D8F76289
        D02E1B8577C420E40532E96010CA4491F0FDA584875795B2B67CC13256A99487
        A85C0CE90B84FC402F2418BFA1DCACA40CBD90FD25C25751CADAF3053F8C4B3D
        13BB18A79C87A8502817629BAE8C58A2646C5FEF474656E82C4FD1E5392ECFA0
        F371B1F37304CF31A854F8AEEF159E45EFD74A52286418847CE73447E922837E
        9B0055306638CEA0631CA562A1DC48E7AEE9594161027A4E57D6633DCCE37494
        41871974240E9D66D069069D61D0FB0C3209FF85DDE249CA1B1759156CEF90A1
        6B93A06B8F91D326615B870C73972FE57DF60A370C42ABFA25832AE32EEFC74E
        30406F73804E70908E89917C8390520EAB8115E4DF91F169FF28FEED1FC75D39
        88BB7210FF1A0AA1A67F183BDBDD3074A9A94742785021FC1527788C2A384015
        1C203AC2213ACA212AE3A72FEC161ED5206498D2086DD66D09FF51C70100989E
        8C01E0911AC0EBD536ECE99050DC93AAA48CDDC28D121E5B75944374844344C7
        394A3FE7093A24462EEF13EEB4EE8D9E1564B749604F10C02482E31104C72300
        A6F0B51CC0BAAA5E64D6DA61603965C902E146B9F0579FE4497A9727898E7184
        CA39F4DD02214FA45B4E96125C5F63C7C61A1B741647CA9226A1A0504830F0F0
        5A130788DE62950E08F5AC7E19B52E15C1AC7A07B2EBEC69491A8404B3F0FD79
        3F0F13195826BD90DDCBA961A90AE636381324B554F61F35B3EF4532B1B67AB9
        45361DC1859229DC49560D6414DE5FA45284F58B50D019CBE2CE4504EFC901AC
        ABB663639D03D91627B22D4EE4589CC8AAB5614BBD03059D324CDDEA12F7D17B
        858A84F7BAE1394538FF8E8C2DB73DC86E9316B0F9B684D5CD6EDC7E32962038
        8D2F3CA378F993FBF8F1B55EBC7AA36F869FDEE8C39AABF7B1E65A2F36DF74C3
        DCA32E5AD60C42419150049985D7BA5882E845AC437CDA3F827FF8C6C19EE002
        3ADD41DC7E3C8627A3218423D119C170240A653484D6877EDC1AF0A3EDD1F002
        3A07FD687069305B15ECB3FA92087A5D6414CAA20952C80AB6B449700EC58B30
        269332158922F034322318781A46341C8DAF9B4E02301D8E6047930B5BDBDCC9
        124723A350C69309EADA25DC9583C0F46CF8560A4C4E421A1947BEC5818C6A5B
        B2C409FEDF057734B9B0AEAA37597607C920143979883DB0FB43F1504D25611A
        939128024FC3F3421C0947E78473B175C054248A9D4D2E64D4D89395203F9508
        DFDF174D1256B0AD43464DBF1F7D6A00FF94C7F0B51C58C0179E5128A32184C2
        B349120A47A18D85F19514C03D29B0E83A9BF614DD8F47B0BDC985376A171673
        738F0F45C2FB90CCC25B9DEC716AEEF26167BB07199FD9F07A551F36D4DAB1BE
        669675D576BCFCC97DB43EF403989E5707BF94025873BD0F6B3FB3CD5B33970D
        B576E4363891172FE47325F52CA3B447EB21A350CE3CB72F76A9D8D32121B336
        D6F8B3EA1D336CAC73E047577B716B607881E03D2980D7AA6CD810EF268964D6
        39E67599DC44C906270A3BA4AB64626DED522DA7B847858165E82CB1C63FB391
        C589576FF4A1EDD142C1C55A5DAAE4353A915D6F477EA3EB2099D94746A168E9
        4AE6357E7B82F1B047F39BFB5FA2FDEC27B350FF601012D295CC6EF89604EB1D
        D035BAAA725B1F10E9D94F05ECFF61618A4FFDE21E6D4632ABD6B6E282790D2E
        6CB1D89073CB9199DBEE223ACE117A872374400C5D2948F1C9FFEC24B7D43BB0
        E6EA7F575430ABAE0FBB9B07DB2BAC1A1DB66A44277882DEE5092AE7D0F7DE14
        5224D5DFC3C53D2A0A3A65ACBED60BEBA03FDEAE27630070694164D4D8919986
        A0CEE2C4A6FAFB286D1B7CE59D4E858EDE9189CA78984A79980EF1281D14DA01
        7D1AD30453B78ACD37DD687069180D45208D86208D8C231089A2EBC90836D4D8
        B1390DC1CDB536EC6975571677FB482F24D20B89E8144FD0299EA05FF1049DE2
        29328BA12BFB8427E557B5B95B85D9AA60579313F916077634BBB0ABD985ED4D
        AEB4429B596F435E93834F8A009DB28ED3498E416F316638C6A0431CA602F1A4
        23D5509B44EC3DB7B5CD8D8C6A1BD655F521A3C68E376AEDF33AC4526CAAB3DB
        4DED032FFCAC7B80DEE6075411872AE3A3864A069D65D0073C4D67384A25C2D7
        99CE49262BE64B915D6F478EC5D1F75E7BF0FBE744947E23A254C9911966C66D
        17197481419718F4BBF8F8AD40C8D7D3996EA523A96B7042677140D7E8B895D7
        ECFACE079D93F4C7AE98C35CA7E70E304B78880E8AA1E305428EEAD3C8EEC48E
        932897637120C7E2C0B6A687BFDEDD3A40799FBBE8F49D30FDDEBAFC11F02B25
        42FD7876F0B8BC93D4599CD0353890DFD8DFB8A7E5C1FA3DAD83B4ABE511E536
        3B972798384437B1B6A948F8FE64125E65A921BAB94785BE538E85B2DE81BC06
        6740D7E0BC92DFE2DAB6F7D62015B60ED0AE9601DAD932B03282097F43BC6464
        456F14CA4726A174C4A7FEBED9BF2114CD241457498F662DECF0FC5567711ED8
        DAE4FC415E938BF26FF6D39B371FD1BE96872909FE6F008F83EB725A3ED50800
        00000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = BITBTN1Click
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
    object combo_situacao: TComboBox
      Left = 423
      Top = 26
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Somente Ativos'
      OnChange = combo_situacaoChange
      Items.Strings = (
        'Somente Ativos'
        'Somente Inativos'
        'Todos')
    end
    object btnEstoqueFilial: TAdvGlowButton
      Left = 687
      Top = 1
      Width = 153
      Height = 58
      Align = alRight
      Caption = 'Estoque Filiais'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
        7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
        1F900000089D4944415478DAB498FB6F53E719C71FA9EAA44E9A348DFD01EB7E
        5BA749481B74304253081989F1DDB9D83857129F8BED980468480824A4B4E4E2
        D096064AB07D8E9D1B94155819824203E72429080165B18FED0488C36D62ED06
        685CC4045DF5DD0F0901C70EC429FDE12359E7B5ECCF79DEE7792F0F49A8A767
        19C0663AF1BF8D242A1C05469CD43BEA249FC25367AC8A7C512789511789613B
        090AFB1B4161ED429813C430774250D8EB82C2DE1314F69E2FC4DEF447F90131
        CC750B0AB75608B37345852731C4932FE2A0CE988BFC175DD4396CA740D449DE
        2047C7FF5B4B8368A4A93E3453C1AE2B6B49883AE7888ABD460873C382C2E209
        BED0D3CF93CF82CC9467DC9818E2DEF3451CBFEA1A5B4D814BAB5F8EE09E5805
        7915FE55FF88B3490873FF11424C82CCCC612028EC77FE28BF4B1871CDE91C71
        FC40C18B15D433EA547B83CCA82F687BF2073F185F908137C4DCE91CE68B03C3
        15E47B9E603FEAE33835F1A540D44EDE20D7F8CC9BBF6418080A035F88DB2128
        1CF57D5747A7F16E820F9DF8BE3E0EF9FBCDF4E5E38DE48F70DD9E215BD2FC7A
        9978830C7C21E6CB2F1ED652FFF78D093EE48DD54FE2BBB2850263B5E40F333D
        3F4ED4A6C7AF94F70746ABC977754B9C131DBEDF4087EF37D0D1FB9BE96F0F1A
        C917A968ECF8BA2C79EE8458745D66D17B8545CF586AF45E61D13D3AF15B4966
        65F785327842F6DECFEF6EA6A3F71BE9F0FD7A3A7CBF81E8C0CD2ADA7FB38A3E
        FF761D1DBCE94A1742D34FAB1866D1719EC5CE332C769D4D8D4FCEB0E838C7C2
        1FB1430C73495FDE172CC7FE1B15C587BE5D47FB6F56D1819B5544DDD7ABA9F7
        460D89B1B5AFEC3A5FFEEFE996117F84C59EAB2C4A3732485FC1405D981A9946
        0E26BE149F7C5D88DE9823A9A41062B0EB7C19C4D135737A6FD452F7F56AA2CF
        6ED7D1813BF5D4137335792E944D9F2311167BAFB1B0AE65303F8D41863E35D2
        3239A84B56A1F9A41A1DC142748D38934A7A2E94A167B462EF81DB9BE8B33B75
        449E9135E419AE7CCD1B62BF139F53184F22585CCB20EDCF0CB22DA9B154CBC1
        C495A1B55F87967E35769E2B4A2A292A2CBC411B3C51D76F3D236B8802D14AF2
        2B8E1A21647B7E95BD2441F780016D5F69B1B56F5CB2733859246D1015FB2781
        682591187690A870375EB80C4C0896D471589C6D87AA804F890C8303397606EE
        0103B69DD2A345D2BF4092BBEB0F3B5E2531ECF8F58CD6A9288BBDD779145416
        E08F0BF390A931A7C4E22516E88ACC700F18F0C169035A65C30B241908618786
        FC0AE79AB1E0350E856B8AB060910599BA9529F1568615BA124B9CE053494DD2
        9C1415CE436298EB1666B09DFDF02976C64DF113C1E9247D0A0351E164F247F9
        FEC4B3DB8F5B245305C7257571D33DB1315C224161FF31A329FE9105A7E6E444
        246F91A0B00F5312DCC06271160795353532F476E4F0B6E70A26299C07290B16
        559761D1D25264E5AE4A24AF0C59F96549C796A8CA61B415BF50704A4E3E205F
        88FD672ACB8CD565C19BF38D58A6CA99422E32B24DC8C83661992A37613C6D71
        2EB4D69C842A7E9E64F349DD1D0A0CF3A7BCA914498D0D8B969523DB3C85952C
        32B52B91A9CE47B6854D185FA266606257CD2882ADB2012DB21E6D923146FE08
        BFD7176252CAC1B4E51CB257B271A80AEDC8D41520536386AAC09130BE54C7C3
        C497A726281BBF2231C456CFB68A57583964E494225D578815857664EAACC8D4
        98A12EB0235D5F8425C662ACB07233AEE2A9B8FB0D9D24861D6FCC5670797E39
        74450EE494AD46B6959B14CC5AC9C1B46A350C2515589E5F3E2BC116D9806DB2
        C94CC27897E0D66C04E72DCFC1FB1F79714C3E83746309966ACCC850E763C10A
        0BFE7A544647E77EFC619961B6117CDC269B7E4AFEC86A12157BEB6C8E5B7397
        E8B153DC87E8E5EB48D3176189261F19EA7CCC5B9E8B734323387044C2EFD2D5
        290B8EE79FA177BB9443E489BA6877C4F94B6F908198A2609AD60A575D13B675
        742123AF1C195A0B9669CC483714A3F963011BB66EC722B5252541B76CC45659
        8B26D930DF2DE512FDE5F67ADA7F7B03F58C3A3DDE171CF9A70AAA0B78BCAD2F
        C282EC7CA88B9E1689A6D081852A33166BADD014F029096E953568972DC7F74A
        2EEA919C447BBEA9A54FBFD948816BEFFCACE382EDD18B2E4D53F7E22C0B832C
        B30DAA027E525065E59165B621CB6C4B692F6E95F5785756A3432A7A7D9FE4A0
        1E8921EA8DB9A827E6A27D57ABE8D3983DDF172C876FBA4BD37506790E16737F
        6FC75B59F1A4AFA8C0C2B4422CFC9305E9AA8A84F1371739A1B24C1CB74E2717
        6C92B5689757D678A452DA215969A7544074E46E1D1DB95B47C7EE6EA4C37737
        912FEADCBDFB4279D23B714F8C47657B29725D56946C2A8EA3B4A11445EBCD28
        7C270FA50DA509E3D6EA12304D8570F71BD0369828F8BEAC418BAC970E4A2E3A
        2AADA34352251D922A89BC639B27F15D7D8FC4CB35240C95F7256B7D880A8F9E
        980DBB143D3E3CAB42FBDFB568BFF0941D437AEC18D2C73D7B3AA6C5C7E7B5E3
        42922189A07678A76C79A54B2A21412A9C848E3DAA7FCAE37A3AF1A881BE7858
        4B62983DE919B24DB9FD33E81C76C01FE1D0366842D3490DDCFD8694489C561D
        9A657DE4A054F5F393D2263A2ED5D231A966121A447D1CA7D148FD68186FBF0D
        B1DDC9DA6681A803629887BBDF84AD7D9A196D5BD3AD772DB2FE68AB6CF8499F
        544767A5661A901A69507A7792E91B98619E02234EEABEEC2CF30699C7E30DCC
        44C9B601139A4EA426D92CEBD024EBF18194B37EBB9C4FADB2918E48D5744ADA
        4292541FC7733BAC9D979CB467AC827C0AFFBA7FD8213CE99F3C117D56726B9F
        7AC651DB269B0E7E28E5CDDD2EE5D376398F5A64C3EC040317C79BE882C253D7
        953524449DF34485DF2E84B96F0485856F3292DC84A406ADB27152245ECE78CF
        2DEB3DADB2E9ED1D5201ED902CF4A194471FBD2CC1CEB12A12A24E12232E12C3
        FC6B4298558B0ADB2E286C5FE7B073580C73FFDA369873AF45D2DD6B950DB7DA
        64D325B76CEC77CB86DD6EC998DF26997ED12619C82DE550BB64A58F25F38C04
        FF3F00D1443486DB1890480000000049454E44AE426082}
      Transparent = True
      TabOrder = 2
      OnClick = btnEstoqueFilialClick
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
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 85
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 0
      Width = 369
      Height = 255
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 15916445
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 48
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = 6723891
    Fill.ColorTo = clNone
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = clNone
    Fill.BorderWidth = 0
    Fill.Rounding = 0
    Fill.ShadowColor = clNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.1.1.0'
    Align = alTop
    TabOrder = 4
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 14
      Width = 176
      Height = 23
      Caption = 'Localizar Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = -3
      Top = 0
      Width = 56
      Height = 48
      Appearance.PictureColor = clWhite
      Caption = ''
      Picture.Data = {
        89504E470D0A1A0A0000000D494844520000002A0000002A0806000000C5C3C9
        5B0000001974455874536F6674776172650041646F626520496D616765526561
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
        702E6969643A3445414132443945303444303131453538344545414445343436
        3535353531312220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A344541413244394630344430313145353834454541444534343635353535
        3131223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3445414132443943303444303131
        453538344545414445343436353535353131222073745265663A646F63756D65
        6E7449443D22786D702E6469643A344541413244394430344430313145353834
        4545414445343436353535353131222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E4B533802000004B14944415478DAD499
        7968554714C65F1215778D2651A352637109C605036EE082A2455C6A5D506825
        54105C402B05A960ABE03F820A2AA2E082FE218A2888FB52975A49085151DBB8
        15375C316AAAC625C6C4EB77E01B3D0EBEF7665EDE7BE0811FF7BE3B73CF7C77
        EEDC9973E6A5044110FA1AAC4E2DEF6F023A806EA02B680B9A8306A012FC0F1E
        82CBE02AB8092A40902CA11DC170F03DE80D5A39DCF3045C007BC1617003BC77
        6D30C5F3D54BEF4D063F832EEAFA6B50069E9337A03E7BB729C8028D54FD5B60
        0BD806AEC75BE838301FF457D72E82425002AEF135BF0255A02E878688EC0CF2
        C1401E8D9D03CBC0CEA8BD2B42A3D0002C02CF824F560C6680AE0EF76BBE05D3
        C029E5EB25580A9A45BA379AE3266003A8A15311FB07E8E029D0A61D980FCA94
        E0ED202B16A10DC13AE5A8147C07D26A29D220C36E083867894DF715BA44F564
        09E81E2781369DC009B6F31E2CE74338099DA8C6E4BF0914A9C76E09DB7B0D0A
        5C84760467D5981C9A6091867EE0A11A66B99184A682DF59B986033E25494285
        59E01DDB972150279CD0CEE0162BFE0D32922832C429EA00DB9719A1A7294B55
        53AA9C8FE6EAF3166CE0B2974C93556D13780932C1789066C4196BCAB55BEC3C
        38E2D140373EE0974C0295EE1EBE8E83629E8F0119F6CAD417BC61B72FF6785D
        23C04D5008BA7C6128FDC5E134CEC3E7AF9CAA64BC0EB3C7E84C8A7C0C463A3A
        1C4691C644540ECB72F8DBD87D30D6D1EF60D617FBCD1EA33D787CC000C3C546
        821CF57B3058CDC065357F1BCBE6AB743169FF2ECFF3EC576FBEB683A091E393
        4BAF1D0E3EB76A50C1A3B6427B6E8C804C4B3BD4ECF3598F9AE0F71143351793
        B8723A38A6AEC957DAD87CADB462C6B0571CFD56333BF8A84B0B35816D95E794
        22AFA8001C0D537E1AFC08FEF3F45BC163335B688A09516398FF5E71EE0D5716
        CB7C1C685DA9563A116264EE6312C16F06A3C2940F67DA91E5E9B7318F2F6CA1
        8FD49868E8E84CEAAE053F58BE6A548FA4B17C9D63126874A5F3BCCC167A57AD
        24998E0EE78109D635F970268193D675590E173AFA95D5E81B9EDFB18596F2D8
        0674727458C47957FB98037683B9E08C2A7BCAFA2E26EDB7E3F9257B1E1D08AA
        F46AE0882C8DF7C025D0DF2AEBC55443E2CC9F3C7CFEC279B8DAAC92BA5042BA
        220A952CB18587E301202F4C9964AA833C7C49AEB65F05D0D9B650099A17A814
        765292635183F46039752C35C1B35D294FA50387A2E5DA094096EE9D6CFF29C8
        0F17E1A7F129028658B3922C742AA864FB6B22A52221060EA5AC2CBDDB274922
        25D3BDCD76AFF3438C9A2E17A820BA280E3B23D16803FE54B9FD6C3BA90C77A3
        7C582B7993D8B1048A6D0BF6A8707023A8EFB353D2925B2C3A9E1C106791BDD5
        2E49C098383B964D32D9B4DAA51CDDE36BC9AAA540E984E9E086F22DB34CFB58
        77F38CD3556ACC1AA753406B4F81999C9FF7295F32BBAC0FD79306D78DDCBA0C
        7E6523375705D812809C026719183F61C05BCD6D7709D55A70773A9F39543FEE
        F187B8DBBC826160653CB7C6257F9FCA88BEB5BA5ECE30F131838F777C3811D9
        927533ACFA5B19C75E48C41EBEE9DD5CEEAA08BD540F4532C900FE0187F88743
        6984AC202E42751297CED7DA93E2B3D973F5D8ABD273F799D45D641A5CCEA1E1
        65B5119A54FB20C0004E7B10B44195D3E70000000049454E44AE426082}
      TabOrder = 0
      Version = '1.2.0.0'
      OnClick = AdvMetroButton1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Cadastrarnovoprodutos1: TMenuItem
      Caption = 'Cadastrar novo produtos'
      ShortCut = 113
      OnClick = BITBTN1Click
    end
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 176
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'SELECT PROD.CODIGO'
      '      ,'#39'PRODUTO'#39' TIPO'
      '      ,PROD.PRODUTO'
      '      ,PROD.UNIDADE'
      '      ,PROD.PRECOVENDA'
      '      ,PROD.CODBARRA'
      '      ,PROD.CODGRUPO'
      '      ,PROD.CODSUBGRUPO'
      '      ,PROD.CODMARCA'
      '      ,PROD.IDONLINE PROIDONLINE'
      '      ,EMDESTAQUE'
      '      ,PROD.CODFORNECEDOR'
      '      ,ESTQ.CODPRODUTO'
      '      ,ESTQ.CODFILIAL'
      '      ,ESTQ.ESTOQUE_INICIAL'
      '      ,ESTQ.ENTRADAS'
      '      ,ESTQ.SAIDAS'
      '      ,ESTQ.ESTOQUE_ATUAL'
      '      ,ESTQ.ULTIMA_ENTRADA'
      '      ,ESTQ.ULTIMA_SAIDA'
      '      ,ESTQ.NOTA_FISCAL'
      '      ,ESTQ.IDONLINE'
      '      ,ESTQ.ATB'
      'FROM C000025 PROD'
      '     ,C000100 ESTQ'
      'WHERE PROD.ATB LIKE :ATBPROD AND'
      '      ESTQ.ATB LIKE :ATBESTQ AND'
      '      SITUACAO <> 1 AND'
      '      PROD.CODIGO = ESTQ.CODPRODUTO AND'
      '      %s'
      'UNION ALL'
      'SELECT LPAD(CV.ID, 6, '#39'0'#39') CODIGO'
      '      ,'#39'VOLUME'#39' TIPO'
      '      ,CV.DESCRICAO PRODUTO'
      '      ,CV.UNIDADE'
      '      ,CV.PRECO PRECOVENDA'
      '      ,CV.EANSKU CODBARRA'
      '      ,IJP.CODGRUPO'
      '      ,IJP.CODSUBGRUPO'
      '      ,IJP.CODMARCA'
      '      ,IJP.IDONLINE PROIDONLINE'
      '      ,EMDESTAQUE'
      '      ,IJP.CODFORNECEDOR'
      '      ,ESTQ.CODPRODUTO'
      '      ,ESTQ.CODFILIAL'
      '      ,ESTQ.ESTOQUE_INICIAL'
      '      ,TRUNC(ESTQ.ESTOQUE_ATUAL / CV.QTDE) ESTOQUE_ATUAL'
      '      ,TRUNC(ESTQ.SAIDAS / CV.QTDE) SAIDAS'
      '      ,TRUNC(ESTQ.ESTOQUE_ATUAL / CV.QTDE) ESTOQUE_ATUAL'
      '      ,ESTQ.ULTIMA_ENTRADA'
      '      ,ESTQ.ULTIMA_SAIDA'
      '      ,ESTQ.NOTA_FISCAL'
      '      ,ESTQ.IDONLINE'
      '      ,ESTQ.ATB'
      'FROM COMPOSICAOVOLUME CV'
      '    ,C000100 ESTQ'
      'INNER JOIN C000025 IJP ON'
      '    IJP.CODIGO = CV.CODPRODUTO'
      'WHERE IJP.ATB LIKE :ATBPROD AND'
      '      ESTQ.ATB LIKE :ATBESTQ AND'
      '      SITUACAO <> 1 AND'
      '      IJP.CODIGO = ESTQ.CODPRODUTO AND'
      '      %s')
    Params = <
      item
        DataType = ftString
        Name = 'ATBPROD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ATBESTQ'
        ParamType = ptInput
      end>
    Left = 464
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'ATBPROD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ATBESTQ'
        ParamType = ptInput
      end>
    object queryCODIGO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryTIPO: TWideStringField
      DisplayWidth = 9
      FieldName = 'TIPO'
      Size = 7
    end
    object queryPRODUTO: TWideStringField
      DisplayWidth = 100
      FieldName = 'PRODUTO'
      Size = 100
    end
    object queryUNIDADE: TWideStringField
      DisplayWidth = 6
      FieldName = 'UNIDADE'
      Size = 6
    end
    object queryPRECOVENDA: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOVENDA'
    end
    object queryCODBARRA: TWideStringField
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryCODGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object queryCODSUBGRUPO: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object queryCODMARCA: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Size = 6
    end
    object queryPROIDONLINE: TIntegerField
      DisplayWidth = 10
      FieldName = 'PROIDONLINE'
    end
    object queryEMDESTAQUE: TWideStringField
      DisplayWidth = 1
      FieldName = 'EMDESTAQUE'
      Size = 1
    end
    object queryCODFORNECEDOR: TWideStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object queryCODPRODUTO: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODPRODUTO'
      Size = 10
    end
    object queryCODFILIAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'CODFILIAL'
      Size = 10
    end
    object queryESTOQUE_INICIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE_INICIAL'
    end
    object queryENTRADAS: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTRADAS'
    end
    object querySAIDAS: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIDAS'
    end
    object queryESTOQUE_ATUAL: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE_ATUAL'
    end
    object queryULTIMA_ENTRADA: TDateField
      DisplayWidth = 10
      FieldName = 'ULTIMA_ENTRADA'
    end
    object queryULTIMA_SAIDA: TDateField
      DisplayWidth = 10
      FieldName = 'ULTIMA_SAIDA'
    end
    object queryNOTA_FISCAL: TWideStringField
      DisplayWidth = 10
      FieldName = 'NOTA_FISCAL'
      Size = 10
    end
    object queryIDONLINE: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDONLINE'
    end
    object queryATB: TWideStringField
      DisplayWidth = 30
      FieldName = 'ATB'
      Required = True
      Size = 30
    end
    object querygrupo: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Size = 40
      Lookup = True
    end
    object querysubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBGRUPO'
      KeyFields = 'CODSUBGRUPO'
      Visible = False
      Size = 40
      Lookup = True
    end
    object querymarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Visible = False
      Size = 40
      Lookup = True
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 560
    Top = 128
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
