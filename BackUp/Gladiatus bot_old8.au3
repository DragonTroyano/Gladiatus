#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=bin\Gladiatus Icon.ico
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

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

DirCreate("C:\GB")
DirCreate("C:\GB\Rome")
DirCreate("C:\GB\Africa")
DirCreate("C:\GB\Germania")
DirCreate("C:\GB\Utilities")

FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_1.jpg", "C:\GB\Rome\1_1_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_2.jpg", "C:\GB\Rome\1_1_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_3.jpg", "C:\GB\Rome\1_1_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_4.jpg", "C:\GB\Rome\1_1_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\0_0_0.jpg", "C:\GB\Utilities\0_0_0.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Level.bmp", "C:\GB\Utilities\Level.bmp", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Gold.bmp", "C:\GB\Utilities\Gold.bmp", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Ruby.bmp", "C:\GB\Utilities\Ruby.bmp", $FC_NOOVERWRITE)

BasicVariables()
Func BasicVariables()
	Global $Work = False
	Global $ExpeditionsActivity = False
	Global $ExpeditionsMaxPoints = -1
	Global $ExpeditionsMinPoints = 0
	Global $ExpeditionsPoints = -1
	Global $ExpeditionsCoolDown = -1
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
EndFunc   ;==>BasicVariables

Const $PBST_NORMAL = 0x0001
Const $PBST_ERROR = 0x0002
Const $PBST_PAUSED = 0x0003

$oIE = _IECreateEmbedded()

#Region ### START Koda GUI section ### Form=
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

$Tab1 = GUICtrlCreateTab(4, 88, 1274, 631)
GUICtrlCreateTabItem("WWW") ;Zak³adka WWW
$IE = GUICtrlCreateObj($oIE, 6, 110, 1268, 607)
GUICtrlCreateTabItem("Wyprawy")
GUICtrlCreateGroup("Wyprawy", 11, 113, 1258, 598) ;Zak³adka Wyprawy
GUICtrlCreateGroup("Aktywnoœæ", 23, 133, 160, 70)
$Button_Expeditions_On = GUICtrlCreateButton("W³¹cz", 38, 153, 60, 20)
GUICtrlSetState(-1, $GUI_DISABLE)
$Button_Expeditions_Off = GUICtrlCreateButton("Wy³¹cz", 108, 153, 60, 20)
GUICtrlSetState(-1, $GUI_DISABLE)
$Label_Expeditions_Activity = GUICtrlCreateLabel("Nieaktywne", 24, 180, 158, 20, $SS_CENTER)
GUICtrlSetColor($Label_Expeditions_Activity, 0xFF0000)
$ExpeditionsList = GUICtrlCreateListView("LP.|Data|Kraj|Lokacja|Potwór|Z³oto|Doœwiadczenie|Zadano DMG|Otrzymano DMG|Wynik", 23, 400, 1233, 300, -1, $LVS_EX_FULLROWSELECT + $LVS_EX_GRIDLINES)
For $i = 1 To 40
	GUICtrlCreateListViewItem("1|21:45:02 24/09/2014|Germania|Jaskiniowa Œwi¹tynia|Szczur|+74|+2|212|17|Zwyciêstwo", $ExpeditionsList)
