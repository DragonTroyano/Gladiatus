#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=bin\Gladiatus Icon.ico
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

HotKeySet("{F2}", "ExpeditionResult")

#include <IE.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <ProgressConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <GDIPlus.au3>
#include <IEAttr.au3>
#include <ProgressConstants.au3>
#include <ListViewConstants.au3>
#include <GuiListView.au3>
#include <SliderConstants.au3>

#Region Pliki do ³¹cznego kompilowania.
DirCreate("C:\GB")
DirCreate("C:\GB\Rome")
DirCreate("C:\GB\Africa")
DirCreate("C:\GB\Germania")
DirCreate("C:\GB\Utilities")
DirCreate("C:\GB\Logs")

FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Gladiatus21.png", "C:\GB\Utilities\Gladiatus21.png", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\GG_Gladiatus_logo12.png", "C:\GB\Utilities\GG_Gladiatus_logo12.png", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Rzym.ini", "C:\GB\Rome\Rzym.ini", $FC_OVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_1.jpg", "C:\GB\Rome\1_1_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_2.jpg", "C:\GB\Rome\1_1_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_3.jpg", "C:\GB\Rome\1_1_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_4.jpg", "C:\GB\Rome\1_1_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_2_1.jpg", "C:\GB\Rome\1_2_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_2_2.jpg", "C:\GB\Rome\1_2_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_2_3.jpg", "C:\GB\Rome\1_2_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_2_4.jpg", "C:\GB\Rome\1_2_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_3_1.jpg", "C:\GB\Rome\1_3_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_3_2.jpg", "C:\GB\Rome\1_3_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_3_3.jpg", "C:\GB\Rome\1_3_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_3_4.jpg", "C:\GB\Rome\1_3_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_4_1.jpg", "C:\GB\Rome\1_4_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_4_2.jpg", "C:\GB\Rome\1_4_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_4_3.jpg", "C:\GB\Rome\1_4_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_4_4.jpg", "C:\GB\Rome\1_4_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_5_1.jpg", "C:\GB\Rome\1_5_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_5_2.jpg", "C:\GB\Rome\1_5_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_5_3.jpg", "C:\GB\Rome\1_5_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_5_4.jpg", "C:\GB\Rome\1_5_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_6_1.jpg", "C:\GB\Rome\1_6_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_6_2.jpg", "C:\GB\Rome\1_6_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_6_3.jpg", "C:\GB\Rome\1_6_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_6_4.jpg", "C:\GB\Rome\1_6_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_7_1.jpg", "C:\GB\Rome\1_7_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_7_2.jpg", "C:\GB\Rome\1_7_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_7_3.jpg", "C:\GB\Rome\1_7_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_7_4.jpg", "C:\GB\Rome\1_7_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_1_1.jpg", "C:\GB\Germania\3_1_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_1_2.jpg", "C:\GB\Germania\3_1_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_1_3.jpg", "C:\GB\Germania\3_1_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_2_1.jpg", "C:\GB\Germania\3_2_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_2_2.jpg", "C:\GB\Germania\3_2_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_2_3.jpg", "C:\GB\Germania\3_2_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_3_1.jpg", "C:\GB\Germania\3_3_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_3_2.jpg", "C:\GB\Germania\3_3_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_3_3.jpg", "C:\GB\Germania\3_3_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_4_1.jpg", "C:\GB\Germania\3_4_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_4_2.jpg", "C:\GB\Germania\3_4_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_4_3.jpg", "C:\GB\Germania\3_4_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\3_4_4.jpg", "C:\GB\Germania\3_4_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\0_0_0.jpg", "C:\GB\Utilities\0_0_0.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Level.bmp", "C:\GB\Utilities\Level.bmp", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Gold.bmp", "C:\GB\Utilities\Gold.bmp", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Ruby.bmp", "C:\GB\Utilities\Ruby.bmp", $FC_NOOVERWRITE)
#EndRegion

BasicVariables()
Func BasicVariables()
	Global $Work = False
	Global $ExpeditionsActivity = False
	Global $ExpeditionsMaxPoints = -1
	Global $ExpeditionsMinPoints = 0
	Global $ExpeditionsPoints = -1
	Global $ExpeditionsCoolDown = -1
	Global $ExpeditionsArea = ""
	Global $Level = -1
	Global $Gold = -1
	Global $Rubys = -1
	Global $SH = ""
	Global $ExpeditionTime = "00:00:00"
	Global $DungeonTime = "00:00:00"
	Global $ArenaTime = "00:00:00"
	Global $CtTime = "00:00:00"
	Global $Location = ""
	Global $HP = 0
	Global $XP = 0
	Global $ExpeditionsINI = ""
	Global $HPCount1[2]
	Global $Mob = 0
EndFunc   ;==>BasicVariables

Const $PBST_NORMAL = 0x0001
Const $PBST_ERROR = 0x0002
Const $PBST_PAUSED = 0x0003

$oIE = _IECreateEmbedded()

