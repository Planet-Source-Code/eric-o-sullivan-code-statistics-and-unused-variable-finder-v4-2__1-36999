VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmStats 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Visual Basic 6.0 Code Statistics"
   ClientHeight    =   5790
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   9495
   Icon            =   "frmStats.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5790
   ScaleWidth      =   9495
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar pbrVariables 
      Height          =   255
      Left            =   6720
      TabIndex        =   53
      Top             =   120
      Visible         =   0   'False
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Frame fraVariables 
      Caption         =   "Unused Variables"
      Enabled         =   0   'False
      Height          =   2055
      Left            =   0
      TabIndex        =   52
      Top             =   3720
      Width           =   9495
      Begin MSComctlLib.ImageList iglVbIcons 
         Left            =   1320
         Top             =   360
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   7
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":0442
               Key             =   "Form"
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":0894
               Key             =   "Module"
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":0CE6
               Key             =   "Class"
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":1138
               Key             =   "User Control"
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":158A
               Key             =   "Property Page"
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":19DC
               Key             =   "Project"
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frmStats.frx":1E2E
               Key             =   "Project Group"
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.ListView lsvVars 
         Height          =   1695
         Left            =   120
         TabIndex        =   54
         Top             =   240
         Width           =   9255
         _ExtentX        =   16325
         _ExtentY        =   2990
         View            =   3
         Arrange         =   1
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         _Version        =   393217
         SmallIcons      =   "iglVbIcons"
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Source File"
            Object.Width           =   5019
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Procedure"
            Object.Width           =   5372
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Variable Name"
            Object.Width           =   5397
         EndProperty
      End
   End
   Begin VB.Frame framProj 
      Caption         =   "Project Statistics"
      Height          =   1815
      Left            =   0
      TabIndex        =   3
      Top             =   600
      Width           =   4695
      Begin VB.Label lblControl 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3600
         TabIndex        =   16
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label lblDControl 
         BackStyle       =   0  'Transparent
         Caption         =   "User Controls :"
         Height          =   255
         Left            =   2520
         TabIndex        =   15
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label lblClass 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3720
         TabIndex        =   14
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label lblDClass 
         BackStyle       =   0  'Transparent
         Caption         =   "Class Modules :"
         Height          =   255
         Left            =   2520
         TabIndex        =   13
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblMod 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   840
         TabIndex        =   11
         Top             =   1440
         Width           =   975
      End
      Begin VB.Label lblDMod 
         BackStyle       =   0  'Transparent
         Caption         =   "Modules :"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblForm 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   720
         TabIndex        =   9
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label lblDForm 
         BackStyle       =   0  'Transparent
         Caption         =   "Forms :"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1080
         Width           =   615
      End
      Begin VB.Label lblVersion 
         BackStyle       =   0  'Transparent
         Caption         =   "v1.0.0"
         Height          =   255
         Left            =   840
         TabIndex        =   7
         Top             =   720
         Width           =   975
      End
      Begin VB.Label lblDVer 
         BackStyle       =   0  'Transparent
         Caption         =   "Version :"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   720
         Width           =   735
      End
      Begin VB.Label lblName 
         BackStyle       =   0  'Transparent
         Caption         =   "Project1"
         Height          =   255
         Left            =   1200
         TabIndex        =   5
         Top             =   360
         Width           =   3375
      End
      Begin VB.Label lblDName 
         BackStyle       =   0  'Transparent
         Caption         =   "Project Name :"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame fraStructure 
      Caption         =   "Code Structure"
      Height          =   1095
      Left            =   0
      TabIndex        =   18
      Top             =   2520
      Width           =   4695
      Begin VB.Label lblDProc 
         BackStyle       =   0  'Transparent
         Caption         =   "Procedures :"
         Height          =   255
         Left            =   120
         TabIndex        =   26
         Top             =   360
         Width           =   975
      End
      Begin VB.Label lblProc 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1080
         TabIndex        =   25
         Top             =   360
         Width           =   855
      End
      Begin VB.Label lblDFunc 
         BackStyle       =   0  'Transparent
         Caption         =   "Functions :"
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   720
         Width           =   855
      End
      Begin VB.Label lblFunc 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   960
         TabIndex        =   23
         Top             =   720
         Width           =   735
      End
      Begin VB.Label lblDProp 
         BackStyle       =   0  'Transparent
         Caption         =   "Properties :"
         Height          =   255
         Left            =   2520
         TabIndex        =   22
         Top             =   360
         Width           =   855
      End
      Begin VB.Label lblProp 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3360
         TabIndex        =   21
         Top             =   360
         Width           =   855
      End
      Begin VB.Label lblDApi 
         BackStyle       =   0  'Transparent
         Caption         =   "API Declarations :"
         Height          =   255
         Left            =   2520
         TabIndex        =   20
         Top             =   720
         Width           =   1335
      End
      Begin VB.Label lblApi 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3840
         TabIndex        =   19
         Top             =   720
         Width           =   735
      End
   End
   Begin VB.Frame fraBreakdown 
      Caption         =   "Code Breakdown"
      Height          =   1815
      Left            =   4800
      TabIndex        =   17
      Top             =   600
      Width           =   4695
      Begin VB.Label lblWhile 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3840
         TabIndex        =   51
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label lblDWhile 
         BackStyle       =   0  'Transparent
         Caption         =   "Do-While Loops :"
         Height          =   255
         Left            =   2520
         TabIndex        =   50
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label lblSelect 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3840
         TabIndex        =   49
         Top             =   720
         Width           =   615
      End
      Begin VB.Label lblDSelect 
         BackStyle       =   0  'Transparent
         Caption         =   "Select Statments :"
         Height          =   255
         Left            =   2520
         TabIndex        =   48
         Top             =   720
         Width           =   1335
      End
      Begin VB.Label lblFor 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3360
         TabIndex        =   47
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label lblDFor 
         Caption         =   "For Loops :"
         Height          =   255
         Left            =   2520
         TabIndex        =   46
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label lblEnum 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1920
         TabIndex        =   36
         Top             =   1440
         Width           =   495
      End
      Begin VB.Label lblDEnum 
         BackStyle       =   0  'Transparent
         Caption         =   "Enumerators Declared :"
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   1440
         Width           =   1695
      End
      Begin VB.Label lblType 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1440
         TabIndex        =   34
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label lblDType 
         BackStyle       =   0  'Transparent
         Caption         =   "Types Declared :"
         Height          =   255
         Left            =   120
         TabIndex        =   33
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label lblIf 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3600
         TabIndex        =   32
         Top             =   360
         Width           =   615
      End
      Begin VB.Label lblDIf 
         BackStyle       =   0  'Transparent
         Caption         =   "If Statements :"
         Height          =   255
         Left            =   2520
         TabIndex        =   31
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label lblConst 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1680
         TabIndex        =   30
         Top             =   720
         Width           =   615
      End
      Begin VB.Label lblDConstants 
         BackStyle       =   0  'Transparent
         Caption         =   "Constants Declared :"
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   720
         Width           =   1575
      End
      Begin VB.Label lblDVariables 
         BackStyle       =   0  'Transparent
         Caption         =   "Variables Declared :"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label lblVar 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1560
         TabIndex        =   27
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame fraLines 
      Caption         =   "Lines"
      Height          =   1095
      Left            =   4800
      TabIndex        =   37
      Top             =   2520
      Width           =   4695
      Begin VB.Label lblDBlank 
         BackStyle       =   0  'Transparent
         Caption         =   "Blank Lines :"
         Height          =   255
         Left            =   120
         TabIndex        =   45
         Top             =   360
         Width           =   975
      End
      Begin VB.Label lblBlank 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1080
         TabIndex        =   44
         Top             =   360
         Width           =   855
      End
      Begin VB.Label lblDComm 
         BackStyle       =   0  'Transparent
         Caption         =   "Comment Lines :"
         Height          =   255
         Left            =   120
         TabIndex        =   43
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label lblComm 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   1320
         TabIndex        =   42
         Top             =   720
         Width           =   975
      End
      Begin VB.Label lblDTotal 
         BackStyle       =   0  'Transparent
         Caption         =   "Total Lines :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   41
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label lblTotal 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3600
         TabIndex        =   40
         Top             =   720
         Width           =   855
      End
      Begin VB.Label lblDCode 
         BackStyle       =   0  'Transparent
         Caption         =   "Code Lines :"
         Height          =   255
         Left            =   2400
         TabIndex        =   39
         Top             =   360
         Width           =   975
      End
      Begin VB.Label lblCode 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         Height          =   255
         Left            =   3360
         TabIndex        =   38
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.CommandButton cmdScan 
      Caption         =   "&Scan"
      Height          =   375
      Left            =   5760
      TabIndex        =   12
      Top             =   120
      Width           =   855
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "&Browse"
      Default         =   -1  'True
      Height          =   375
      Left            =   4800
      TabIndex        =   2
      Top             =   120
      Width           =   855
   End
   Begin VB.TextBox txtPath 
      Height          =   285
      Left            =   840
      TabIndex        =   1
      Text            =   "C:\"
      Top             =   120
      Width           =   3855
   End
   Begin MSComDlg.CommonDialog cdgFiles 
      Left            =   4680
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblFile 
      BackStyle       =   0  'Transparent
      Caption         =   "Filename"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileScan 
         Caption         =   "&Scan Project"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileScanAll 
         Caption         =   "Scan &All Code In Folder"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuFileFind 
         Caption         =   "F&ind Unused Variables"
         Enabled         =   0   'False
         Shortcut        =   ^F
      End
      Begin VB.Menu mnuFileExitBreak 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "&Exit"
      End
   End
