#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=bin\Gladiatus Icon.ico
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

$Nick = "ziomek66666"
$Haslo = "qwerty1221"

HotKeySet("{F2}", "ExpeditionResult")
HotKeySet("{F3}", "DungeonResult")
HotKeySet("{F11}", "varDebug")

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
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\L_1_1_1.jpg", "C:\GB\Rome\L_1_1_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\L_1_1_2.jpg", "C:\GB\Rome\L_1_1_2.jpg", $FC_NOOVERWRITE)
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
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\L_0_0_0.jpg", "C:\GB\Utilities\L_0_0_0.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\GladiatorEasy.png", "C:\GB\Utilities\GladiatorEasy.png", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\GladiatorHard.png", "C:\GB\Utilities\GladiatorHard.png", $FC_NOOVERWRITE)
#EndRegion Pliki do ³¹cznego kompilowania.

BasicVariables()
Func BasicVariables()
	Global $Work = False
	Global $ExpeditionsActivity = False
	Global $DungeonsActivity = False
	Global $ExpeditionsMaxPoints = -1
	Global $DungeonsMaxPoints = -1
	Global $ExpeditionsMinPoints = 0
	Global $DungeonsMinPoints = 0
	Global $ExpeditionsPoints = -1
	Global $DungeonsPoints = -1
	Global $ExpeditionsCoolDown = -1
	Global $DungeonsCoolDown = -1
	Global $ExpeditionsArea = ""
	Global $DungeonsArea = ""
	Global $Level = -1
	Global $Gold = -1
	Global $Rubys = -1
	Global $SH = ""
	Global $ExpeditionTime = "00:00:00"
	Global $DungeonTime = "00:00:00"
	Global $ArenaTime = "00:00:00"
	Global $CtTime = "00:00:00"
	Global $Location = ""
	Global $HP = -1
	Global $XP = -1
	Global $ExpeditionsINI = ""
	Global $HPCount1[2]
	Global $Mob = 0
	Global $DungeonTryb
	Global $DungeonQuests[20]
	Global $Zadanie[20]
	Global $ELP, $DLP
	Global $URLref = "abcd"
	Global $DungeonID, $DungeonNr
	Global $DMobNr
	Global $DungeonsType
EndFunc   ;==>BasicVariables

Const $PBST_NORMAL = 0x0001
Const $PBST_ERROR = 0x0002
Const $PBST_PAUSED = 0x0003

$oIE = _IECreateEmbedded()

#Region GUI
$Main = GUICreate("Gladiatus - Bot of Glory v0.0.00b By Genotypek", 1282, 746, -1, -1, $WS_MAXIMIZEBOX + $WS_MINIMIZEBOX + $WS_SIZEBOX)
$AccountName = GUICtrlCreateInput($Nick, 8, 8, 121, 21)
GUICtrlSendMsg(-1, $EM_SETCUEBANNER, 0, "Login")
$AccountPassword = GUICtrlCreateInput($Haslo, 8, 32, 121, 21, $ES_PASSWORD)
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
#EndRegion Zak³adka WWW

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
#EndRegion Zak³adka Wyprawy

#Region Zak³adka Lochy
$Ti4 = GUICtrlCreateTabItem("Lochy")
GUICtrlCreateGroup("Lochy", 11, 113, 1258, 598) ;Zak³adka Wyprawy

$PlikLogo = _GDIPlus_ImageLoadFromFile("C:\GB\Utilities\GG_Gladiatus_logo12.png")
$BitMapa = _GDIPlus_BitmapCreateHBITMAPFromBitmap($PlikLogo)
$MainLogo1 = GUICtrlCreatePic("", 187, 130, 350, 74)
GUICtrlSendMsg($MainLogo1, 0x0172, 0, $BitMapa)
$hRes = _SendMessage(GUICtrlGetHandle($MainLogo1), 0x0172, 0, $BitMapa)

_GDIPlus_ImageDispose($PlikLogo)
_WinAPI_DeleteObject($hRes)
_WinAPI_DeleteObject($BitMapa)

GUICtrlCreateGroup("Aktywnoœæ", 23, 133, 160, 70)
$Button_Dungeons_On = GUICtrlCreateButton("W³¹cz", 38, 153, 60, 20)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button_Dungeons_Off = GUICtrlCreateButton("Wy³¹cz", 108, 153, 60, 20)
GUICtrlSetState(-1, $GUI_DISABLE)
$Label_Dungeons_Activity = GUICtrlCreateLabel("Nieaktywne", 24, 180, 158, 20, $SS_CENTER)
GUICtrlSetColor($Label_Dungeons_Activity, 0xFF0000)
$DungeonsList = GUICtrlCreateListView("LP.|Data|Kraj|Lokacja|Potwór|Z³oto|Doœwiadczenie|S³awa|Wynik", 23, 400, 1233, 300, -1, $LVS_EX_FULLROWSELECT + $LVS_EX_GRIDLINES)
_GUICtrlListView_SetColumnWidth($DungeonsList, 0, 50)
_GUICtrlListView_SetColumnWidth($DungeonsList, 1, 150)
_GUICtrlListView_SetColumnWidth($DungeonsList, 2, 100)
_GUICtrlListView_SetColumnWidth($DungeonsList, 3, 175)
_GUICtrlListView_SetColumnWidth($DungeonsList, 4, 150)
_GUICtrlListView_SetColumnWidth($DungeonsList, 5, 90)
_GUICtrlListView_SetColumnWidth($DungeonsList, 6, 90)
_GUICtrlListView_SetColumnWidth($DungeonsList, 7, 90)
_GUICtrlListView_SetColumnWidth($DungeonsList, 8, 90)