#Region GUI
$Main = GUICreate("Gladiatus - Bot of Glory v0.0.00b By Genotypek", 1282, 746, 296, 272, $WS_MAXIMIZEBOX + $WS_MINIMIZEBOX + $WS_SIZEBOX)
$AccountName = GUICtrlCreateInput("", 8, 8, 121, 21)
GUICtrlSendMsg(-1, $EM_SETCUEBANNER, 0, "Login")
$AccountPassword = GUICtrlCreateInput("", 8, 32, 121, 21, $ES_PASSWORD)
GUICtrlSendMsg(-1, $EM_SETCUEBANNER, 0, "Has³o")
$Server = GUICtrlCreateCombo("", 8, 56, 121, 25, $CBS_DROPDOWNLIST + $WS_VSCROLL)
GUICtrlSetData($Server, "Wybierz Prowincjê|Prowincja 1|Prowincja 5|Prowincja 9|Prowincja 13|Prowincja 17|Prowincja 21|Prowincja 25|Prowincja 26|Prowincja 27", "Wybierz Prowincjê")
$Button_Start = GUICtrlCreateButton("START", 136, 8, 19, 73, $BS_MULTILINE + $BS_CENTER)
$Button_Stop = GUICtrlCreateButton("STOP", 161, 8, 19, 73, $BS_MULTILINE + $BS_CENTER)
GUICtrlSetState(-1, $GUI_DISABLE)
$HpAmountShow = GUICtrlCreateLabel("HP: 0 / 0 (0%)", 192, 12, 198, 17)
$HpBar = GUICtrlCreateProgress(192, 28, 208, 9)
$XpAmountShow = GUICtrlCreateLabel("XP: 0 / 0 (0%)", 192, 44, 198, 17)
$XpBar = GUICtrlCreateProgress(192, 60, 208, 9)
GUICtrlCreateGroup("", 184, 0, 225, 80)
GUICtrlCreateGroup("", 416, 0, 161, 81)
$LevelImg = GUICtrlCreatePic("c:\GB\Utilities\Level.bmp", 427, 15, 16, 16)
$GoldImg = GUICtrlCreatePic("c:\GB\Utilities\Gold.bmp", 428, 37, 13, 13)
$RubyImg = GUICtrlCreatePic("c:\GB\Utilities\Ruby.bmp", 428, 57, 12, 12)
$LevelAmount = GUICtrlCreateLabel("Poziom: 0", 444, 16, 131, 17)
$GoldAmount = GUICtrlCreateLabel("Z³oto: 0", 444, 36, 131, 17)
$RubysAmount = GUICtrlCreateLabel("Rubiny: 0", 444, 56, 131, 17)
GUICtrlCreateGroup("", 584, 0, 387, 81)
$ExpeditionTimeShow = GUICtrlCreateLabel("Wyprawa: 00:00:00", 592, 22, 151, 17)
$DungeonTimeShow = GUICtrlCreateLabel("Lochy: 00:00:00", 592, 50, 151, 17)
$ArenaTimeShow = GUICtrlCreateLabel("Arena: 00:00:00", 786, 22, 151, 17)
$CtTimeShow = GUICtrlCreateLabel("Circus Turma: 00:00:00", 786, 50, 151, 17)
GUICtrlCreateGroup("", 778, 0, 193, 81)

_GDIPlus_Startup()
$PlikLogo = _GDIPlus_ImageLoadFromFile("C:\GB\Utilities\Gladiatus21.png")
$BitMapa = _GDIPlus_BitmapCreateHBITMAPFromBitmap($PlikLogo)
$MainLogo = GUICtrlCreatePic("", 980, 0, 280, 103)
GUICtrlSendMsg($MainLogo, 0x0172, 0, $BitMapa)
$hRes = _SendMessage(GUICtrlGetHandle($MainLogo), 0x0172, 0, $BitMapa)

_GDIPlus_ImageDispose($PlikLogo)
_WinAPI_DeleteObject($hRes)
_WinAPI_DeleteObject($BitMapa)

#Region Zak³adki
$Tab1 = GUICtrlCreateTab(4, 88, 1274, 631, $TCS_SCROLLOPPOSITE)
#Region Zak³adka WWW
$Ti1 = GUICtrlCreateTabItem("WWW") ;Zak³adka WWW
$IE = GUICtrlCreateObj($oIE, 6, 110, 1268, 607)
#EndRegion Koniec zak³adki WWW

#Region Zak³adka Wyprawy
$Ti2 = GUICtrlCreateTabItem("Wyprawy")
GUICtrlCreateGroup("Wyprawy", 11, 113, 1258, 598) ;Zak³adka Wyprawy

$PlikLogo = _GDIPlus_ImageLoadFromFile("C:\GB\Utilities\GG_Gladiatus_logo12.png")
$BitMapa = _GDIPlus_BitmapCreateHBITMAPFromBitmap($PlikLogo)
$MainLogo = GUICtrlCreatePic("", 187, 130, 350, 74)
GUICtrlSendMsg($MainLogo, 0x0172, 0, $BitMapa)
$hRes = _SendMessage(GUICtrlGetHandle($MainLogo), 0x0172, 0, $BitMapa)