Next
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 0, 50)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 1, 200)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 2, 125)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 3, 175)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 4, 150)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 5, 100)
_GUICtrlListView_SetColumnWidth($ExpeditionsList, 9, 90)
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
$NextExpedition = GUICtrlCreateGroup("Nastêpna wyprawa 0% (00:00:00)", 23, 313, 503, 72)
$NextExpeditionBar = GUICtrlCreateProgress(33, 333, 483, 40)
GUICtrlCreateGroup("Miejsce wyprawy", 23, 213, 160, 90)
GUICtrlCreateLabel("Kraj: ---", 32, 240, 140, 20)
GUICtrlCreateCombo("Zaloguj siê!", 32, 267, 140, 20, $CBS_DROPDOWNLIST)
GuiCtrlCreateGroup("Limit", 192, 213, 334, 90)
$ExpeditionsLimitLabel = GUICtrlCreateLabel("Pozostaw 0 / 0 punktów wypraw.", 203, 280, 312, 16, $SS_CENTER)
GUICtrlCreateTabItem("")
$ExpeditionsSlider = GUICtrlCreateSlider(203, 232, 312, 44, $TBS_BOTH)
GUICtrlSetLimit(-1, 0, 0)
GUICtrlSetBkColor(-1, 0xFFFFFF)
_IENavigate($oIE, "http://www.gladiatus.pl")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

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
			If StringInStr(_IEBodyReadHTML($oIE), 'Mroczne Lasy') Then $Location = "Rzym"
			If StringInStr(_IEBodyReadHTML($oIE), 'Œwi¹tynia Voodoo') Then $Location = "Afryka"
			If StringInStr(_IEBodyReadHTML($oIE), 'Jaskiniowa Œwi¹tynia') Then $Location = "Germania"
			GUICtrlSetState($Button_Expeditions_On, $GUI_ENABLE)
			Local $a = _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext
;			If  $a = "Na wyprawê" Then
;				GUICtrlSetData($NextExpedition, "Nastêpna wyprawa 100% (Na wyprawê)")
;				GUICtrlSetData($NextExpeditionBar, 100)
;			EndIf
			$ExpeditionsMaxPoints = _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext
			GUICtrlSetData($ExpeditionsLimitLabel, "Pozostaw "&$ExpeditionsMinPoints&" / "&$ExpeditionsMaxPoints&" punktów wypraw.")
			GUICtrlSetLimit($ExpeditionsSlider, $ExpeditionsMaxPoints, 0)
			$Work = Not $Work
		Case $msg = $Button_Expeditions_On
			GUICtrlSetData($Label_Expeditions_Activity, "Aktywne")
			GUICtrlSetColor($Label_Expeditions_Activity, 0x2F941B)
			GUICtrlSetState($Button_Expeditions_Off, $GUI_ENABLE)
			GUICtrlSetState($Button_Expeditions_On, $GUI_DISABLE)
		Case $msg = $Button_Expeditions_Off
			GUICtrlSetData($Label_Expeditions_Activity, "Nieaktywne")
			GUICtrlSetColor($Label_Expeditions_Activity, 0xFF0000)
			GUICtrlSetState($Button_Expeditions_Off, $GUI_DISABLE)
			GUICtrlSetState($Button_Expeditions_On, $GUI_ENABLE)
	EndSelect
	If $Work Then
		Local $HPA, $XPA, $URLref
		_IELoadWait($oIE)
		If _IEPropertyGet($oIE, 'locationurl') <> $URLref Then
			_IELoadWait($oIE)
			$URLref = _IEPropertyGet($oIE, 'locationurl')
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
		EndIf
		If GUICtrlRead($ExpeditionsSlider) <> $ExpeditionsMinPoints Or _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext <> $ExpeditionsMaxPoints Then
			_IELoadWait($oIE)
			$ExpeditionsMinPoints = GUICtrlRead($ExpeditionsSlider)
			$ExpeditionsPointsMax = _IEGetObjById($oIE, "expeditionpoints_value_pointmax").innertext
			GUICtrlSetData($ExpeditionsLimitLabel, "Pozostaw "&$ExpeditionsMinPoints&" / "&$ExpeditionsMaxPoints&" punktów wypraw.")
		EndIf
		If _IEGetObjById($oIE, "expeditionpoints_value_point") <> $ExpeditionsPoints Then
			_IELoadWait($oIE)
			$ExpeditionsPoints = _IEGetObjById($oIE, "expeditionpoints_value_point")
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
		If $ExpeditionsMaxPoints <> "12" Then
			$Centurion = True
			$ExpeditionsCoolDown = 300
		Else
			$Centurion = False
			$ExpeditionsCoolDown = 600
		EndIf
	EndIf
WEnd