GUICtrlCreateGroup("Poziom trudnoœci", 540, 125, 320, 260)
GUICtrlCreateGroup("Poziom trudnoœci", 540, 125, 160, 260)
$DungeonEasy = GUICtrlCreateRadio("Normalny", 550, 145, 125, 15, $BS_CENTER + $BS_TOP)
GUICtrlSetState(-1, $GUI_CHECKED)

$PlikLogo = _GDIPlus_ImageLoadFromFile("C:\GB\Utilities\GladiatorEasy.png")
$BitMapa = _GDIPlus_BitmapCreateHBITMAPFromBitmap($PlikLogo)
$PicEasy = GUICtrlCreatePic("", 550, 170, 140, 196)
GUICtrlSendMsg($PicEasy, 0x0172, 0, $BitMapa)
$hRes = _SendMessage(GUICtrlGetHandle($PicEasy), 0x0172, 0, $BitMapa)

_GDIPlus_ImageDispose($PlikLogo)
_WinAPI_DeleteObject($hRes)
_WinAPI_DeleteObject($BitMapa)

$DungeonHard = GUICtrlCreateRadio("Zaawansowany", 710, 145, 125, 15, $BS_CENTER + $BS_TOP)

$PlikLogo = _GDIPlus_ImageLoadFromFile("C:\GB\Utilities\GladiatorHard.png")
$BitMapa = _GDIPlus_BitmapCreateHBITMAPFromBitmap($PlikLogo)
$PicHard = GUICtrlCreatePic("", 710, 170, 137, 196)
GUICtrlSendMsg($PicHard, 0x0172, 0, $BitMapa)
$hRes = _SendMessage(GUICtrlGetHandle($PicHard), 0x0172, 0, $BitMapa)

_GDIPlus_ImageDispose($PlikLogo)
_WinAPI_DeleteObject($hRes)
_WinAPI_DeleteObject($BitMapa)
_GDIPlus_Shutdown()

GUICtrlCreateGroup("Œcie¿ka", 870, 125, 386, 260)
$DungeonMap = GUICtrlCreatePic("C:\GB\Utilities\L_0_0_0.jpg", 955, 149, 285, 216)
$DungeonFast = GUICtrlCreateRadio("Szybka", 885, 230)
GUICtrlSetState(-1, $GUI_CHECKED)
$DungeonFull = GUICtrlCreateRadio("Pe³na", 885, 260)

$DungeonNext = GUICtrlCreateGroup("Nastêpne lochy 0% (00:00:00)", 23, 313, 503, 72)
$DungeonBarNext = GUICtrlCreateProgress(33, 333, 483, 40)
GUICtrlCreateGroup("Miejsce lochów", 23, 213, 160, 90)
$DungeonLocationShow = GUICtrlCreateLabel("Kraj: ---", 32, 240, 140, 20)
$DungeonAreaChoice = GUICtrlCreateCombo("Zaloguj siê!", 32, 267, 140, 20, $CBS_DROPDOWNLIST)
GUICtrlCreateGroup("Limit", 192, 213, 334, 90)
$DungeonLimitLabel = GUICtrlCreateLabel("Pozostaw 0 / 0 punktów lochów.", 203, 280, 312, 16, $SS_CENTER)
$DungeonSlider = GUICtrlCreateSlider(203, 232, 312, 44, $TBS_BOTH)
GUICtrlSetLimit(-1, 0, 0)
GUICtrlSetBkColor(-1, 0xFFFFFF)
GUICtrlCreateTabItem("")
#EndRegion Zak³adka Lochy

#Region Zak³adka Log
$Ti3 = GUICtrlCreateTabItem("Log")
$MainLog = GUICtrlCreateEdit("", 6, 110, 1268, 577, $ES_MULTILINE + $ES_READONLY)
$OpenLogDir = GUICtrlCreateButton("Otwórz Folder Logów", 25, 692, 300, 20)
$OpenLogToday = GUICtrlCreateButton("Otwórz Dzisiejszy Log", 335, 692, 300, 20)
$DeleteAllLog = GUICtrlCreateButton("Usuñ Wszystkie Pliki Logów", 645, 692, 300, 20)
$ClearLog = GUICtrlCreateButton("Wyczyœæ Log Tej Sesji", 955, 692, 300, 20)
LogWrite("Gladiatus - Bot of Glory zosta³ uruchomiony!", True, True)
GUICtrlCreateTabItem("")
#EndRegion Zak³adka Log

#EndRegion Zak³adki

_IENavigate($oIE, "http://www.gladiatus.pl")
GUISetState(@SW_SHOW)
#EndRegion GUI