_GDIPlus_ImageDispose($PlikLogo)
_WinAPI_DeleteObject($hRes)
_WinAPI_DeleteObject($BitMapa)
_GDIPlus_Shutdown()

GUICtrlCreateGroup("Aktywnoœæ", 23, 133, 160, 70)
$Button_Expeditions_On = GUICtrlCreateButton("W³¹cz", 38, 153, 60, 20)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button_Expeditions_Off = GUICtrlCreateButton("Wy³¹cz", 108, 153, 60, 20)
GUICtrlSetState(-1, $GUI_DISABLE)
$Label_Expeditions_Activity = GUICtrlCreateLabel("Nieaktywne", 24, 180, 158, 20, $SS_CENTER)
GUICtrlSetColor($Label_Expeditions_Activity, 0xFF0000)
$ExpeditionsList = GUICtrlCreateListView("LP.|Data|Kraj|Lokacja|Potwór|Z³oto|Doœwiadczenie|Honor|Zadano DMG|Otrzymano DMG|Wynik", 23, 400, 1233, 300, -1, $LVS_EX_FULLROWSELECT + $LVS_EX_GRIDLINES)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 0, 50)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 1, 150)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 2, 100)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 3, 175)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 4, 150)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 5, 90)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 6, 90)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 7, 90)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 10, 90)
;For $i = 1 To 40
;	Local $Kraj = ["Rzym", "Afryka", "Germania"]
;	GUICtrlCreateListViewItem($i & "|21:45:02 24/09/2014|"&$Kraj[Random(0, 2, 1)]&"|Mroczne Lasy|Szczur|+" & Random(0, 300, 1) & "|+" & Random(1, 5, 1) & "|+" & Random(10, 180, 1) & "|" & Random(100, 350, 1) & "|" & Random(0, 99, 1) & "|Zwyciêstwo", $ExpeditionsList)
;Next
GUICtrlCreateGroup("Potwór", 540, 125, 716, 260)
$Mob1_Picture = GUICtrlCreatePic("c:\GB\Utilities\0_0_0.jpg", 558, 150, 168, 194)
$Mob1_Label = GUICtrlCreateLabel("?", 558, 345, 168, 20, $SS_CENTER)
$Mob1_Radio = GUICtrlCreateRadio(" ", 636, 358)
GUICtrlSetState(-1, $GUI_CHECKED)
$Mob2_Picture = GUICtrlCreatePic("c:\GB\Utilities\0_0_0.jpg", 728, 150, 168, 194)
$Mob2_Label = GUICtrlCreateLabel("?", 728, 345, 168, 20, $SS_CENTER)
$Mob2_Radio = GUICtrlCreateRadio(" ", 806, 358)
$Mob3_Picture = GUICtrlCreatePic("c:\GB\Utilities\0_0_0.jpg", 898, 150, 168, 194)
$Mob3_Label = GUICtrlCreateLabel("?", 898, 345, 168, 20, $SS_CENTER)
$Mob3_Radio = GUICtrlCreateRadio(" ", 976, 358)
$Mob4_Picture = GUICtrlCreatePic("c:\GB\Utilities\0_0_0.jpg", 1068, 150, 168, 194)
$Mob4_Label = GUICtrlCreateLabel("?", 1068, 345, 168, 20, $SS_CENTER)
$Mob4_Radio = GUICtrlCreateRadio(" ", 1146, 358)
$ExpeditionNext = GUICtrlCreateGroup("Nastêpna wyprawa 0% (00:00:00)", 23, 313, 503, 72)
$ExpeditionBarNext = GUICtrlCreateProgress(33, 333, 483, 40)
GUICtrlCreateGroup("Miejsce wyprawy", 23, 213, 160, 90)
$ExpeditionLocationShow = GUICtrlCreateLabel("Kraj: ---", 32, 240, 140, 20)
$ExpeditionAreaChoice = GUICtrlCreateCombo("Zaloguj siê!", 32, 267, 140, 20, $CBS_DROPDOWNLIST)
GUICtrlCreateGroup("Limit", 192, 213, 334, 90)
$ExpeditionsLimitLabel = GUICtrlCreateLabel("Pozostaw 0 / 0 punktów wypraw.", 203, 280, 312, 16, $SS_CENTER)
$ExpeditionsSlider = GUICtrlCreateSlider(203, 232, 312, 44, $TBS_BOTH)
GUICtrlSetLimit(-1, 0, 0)
GUICtrlSetBkColor(-1, 0xFFFFFF)
GUICtrlCreateTabItem("")
#EndRegion Koniec zak³adki wyprawy

