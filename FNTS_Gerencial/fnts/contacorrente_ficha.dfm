object frmcontacorrente_ficha: Tfrmcontacorrente_ficha
  Left = 505
  Top = 197
  BorderStyle = bsNone
  Caption = 'CONTA CORRENTE | Ficha de Cadastro'
  ClientHeight = 482
  ClientWidth = 618
  Color = 15721694
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 60
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 36
    Top = 83
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Banco:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 107
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ag'#234'ncia/Dig:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 17
    Top = 131
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta/Dig:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 31
    Top = 154
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Titular:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 134
    Top = 106
    Width = 10
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 185
    Top = 131
    Width = 10
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBEdit1: TDBEdit
    Left = 71
    Top = 55
    Width = 65
    Height = 21
    Color = clWhite
    DataField = 'CODIGO'
    DataSource = dscontacorrente
    Enabled = False
    TabOrder = 0
  end
  object EBANCO: TDBEdit
    Left = 71
    Top = 79
    Width = 64
    Height = 21
    Color = clWhite
    DataField = 'CODBANCO'
    DataSource = dscontacorrente
    TabOrder = 1
    OnEnter = EBANCOEnter
    OnExit = EBANCOExit
    OnKeyPress = EBANCOKeyPress
  end
  object bLOCBANCO: TBitBtn
    Left = 135
    Top = 79
    Width = 25
    Height = 21
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 8
    OnClick = bLOCBANCOClick
  end
  object DBEdit30: TDBEdit
    Left = 161
    Top = 79
    Width = 344
    Height = 21
    Color = clWhite
    DataField = 'banco'
    DataSource = dscontacorrente
    TabOrder = 9
  end
  object DBEdit2: TDBEdit
    Left = 71
    Top = 103
    Width = 65
    Height = 21
    Color = clWhite
    DataField = 'AGENCIA'
    DataSource = dscontacorrente
    TabOrder = 2
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit3: TDBEdit
    Left = 167
    Top = 103
    Width = 338
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'NOME_AGENCIA'
    DataSource = dscontacorrente
    TabOrder = 4
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 71
    Top = 127
    Width = 116
    Height = 21
    Color = clWhite
    DataField = 'CONTA'
    DataSource = dscontacorrente
    TabOrder = 5
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 71
    Top = 151
    Width = 434
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'TITULAR'
    DataSource = dscontacorrente
    TabOrder = 7
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = DBEdit5KeyPress
  end
  object pgravar: TPanel
    Left = 511
    Top = 48
    Width = 107
    Height = 424
    Align = alRight
    BevelOuter = bvNone
    Color = 6723891
    ParentBackground = False
    TabOrder = 10
    object bgravar: TAdvGlowButton
      Left = 0
      Top = 0
      Width = 107
      Height = 63
      Align = alTop
      Caption = 'Gravar'
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
        1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
        DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
        AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
        482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
        6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
        B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
        32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
        337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
        F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
        E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
        2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
        400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
        43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
        A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
        82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
        7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
        93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
        93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
        75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
        B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
        198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
        A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
        0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
        F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
        6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
        1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
        2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
        01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
        CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
        FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
        48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
        3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
        DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
        10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
        81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
        14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
        C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
        FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
        ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
        E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
        79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
        1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
        C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
        27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
        B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
        1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
        BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
        8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
        0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
        612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
        46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
        89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
        A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
        36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
        FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
        1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
        43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
        FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
        54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
        4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
        E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
        5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
        50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
        BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
        A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
        D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
        8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
        D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
        6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
      Transparent = True
      TabOrder = 0
      OnClick = bgravarClick
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
      Layout = blGlyphTop
    end
  end
  object DBEdit6: TDBEdit
    Left = 142
    Top = 103
    Width = 25
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'AGENCIADIG'
    DataSource = dscontacorrente
    MaxLength = 1
    TabOrder = 3
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object DBEdit7: TDBEdit
    Left = 193
    Top = 127
    Width = 28
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'CONTADIG'
    DataSource = dscontacorrente
    MaxLength = 1
    TabOrder = 6
    OnEnter = EBANCOEnter
    OnExit = DBEdit2Exit
    OnKeyPress = EBANCOKeyPress
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 177
    Width = 504
    Height = 296
    Caption = 'Boleto de Cobran'#231'a'
    Color = 8440061
    ParentBackground = False
    ParentColor = False
    TabOrder = 11
    object Label21: TLabel
      Left = 6
      Top = 15
      Width = 34
      Height = 13
      Caption = 'Pessoa'
    end
    object Label8: TLabel
      Left = 235
      Top = 15
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd Cedente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lcnpj: TLabel
      Left = 75
      Top = 15
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label12: TLabel
      Left = 311
      Top = 13
      Width = 44
      Height = 13
      Caption = 'Nosso N'#186
    end
    object Label13: TLabel
      Left = 439
      Top = 13
      Width = 39
      Height = 13
      Caption = 'Carteira'
    end
    object Label14: TLabel
      Left = 6
      Top = 52
      Width = 64
      Height = 13
      Caption = 'Dias Protesto'
    end
    object Label15: TLabel
      Left = 80
      Top = 52
      Width = 36
      Height = 13
      Caption = 'Esp'#233'cie'
    end
    object Label16: TLabel
      Left = 161
      Top = 52
      Width = 32
      Height = 13
      Caption = 'Mo'#233'da'
    end
    object Label17: TLabel
      Left = 217
      Top = 53
      Width = 30
      Height = 13
      Caption = 'Aceite'
    end
    object Label10: TLabel
      Left = 6
      Top = 91
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Local de Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 269
      Top = 53
      Width = 112
      Height = 13
      Caption = 'Seguencial de Remessa'
    end
    object Label55: TLabel
      Left = 7
      Top = 134
      Width = 79
      Height = 13
      Caption = 'Instru'#231#227'o Boleto'
    end
    object DBEdit8: TDBEdit
      Left = 235
      Top = 28
      Width = 74
      Height = 21
      Color = clWhite
      DataField = 'CODCEDENTE'
      DataSource = dscontacorrente
      TabOrder = 0
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 75
      Top = 28
      Width = 157
      Height = 21
      Color = clWhite
      DataField = 'CPFCNPJ'
      DataSource = dscontacorrente
      TabOrder = 1
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 311
      Top = 28
      Width = 125
      Height = 21
      Color = clWhite
      DataField = 'NOSSONUM'
      DataSource = dscontacorrente
      TabOrder = 2
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 439
      Top = 28
      Width = 59
      Height = 21
      Color = clWhite
      DataField = 'CARTEIRA'
      DataSource = dscontacorrente
      TabOrder = 3
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object pessoa: TDBComboBox
      Left = 6
      Top = 28
      Width = 67
      Height = 21
      Color = clWhite
      DataField = 'FISICAJURIDICA'
      DataSource = dscontacorrente
      Items.Strings = (
        'JURIDICA'
        'FISICA')
      TabOrder = 4
    end
    object DBEdit15: TDBEdit
      Left = 6
      Top = 67
      Width = 70
      Height = 21
      Color = clWhite
      DataField = 'DIAS_PROTESTO'
      DataSource = dscontacorrente
      TabOrder = 5
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit16: TDBEdit
      Left = 80
      Top = 67
      Width = 78
      Height = 21
      Color = clWhite
      DataField = 'ESPECIE'
      DataSource = dscontacorrente
      TabOrder = 6
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit17: TDBEdit
      Left = 161
      Top = 67
      Width = 53
      Height = 21
      Color = clWhite
      DataField = 'MOEDA'
      DataSource = dscontacorrente
      TabOrder = 7
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit18: TDBEdit
      Left = 217
      Top = 67
      Width = 46
      Height = 21
      Color = clWhite
      DataField = 'ACEITE'
      DataSource = dscontacorrente
      TabOrder = 8
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit19: TDBEdit
      Left = 6
      Top = 107
      Width = 492
      Height = 21
      Color = clWhite
      DataField = 'LOCAL_PAGTO'
      DataSource = dscontacorrente
      TabOrder = 9
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBEdit20: TDBEdit
      Left = 269
      Top = 67
      Width = 116
      Height = 21
      Color = clWhite
      DataField = 'CONT_REMESSA'
      DataSource = dscontacorrente
      TabOrder = 10
      OnEnter = EBANCOEnter
      OnExit = DBEdit2Exit
      OnKeyPress = EBANCOKeyPress
    end
    object DBMemo1: TDBMemo
      Left = 6
      Top = 149
      Width = 492
      Height = 140
      DataField = 'MENSAGEM'
      DataSource = dscontacorrente
      TabOrder = 11
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 472
    Width = 618
    Height = 10
    Align = alBottom
    BevelOuter = bvNone
    Color = 6723891
    ParentBackground = False
    TabOrder = 12
  end
  object Panel3: TPanel
    Left = 0
    Top = 48
    Width = 8
    Height = 424
    Align = alLeft
    BevelOuter = bvNone
    Color = 6723891
    ParentBackground = False
    TabOrder = 13
  end
  object AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel
    Left = 0
    Top = 0
    Width = 618
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
    TabOrder = 14
    ShowExpander = False
    ExpanderColor = 16445929
    ExpanderDownColor = 15587527
    ExpanderHoverColor = 11196927
    TMSStyle = 0
    OldHeight = 48.000000000000000000
    object Label53: TLabel
      Left = 59
      Top = 14
      Width = 371
      Height = 23
      Caption = 'CONTA CORRENTE | Ficha de Cadastro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bcancelar: TAdvMetroButton
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
      Version = '1.1.2.0'
      OnClick = bcancelar1Click
    end
  end
  object dscontacorrente: TwwDataSource
    DataSet = frmmodulo.qrcontacorrente
    Left = 328
    Top = 32
  end
  object Pop2: TPopupMenu
    Left = 168
    Top = 8
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelar1Click
    end
  end
end