While 1
	$msg = GUIGetMsg()
	Select
		Case $msg = $GUI_EVENT_CLOSE
			If FileExists("C:\GB\Logs\[" & @MDAY & "-" & @MON & "-" & @YEAR & "].txt") Then
				Local $LOG = FileOpen("C:\GB\Logs\" & "[" & @MDAY & "-" & @MON & "-" & @YEAR & "].txt", 1)
				FileWrite($LOG, "[" & @HOUR & ":" & @MIN & ":" & @SEC & "] Gladiatus - Bot Of Glory zosta³ wy³¹czony!" & @CRLF & @CRLF)
				FileWrite($LOG, "-------------------------------------------------------------------------" & @CRLF & @CRLF)
				FileClose($LOG)
			EndIf
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
			;Local $a = _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext
			$ExpeditionsMaxPoints = _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext
			GUICtrlSetData($ExpeditionsLimitLabel, "Pozostaw " & $ExpeditionsMinPoints & " / " & $ExpeditionsMaxPoints & " punktów wypraw.")
			GUICtrlSetLimit($ExpeditionsSlider, $ExpeditionsMaxPoints, 0)

			GUICtrlSetState($Button_Dungeons_On, $GUI_ENABLE)
			;Local $a = _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext
			$DungeonsMaxPoints = _IEGetObjById($oIE, "dungeonpoints_value_pointmax").innertext
			GUICtrlSetData($DungeonLimitLabel, "Pozostaw " & $DungeonsMinPoints & " / " & $DungeonsMaxPoints & " punktów lochów.")
			GUICtrlSetLimit($DungeonSlider, $DungeonsMaxPoints, 0)
			;_IELoadWait($oIE)
			_IENavigate($oIE, StringReplace(_IEPropertyGet($oIE, "locationurl"), "login=1&", ""))
			$Work = Not $Work
			;Wyprawy
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

			;Lochy
		Case $msg = $Button_Dungeons_On
			GUICtrlSetData($Label_Dungeons_Activity, "Aktywne")
			GUICtrlSetColor($Label_Dungeons_Activity, 0x2F941B)
			GUICtrlSetState($Button_Dungeons_Off, $GUI_ENABLE)
			GUICtrlSetState($Button_Dungeons_On, $GUI_DISABLE)
			$DungeonsActivity = True
		Case $msg = $Button_Dungeons_Off
			GUICtrlSetData($Label_Dungeons_Activity, "Nieaktywne")
			GUICtrlSetColor($Label_Dungeons_Activity, 0xFF0000)
			GUICtrlSetState($Button_Dungeons_Off, $GUI_DISABLE)
			GUICtrlSetState($Button_Dungeons_On, $GUI_ENABLE)
			$DungeonsActivity = False

		Case $msg = $OpenLogDir
			ShellExecute("C:\GB\Logs")
		Case $msg = $OpenLogToday
			ShellExecute("C:\GB\Logs\[" & @MDAY & "-" & @MON & "-" & @YEAR & "].txt")
		Case $msg = $DeleteAllLog
			Local $Confirm = MsgBox($MB_YESNO + $MB_ICONWARNING, "Ostrze¿enie", "Jesteœ pewien, ¿e chcesz wykonaæ t¹ operacjê?" & @CRLF & "Wszystkie pliki logów zostan¹ skasowane.")
			If $Confirm = $IDYES Then
				Local $hFile = FileFindFirstFile("C:\GB\Logs\*")
				If $hFile <> -1 Then
					While 1
						Local $File = FileFindNextFile($hFile)
						If @error Then ExitLoop
						FileDelete("C:\GB\Logs\" & $File)
					WEnd
				EndIf
			EndIf
		Case $msg = $ClearLog
			GUICtrlSetData($MainLog, "")
			LogWrite("Log sesji zosta³ wyczyszczony!", False, True)
	EndSelect
	;Pêtla obs³uguj¹ca zmienne i uruchamiaj¹ca funkcje.
	If $Work Then
		Local $HPA, $XPA
		_IELoadWait($oIE)
		If _IEPropertyGet($oIE, 'locationurl') <> $URLref Then ;Or Not StringInStr(_IEBodyReadHTML($oIE), $HPA) Or Not StringInStr(_IEBodyReadHTML($oIE), $XPA) Then
			_IELoadWait($oIE)
			$BodyHTML = _IEBodyReadHTML($oIE)
			$URLref = _IEPropertyGet($oIE, 'locationurl')

			If StringInStr($BodyHTML, "Codzienny Bonus") Then
				Local $AcceptButton = _IEGetObjByAttr($oIE, "input", "type=submit|value=odbierz bonus")
				_IEAction($AcceptButton[0], 'click')
				LogWrite("Odebrano codzienny bonus!", True, True)
			EndIf

			If StringInStr($BodyHTML, "Osi¹gn¹³eœ poziom") Then
				Local $H1 = StringReplace($BodyHTML, StringLeft($BodyHTML, StringInStr($BodyHTML, "Osi¹gn¹³eœ poziom") - 1), "")
				Local $H2 = StringReplace($H1, StringRight($H1, StringLen($H1) - StringInStr($H1, "<IMG") + 1), "")
				Local $AcceptButton = _IEGetObjByAttr($oIE, "input", "type=submit|value=OK")
				_IEAction($AcceptButton[0], 'click')
				LogWrite($H2 & "z³ota!", True, True)
			EndIf

			$Location = "W podró¿y!"
			If StringInStr($BodyHTML, 'Mroczne Lasy') Then $Location = "Rzym"
			If StringInStr($BodyHTML, 'Œwi¹tynia Voodoo') Then $Location = "Afryka"
			If StringInStr($BodyHTML, 'Jaskiniowa Œwi¹tynia') Then $Location = "Germania"

			Local $LastLocation
			If $Location <> $LastLocation Then
				$LastLocation = $Location
				If $Location = "Rzym" Then
					GUICtrlSetData($ExpeditionLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($DungeonLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($ExpeditionAreaChoice, "", "")
					GUICtrlSetData($ExpeditionAreaChoice, "1. Mroczne Lasy|2. Port Piratów|3. Mgielne Góry|4. Wilcza Jama|5. Prastara Œwi¹tynia|6. Obóz Dzikusów|7. Obóz Bandytów", "1. Mroczne Lasy")
					GUICtrlSetData($DungeonAreaChoice, "", "")
					GUICtrlSetData($DungeonAreaChoice, "1. Wiejski Dom Gustawa|2. Ostatnia Deska Ratunku|3. Smocza Twierdza|4. Jaskinia Mrocznej Intrygi|5. Ukryty Grób|6. Na £asce Wroga", "1. Wiejski Dom Gustawa")
					$ExpeditionsINI = "C:\GB\Rome\Rzym.ini"
				EndIf
				If $Location = "Afryka" Then
					GUICtrlSetData($ExpeditionLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($DungeonLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($ExpeditionAreaChoice, "", "")
					GUICtrlSetData($ExpeditionAreaChoice, "Mroczne Lasy|Port Piratów|Mgielne Góry|Wilcza Jama|Prastara Œwi¹tynia|Obóz Dzikusów|Obóz Bandytów", "Mroczne Lasy")
					GUICtrlSetData($DungeonAreaChoice, "", "")
					GUICtrlSetData($DungeonAreaChoice, "Afryka", "Afryka")
					$ExpeditionsINI = "C:\GB\Africa\Afryka.ini"
				EndIf
				If $Location = "Germania" Then
					GUICtrlSetData($ExpeditionLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($DungeonLocationShow, "Kraj: " & $Location)
					GUICtrlSetData($ExpeditionAreaChoice, "", "")
					GUICtrlSetData($ExpeditionAreaChoice, "Jaskiniowa Œwi¹tynia|Zielony Las|Przeklêta Wioska|Wzgórze Œmierci|Wioska Wandali|Kopalnia|Obóz Teutonów|Góra Koman|Smocze Resztki", "Jaskiniowa Œwi¹tynia")
					GUICtrlSetData($DungeonAreaChoice, "", "")
					GUICtrlSetData($DungeonAreaChoice, "Germania", "Germania")
					$ExpeditionsINI = "C:\GB\Germania\Germania.ini"
				EndIf
			EndIf

			$HPA = StringRight($BodyHTML, StringLen($BodyHTML) - StringInStr($BodyHTML, "Punkty ¿ycia:") - 1)
			$HPA = StringLeft($HPA, StringInStr($HPA, "</td></tr>") - 1)
			$HPA = StringRight($HPA, StringLen($HPA) - StringInStr($HPA, "nowrap>") - 6)
			If $HPA <> $HP Then
				$HP = $HPA
				$HPcount = StringReplace($HP, " ", "")
				$HPCount1 = StringSplit($HPcount, "/")
				$HPpercent = ($HPCount1[1] / $HPCount1[2]) * 100
				$HPpercent = StringLeft($HPpercent, 5)
				GUICtrlSetData($HpAmountShow, "HP: " & $HP & " (" & $HPpercent & "%)")
				GUICtrlSendMsg($HpBar, $PBM_SETSTATE, $PBST_NORMAL, 0)
				GUICtrlSetData($HpBar, $HPpercent)
				GUICtrlSendMsg($HpBar, $PBM_SETSTATE, $PBST_ERROR, 0)
			EndIf
			$XPA = StringRight($BodyHTML, StringLen($BodyHTML) - StringInStr($BodyHTML, "Doœwiadczenie:") - 1)
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
					$DungeonsCoolDown = 1800
				ElseIf $ExpeditionsPoints <> 0 Then
					$ExpeditionsCoolDown = 300
					$DungeonsCoolDown = 300
				EndIf
				$ExpeditionsCoolDown = 300
				$DungeonsCoolDown = 300
			ElseIf $ExpeditionsMaxPoints <= 18 Then
				$Centurion = False
				If $ExpeditionsPoints = 0 Then
					$ExpeditionsCoolDown = 3600
					$DungeonsCoolDown = 3600
				ElseIf $ExpeditionsPoints <> 0 Then
					$ExpeditionsCoolDown = 600
					$DungeonsCoolDown = 600
				EndIf
			EndIf
		EndIf
		If GUICtrlRead($ExpeditionsSlider) <> $ExpeditionsMinPoints Or _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext <> $ExpeditionsMaxPoints Then
			_IELoadWait($oIE)
			$ExpeditionsMinPoints = GUICtrlRead($ExpeditionsSlider)
			$ExpeditionsMinPoints = Int($ExpeditionsMinPoints)
			$ExpeditionsPointsMax = _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext
			GUICtrlSetData($ExpeditionsLimitLabel, "Pozostaw " & $ExpeditionsMinPoints & " / " & $ExpeditionsMaxPoints & " punktów wypraw.")
		EndIf
		If GUICtrlRead($DungeonSlider) <> $DungeonsMinPoints Or _IEGetObjById($oIE, "dungeonpoints_value_pointmax").innertext <> $DungeonsMaxPoints Then
			_IELoadWait($oIE)
			$DungeonsMinPoints = GUICtrlRead($DungeonSlider)
			$DungeonsMinPoints = Int($DungeonsMinPoints)
			$DungeonsPointsMax = _IEGetObjById($oIE, "dungeonpoints_value_pointmax").innertext
			GUICtrlSetData($DungeonLimitLabel, "Pozostaw " & $DungeonsMinPoints & " / " & $DungeonsMaxPoints & " punktów lochów.")
		EndIf
		If _IEGetObjById($oIE, "expeditionpoints_value_point").innertext <> $ExpeditionsPoints Then
			_IELoadWait($oIE)
			$ExpeditionsPoints = _IEGetObjById($oIE, "expeditionpoints_value_point").innertext
		EndIf
		If _IEGetObjById($oIE, "dungeonpoints_value_point").innertext <> $DungeonsPoints Then
			_IELoadWait($oIE)
			$DungeonsPoints = _IEGetObjById($oIE, "dungeonpoints_value_point").innertext
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
		;Wyprawy
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
		;Lochy
		If _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext <> $DungeonTime Then
			_IELoadWait($oIE)
			$DungeonTime = _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext
			GUICtrlSetData($DungeonTimeShow, "Lochy: " & $DungeonTime)
			If $DungeonTime <> "Do lochów" And GUICtrlRead($Tab1, 1) = $Ti4 Then
				Local $Time = StringSplit($DungeonTime, ":")
				Local $TimeLeft = $Time[1] * 3600 + $Time[2] * 60 + $Time[3]
				GUICtrlSetData($DungeonNext, "Nastêpne lochy: " & Floor((($DungeonsCoolDown - $TimeLeft) / $DungeonsCoolDown) * 100) & "% (" & $DungeonTime & ")")
				Local $Percent
				If Floor((($DungeonsCoolDown - $TimeLeft) / $DungeonsCoolDown) * 100) <> $Percent And GUICtrlRead($Tab1, 1) = $Ti4 Then
					$Percent = Floor((($DungeonsCoolDown - $TimeLeft) / $DungeonsCoolDown) * 100)
					GUICtrlSetData($DungeonBarNext, Floor((($DungeonsCoolDown - $TimeLeft) / $DungeonsCoolDown) * 100))
				EndIf
			ElseIf $DungeonTime = "Do lochów" Then
				GUICtrlSetData($DungeonNext, "Nastêpne lochy 100%")
				GUICtrlSetData($DungeonBarNext, 100)
			EndIf
		EndIf
		If $ExpeditionTime = "Na wyprawê" And $ExpeditionsActivity And $HPCount1[1] > 25 Then
			If $ExpeditionsMinPoints > 0 And $ExpeditionsPoints > $ExpeditionsMinPoints Then
				Expedition()
			ElseIf $ExpeditionsMinPoints = 0 Then
				Expedition()
			EndIf
		EndIf
		If $DungeonTime = "Do lochów" And $DungeonsActivity Then
			If $DungeonsPoints > $DungeonsMinPoints Then Dungeon()
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
		If _IsChecked($DungeonFast) Then $DungeonsChooseType = "fast"
		If _IsChecked($DungeonFull) Then $DungeonsChooseType = "full"
		If GUICtrlRead($DungeonAreaChoice) <> $DungeonsArea Or $DungeonsChooseType <> $DungeonsType Then
			$DungeonsType = $DungeonsChooseType
			$DungeonsArea = GUICtrlRead($DungeonAreaChoice)
			Local $LocNr = StringLeft($DungeonsArea, 1)
			GUICtrlSetImage($DungeonMap, IniRead($ExpeditionsINI, $LocNr, "Dungeon" & $DungeonsType, "C:\GB\Utilities\L_0_0_0.jpg"))
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
	ExpeditionResult()
EndFunc   ;==>Expedition

Func Dungeon()
	_IELoadWait($oIE)
	Local $LocNr = StringLeft(GUICtrlRead($DungeonAreaChoice), 1)
	$LocNrr = IniRead($ExpeditionsINI, $LocNr, "DungeonLoc", "0")
	Local $S = StringReplace(GUICtrlRead($Server), "Prowincja ", "")
	_IENavigate($oIE, "http://s" & $S & ".pl.gladiatus.gameforge.com/game/index.php?mod=dungeon&loc=" & $LocNrr & "&sh=" & $SH) ;Uruchamianie strony z lochami.
	_IELoadWait($oIE)
	#Region ;Rozpoczynanie nowych lochów.
	If _IsChecked($DungeonEasy) Then
		Local $Easy = _IEGetObjByAttr($oIE, "input", "type=submit|name=dif1") ;Szukanie przycisku do otworzenia lochów, jeœli nie istnieje, znaczy, ze lochy s¹ juz otwarte.
		If _ArrayExtract($Easy) <> -1 Then
			_IEAction($Easy[0], 'click')
			LogWrite(IniRead($ExpeditionsINI, $LocNr, "DungeonName", "---") & ": Rozpoczêto normalne lochy!")
		EndIf
	EndIf
	If _IsChecked($DungeonHard) Then
		Local $Easy = _IEGetObjByAttr($oIE, "input", "type=submit|name=dif1") ;j/w
		Local $Hard = _IEGetObjByAttr($oIE, "input", "type=submit|name=dif2") ;j/w
		If _ArrayExtract($Hard) <> -1 Then
			_IEAction($Hard[0], 'click')
			LogWrite(IniRead($ExpeditionsINI, $LocNr, "DungeonName", "---") & ": Rozpoczêto zaawansowane lochy!")
		ElseIf _ArrayExtract($Easy) <> -1 Then
			_IEAction($Easy[0], 'click')
			LogWrite(IniRead($ExpeditionsINI, $LocNr, "DungeonName", "---") & ": Rozpoczêto normalne lochy - zaawansowane s¹ niedostêpne!")
		EndIf
	EndIf
	If _IsChecked($DungeonFast) Then $DungeonTryb = 0
	If _IsChecked($DungeonFull) Then $DungeonTryb = 1
	#EndRegion ;Rozpoczynanie nowych lochów.

	_IELoadWait($oIE)
	;Uruchamianie odpowiednich lochów
	If $Location = "Rzym" Then
		If $LocNr = 1 Then Lochy1Rzym() ;Wiejski dom Gustawa
		If $LocNr = 2 Then Lochy2Rzym() ;Ostatnia deska ratunku
	EndIf
EndFunc   ;==>Dungeon

#Region ;Inne Funkcje
Func ExpeditionResult()
	_IELoadWait($oIE, 500)
	Local $HTML = _IEBodyReadHTML($oIE)
	Local $Result = "Pora¿ka"
	Local $EarnGold = 0
	Local $EarnExp = 0
	Local $EarnHonor = 0
	Local $DealDamage = 0
	Local $TakeDamage = 0
	If $ELP = 0 Then $ELP = 1
	If _IsChecked($Mob1_Radio) Then $Mob = 0
	If _IsChecked($Mob2_Radio) Then $Mob = 1
	If _IsChecked($Mob3_Radio) Then $Mob = 2
	If _IsChecked($Mob4_Radio) Then $Mob = 3
	$HTML = StringReplace($HTML, StringLeft($HTML, StringInStr($HTML, 'reportHeader')), "")
	If StringInStr($HTML, "Zwyciêzca: " & GUICtrlRead($AccountName)) Then $Result = "Zwyciêstwo"
	If $Result = "Zwyciêstwo" Then
		Local $HTML1 = $HTML
		For $i = 1 To 2
			$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		Next
		;Przejœcie do linijki ze z³otem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "Zdoby³:") + 6), "")
		$EarnGold = StringReplace($HTML1, StringRight($HTML1, StringLen($HTML1) - StringInStr($HTML1, "<") + 1), "")
		$EarnGold = StringReplace($EarnGold, " ", "")
		$EarnGold = "+" & $EarnGold
		;Przejœcie do linijki z doœwiadczeniem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "otrzyma³") + 8), "")
		$EarnExp = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "pkt.") + 1), "")
		$EarnExp = StringReplace($EarnExp, " ", "")
		$EarnExp = "+" & $EarnExp
		;Przejœcie do linijki z honorem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "otrzyma³") + 8), "")
		$EarnHonor = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "honoru") + 1), "")
		$EarnHonor = StringReplace($EarnHonor, " ", "")
		$EarnHonor = "+" & $EarnHonor
		;Przejœcie do linijki z obrazeniemi bohatera
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "<TD>") + 3), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "<TD>") + 3), "")
		$DealDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "</TD>") + 1), "")
		$DealDamage = StringReplace($DealDamage, " ", "")
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, IniRead($ExpeditionsINI, $LocNr, "Mob" & $Mob + 1 & "Name", "?"))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "</TD>") + 4), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "</TD>") + 4), "")
		$TakeDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "</TD>") + 1), "")
		$TakeDamage = StringReplace($TakeDamage, " ", "")
		$TakeDamage = StringReplace($TakeDamage, "<TD>", "")
		$TakeDamage = StringReplace($TakeDamage, @CRLF, "")
	Else
		_IELoadWait($oIE)
		Local $HTML1 = $HTML
		For $i = 1 To 2
			$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		Next
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "<TD>") + 3), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "<TD>") + 3), "")
		$DealDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "</TD>") + 1), "")
		$DealDamage = StringReplace($DealDamage, " ", "")
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, IniRead($ExpeditionsINI, $LocNr, "Mob" & $Mob + 1 & "Name", "?"))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "</TD>") + 4), "")
		$HTML2 = StringReplace($HTML2, StringLeft($HTML2, StringInStr($HTML2, "</TD>") + 4), "")
		$TakeDamage = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "</TD>") + 1), "")
		$TakeDamage = StringReplace($TakeDamage, " ", "")
		$TakeDamage = StringReplace($TakeDamage, "<TD>", "")
		$TakeDamage = StringReplace($TakeDamage, @CRLF, "")
	EndIf
	_IELoadWait($oIE)
	GUICtrlCreateListViewItem($ELP & "|" & @HOUR & ":" & @MIN & ":" & @SEC & " " & @MDAY & "/" & @MON & "/" & @YEAR & "|" & $Location & "|" & IniRead($ExpeditionsINI, $LocNr, "Location", "?") & "|" & IniRead($ExpeditionsINI, $LocNr, "Mob" & $Mob + 1 & "Name", "?") & "|" & $EarnGold & "|" & $EarnExp & "|" & $EarnHonor & "|" & $DealDamage & "|" & $TakeDamage & "|" & $Result, $ExpeditionsList)
	LogWrite("Wykonano wyprawê!")
	LogWrite("Rezultat: " & $Result, True, False)
	LogWrite("Kraj: " & $Location, True, False)
	LogWrite("Lokacja: " & IniRead($ExpeditionsINI, $LocNr, "Location", "?"), True, False)
	LogWrite("Potwór: " & IniRead($ExpeditionsINI, $LocNr, "Mob" & $Mob + 1 & "Name", "?"), True, False)
	LogWrite("Zadane obra¿enia: " & $DealDamage, True, False)
	LogWrite("Otrzymanie obra¿enia: " & $TakeDamage, True, False)
	LogWrite("Zdobyte z³oto: " & $EarnGold, True, False)
	LogWrite("Zdobyte doœwiadczenie: " & $EarnExp, True, False)
	LogWrite("Zdobyty honor: " & $EarnHonor, True, False)
	$ELP += 1
