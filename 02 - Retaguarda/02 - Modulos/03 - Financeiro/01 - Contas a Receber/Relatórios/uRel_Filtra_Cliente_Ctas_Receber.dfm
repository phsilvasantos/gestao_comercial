object FrRel_Filtra_Cliente_Ctas_Receber: TFrRel_Filtra_Cliente_Ctas_Receber
  Left = 0
  Top = 0
  ClientHeight = 667
  ClientWidth = 1215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Print: TRLReport
    Left = 50
    Top = 0
    Width = 1123
    Height = 794
    Margins.LeftMargin = 6.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    PreviewOptions.Caption = 'Contas a Receber'
    JobTitle = 'Contas a Receber'
    object RLBand1: TRLBand
      Left = 23
      Top = 38
      Width = 1077
      Height = 90
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel1: TRLLabel
        Left = 0
        Top = 22
        Width = 1077
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'FLAMES COM'#201'RCIO PIROT'#201'CNICOS E EVENTOS LTDA - ME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
        BeforePrint = RLLabel1BeforePrint
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 74
        Width = 37
        Height = 15
        Align = faLeftBottom
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 37
        Top = 74
        Width = 42
        Height = 15
        Align = faLeftBottom
        Info = itHour
        Text = '-'
      end
      object ter: TRLSystemInfo
        Left = 913
        Top = 54
        Width = 164
        Height = 35
        Align = faRight
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        Layout = tlBottom
        ParentFont = False
        Text = ' P'#225'ginas: '
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 1077
        Height = 22
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO CONTAS A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 38
        Width = 1077
        Height = 16
        Align = faTop
        Alignment = taCenter
        Caption = 'FILTRADO POR CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 57
        Width = 287
        Height = 15
        Caption = 'PER'#205'ODO SELECIONADO: 00/00/0000 - 00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlBottom
        ParentFont = False
        BeforePrint = RLLabel16BeforePrint
      end
    end
    object RLGroup1: TRLGroup
      Left = 23
      Top = 128
      Width = 1077
      Height = 273
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      DataFields = 'REC_VENCIMENTO'
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 1077
        Height = 12
        BandType = btTitle
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 12
        Width = 1077
        Height = 21
        BandType = btTitle
        Color = 14869218
        ParentColor = False
        Transparent = False
        object RLDBText3: TRLDBText
          Left = 3
          Top = 3
          Width = 189
          Height = 15
          DataField = 'REC_VENCIMENTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'VENCIMENTO: '
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 33
        Width = 1077
        Height = 16
        BandType = btTitle
        object RLLabel3: TRLLabel
          Left = 3
          Top = 1
          Width = 63
          Height = 14
          AutoSize = False
          Caption = 'Dt. Lancto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 136
          Top = 1
          Width = 30
          Height = 14
          Margins.Left = 10
          AutoSize = False
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 564
          Top = 1
          Width = 261
          Height = 14
          Margins.Left = 10
          AutoSize = False
          Caption = 'Anota'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 825
          Top = 1
          Width = 48
          Height = 14
          Margins.Left = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Atraso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 950
          Top = 1
          Width = 72
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 167
          Top = 1
          Width = 73
          Height = 14
          Margins.Left = 10
          Caption = 'Docto. N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 241
          Top = 1
          Width = 322
          Height = 14
          Margins.Left = 10
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 1022
          Top = 1
          Width = 55
          Height = 14
          Margins.Left = 10
          Alignment = taCenter
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 873
          Top = 1
          Width = 77
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Vl. Atualizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 67
          Top = 1
          Width = 68
          Height = 14
          Margins.Left = 10
          Alignment = taRightJustify
          Caption = 'Valor Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 49
        Width = 1077
        Height = 16
        object RLDBText1: TRLDBText
          Left = 3
          Top = 1
          Width = 63
          Height = 14
          AutoSize = False
          DataField = 'REC_DATA_REGISTRO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 136
          Top = 1
          Width = 30
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'REC_PARCELA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 167
          Top = 1
          Width = 73
          Height = 14
          AutoSize = False
          DataField = 'REC_DOCUMENTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 825
          Top = 1
          Width = 48
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'REC_DIAS_VENCIDOS'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText7BeforePrint
        end
        object RLDBText8: TRLDBText
          Left = 950
          Top = 1
          Width = 72
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'REC_VLR_SALDO'
          DataSource = dsDados
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 241
          Top = 1
          Width = 322
          Height = 14
          AutoSize = False
          DataField = 'REC_CLIENTE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 1022
          Top = 0
          Width = 56
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'REC_STATUS_TEXTO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText10BeforePrint
        end
        object RLDBText20: TRLDBText
          Left = 67
          Top = 1
          Width = 68
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'REC_VALOR'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 878
          Top = 1
          Width = 72
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'REC_VLR_ATUALIZADO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Layout = tlCenter
          ParentFont = False
          Text = ''
        end
        object RLDBMemo1: TRLDBMemo
          Left = 564
          Top = 1
          Width = 261
          Height = 14
          Behavior = [beSiteExpander]
          DataField = 'REC_ANOTACOES'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 181
        Width = 1077
        Height = 18
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBResult2: TRLDBResult
          Left = 683
          Top = 2
          Width = 339
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'REC_VLR_SALDO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          Layout = tlCenter
          ParentFont = False
          Text = 'TOTAL A RECEBER NA DATA:  '
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 1077
          Height = 2
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 65
        Width = 1077
        Height = 116
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataSource = dsPagtos
        BeforePrint = RLSubDetail1BeforePrint
        object RLBand11: TRLBand
          Left = 0
          Top = 0
          Width = 1077
          Height = 22
          AutoExpand = False
          BandType = btTitle
          object RLLabel13: TRLLabel
            Left = 124
            Top = 8
            Width = 70
            Height = 14
            AutoSize = False
            Caption = 'Dt. Pagto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 200
            Top = 8
            Width = 115
            Height = 14
            AutoSize = False
            Caption = 'Forma Pagto.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 318
            Top = 8
            Width = 266
            Height = 14
            AutoSize = False
            Caption = 'Anota'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 586
            Top = 8
            Width = 93
            Height = 14
            Alignment = taRightJustify
            Caption = 'Saldo a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 681
            Top = 8
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 743
            Top = 8
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Multa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 805
            Top = 8
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Acr'#233'scimos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel22: TRLLabel
            Left = 867
            Top = 8
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Descontos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 929
            Top = 8
            Width = 93
            Height = 14
            Alignment = taRightJustify
            Caption = 'Valor Recebido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 97
            Top = 8
            Width = 25
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '#'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Layout = tlCenter
            ParentFont = False
          end
        end
        object RLBand10: TRLBand
          Left = 0
          Top = 22
          Width = 1077
          Height = 15
          object RLDBText11: TRLDBText
            Left = 124
            Top = 1
            Width = 70
            Height = 14
            AutoSize = False
            DataField = 'REC_DATA_RECEBTO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText12: TRLDBText
            Left = 200
            Top = 1
            Width = 115
            Height = 14
            AutoSize = False
            DataField = 'REC_FORMA_PAGTO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText14: TRLDBText
            Left = 614
            Top = 1
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'REC_SALDO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText15: TRLDBText
            Left = 681
            Top = 1
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'REC_VLR_JUROS'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText16: TRLDBText
            Left = 867
            Top = 1
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'REC_VLR_DESCONTOS'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText17: TRLDBText
            Left = 916
            Top = 1
            Width = 106
            Height = 14
            Alignment = taRightJustify
            DataField = 'REC_VLR_RECEBIDO'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText18: TRLDBText
            Left = 743
            Top = 1
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'REC_VLR_MULTA'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText19: TRLDBText
            Left = 805
            Top = 1
            Width = 60
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'F_VLR_ACRESCIMOS'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBMemo2: TRLDBMemo
            Left = 318
            Top = 1
            Width = 266
            Height = 12
            Behavior = [beSiteExpander]
            DataField = 'REC_ANOTACOES'
            DataSource = dsPagtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 97
            Top = 1
            Width = 25
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itRecNo
            ParentFont = False
            Text = ''
          end
        end
        object RLBand12: TRLBand
          Left = 0
          Top = 37
          Width = 1077
          Height = 16
          BandType = btSummary
          object RLDBResult3: TRLDBResult
            Left = 778
            Top = 1
            Width = 244
            Height = 14
            Alignment = taRightJustify
            DataField = 'REC_VLR_RECEBIDO'
            DataSource = dsPagtos
            DisplayMask = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = 'TOTAL RECEBIDO: '
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 0
            Width = 1077
            Height = 2
            Align = faTop
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
      end
    end
    object RLBand6: TRLBand
      Left = 23
      Top = 440
      Width = 1077
      Height = 18
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel12: TRLLabel
        Left = 3
        Top = 1
        Width = 256
        Height = 12
        Caption = 'TechCore Solu'#231#245'es em Gest'#227'o / http://www.techcore.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo5: TRLSystemInfo
        AlignWithMargins = True
        Left = 967
        Top = 1
        Width = 110
        Height = 17
        Align = faRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HoldStyle = hsCopyWidth
        Info = itPageNumber
        Layout = tlBottom
        ParentFont = False
        Text = 'P'#225'gina: '
      end
    end
    object RLBand7: TRLBand
      Left = 23
      Top = 413
      Width = 1077
      Height = 27
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
      object RLDBResult1: TRLDBResult
        Left = 661
        Top = 2
        Width = 361
        Height = 24
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'REC_VLR_SALDO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'TOTAL GERAL:  '
      end
    end
    object RLBand9: TRLBand
      Left = 23
      Top = 401
      Width = 1077
      Height = 12
      BandType = btColumnFooter
    end
  end
  object dsDados: TDataSource
    DataSet = FrFiltro_Data_Cli_Ctas_Receber.tbDados
    Left = 6
    Top = 48
  end
  object dsPagtos: TDataSource
    DataSet = QueryPagtos
    Left = 8
    Top = 112
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Title = 'Contas a Receber'
    DocumentInfo.Author = 'Winston Moreira'
    DocumentInfo.Creator = 'TechCore-RTG'
    DisplayName = 'Contas a Receber'
    Left = 8
    Top = 144
  end
  object QueryPagtos: TFDQuery
    MasterSource = dsDados
    MasterFields = 'ID_C11'
    Connection = FrModuloRet.DBConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '    T1.ID,'
      '    T1.ID_C000110,'
      '    T1.ID_C000111,'
      '    T1.ID_FORMA_PAGTO,'
      '    T1.REC_DATA_RECEBTO,'
      '    T1.REC_ANOTACOES,'
      '    T1.REC_FORMA_PAGTO,'
      '    CAST(T1.REC_SALDO AS FLOAT) AS REC_SALDO,'
      '    CAST(T1.REC_VLR_JUROS AS FLOAT) AS REC_VLR_JUROS,'
      '    CAST(T1.REC_VLR_MULTA AS FLOAT) AS REC_VLR_MULTA,'
      '    CAST(T1.REC_VLR_ACRESCIMOS AS FLOAT) AS REC_VLR_ACRESCIMOS,'
      '    CAST(T1.REC_VLR_DESCONTOS AS FLOAT) AS REC_VLR_DESCONTOS,'
      '    CAST(T1.REC_VLR_CARTORIOS AS FLOAT) AS REC_VLR_CARTORIOS,'
      '    CAST(T1.REC_VLR_RECEBIDO AS FLOAT) AS REC_VLR_RECEBIDO'
      'FROM'
      '   C000112 as T1'
      'WHERE'
      '   T1.ID_C000111 = :ID_C11'
      'ORDER BY'
      '   T1.ID ASC')
    Left = 8
    Top = 80
    ParamData = <
      item
        Name = 'ID_C11'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 55
      end>
    object QueryPagtosID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryPagtosID_C000110: TIntegerField
      FieldName = 'ID_C000110'
      Origin = 'ID_C000110'
    end
    object QueryPagtosID_C000111: TIntegerField
      FieldName = 'ID_C000111'
      Origin = 'ID_C000111'
    end
    object QueryPagtosID_FORMA_PAGTO: TIntegerField
      FieldName = 'ID_FORMA_PAGTO'
      Origin = 'ID_FORMA_PAGTO'
    end
    object QueryPagtosREC_DATA_RECEBTO: TDateField
      FieldName = 'REC_DATA_RECEBTO'
      Origin = 'REC_DATA_RECEBTO'
    end
    object QueryPagtosREC_ANOTACOES: TStringField
      FieldName = 'REC_ANOTACOES'
      Origin = 'REC_ANOTACOES'
      Size = 120
    end
    object QueryPagtosREC_FORMA_PAGTO: TStringField
      FieldName = 'REC_FORMA_PAGTO'
      Origin = 'REC_FORMA_PAGTO'
      Size = 60
    end
    object QueryPagtosREC_SALDO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_SALDO'
      Origin = 'REC_SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryPagtosREC_VLR_JUROS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_JUROS'
      Origin = 'REC_VLR_JUROS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryPagtosREC_VLR_MULTA: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_MULTA'
      Origin = 'REC_VLR_MULTA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryPagtosREC_VLR_ACRESCIMOS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_ACRESCIMOS'
      Origin = 'REC_VLR_ACRESCIMOS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryPagtosREC_VLR_DESCONTOS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_DESCONTOS'
      Origin = 'REC_VLR_DESCONTOS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryPagtosREC_VLR_CARTORIOS: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_CARTORIOS'
      Origin = 'REC_VLR_CARTORIOS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object QueryPagtosREC_VLR_RECEBIDO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'REC_VLR_RECEBIDO'
      Origin = 'REC_VLR_RECEBIDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
end