#Region Zak³adka Log
$Ti3 = GUICtrlCreateTabItem("Log")
$MainLog = GUICtrlCreateEdit("", 6, 110, 1268, 577, $ES_MULTILINE + $ES_READONLY)
$OpenLogDir = GUICtrlCreateButton("Otwórz Folder Logów", 25, 692, 300, 20)
$OpenLogToday = GUICtrlCreateButton("Otwórz Dzisiejszy Log", 335, 692, 300, 20)
$DeleteAllLog = GUICtrlCreateButton("Usuñ Wszystkie Pliki Logów", 645, 692, 300, 20)
$ClearLog = GUICtrlCreateButton("Wyczyœæ Log Tej Sesji", 955, 692, 300, 20)
LogWrite("Gladiatus - Bot of Glory zosta³ uruchomiony.")
GUICtrlCreateTabItem("")
#EndRegion Koniec zak³adki Log
#EndRegion Koniec zak³adek

_IENavigate($oIE, "http://www.gladiatus.pl")
GUISetState(@SW_SHOW)
#EndRegion Koniec GUI

While 1
	$msg = GUIGetMsg()
	Select
		Case $msg = $GUI_EVENT_CLOSE
			Exit
		Case $msg = $Button_Start
			If GUICtrlRead($AccountName) = "" Or GUICtrlRead($AccountPassword) = "" Or GUICtrlRead($Server) = "Wybierz Prowincjê" Then
				MsgBox(16, "B³¹d!", "Nie podano wszystkich danych," & @CRLF & "logowania, uzupe³nij je!")
				ContinueLoop
			EndIf
			GUICtrlSetState($Button_Start, $GUI_DISABLE)
			GUICtrlSetState($Button_Stop, $GUI_ENABLE)
			GUICtrlSetState($AccountName, $GUI_DISABLE)
			GUICtrlSetState($AccountPassword, $GUI_DISABLE)
			GUICtrlSetState($Server, $GUI_DISABLE)
			Local $Obj = _IEGetObjById($oIE, "login_username")
			_IEFormElementSetValue($Obj, GUICtrlRead($AccountName))
			Local $Obj = _IEGetObjById($oIE, "login_password")
			_IEFormElementSetValue($Obj, GUICtrlRead($AccountPassword))
			Local $Obj = _IEGetObjById($oIE, "login_server")
			_IEFormElementSetValue($Obj, "s" & StringReplace(GUICtrlRead($Server), "Prowincja ", "") & ".pl.gladiatus.gameforge.com/game/index.php?mod=start&submod=login")
			Local $Obj = _IEGetObjById($oIE, "loginsubmit")
			_IEAction($Obj, 'Click')
			_IELoadWait($oIE)
			$SH = StringReplace(_IEPropertyGet($oIE, 'locationurl'), StringLeft(_IEPropertyGet($oIE, 'locationurl'), StringInStr(_IEPropertyGet($oIE, 'locationurl'), "sh=") + 2), "")
			$Location = "W podró¿y!"
			If StringInStr(_IEBodyReadHTML($oIE), 'Mroczne Lasy') Then $Location = "Rzym"
			If StringInStr(_IEBodyReadHTML($oIE), 'Œwi¹tynia Voodoo') Then $Location = "Afryka"
			If StringInStr(_IEBodyReadHTML($oIE), 'Jaskiniowa Œwi¹tynia') Then $Location = "Germania"
			GUICtrlSetState($Button_Expeditions_On, $GUI_ENABLE)
			Local $a = _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext
			$ExpeditionsMaxPoints = _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext
			GUICtrlSetData($ExpeditionsLimitLabel, "Pozostaw " & $ExpeditionsMinPoints & " / " & $ExpeditionsMaxPoints & " punktów wypraw.")
			GUICtrlSetLimit($ExpeditionsSlider, $ExpeditionsMaxPoints, 0)
			Local $DaylyReward = _IEGetObjByAttr($oIE, "input", "type=submit|value=odbierz bonus")
			If IsArray($DaylyReward) Then
				_ArrayMaxIndex($DaylyReward)
				If Not @error Then
					_IEAction($DaylyReward[0], 'click')
				EndIf
			EndIf
			_IELoadWait($oIE)
			$Work = Not $Work
		Case $msg = $Button_Expeditions_On
			GUICtrlSetData($Label_Expeditions_Activity, "Aktywne")
			GUICtrlSetColor($Label_Expeditions_Activity, 0x2F941B)
			GUICtrlSetState($Button_Expeditions_Off, $GUI_ENABLE)
			GUICtrlSetState($Button_Expeditions_On, $GUI_DISABLE)
			$ExpeditionsActivity = True
		Case $msg = $Button_Expeditions_Off
			GUICtrlSetData($Label_Expeditions_Activity, "Nieaktywne")
			GUICtrlSetColor($Label_Expeditions_Activity, 0xFF0000)
			GUICtrlSetState($Button_Expeditions_Off, $GUI_DISABLE)
			GUICtrlSetState($Button_Expeditions_On, $GUI_ENABLE)
			$ExpeditionsActivity = False
		Case $msg = $OpenLogDir
			ShellExecute("C:\GB\Logs")
		Case $msg = $OpenLogToday
			ShellExecute("C:\GB\Logs\["&@MDAY&"-"&@MON&"-"&@YEAR&"].txt")
		Case $msg = $DeleteAllLog
			Local $Confirm = MsgBox($MB_YESNO + $MB_ICONWARNING, "Ostrze¿enie", "Jesteœ pewien, ¿e chcesz wykonaæ t¹ operacjê?"&@CRLF&"Wszystkie pliki logów zostan¹ skasowane.")
			If $Confirm = $IDYES Then
				Local $hFile = FileFindFirstFile ( "C:\GB\Logs\*" )
				If $hFile <> -1 Then
					While 1
						Local $File = FileFindNextFile ( $hFile )
						If @Error Then ExitLoop
						FileDelete("C:\GB\Logs\"&$File)
					WEnd
				EndIf
			EndIf
	EndSelect
	;Pêtla obs³uguj¹ca zmienne i uruchamiaj¹ca funkcje.
	If $Work Then
		Local $HPA, $XPA, $URLref
		_IELoadWait($oIE)
		If GUICtrlRead($ExpeditionsSlider) <> $ExpeditionsMinPoints Or _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext <> $ExpeditionsMaxPoints Then
			_IELoadWait($oIE)
			$ExpeditionsMinPoints = GUICtrlRead($ExpeditionsSlider)
			$ExpeditionsMinPoints = Int($ExpeditionsMinPoints)
			$ExpeditionsPointsMax = _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext
			GUICtrlSetData($ExpeditionsLimitLabel, "Pozostaw " & $ExpeditionsMinPoints & " / " & $ExpeditionsMaxPoints & " punktów wypraw.")
		EndIf
		If _IEGetObjById($oIE, "expeditionpoints_value_point").innertext <> $ExpeditionsPoints Then
			_IELoadWait($oIE)
			$ExpeditionsPoints = _IEGetObjById($oIE, "expeditionpoints_value_point").innertext
		EndIf
		If _IEGetObjById($oIE, "sstat_gold_val").innertext <> $Gold Then
			_IELoadWait($oIE)
			$Gold = _IEGetObjById($oIE, "sstat_gold_val").innertext
			GUICtrlSetData($GoldAmount, "Z³oto: " & $Gold)
		EndIf
		If _IEGetObjById($oIE, "sstat_ruby_val").innertext <> $Rubys Then
			_IELoadWait($oIE)
			$Rubys = _IEGetObjById($oIE, "sstat_ruby_val").innertext
			GUICtrlSetData($RubysAmount, "Rubiny: " & $Rubys)
		EndIf
		If _IEGetObjById($oIE, "header_values_level").innertext <> $Level Then
			_IELoadWait($oIE)
			$Level = _IEGetObjById($oIE, "header_values_level").innertext
			GUICtrlSetData($LevelAmount, "Poziom: " & $Level)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext <> $ExpeditionTime Then
			_IELoadWait($oIE)
			$ExpeditionTime = _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext
			GUICtrlSetData($ExpeditionTimeShow, "Wyprawa: " & $ExpeditionTime)
			If $ExpeditionTime <> "Na wyprawê" And GUICtrlRead($Tab1, 1) = $Ti2 Then
				Local $Time = StringSplit($ExpeditionTime, ":")
				Local $TimeLeft = $Time[1] * 3600 + $Time[2] * 60 + $Time[3]
				GUICtrlSetData($ExpeditionNext, "Nastêpna wyprawa " & Floor((($ExpeditionsCoolDown - $TimeLeft) / $ExpeditionsCoolDown) * 100) & "% (" & $ExpeditionTime & ")")
				Local $Percent
				If Floor((($ExpeditionsCoolDown - $TimeLeft) / $ExpeditionsCoolDown) * 100) <> $Percent And GUICtrlRead($Tab1, 1) = $Ti2 Then
					$Percent = Floor((($ExpeditionsCoolDown - $TimeLeft) / $ExpeditionsCoolDown) * 100)
					GUICtrlSetData($ExpeditionBarNext, Floor((($ExpeditionsCoolDown - $TimeLeft) / $ExpeditionsCoolDown) * 100))
				EndIf
			ElseIf $ExpeditionTime = "Na wyprawê" Then
				GUICtrlSetData($ExpeditionNext, "Nastêpna wyprawa 100%")
				GUICtrlSetData($ExpeditionBarNext, 100)
			EndIf
		EndIf
		If $ExpeditionTime = "Na wyprawê" And $ExpeditionsActivity Then
			If $ExpeditionsMinPoints > 0 And $ExpeditionsPoints > $ExpeditionsMinPoints Then
				Expedition()
			ElseIf $ExpeditionsMinPoints = 0 Then
				Expedition()
			EndIf
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext <> $DungeonTime Then
			_IELoadWait($oIE)
			$DungeonTime = _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext
			GUICtrlSetData($DungeonTimeShow, "Lochy: " & $DungeonTime)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_arena").innertext <> $ArenaTime Then
			_IELoadWait($oIE)
			$ArenaTime = _IEGetObjById($oIE, "cooldown_bar_text_arena").innertext
			GUICtrlSetData($ArenaTimeShow, "Arena: " & $ArenaTime)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_ct").innertext <> $CtTime Then
			_IELoadWait($oIE)
			$CtTime = _IEGetObjById($oIE, "cooldown_bar_text_ct").innertext
			GUICtrlSetData($CtTimeShow, "Circus Turma: " & $CtTime)
		EndIf
		If _IEPropertyGet($oIE, 'locationurl') <> $URLref Then ;Or Not StringInStr(_IEBodyReadHTML($oIE), $HPA) Or Not StringInStr(_IEBodyReadHTML($oIE), $XPA) Then
			_IELoadWait($oIE)
			$URLref = _IEPropertyGet($oIE, 'locationurl')

			$Location = "W podró¿y!"
			If StringInStr(_IEBodyReadHTML($oIE), 'Mroczne Lasy') Then $Location = "Rzym"
			If StringInStr(_IEBodyReadHTML($oIE), 'Œwi¹tynia Voodoo') Then $Location = "Afryka"
			If StringInStr(_IEBodyReadHTML($oIE), 'Jaskiniowa Œwi¹tynia') Then $Location = "Germania"

			Local $LastLocation
			If $Location <> $LastLocation Then
				$LastLocation = $Location
				If $Location = "Rzym" Then
					GUICtrlSetData($ExpeditionLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($ExpeditionAreaChoice, "", "")
					GUICtrlSetData($ExpeditionAreaChoice, "1. Mroczne Lasy|2. Port Piratów|3. Mgielne Góry|4. Wilcza Jama|5. Prastara Œwi¹tynia|6. Obóz Dzikusów|7. Obóz Bandytów", "1. Mroczne Lasy")
					$ExpeditionsINI = "C:\GB\Rome\Rzym.ini"
				EndIf
				If $Location = "Afryka" Then
					GUICtrlSetData($ExpeditionLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($ExpeditionAreaChoice, "", "")
					GUICtrlSetData($ExpeditionAreaChoice, "Mroczne Lasy|Port Piratów|Mgielne Góry|Wilcza Jama|Prastara Œwi¹tynia|Obóz Dzikusów|Obóz Bandytów", "Mroczne Lasy")
					$ExpeditionsINI = "C:\GB\Africa\Afryka.ini"
				EndIf
				If $Location = "Germania" Then
					GUICtrlSetData($ExpeditionLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($ExpeditionAreaChoice, "", "")
					GUICtrlSetData($ExpeditionAreaChoice, "Jaskiniowa Œwi¹tynia|Zielony Las|Przeklêta Wioska|Wzgórze Œmierci|Wioska Wandali|Kopalnia|Obóz Teutonów|Góra Koman|Smocze Resztki", "Jaskiniowa Œwi¹tynia")
					$ExpeditionsINI = "C:\GB\Germania\Germania.ini"
				EndIf
			EndIf

			$HPA = StringRight(_IEBodyReadHTML($oIE), StringLen(_IEBodyReadHTML($oIE)) - StringInStr(_IEBodyReadHTML($oIE), "Punkty ¿ycia:") - 1)
			$HPA = StringLeft($HPA, StringInStr($HPA, "</td></tr>") - 1)
			$HPA = StringRight($HPA, StringLen($HPA) - StringInStr($HPA, "nowrap>") - 6)
			If $HPA <> $HP Then
				$HP = $HPA
				$HPcount = StringReplace($HP, " ", "")
				$HPcount1 = StringSplit($HPcount, "/")
				$HPpercent = ($HPcount1[1] / $HPcount1[2]) * 100
				$HPpercent = StringLeft($HPpercent, 5)
				GUICtrlSetData($HpAmountShow, "HP: " & $HP & " (" & $HPpercent & "%)")
				GUICtrlSendMsg($HpBar, $PBM_SETSTATE, $PBST_NORMAL, 0)
				GUICtrlSetData($HpBar, $HPpercent)
				GUICtrlSendMsg($HpBar, $PBM_SETSTATE, $PBST_ERROR, 0)
			EndIf
			$XPA = StringRight(_IEBodyReadHTML($oIE), StringLen(_IEBodyReadHTML($oIE)) - StringInStr(_IEBodyReadHTML($oIE), "Doœwiadczenie:") - 1)
			$XPA = StringLeft($XPA, StringInStr($XPA, "</td></tr>") - 1)
			$XPA = StringRight($XPA, StringLen($XPA) - StringInStr($XPA, "nowrap>") - 6)
			If $XPA <> $XP Then
				$XP = $XPA
				$XPcount = StringReplace($XP, " ", "")
				$XPcount1 = StringSplit($XPcount, "/")
				$XPpercent = ($XPcount1[1] / $XPcount1[2]) * 100
				$XPpercent = StringLeft($XPpercent, 5)
				GUICtrlSetData($XpAmountShow, "XP: " & $XP & " (" & $XPpercent & "%)")
				GUICtrlSendMsg($XpBar, $PBM_SETSTATE, $PBST_NORMAL, 0)
				GUICtrlSetData($XpBar, $XPpercent)
				GUICtrlSendMsg($XpBar, $PBM_SETSTATE, $PBST_PAUSED, 0)
			EndIf
			$ExpeditionsMaxPoints = Int($ExpeditionsMaxPoints)
			$ExpeditionsPoints = Int($ExpeditionsPoints)
			If $ExpeditionsMaxPoints > 18 And $ExpeditionsPoints <> 0 Then
				$Centurion = True
				If $ExpeditionsPoints = 0 Then
					$ExpeditionsCoolDown = 1800
				ElseIf $ExpeditionsPoints <> 0 Then
					$ExpeditionsCoolDown = 300
				EndIf
				$ExpeditionsCoolDown = 300
			ElseIf $ExpeditionsMaxPoints <= 18 Then
				$Centurion = False
				If $ExpeditionsPoints = 0 Then
					$ExpeditionsCoolDown = 3600
				ElseIf $ExpeditionsPoints <> 0 Then
					$ExpeditionsCoolDown = 600
				EndIf
			EndIf
		EndIf
		If GUICtrlRead($ExpeditionAreaChoice) <> $ExpeditionsArea Then
			$ExpeditionsArea = GUICtrlRead($ExpeditionAreaChoice)
			Local $LocNr = StringLeft($ExpeditionsArea, 1)
			GUICtrlSetImage($Mob1_Picture, IniRead($ExpeditionsINI, $LocNr, "Mob1Pic", "C:\GB\Utilities\0_0_0.jpg"))
			GUICtrlSetData($Mob1_Label, IniRead($ExpeditionsINI, $LocNr, "Mob1Name", "?"))
			GUICtrlSetImage($Mob2_Picture, IniRead($ExpeditionsINI, $LocNr, "Mob2Pic", "C:\GB\Utilities\0_0_0.jpg"))
			GUICtrlSetData($Mob2_Label, IniRead($ExpeditionsINI, $LocNr, "Mob2Name", "?"))
			GUICtrlSetImage($Mob3_Picture, IniRead($ExpeditionsINI, $LocNr, "Mob3Pic", "C:\GB\Utilities\0_0_0.jpg"))
			GUICtrlSetData($Mob3_Label, IniRead($ExpeditionsINI, $LocNr, "Mob3Name", "?"))
			GUICtrlSetImage($Mob4_Picture, IniRead($ExpeditionsINI, $LocNr, "Mob4Pic", "C:\GB\Utilities\0_0_0.jpg"))
			GUICtrlSetData($Mob4_Label, IniRead($ExpeditionsINI, $LocNr, "Mob4Name", "?"))
		EndIf
	EndIf
WEnd

Func Expedition()
	_IELoadWait($oIE)
	Local $LocNr = StringLeft(GUICtrlRead($ExpeditionAreaChoice), 1)
	Local $S = StringReplace(GUICtrlRead($Server), "Prowincja ", "")
	_IENavigate($oIE, "http://s" & $S & ".pl.gladiatus.gameforge.com/game/index.php?mod=location&loc=" & $LocNr - 1 & "&sh=" & $SH)
	_IELoadWait($oIE)
	Local $AttackButtons = _IEGetObjByAttr($oIE, "button", "Type=button")
	Local $Mob
	If _IsChecked($Mob1_Radio) Then $Mob = 0
	If _IsChecked($Mob2_Radio) Then $Mob = 1
	If _IsChecked($Mob3_Radio) Then $Mob = 2
	If _IsChecked($Mob4_Radio) Then $Mob = 3
	_IEAction($AttackButtons[$Mob], 'Click')
	_IELoadWait($oIE)
	Sleep(3000)
	ExpeditionResult()
EndFunc   ;==>Expedition

Func ExpeditionResult()
	Local $HTML = _IEBodyReadHTML($oIE)
	Local $Result = "Pora¿ka"
	Local $EarnGold = 0
	Local $EarnExp = 0
	Local $EarnHonor = 0
	Local $DealDamage = 0
	Local $TakeDamage = 0
	If _IsChecked($Mob1_Radio) Then $Mob = 0
	If _IsChecked($Mob2_Radio) Then $Mob = 1
	If _IsChecked($Mob3_Radio) Then $Mob = 2
	If _IsChecked($Mob4_Radio) Then $Mob = 3
	$HTML = StringReplace($HTML, StringLeft($HTML, StringInStr($HTML, 'reportHeader')), "")
	If StringInStr($HTML, "Zwyciêzca: "&GUICtrlRead($AccountName)) Then $Result = "Zwyciêstwo"
	If $Result = "Zwyciêstwo" Then
		Local $HTML1 = $HTML
		For $i = 1 To 2
			$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		Next
		;Przejœcie do linijki ze z³otem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "Zdoby³:")+6), "")
		$EarnGold = StringReplace($HTML1, StringRight($HTML1, StringLen($HTML1)-StringInStr($HTML1, "<")+1), "")
		$EarnGold = StringReplace($EarnGold, " ", "")
		$EarnGold = "+"&$EarnGold
		;Przejœcie do linijki z doœwiadczeniem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "otrzyma³")+8), "")
		$EarnExp = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2)-StringInStr($HTML2, "pkt.")+1), "")
		$EarnExp = StringReplace($EarnExp, " ", "")
		$EarnExp = "+"&$EarnExp
		;Przejœcie do linijki z honorem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "otrzyma³")+8), "")
		$EarnHonor = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2)-StringInStr($HTML2, "honoru")+1), "")
		$EarnHonor = StringReplace($EarnHonor, " ", "")
		$EarnHonor = "+"&$EarnHonor
		;Przejœcie do linijki z obrazeniemi bohatera
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "<TD>")+3), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "<TD>")+3), "")
		$DealDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2)-StringInStr($HTML2, "</TD>")+1), "")
		$DealDamage = StringReplace($DealDamage, " ", "")
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, IniRead($ExpeditionsINI, $LocNr, "Mob"&$Mob+1&"Name", "?"))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "</TD>")+4), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "</TD>")+4), "")
		$TakeDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2)-StringInStr($HTML2, "</TD>")+1), "")
		$TakeDamage = StringReplace($TakeDamage, " ", "")
		$TakeDamage = StringReplace($TakeDamage, "<TD>", "")
		$TakeDamage = StringReplace($TakeDamage, @CRLF, "")
	Else
		Local $HTML1 = $HTML
		For $i = 1 To 2
			$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		Next
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "<TD>")+3), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "<TD>")+3), "")
		$DealDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2)-StringInStr($HTML2, "</TD>")+1), "")
		$DealDamage = StringReplace($DealDamage, " ", "")
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, IniRead($ExpeditionsINI, $LocNr, "Mob"&$Mob+1&"Name", "?"))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "</TD>")+4), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "</TD>")+4), "")
		$TakeDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2)-StringInStr($HTML2, "</TD>")+1), "")
		$TakeDamage = StringReplace($TakeDamage, " ", "")
		$TakeDamage = StringReplace($TakeDamage, "<TD>", "")
		$TakeDamage = StringReplace($TakeDamage, @CRLF, "")
	EndIf
	GUICtrlCreateListViewItem("1|"&@HOUR&":"&@MIN&":"&@SEC&" "&@MDAY&"/"&@MON&"/"&@YEAR&"|"&$Location&"|"&IniRead($ExpeditionsINI, $LocNr, "Location", "?")&"|"&IniRead($ExpeditionsINI, $LocNr, "Mob"&$Mob+1&"Name", "?")&"|"&$EarnGold&"|"&$EarnExp&"|"&$EarnHonor&"|"&$DealDamage&"|"&$TakeDamage&"|"&$Result, $ExpeditionsList)
	LogWrite("Wykonano wyprawê")
	LogWrite("Rezultat: "&$Result, Default, False)
	LogWrite("Kraj: "&$Location, Default, False)
	LogWrite("Lokacja: "&IniRead($ExpeditionsINI, $LocNr, "Location", "?"), Default, False)
	LogWrite("Potwór: "&IniRead($ExpeditionsINI, $LocNr, "Mob"&$Mob+1&"Name", "?"), Default, False)
	LogWrite("Zadane obra¿enia: "&$DealDamage, Default, False)
	LogWrite("Otrzymanie obra¿enia: "&$TakeDamage, Default, False)
	LogWrite("Zdobyte z³oto: "&$EarnGold, Default, False)
	LogWrite("Zdobyte doœwiadczenie: "&$EarnExp, Default, False)
	LogWrite("Zdobyty honor: "&$EarnHonor, Default, False)
EndFunc

Func M($esp)
	MsgBox(0, Null, $esp)
EndFunc

Func _IsChecked($idControlID)
	Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc   ;==>_IsChecked

Func LogWrite($LogText, $WriteToFile = True, $LogTimeVisible = True)
	Local $LOG = FileOpen ( "C:\GB\Logs\"&"["&@MDAY&"-"&@MON&"-"&@YEAR&"].txt", 1)
	Local $LogTime = ">>>>>>>> "
	If $LogTimeVisible Then $LogTime = "["&@HOUR&":"&@MIN&":"&@SEC&"] "
	Local $OldLogText = GUICtrlRead($MainLog)
	GUICtrlSetData($MainLog, $OldLogText&$LogTime&$LogText&@CRLF)
	If $WriteToFile Then FileWrite($LOG, $LogTime&$LogText&@CRLF)
	FileClose( $LOG )
EndFunc