EndFunc   ;==>ExpeditionResult

Func DungeonResult()
	_IELoadWait($oIE, 500)
	Local $HTML = _IEBodyReadHTML($oIE)
	Local $Result = "Pora¿ka"
	Local $EarnGold = 0
	Local $EarnExp = 0
	Local $EarnSlawa = 0
	If $DLP = 0 Then $DLP = 1
	If _IsChecked($Mob1_Radio) Then $Mob = 0
	If _IsChecked($Mob2_Radio) Then $Mob = 1
	If _IsChecked($Mob3_Radio) Then $Mob = 2
	If _IsChecked($Mob4_Radio) Then $Mob = 3
	$HTML = StringReplace($HTML, StringLeft($HTML, StringInStr($HTML, 'reportHeader')), "")
	If StringInStr($HTML, "Zwyciêzca: " & GUICtrlRead($AccountName)) Then $Result = "Zwyciêstwo"
	If $Result = "Zwyciêstwo" Then
		Local $HTML1 = $HTML
		For $i = 1 To 2
			$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		Next
		;Przejœcie do linijki ze z³otem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "Zdoby³:") + 6), "")
		$EarnGold = StringReplace($HTML1, StringRight($HTML1, StringLen($HTML1) - StringInStr($HTML1, "<") + 1), "")
		$EarnGold = StringReplace($EarnGold, " ", "")
		$EarnGold = "+" & $EarnGold
		;Przejœcie do linijki z doœwiadczeniem
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "otrzyma³") + 8), "")
		$EarnExp = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "pkt.") + 1), "")
		$EarnExp = StringReplace($EarnExp, " ", "")
		$EarnExp = "+" & $EarnExp
		;Przejœcie do linijki ze s³aw¹
		$HTML1 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, GUICtrlRead($AccountName))), "")
		$HTML2 = StringReplace($HTML1, StringLeft($HTML1, StringInStr($HTML1, "otrzyma³") + 8), "")
		$EarnSlawa = StringReplace($HTML2, StringRight($HTML2, StringLen($HTML2) - StringInStr($HTML2, "s³awy") + 1), "")
		$EarnSlawa = StringReplace($EarnSlawa, " ", "")
		$EarnSlawa = "+" & $EarnSlawa
	EndIf
	_IELoadWait($oIE)
	GUICtrlCreateListViewItem($DLP & "|" & @HOUR & ":" & @MIN & ":" & @SEC & " " & @MDAY & "/" & @MON & "/" & @YEAR & "|" & $Location & "|" & IniRead($ExpeditionsINI, $LocNr, "DungeonName", "?") & "|" & IniRead($ExpeditionsINI, $DungeonNr, "DMob" & $DungeonNr & "Name", "?") & "|" & $EarnGold & "|" & $EarnExp & "|" & $EarnSlawa & "|" & $Result, $DungeonsList)
	LogWrite("Wykonano Loch!")
	LogWrite("Rezultat: " & $Result, True, False)
	LogWrite("Kraj: " & $Location, True, False)
	LogWrite("Lokacja: " & IniRead($ExpeditionsINI, $DungeonNr, "DungeonName", "?"), True, False)
	LogWrite("Potwór: " & IniRead($ExpeditionsINI, $DungeonNr, "DMob" & $DungeonNr & "Name", "?"), True, False)
	LogWrite("Zdobyte z³oto: " & $EarnGold, True, False)
	LogWrite("Zdobyte doœwiadczenie: " & $EarnExp, True, False)
	LogWrite("Zdobyta s³awa: " & $EarnSlawa, True, False)
	$DLP += 1
