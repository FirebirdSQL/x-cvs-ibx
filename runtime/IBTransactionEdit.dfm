object IBTransactionEditForm: TIBTransactionEditForm
  Left = 247
  Top = 213
  ActiveControl = OKBtn
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Transaction Editor'
  ClientHeight = 195
  ClientWidth = 358
  Color = clBtnFace
  ParentFont = True
  HelpFile = 'ibx.hlp'
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 358
    Height = 152
    Align = alClient
    Caption = 'Transaction Properties'
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 16
      Width = 51
      Height = 16
      Caption = 'Se&ttings:'
      FocusControl = TransactionParams
    end
    object rbSnapShot: TRadioButton
      Left = 8
      Top = 32
      Width = 185
      Height = 17
      Caption = '&Snapshot'
      TabOrder = 0
      OnClick = rbSnapShotClick
    end
    object rbReadCommitted: TRadioButton
      Left = 8
      Top = 59
      Width = 185
      Height = 17
      Caption = 'Read &Committed'
      TabOrder = 1
      OnClick = rbReadCommittedClick
    end
    object rbReadOnlyTableStability: TRadioButton
      Left = 8
      Top = 85
      Width = 185
      Height = 17
      Caption = '&Read-Only Table Stability'
      TabOrder = 2
      OnClick = rbReadOnlyTableStabilityClick
    end
    object rbReadWriteTableStability: TRadioButton
      Left = 8
      Top = 112
      Width = 185
      Height = 17
      Caption = 'Read-&Write Table Stability '
      TabOrder = 3
      OnClick = rbReadWriteTableStabilityClick
    end
    object TransactionParams: TMemo
      Left = 200
      Top = 32
      Width = 145
      Height = 93
      Lines.Strings = (
        '')
      ScrollBars = ssVertical
      TabOrder = 4
      OnClick = TransactionParamsClick
      OnExit = TransactionParamsExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 152
    Width = 358
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object HelpBtn: TButton
      Left = 256
      Top = 10
      Width = 92
      Height = 30
      Caption = '&Help'
      TabOrder = 0
      OnClick = HelpBtnClick
    end
    object Cancelbtn: TButton
      Left = 152
      Top = 10
      Width = 92
      Height = 30
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 2
    end
    object OKBtn: TButton
      Left = 48
      Top = 10
      Width = 92
      Height = 30
      Caption = 'OK'
      Default = True
      TabOrder = 1
      OnClick = OKBtnClick
    end
  end
end