End
Attribute VB_Name = "frmStats"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Option Explicit
    
Const ProjExt = "vbp"
Const FormExt = "frm"
Const ModuleExt = "bas"
Const ClassExt = "cls"
Const ControlExt = "ctl"

Const FormStartCode = "Attribute VB_Exposed "
Const ModStartCode = "Attribute VB_Name "
Const ClsStartCode = "Attribute VB_Exposed"
Const CtlStartCode = "Attribute VB_Exposed"
Const VbpTitle = "Title"
Const VbpMajor = "MajorVer"
Const VbpMinor = "MinorVer"
Const VbpRevision = "RevisionVer"
Const VbpForm = "Form"
Const VbpMod = "Module"
Const VbpClass = "Class"        'This is actually made up of "Class="<object name>"; "<class filename>"
Const VbpControl = "UserControl"
Const BrowseFilter = "VB Project *.Vbp|*.Vbp|" & _
                     "VB Modules *.Bas|*.Bas|" & _
                     "VB Forms *.Frm|*.Frm|" & _
                     "VB Class Modules (*.Cls)|*.Cls|" & _
                     "VB User Controls (*.Ctl)|*.Ctl|" & _
                     "All Files *.*|*.*"
Const FUNC = "Function "
Const PROC = "Sub "
Const PROP = "Property "

'the different styles of variable modes
Private Enum VarModeEnum
    varPublic = 0
    varPrivate = 1  'default variable declaration using Dim
    varGlobal = 2
    varStatic = 3
    varModule = 4
End Enum

'used to keep track of variables within the
'program and their locations.
Private Type TrackVarType
    strVarName As String
    strVarProc As String
    strVarLocation As String
    enmVarMode As VarModeEnum
    blnVarUsed As Boolean
End Type

'variable tracker
Private mudtVariables() As TrackVarType
Private mudtCurLoc As TrackVarType      'the current location within the project while scanning
Private mblnScanning As Boolean         'if the user is scanning for variables, then True

'code and project counters
Private mlngNumBlank As Long        'stores the number of blank lines (automatically strips spaces)
Private mlngNumProc As Long         'stores the number of procedures (Sub declaration)
Private mlngNumFunc As Long         'stores the number of functions
Private mlngNumComments As Long     'stores the number of lines that hold only comments
Private mlngNumForms As Long        'stores the number of forms in the project
Private mlngNumModules As Long      'stores the number of modules in the project
Private mlngNumClasses As Long      'stores the number of classes in the project
Private mlngNumControls As Long     'stores the number of user controls in the project
Private mlngNumProperties As Long   'stores the number of properties
Private mlngNumCode As Long         'stores the number of complete lines of code (lines parsed with the _ character are automatically re-assembled)
Private mlngNumVariables As Long    'stores the number of declared variables
Private mlngNumVarLines As Long     'stores the number of lines used to declare variables (you can declare more than one variable on a line, eg "Dim int1, int2, int3 As Integer")
Private mlngNumConst As Long        'stores the number of constants
Private mlngNumType As Long         'stores the number of type declarations
Private mlngNumEnum As Long         'stores the number of enumerater declarations
Private mlngNumIf As Long           'stores the number of If statements
Private mlngNumSelect As Long       'stores the number of Select statements
Private mlngNumFor As Long          'stores the number of For loops
Private mlngNumDo As Long           'stores the number of Do..Loop, Do..Until and While..Wend loops (these loops are the same, the While..Wend loop is included in VB for backward compatability)
Private mlngNumAPI As Long          'stores the number of API declarations
Private mstrVersion As String       'stores the version information about a project

Public Sub ResetValues()
    'reset values and variables
    
    lblName.Caption = ""
    mstrVersion = ""
    lsvVars.ListItems.Clear
    fraVariables.Caption = "Unused Variables"
    ReDim mudtVariables(0)
    mudtCurLoc.strVarProc = "Module"
    mlngNumBlank = 0
    mlngNumProc = 0
    mlngNumFunc = 0
    mlngNumComments = 0
    mlngNumForms = 0
    mlngNumModules = 0
    mlngNumCode = 0
    mlngNumVariables = 0
    mlngNumVarLines = 0
    mlngNumClasses = 0
    mlngNumProperties = 0
    mlngNumAPI = 0
    mlngNumControls = 0
    mlngNumConst = 0
    mlngNumType = 0
    mlngNumEnum = 0
    mlngNumIf = 0
    mlngNumSelect = 0
    mlngNumFor = 0
    mlngNumDo = 0