EndFunc   ;==>DungeonResult

Func _IsChecked($idControlID)
	Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc   ;==>_IsChecked

Func LogWrite($LogText, $WriteToFile = True, $LogTimeVisible = True)
	Local $LogTime = "--------> "
	If $LogTimeVisible Then $LogTime = "[" & @HOUR & ":" & @MIN & ":" & @SEC & "] "
	Local $OldLogText = GUICtrlRead($MainLog)
	GUICtrlSetData($MainLog, $OldLogText & $LogTime & $LogText & @CRLF)
	If $WriteToFile Then Local $LOG = FileOpen("C:\GB\Logs\" & "[" & @MDAY & "-" & @MON & "-" & @YEAR & "].txt", 1)
	If $WriteToFile Then FileWrite($LOG, $LogTime & $LogText & @CRLF)
	If $WriteToFile Then FileClose($LOG)
EndFunc   ;==>LogWrite

Func DungeonQuest($z) ;Wyznaczanie postêpu w misjach dungeonu
	For $i = 0 To 19
		$DungeonQuests[$i] = ""
	Next
	For $i = 1 To $z
		Local $p = _IEBodyReadHTML($oIE)
		$p = StringReplace($p, StringLeft($p, StringInStr($p, $Zadanie[$i])), "")
		$p = StringReplace($p, StringLeft($p, StringInStr($p, "</span>")), "")
		$p = StringReplace($p, StringRight($p, StringLen($p) - StringInStr($p, "</span>")), "")
		If StringInStr($p, "niewykonany") Then
			$DungeonQuests[$i - 1] = 0
		Else
			$DungeonQuests[$i - 1] = 1
		EndIf
	Next
	Local $p = _IEBodyReadHTML($oIE)
	$p = StringReplace($p, StringLeft($p, StringInStr($p, "startFight")), "")
	$p = StringReplace($p, StringLeft($p, StringInStr($p, "'")), "")
	$p = StringReplace($p, StringLeft($p, StringInStr($p, "'")), "")
	$p = StringReplace($p, StringLeft($p, StringInStr($p, "'")), "")
	$p = StringReplace($p, StringRight($p, StringLen($p) - StringInStr($p, "'")), "")
	$DungeonID = StringReplace($p, "'", "")
	$DungeonNr = StringLeft(GUICtrlRead($DungeonAreaChoice), 1)
EndFunc   ;==>DungeonQuest
#EndRegion ;Inne Funkcje

#Region ;Funkcje z lochami
Func Lochy1Rzym()
	Local $Zadania = 2
	$Zadanie[1] = "Utoruj sobie drogê powalaj¹c grupê Szalonych siepaczy"
	$Zadanie[2] = "Utoruj sobie drogê na po³udnie"
	DungeonQuest($Zadania)
	If $DungeonsType = "fast" Then
		If $DungeonQuests[0] = 0 Then
			$DMobNr = 1
			_IENavigate($oIE, "javascript" & Chr(0x3a) & "startFight('"&$DMobNr&"', '" & $DungeonID & "')", 0)
		EndIf
		If $DungeonQuests[1] = 0 Then
			$DMobNr = 3
			_IENavigate($oIE, "javascript" & Chr(0x3a) & "startFight('"&$DMobNr&"', '" & $DungeonID & "')", 0)
		EndIf
			If $DungeonQuests[0] = 1 And $DungeonQuests[1] = 1 Then
				$DMobNr = 5
				_IENavigate($oIE, "javascript" & Chr(0x3a) & "startFight('"&$DMobNr&"', '" & $DungeonID & "')", 0)
			EndIf
	EndIf
	If $DungeonsType = "full" Then
		Local $HTM = _IEBodyReadHTML($oIE)
		MsgBox(0, Null, "xd")
		For $DMobNr = 1 to 5
			If StringInStr($HTM, "startFight('"&$DMobNr&"', '" & $DungeonID & "')") Then
				MsgBox(0, Null, $DMobNr)
				_IENavigate($oIE, "javascript" & Chr(0x3a) & "startFight('"&$DMobNr&"', '" & $DungeonID & "')", 0)
				ExitLoop
			EndIf
		Next
	EndIf
	DungeonResult()
EndFunc   ;==>Lochy1Rzym

Func Lochy2Rzym()

EndFunc
#EndRegion ;Funkcje z lochami

Func varDebug()
	$xxx = InputBox("Debugowanie", "wpisz nazwê zmiennej bez $")
	MsgBox(64, "Debugowanie", "Wartoœæ zmiennej $" & $xxx & @CRLF & "wynosi: " & Eval($xxx))
EndFunc   ;==>varDebug