End Sub

Public Sub DisplayValues(Optional ByVal blnNoList = False)
    'This will enter all the appropiate details into the lables and
    'total the number of lines found
    
    'half the number of properties countes because there are two property
    'statements per property, Let and Get.
    'mlngNumProperties = mlngNumProperties / 2
    
    'display results
    If Trim(lblName.Caption) = "" Then
        'if the project name is blank then use the default name
        lblName.Caption = "Project1"
    End If
    'If (LCase(mstrVersion) = "v") Or (LCase(lblVersion.Caption) = "v") Then
    If mstrVersion = "" Then
        'if version if blank, then set it to default
        mstrVersion = "v1.0.0"
    End If
    lblVersion.Caption = mstrVersion
    lblBlank.Caption = Format(mlngNumBlank, "0")
    lblComm.Caption = Format(mlngNumComments, "0")
    lblForm.Caption = Format(mlngNumForms, "0")
    lblMod.Caption = Format(mlngNumModules, "0")
    lblClass.Caption = Format(mlngNumClasses, "0")
    lblProc.Caption = Format(mlngNumProc, "0")
    lblFunc.Caption = Format(mlngNumFunc, "0")
    lblProp.Caption = Format(mlngNumProperties / 2, "0")
    lblCode.Caption = Format(mlngNumCode, "0")
    lblVar.Caption = Format(mlngNumVariables, "0")
    lblControl.Caption = Format(mlngNumControls, "0")
    lblApi.Caption = Format(mlngNumAPI, "0")
    lblConst.Caption = Format(mlngNumConst, "0")
    lblType.Caption = Format(mlngNumType, "0")
    lblEnum.Caption = Format(mlngNumEnum, "0")
    lblIf.Caption = Format(mlngNumIf, "0")
    lblSelect.Caption = Format(mlngNumSelect, "0")
    lblFor.Caption = Format(mlngNumFor, "0")
    lblWhile.Caption = Format(mlngNumDo, "0")
    
    'total results accounting for headers/footers of procedures/functions, types, enumerators etc.
    lblTotal.Caption = Format(GetTotal, "0")
    
    'display unused variables (if any)
    If (Not blnNoList) And mblnScanning Then
        Call ShowUnusedVars
    End If
End Sub

Private Function GetTotal() As Long
    'This will total up the number of lines
    GetTotal = (mlngNumBlank + mlngNumComments + _
                    ((mlngNumProc + mlngNumFunc + _
                      mlngNumProperties + mlngNumType + _
                      mlngNumEnum) _
                     * 2) + _
                mlngNumConst + mlngNumAPI + _
                mlngNumVarLines + mlngNumCode)
End Function

Public Sub ReadProject(ByVal strPath As String)
    'This will read an entire project and set the values for statistics
    
    Dim intFileNum As Integer 'used for the .vbp file
    Dim strLine As String
    Dim blnStartScan As Boolean
    
    'if path is invalid, then quit
    If Dir(strPath) = "" Then
        Exit Sub
    End If
    
    Call ResetValues
    blnStartScan = False
    
    'open project
    intFileNum = FreeFile
    Open strPath For Input As #intFileNum
        While Not EOF(intFileNum)
            Line Input #intFileNum, strLine
            
            Select Case GetBefore(strLine)
            Case VbpTitle
                lblName.Caption = GetAfter(strLine)
            
            Case VbpMajor
                mstrVersion = "v" & GetAfter(strLine) & "."
            
            Case VbpMinor
                mstrVersion = mstrVersion & GetAfter(strLine) & "."
            
            Case VbpRevision
                mstrVersion = mstrVersion & GetAfter(strLine)
            
            Case VbpForm
                'scan form
                mlngNumForms = mlngNumForms + 1
                Call ScanFile(AddFile(GetPath(strPath), _
                                      GetAfter(strLine)), _
                              FormStartCode)
                
            Case VbpMod
                'scan module
                mlngNumModules = mlngNumModules + 1
                Call ScanFile(AddFile(GetPath(strPath), GetMod(strLine)), ModStartCode)
            
            Case VbpClass
                'scan class module
                mlngNumClasses = mlngNumClasses + 1
                Call ScanFile(AddFile(GetPath(strPath), GetClass(strLine)), ClsStartCode)
                
            Case VbpControl
                'scan user control
                mlngNumControls = mlngNumControls + 1
                Call ScanFile(AddFile(GetPath(strPath), GetAfter(strLine)), CtlStartCode)
            
            End Select
            
        Wend
    Close #intFileNum
    
    Call DisplayValues
End Sub

Public Sub IncrementVal(ByVal strLine As String)
    'This will increment the appropiate values based on the text
    
    'the following constants are keywords to look for in the text
    Const END_PROC = "End Sub"
    Const END_FUNC = "End Function"
    Const END_PROP = "End Property"
    Const DEC_API = "Declare "
    Const LIB_API = " Lib "
    Const VAR_A = "Public"
    Const VAR_B = "Private"
    Const VAR_C = "Global"
    Const VAR_D = "Dim"
    Const VAR_E = "Static"
    Const VAR_AS = " As "
    Const CONSTANT = "Const "
    Const END_TYPE = "End Type"
    Const END_ENUM = "End Enum"
    Const END_IF = "End If"
    Const END_SEL = "End Select"
    Const FOR_LOOP = "For "             'For loop
    Const DO_LOOP = "Do "               'Do or Do While loop
    Const WHILE_LOOP = "While "         'While loop
    Const COMMENT = "'"
    Const BLANK = ""
    
    
    Static strNextLine As String    'used to temperorily hold sections of a line until they are loaded. strLine sections are added by checking for the "_" character at the end of the line
    
    'continue line character ("_") - the underscore
    If Right(strLine, 1) = "_" Then
        'don't count anything, but remember the
        'line section
        strNextLine = strNextLine & Left(strLine, Len(strLine) - 1)
        Exit Sub
    Else
        'if the current line section is empty
        'then don't do anything, other wise
        'we have reached the end of the line
        'section. Process the entire line
        If strNextLine <> "" Then
            'complete the line section
            strNextLine = strNextLine & strLine
            
            'process the complete line
            strLine = strNextLine
            
            'line section has been completed
            'ad is about to be processed, we do
            'not need to hold it any more
            strNextLine = ""
        End If
    End If
    
    'Comments
    If Left(strLine, 1) = COMMENT Then
        mlngNumComments = mlngNumComments + 1
        Exit Sub
    End If
    
    'Blanks
    If strLine = BLANK Then
        mlngNumBlank = mlngNumBlank + 1
        Exit Sub
    End If
    
    'strip any comments from the line
    If InStr(strLine, "'") <> 0 Then
        If IsNotInQuote(strLine, "'") Then
            'remove the comment from the line
            strLine = Left(strLine, InStr(strLine, "'"))
        End If
    End If
    
    'the footers of the functions, procedures and properties.
    'I'm counting the footers because they are always the
    'same no matter what keywords the title has.
    If Left(strLine, Len(END_PROC)) = END_PROC Then
        mlngNumProc = mlngNumProc + 1
        
        'code num as already counted the header, so subtract this.
        mlngNumCode = mlngNumCode - 1
        
        'set the current location within the project
        mudtCurLoc.strVarName = ""
        mudtCurLoc.enmVarMode = varModule
        Exit Sub
    End If
    If Left(strLine, Len(END_FUNC)) = END_FUNC Then
        mlngNumFunc = mlngNumFunc + 1
        
        'code num as already counted the header, so subtract this.
        mlngNumCode = mlngNumCode - 1
        
        'set the current location within the project
        mudtCurLoc.strVarName = ""
        mudtCurLoc.enmVarMode = varModule
        Exit Sub
    End If
    If Left(strLine, Len(END_PROP)) = END_PROP Then
        mlngNumProperties = mlngNumProperties + 1
        
        'code num as already counted the header, so subtract this.
        mlngNumCode = mlngNumCode - 1
        
        'set the current location within the project
        mudtCurLoc.strVarName = ""
        mudtCurLoc.enmVarMode = varModule
        Exit Sub
    End If
    
    'check for api declarations
    If (InStr(1, strLine, DEC_API) <> 0) _
       And (InStr(1, strLine, LIB_API) <> 0) Then
        If IsNotInQuote(strLine, DEC_API) Then
            mlngNumAPI = mlngNumAPI + 1
            Exit Sub
        End If
    End If
    
    'constant declarations
    If (InStr(1, strLine, CONSTANT) <> 0) Then
        If IsNotInQuote(strLine, CONSTANT) Then
            mlngNumConst = mlngNumConst + 1
            Exit Sub
        End If
    End If
    
    'get the procedure and function names for tracking
    'variables
    If (InStr(strLine, FUNC) <> 0) Then
        If IsWord(strLine, FUNC) Then
            If IsNotInQuote(strLine, FUNC) Then
                'check for Exit Function
                If InStr(strLine, "Exit " & FUNC) = 0 Then
                    'set the current location within the project
                    mudtCurLoc.strVarName = GetName(strLine, FUNC)
                    mudtCurLoc.enmVarMode = varPrivate
                End If
            End If
        End If
    End If
    If (InStr(strLine, PROC) <> 0) Then
        If IsWord(strLine, PROC) Then
            If IsNotInQuote(strLine, PROC) Then
                'check for Exit Sub
                If InStr(strLine, "Exit " & PROC) = 0 Then
                    'set the current location within the project
                    mudtCurLoc.strVarName = GetName(strLine, PROC)
                    mudtCurLoc.enmVarMode = varPrivate
                End If
            End If
        End If
    End If
    If (InStr(strLine, PROP) > 0) Then
        If IsWord(strLine, PROP) Then
            If IsNotInQuote(strLine, PROP) Then
                'check for Exit Property
                If InStr(strLine, "Exit " & PROP) = 0 Then
                    'set the current location within the project
                    mudtCurLoc.strVarName = GetName(strLine, PROP)
                    mudtCurLoc.enmVarMode = varPrivate
                End If
            End If
        End If
    End If
    
    'variable declarations
    'if the left part of the string contains one of the variable decalration
    'keywords and also contains the keyword " As " and does not contain
    'the api declaration keyword "Declare", then the string is a variable
    'declaration.
    'NOTE: These variables do NOT count procedure/function parameters.
    'Also, the number of variables is not the same as the number of
    'lines used to declare them eg,
    'Dim MyVar1, MyVar2, MyVar3 As Integer
    If InStr(strLine, " WithEvents ") <> 0 Then
        If IsNotInQuote(strLine, " WithEvents ") Then
            'remove the WithEvents keyword from
            'the string
            strLine = Left(strLine, InStr(strLine, " ")) & _
                      Mid(strLine, InStr(strLine, "WithEvents ") + 11)
        End If
    End If
    If ((Left(strLine, Len(VAR_A)) = VAR_A) _
        Or (Left(strLine, Len(VAR_B)) = VAR_B) _
        Or (Left(strLine, Len(VAR_C)) = VAR_C) _
        Or (Left(strLine, Len(VAR_D)) = VAR_D) _
        Or (Left(strLine, Len(VAR_E)) = VAR_E)) _
       And (InStr(1, strLine, VAR_AS) <> 0) _
       And (InStr(1, strLine, DEC_API) = 0) Then
        
        'test declaring an unused variable
        Dim varThis_Tests_Unused_Variables As Variant
        
        'get the variable names
        If mblnScanning Then
            Call GetVarNames(strLine)
        End If
        
        mlngNumVariables = mlngNumVariables + 1 + CommaCount(strLine)
        mlngNumVarLines = mlngNumVarLines + 1
        Exit Sub
    End If
    
    'defined Types
    If Left(strLine, Len(END_TYPE)) = END_TYPE Then
        mlngNumType = mlngNumType + 1
        mlngNumCode = mlngNumCode - 1
        Exit Sub
    End If
    
    'enumerators
    If Left(strLine, Len(END_ENUM)) = END_ENUM Then
        mlngNumEnum = mlngNumEnum + 1
        mlngNumCode = mlngNumCode - 1
        Exit Sub
    End If
    
    'else the line is code
    mlngNumCode = mlngNumCode + 1
    Call UpdateVars(strLine)
    
    'the following are counted as code,
    'but we want to count them seperatly
    
    'If statements
    If Left(strLine, Len(END_IF)) = END_IF Then
        mlngNumIf = mlngNumIf + 1
        Exit Sub
    End If
    
    'Select statements
    If Left(strLine, Len(END_SEL)) = END_SEL Then
        mlngNumSelect = mlngNumSelect + 1
        Exit Sub
    End If
    
    'For loops
    If Left(strLine, Len(FOR_LOOP)) = FOR_LOOP Then
        mlngNumFor = mlngNumFor + 1
        Exit Sub
    End If
    
    'Do, Loop and While loops
    If (Left(strLine, Len(DO_LOOP)) = DO_LOOP) _
       Or (Left(strLine, Len(WHILE_LOOP)) = WHILE_LOOP) Then
        mlngNumDo = mlngNumDo + 1
    End If
End Sub

Public Function IsNotInQuote(ByVal strText As String, _
                             ByVal strWords As String) _
                             As Boolean
    'This function will tell you if the specified text is in quotes within
    'the second string. It does this by counting the number of quotation
    'marks before the specified strWords. If the number is even, then the
    'strWords are not in qototes, otherwise they are.
    
    'the quotation mark, " , is ASCII character 34
    
    Dim lngGotPos As Long
    Dim lngCounter As Long
    Dim lngNextPos As Long
    
    'find where the position of strWords in strText
    lngGotPos = InStr(1, strText, strWords)
    If lngGotPos = 0 Then
        IsNotInQuote = True
        Exit Function
    End If
    
    'start counting the number of quotation marks
    lngNextPos = 0
    Do
        lngNextPos = InStr(lngNextPos + 1, strText, Chr(34))
        
        If (lngNextPos <> 0) And (lngNextPos < lngGotPos) Then
            'quote found, add to total
            lngCounter = lngCounter + 1
        End If
    Loop Until (lngNextPos = 0) Or (lngNextPos >= lngGotPos)
    
    'no quotes at all found
    If lngCounter = 0 Then
        IsNotInQuote = True
        Exit Function
    End If
    
    'if the number of quotes is even, then return true, else return false
    If lngCounter Mod 2 = 0 Then
        IsNotInQuote = True
    End If
End Function

Public Function GetPath(ByVal strAddress As String) _
                        As String
    'This function returns the path from a string containing the full
    'path and filename of a file.
    
    Dim intLastPos As Integer
    
    'find the position of the last "\" mark in the string
    intLastPos = InStrRev(strAddress, "\")
    
    'if no \ found in the string, then
    If intLastPos = 0 Then
        'return the whole string
        intLastPos = Len(strAddress) + 1
    End If
    
    'return everything before the last "\" mark
    GetPath = Left(strAddress, (intLastPos - 1))
End Function

Public Function GetBefore(ByVal strSentence As String) _
                          As String
    'This procedure returns all the character of a
    'string before the "=" sign.
    
    Const Sign = "="
    
    Dim intCounter As Integer
    Dim strBefore As String
    
    'find the position of the equals sign
    intCounter = InStr(1, strSentence, Sign)
    
    If (intCounter <> Len(strSentence)) And (intCounter <> 0) Then
        strBefore = Left(strSentence, (intCounter - 1))
    Else
        strBefore = ""
    End If
    
    GetBefore = strBefore
End Function

Public Function GetAfter(ByVal strSentence As String, _
                         Optional ByVal strCharacter As String = "=") _
                         As String
    'This procedure returns all the character of a
    'string after the "=" sign.
    
    Dim intCounter As Integer
    Dim strRest As String
    Dim strSign As String
    
    strSign = strCharacter
    
    'find the last position of the specified sign
    intCounter = InStrRev(strSentence, strSign)
    
    If intCounter <> Len(strSentence) Then
        strRest = Right(strSentence, (Len(strSentence) - (intCounter + Len(strCharacter) - 1)))
    Else
        strRest = ""
    End If
    
    GetAfter = strRest
End Function

Public Function GetMod(ByVal strSentence As String) _
                       As String
    'This procedure returns all the character of a
    'string after the ";" sign.
    
    Const ModName = ";"
    
    Dim strRest As String
    Dim intModPos As Integer
    
    'find the position of the ; sign
    intModPos = InStr(1, strSentence, ModName) + 1
    
    If intModPos <> Len(strSentence) Then
        strRest = Right(strSentence, (Len(strSentence) - intModPos))
    Else
        strRest = ""
    End If
    
    GetMod = strRest
End Function

Public Function GetClass(ByVal strSentence As String) _
                         As String
    'This procedure returns all the character of a
    'string after the "; " sign.
    
    Const ClassName = "; "
    
    Dim strRest As String
    Dim intClassPos As Integer
    
    'find the position of the ; sign
    intClassPos = InStr(1, strSentence, ClassName) + 1
    
    If intClassPos <> Len(strSentence) Then
        strRest = Right(strSentence, (Len(strSentence) - intClassPos))
    Else
        strRest = ""
    End If
    
    GetClass = strRest
End Function

Private Sub cmdBrowse_Click()
    cdgFiles.Flags = cdlOFNPathMustExist
    cdgFiles.Filter = BrowseFilter
    cdgFiles.InitDir = txtPath.Text
    cdgFiles.ShowOpen
    If cdgFiles.FileName <> "" Then
        'update the text box
        txtPath.Text = cdgFiles.FileName
    End If
End Sub

Private Sub cmdScan_Click()
    'Try to scan the file specified in the text box
    
    Dim strExtention As String
    Dim strFilePath As String
    
    strFilePath = txtPath.Text
    strExtention = GetAfter(strFilePath, ".")
    
    'don't try to scan file if it doesn't exist
    If (Dir(strFilePath) = "") Or (strFilePath = "") Then
        Exit Sub
    End If
    
    'scan each file type differently
    Select Case LCase(strExtention)
    Case LCase(ProjExt)
        'scan an entire project
        Call ReadProject(strFilePath)
    
    Case LCase(FormExt)
        'scan one form
        Call ResetValues
        mlngNumForms = mlngNumForms + 1
        Call ScanFile(strFilePath, FormStartCode)
        Call DisplayValues
    
    Case LCase(ModuleExt)
        'scan one module
        Call ResetValues
        mlngNumModules = mlngNumModules + 1
        Call ScanFile(strFilePath, ModStartCode)
        Call DisplayValues
    
    Case LCase(ClassExt)
        'scan one class
        Call ResetValues
        mlngNumClasses = mlngNumClasses + 1
        Call ScanFile(strFilePath, ClsStartCode)
        Call DisplayValues
        
    Case LCase(ControlExt)
        'scan one user control
        Call ResetValues
        mlngNumControls = mlngNumControls + 1
        Call ScanFile(strFilePath, CtlStartCode)
        Call DisplayValues
        
    End Select
End Sub

Private Sub ScanFile(ByVal strPath As String, _
                     ByVal strStart As String)
    'This procedure will scan a file starting at the first point with the
    'specified starting string.
    
    Dim intFileNum As Integer
    Dim strLine As String
    Dim blnStartScan As Boolean
    
    intFileNum = FreeFile
    
    If Dir(strPath) = "" Then
        'invalid path
        Exit Sub
    End If
    
    'remember the file we are scanning
    mudtCurLoc.strVarLocation = GetAfter(strPath, "\")
    mudtCurLoc.enmVarMode = varModule
    
    Open strPath For Input As #intFileNum
        'scan file
        Do While Not EOF(intFileNum)
            'get a line form the project file
            Line Input #intFileNum, strLine
            
            'see if we need to scan the line
            If blnStartScan Then
                'filter out any procedure attributes
                If ((Left(strLine, Len("Attribute ")) <> "Attribute") _
                    And (InStr(strLine, "VB_") = 0)) Then
                    
                    'scan the line
                    Call IncrementVal(LTrim(strLine))
                End If
            End If
            
            'check to see when we need to start scanning for code
            If Left(strLine, Len(strStart)) = strStart Then
                'scan code
                blnStartScan = True
            End If
            
            If mblnScanning Then
                If GetTotal <= pbrVariables.Max Then
                    pbrVariables.Value = GetTotal
                    DoEvents
                End If
            End If
        Loop
    Close #intFileNum
    
    'let the user choose to scan for unused variables
    mnuFileFind.Enabled = True
End Sub

Private Sub Form_Load()
    txtPath.Text = App.Path
    txtPath.SelLength = Len(txtPath.Text)
End Sub

Public Function CommaCount(ByVal strLine As String) _
                           As Integer
    'This will return the number of commas foun in the string. Mainly
    'use to find the number of variables declared on the same line
    
    Dim intCounter As Integer
    Dim intLastPos As Integer
    Dim intCommaNum As Integer
    
    intLastPos = 0
    
    Do
        intCounter = InStr(intLastPos + 1, strLine, ",")
        
        If intCounter <> 0 Then
            intCommaNum = intCommaNum + 1
        End If
        intLastPos = intCounter
    Loop Until intLastPos = 0
    
    'return result
    CommaCount = intCommaNum
End Function

Public Function AddFile(ByVal strDirectory As String, _
                        ByVal strFileName As String) _
                        As String
    'This will add a file name to a directory path to
    'create a full filepath.
    
    If Right(strDirectory, 1) <> "\" Then
        'insert a backslash
        strDirectory = strDirectory & "\"
    End If
    
    'append the file name to the directory path now
    AddFile = strDirectory & strFileName
End Function

Private Function GetName(ByVal strLine As String, _
                         ByVal strMode As String) _
                         As String
    'This will get the procedure, function or
    'property name from a line of text
    
    Dim strName As String
    
    'remove the Let, Get and Set keywords from
    'the property name where applicable
    If strMode = "Property " Then
        strLine = Replace(strLine, " Let ", " ")
        strLine = Replace(strLine, " Get ", " ")
        strLine = Replace(strLine, " Set ", " ")
    End If
    
    strName = Trim(GetAfter(strLine, strMode))
    
    GetName = Left(strName, InStr(strName, "(") - 1)
End Function

Private Sub GetVarNames(ByVal strLine As String)
    'This procedure will get the variable names
    'from the string provided and add them into
    'the array.
    'This is for Declared variables, either with
    'an appropiate declaration (like Dim), or
    'variables within the parameter list in a
    'function/procedure header
    
    Dim lngCounter As Long      'used to cycle through the array
    Dim strVars() As String     'a list of variables found in the array
    Dim lngMode As VarModeEnum  'the mode of the variable(s)
    Dim lngCommaCount As Long   'the number of commas in the string
    Dim lngOldSize As Long      'the current size of the variable array before resizing to add new variables
    Dim strVarName As String    'the variable name
    Dim lngOffset As Long       'the number of rejected variable names
    
    If mudtCurLoc.strVarLocation = "" Then
        Exit Sub
    End If
    
    'strip any comments from the end of the string
    If InStr(strLine, "'") > 0 Then
        strLine = Trim(Left(strLine, InStr(strLine, "'") - 1))
    End If
    
    'check for the level of the variable
    Select Case Left(strLine, InStr(strLine, " ") - 1)
    Case "Public"
        lngMode = varPublic
    
    Case "Private"
        If mudtCurLoc.strVarName = "" Then
            lngMode = varModule
        Else
            lngMode = varPrivate
        End If
    
    Case "Static"
        lngMode = varStatic
    
    Case "Dim"
        If mudtCurLoc.strVarName = "" Then
            lngMode = varModule
        Else
            lngMode = varPrivate
        End If
    
    Case "Global"
        lngMode = varGlobal
    
    Case Else
        'not a variable
        Exit Sub
    End Select
    
    If (InStr(strLine, "(") > 0) Then
        
        If (IsWord(strLine, PROC)) _
            Or (IsWord(strLine, FUNC)) _
            Or (IsWord(strLine, PROP)) Then
            'get any parameter names from the procedure
            'title
            lngMode = varPrivate
        
            'strip the first word from the string as we do
            'not need it
            strLine = Replace(strLine, "ByVal ", "")
            strLine = Replace(strLine, "ByRef ", "")
            strLine = Replace(strLine, "Optional ", "")
            strLine = Replace(strLine, "Friend ", "")
            strLine = Replace(strLine, "Static ", "")
            strLine = Replace(strLine, "ParamArray ", "")
            
            'remove any array brackets
            strLine = Replace(strLine, "()", "")
            
            'remove everything before and after the brackets
            strLine = Trim(Mid(strLine, InStr(strLine, "(") + 1))
            strLine = Left(strLine, InStrRev(strLine, ")"))
        Else
            'variable is an array
            strLine = Trim(Mid(strLine, InStrRev(strLine, " ", InStr(strLine, "(")) + 1))
            strLine = Left(strLine, InStr(strLine, "(") - 1)
        End If
    Else
        'strip the first word from the string as we do
        'not need it
        strLine = Trim(Mid(strLine, InStr(strLine, " ")))
    End If
    
    'if there is more than one variable declared
    'in the line, then store all of them in the array
    lngCommaCount = CommaCount(strLine)
    If lngCommaCount > 0 Then
        'put the list of variables into the array
        ReDim strVars(lngCommaCount)
        
        'put each potential variable into the array
        'for checking
        strVars() = Split(strLine, ",")
        
        'resize the variable tracking array
        lngOldSize = UBound(mudtVariables)
        ReDim Preserve mudtVariables(lngOldSize + lngCommaCount + 1)
        
        'enter the variables into the array
        For lngCounter = 0 To lngCommaCount
            'get the variable name
            strVarName = Trim(strVars(lngCounter))
            
            'account for array brackets by
            'removing them
            If InStr(strVarName, "(") <> 0 Then
                strVarName = Left(strVarName, InStr(strVarName, "(") - 1)
            End If
            
            'remove any data type declarations
            '("As [datatype]")
            If InStr(strVarName, " As ") <> 0 Then
                strVarName = Left(strVarName, _
                                  InStr(strVarName, _
                                        " As ") _
                                   - 1)
            End If
            
            'if there is something left to process, then
            'add the variable name to the list
            If strVarName <> "" Then
                With mudtVariables(lngOldSize + lngCounter + 1)
                    .strVarLocation = mudtCurLoc.strVarLocation
                    .strVarProc = mudtCurLoc.strVarName
                    .enmVarMode = lngMode
                    .strVarName = strVarName
                End With
            Else
                'a rejected variable name
                lngOffset = lngOffset + 1
            End If
        Next lngCounter
        
        'resize to account for rejected variable names
        ReDim Preserve mudtVariables(lngOldSize + lngCommaCount + 1 - lngOffset)
    Else
        'just enter one new variable
        ReDim Preserve mudtVariables(UBound(mudtVariables) + 1)
        
        With mudtVariables(UBound(mudtVariables))
            .strVarLocation = mudtCurLoc.strVarLocation
            .strVarProc = mudtCurLoc.strVarName
            .enmVarMode = lngMode
            .strVarName = Trim(Left(strLine, InStr(strLine, " ")))
            
            'strip any array brackets
            If InStr(.strVarName, "(") <> 0 Then
                .strVarName = Left(.strVarName, InStr(.strVarName, "(") - 1)
            End If
        End With
    End If
    
    'find uncounted variables and notify programmer
    'If UBound(mudtVariables) <> (mlngNumVariables + 1 + lngCommaCount) Then
    '    With mudtVariables(UBound(mudtVariables))
    '        Debug.Print .strVarLocation, .strVarProc, .strVarName
    '        Stop
    '        mlngNumVariables = mlngNumVariables - 1
    '    End With
    'End If
End Sub

Private Sub UpdateVars(ByVal strLine As String)
    'This will remove any variables from the array
    'if they are found within the specified string
    
    'first check private level variables
    Call UpdateByLevel(strLine, varPrivate)
    Call UpdateByLevel(strLine, varStatic)
    
    'next check module level variables
    Call UpdateByLevel(strLine, varModule)
    
    'check public level variables last
    Call UpdateByLevel(strLine, varPublic)
    Call UpdateByLevel(strLine, varGlobal)
End Sub

Private Sub UpdateByLevel(ByVal strLine As String, _
                          ByVal lngVarLevel As VarModeEnum)
    'This will remove any variable in the array
    'that appears in the string if it is a specified
    'level
    
    Dim lngCounter As Long      'used to cycle through the array
    Dim lngNumVars As Long      'the number of elements in the array
    Dim lngNumDel As Long       'the number of array elements deleted
    Dim lngVarPos As Long       'the position of the variable within the string to be checked
    
    'get the number of variables in the array
    lngNumVars = UBound(mudtVariables)
    
    'search through the array
    For lngCounter = 0 To (lngNumVars)
        'if we are deleting values, then we need to
        'move the array elements down
        If (lngCounter > (lngNumVars - lngNumDel)) Then
            Exit For
        End If
        mudtVariables(lngCounter) = mudtVariables(lngCounter + lngNumDel)
        
        With mudtVariables(lngCounter)
            'check to see if the variable is already
            'used
            If (Not .blnVarUsed) And _
               (.enmVarMode = lngVarLevel) And _
               (.strVarName <> "") Then
                
                'check if the variable is in the string
                lngVarPos = InStr(strLine, .strVarName)
                Do While lngVarPos > 0
                    If IsWord(Mid(strLine, lngVarPos), .strVarName) Then
                        
                        'the word is use, set the flag
                        .blnVarUsed = True
                        lngNumDel = lngNumDel + 1
                        lngCounter = lngCounter - 1
                        
                        'no need to check the rest of the string
                        Exit Do
                    End If
                    
                    'shorten the search string
                    If lngVarPos > 0 Then
                        strLine = Mid(strLine, lngVarPos + Len(.strVarName))
                    End If
                    
                    'find next occurance in string
                    lngVarPos = InStr(strLine, .strVarName)
                Loop
            Else
                If .blnVarUsed Then
                    'remove any used variables
                    lngNumDel = lngNumDel + 1
                    lngCounter = lngCounter - 1
                End If
            End If
        End With
    Next lngCounter
    
    'resize the array to remove unwanted array
    'elements
    ReDim Preserve mudtVariables(lngNumVars - lngNumDel)
End Sub

Public Property Let FieldData(strDataLink As String, _
                              strData As String)

    If mdicData.Exists(strDataLink) Then
        mcolStruc.Item(mdicData(strDataLink)).Data = strData
    Else
        Debug.Assert False
    End If
End Property

Private Sub ShowUnusedVars()
    'This will display a list of unused variables and
    'their location
    
    Dim lngVarCount As Long         'the size of the array of variable names
    Dim lngCounter As Long          'used to cycle through the array
    Dim lngNumUnused As Long        'the number of unused variables
    
    'get the total number of variables
    lngVarCount = UBound(mudtVariables)
    
    lsvVars.ListItems.Clear
    
    For lngCounter = 0 To lngVarCount
        With mudtVariables(lngCounter)
            If (Not .blnVarUsed) _
               And (.strVarLocation <> "") _
               And (.strVarName <> "") Then
                'display variable in the list view
                
                lngNumUnused = lngNumUnused + 1
                
                Call lsvVars.ListItems.Add(lngNumUnused, , .strVarLocation)
                
                'set the list icon
                Select Case Right(.strVarLocation, 3)
                Case "frm"
                    lsvVars.ListItems(lngNumUnused).SmallIcon = "Form"
                Case "bas"
                    lsvVars.ListItems(lngNumUnused).SmallIcon = "Module"
                Case "cls"
                    lsvVars.ListItems(lngNumUnused).SmallIcon = "Class"
                Case "ctl"
                    lsvVars.ListItems(lngNumUnused).SmallIcon = "User Control"
                End Select
                
                Call lsvVars.ListItems(lngNumUnused).ListSubItems.Add(1, , .strVarProc)
                Call lsvVars.ListItems(lngNumUnused).ListSubItems.Add(2, , .strVarName)
            End If
        End With
    Next lngCounter
    
    If lngNumUnused = 0 Then
        fraVariables.Enabled = False
    Else
        fraVariables.Enabled = True
    End If
    
    'display the number of unused variables
    fraVariables.Caption = "Unused Variables : " & Format(lngNumUnused, "##,##0")
    
    'reset the arrays to free up memory
    ReDim mudtVariables(0)
End Sub

Private Function PaddString(ByVal strText As String, _
                            ByVal lngTotalChar As Long) _
                            As String
    'This will padd a string with trailing spaces so
    'that the returned string matches the total
    'number of characters specified. If the string
    'passed is bigger than the total number of
    'characters, then the string is truncated and then
    'returned.
    
    Dim lngLenText As Long  'the length of the text string passed
    
    'if the number of characters is zero, then
    'return nothing
    If lngTotalChar = 0 Then
        PaddString = ""
        Exit Function
    End If
    
    'get the length of the string
    lngLenText = Len(strText)
    
    If lngLenText >= lngTotalChar Then
        'return a trucated string
        PaddString = Left(strText, lngTotalChar)
    Else
        'padd the string out with spaces
        PaddString = strText & Space(lngTotalChar - lngLenText)
    End If
End Function

Private Function IsWord(ByVal strLine As String, _
                        ByVal strWord As String) _
                        As Boolean
    'This function will return True if the
    'specified word is not part of another
    'word
    
    Dim blnLeftOk As Boolean    'the left side of the word is valid
    Dim blnRightOk As Boolean   'the right side of the word is valid
    Dim lngWordPos As Long      'the position of the specified word in the string
    
    If (Len(strWord) > Len(strLine)) _
       Or (strLine = "") _
       Or (strWord = "") Then
        'invalid parameters
        IsWord = False
        Exit Function
    End If
    
    'remove leading/trailing spaces
    strLine = Trim(strLine)
    strWord = Trim(strWord)
    
    lngWordPos = InStr(UCase(strLine), UCase(strWord))
    
    If lngWordPos = 0 Then
        'word not found
        IsWord = False
        Exit Function
    End If
    
    'check the left side of the word
    If lngWordPos = 1 Then
        'word is on the left side of the string
        blnLeftOk = True
    Else
        'check the character to the left of the word
        Select Case UCase(Mid(strLine, lngWordPos - 1, 1))
        Case "A" To "Z", "0" To "9"
        Case Else
            blnLeftOk = True
        End Select
    End If
    
    'check the right side of the word
    If (lngWordPos + Len(strWord)) = Len(strLine) Then
        'word is on the left side of the string
        blnRightOk = True
    Else
        'check the character to the left of the word
        'Debug.Print strWord, UCase(Mid(strLine, lngWordPos + Len(strWord), 1))
        Select Case UCase(Mid(strLine, lngWordPos + Len(strWord), 1))
        Case "A" To "Z", "0" To "9"
            'Stop
        Case Else
            blnRightOk = True
        End Select
    End If
    
    'if both sides are OK, then return True
    If blnLeftOk And blnRightOk Then
        IsWord = True
    End If
End Function

Private Sub mnuFileExit_Click()
    'exit the program
    End
End Sub

Private Sub mnuFileFind_Click()
    'scan for unused variables
    
    'if invalid path, then exit
    If (txtPath.Text = "") _
       Or (Dir(txtPath.Text) = "") Then
       mnuFileFind.Enabled = False
       Exit Sub
    End If
    
    'display the progress bar
    If GetTotal > 0 Then
        'find unused variables
        pbrVariables.Max = GetTotal
        pbrVariables.Visible = True
        mblnScanning = True
        cmdScan.Enabled = False
        
        Call cmdScan_Click
        mnuFileScan.Enabled = False
        
        'hide the progress bar
        pbrVariables.Visible = False
        mblnScanning = False
        cmdScan.Enabled = True
        mnuFileScan.Enabled = True
    End If
End Sub

Private Sub mnuFileScan_Click()
    'scan a project
    
    Dim strFilePath As String
    
    strFilePath = txtPath.Text
    
    'don't try to scan file if it doesn't exist
    If (Dir(strFilePath) = "") Or (strFilePath = "") Then
        'browse for a project
        Call cmdBrowse_Click
    Else
        'scan the project
        Call cmdScan_Click
    End If
End Sub

Private Sub mnuFileScanAll_Click()
    'scan all files
    cmdBrowse.Enabled = False
    cmdScan.Enabled = False
    Call ResetValues
    Call ScanAllInFolder(txtPath.Text, True)
    lblName.Caption = "All Code Files..."
    Call DisplayValues
    cmdBrowse.Enabled = True
    cmdScan.Enabled = True
End Sub

Private Sub txtPath_GotFocus()
    'highlight any existing text
    With txtPath
        .SelStart = 0
        .SelLength = Len(.Text)
    End With
End Sub

Public Sub GetFileList(ByRef strFiles() As String, _
                       Optional ByVal strPath As String, _
                       Optional ByVal strExtention As String = "*.*", _
                       Optional ByVal lngAttributes As Long = vbNormal, _
                       Optional ByVal intNumFiles As Integer)
    'This procedure will get a list of files
    'available in the specified directory. If
    'no directory is specified, then the
    'applications directory is taken to be
    'the default.
    
    Dim intCounter As Integer       'used to reference new elements in the array
    Dim strTempName As String       'temperorily holds a file name
    
    'validate the parameters for correct values
    If (Trim(strPath = "")) _
       Or (Dir(strPath, vbDirectory) = "") Then
        
        'invalid path, assume applications
        'directory
        strPath = App.Path
    End If
    
    'reset the array before entering new data
    ReDim strFiles(0)
    
    'resize the array to nothing if the
    'number of files specified is less
    'than can be returned
    If intNumFiles < 1 Then
        'return the maximum number of files (if possible)
        intNumFiles = 32767
    End If
    
    'include a wild card if the user only
    'specified the extention
    If Left(strExtention, 1) = "." Then
        strExtention = "*" & strExtention
    ElseIf InStr(strExtention, ".") = 0 Then
        strExtention = "*." & strExtention
    End If
    
    'get the first file name to start
    'the file search for this directory
    strTempName = Dir(AddFile(strPath, _
                              strExtention), _
                      lngAttributes)
    
    'keep getting new files until there are
    'no more to return
    Do While (strTempName <> "") _
       And (intCounter <= intNumFiles)
        
        'enter the file into the array
        ReDim Preserve strFiles(intCounter)
        strFiles(intCounter) = strTempName
        intCounter = intCounter + 1
        
        'get a new file
        strTempName = Dir
    Loop
End Sub

Private Sub ScanAllInFolder(ByVal strDirectory As String, _
                            Optional ByVal blnScanSubDir As Boolean = False)
    'This will scan all code files in the selected
    'folder and give the statistics for the code
    
    Dim strDirList() As String  'the directories in the current directory
    Dim lngMax As Long          'the number of sub directories
    Dim lngCounter As Long      'the number of directories
    Dim strFile As String       'the complete file path to test
    
    'validate the directory (we might be passed a file
    'path instead or an invalid path)
    If strDirectory = "" Then
        'no parameter passed
        Exit Sub
    End If
    If (Dir(strDirectory, vbDirectory) <> strDirectory) And _
       (Dir(strDirectory) <> "") Then
        'file name passed. Parse to get directory
        strDirectory = Left(strDirectory, _
                            InStrRev(strDirectory, _
                                     "\") - 1)
    End If
    
    'scan the different file groups
    Call GetFileGroup(strDirectory, FormExt)
    Call GetFileGroup(strDirectory, ModuleExt)
    Call GetFileGroup(strDirectory, ClassExt)
    Call GetFileGroup(strDirectory, ControlExt)
    
    'do we scan the sub directories aswell?
    If blnScanSubDir Then
        'get a list of sub directories
        Call GetFileList(strDirList, _
                         strDirectory, , _
                         vbDirectory)
        
        'scan each sub directory
        lngMax = UBound(strDirList)
        'the first two enteries are always "." and ".."
        For lngCounter = 2 To lngMax
            'get the file path
            strFile = AddFile(strDirectory, _
                              strDirList(lngCounter))
            
            'is the directory a directory?
            If (Dir(strFile) <> _
                strDirList(lngCounter)) Then
                
                'then check the directory for code
                Call ScanAllInFolder(strFile, _
                                     blnScanSubDir)
            End If
        Next lngCounter
    End If
End Sub

Private Sub GetFileGroup(ByVal strDirectory As String, _
                         ByVal strExtention As String)
    'updates the code stats using all files in the
    'specified directory with the specified extention
    
    Dim strFileList() As String 'the files in the specified directory
    Dim lngMax As Long          'the largest element in the array
    Dim lngCounter As Long      'used to cycle through the file list
    Dim strStart As String      'the point in the file from which to start scanning
    
    'get a complete list of all the forms
    Call GetFileList(strFileList, _
                     strDirectory, _
                     strExtention)
    
    'see if any files were found
    If strFileList(0) = "" Then
        'no files returned
        Exit Sub
    End If
    
    'get the number of files found in the directory
    lngMax = UBound(strFileList)
    
    'update the appropiate total for the file type
    Select Case strExtention
    Case FormExt
        mlngNumForms = mlngNumForms + lngMax + 1
        strStart = FormStartCode
    Case ModuleExt
        mlngNumModules = mlngNumModules + lngMax + 1
        strStart = ModStartCode
    Case ClassExt
        mlngNumClasses = mlngNumClasses + lngMax + 1
        strStart = ClsStartCode
    Case ControlExt
        mlngNumControls = mlngNumControls + lngMax + 1
        strStart = CtlStartCode
    Case Else
        'invalid extention
        Exit Sub
    End Select
    
    'scan all files
    For lngCounter = 0 To lngMax
        'scan this file for code
        Call ScanFile(AddFile(strDirectory, _
                              strFileList(lngCounter)), _
                      strStart)
    Next lngCounter
End Sub

