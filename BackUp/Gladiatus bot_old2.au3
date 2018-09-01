#include <IE.au3>
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <ProgressConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>

Func BasicVariables()
Global $Work = False
Global $Level = -1
Global $Gold = -1
Global $Rubys = -1
Global $SH = ""
Global $ExpeditionTime = "00:00:00"
Global $DungeonTime = "00:00:00"
Global $ArenaTime  = "00:00:00"
Global $CtTime = "00:00:00"
EndFunc

$oIE = _IECreateEmbedded()

#Region ### START Koda GUI section ### Form=
$Main = GUICreate("Gladiatus Bot", 1281, 721, 296, 272)
$AccountName = GUICtrlCreateInput("", 8, 8, 121, 21)
GUICtrlSendMsg(-1, $EM_SETCUEBANNER, 0, "Login")
$AccountPassword = GUICtrlCreateInput("", 8, 32, 121, 21, $ES_PASSWORD)
GUICtrlSendMsg(-1, $EM_SETCUEBANNER, 0, "Has³o")
$Server = GUICtrlCreateCombo("", 8, 56, 121, 25, $CBS_DROPDOWNLIST + $WS_VSCROLL)
GUICtrlSetData($Server, "Wybierz Prowincjê|Prowincja 1|Prowincja 5|Prowincja 9|Prowincja 13|Prowincja 17|Prowincja 21|Prowincja 25|Prowincja 26|Prowincja 27", "Wybierz Prowincjê")
$Button_Start = GUICtrlCreateButton("START", 136, 8, 19, 73, $BS_MULTILINE + $BS_CENTER)
$Button_Stop = GUICtrlCreateButton("STOP", 161, 8, 19, 73, $BS_MULTILINE + $BS_CENTER)
GUICtrlSetState(-1, $GUI_DISABLE)
$Label1 = GUICtrlCreateLabel("Zdrowie: 0 / 0 (0%)", 192, 12, 198, 17)
$Progress1 = GUICtrlCreateProgress(192, 28, 198, 9)
$Label2 = GUICtrlCreateLabel("XP: 0 / 0 (0%)", 192, 44, 198, 17)
$Progress2 = GUICtrlCreateProgress(192, 60, 198, 9)
$Group1 = GUICtrlCreateGroup("", 184, 0, 225, 80)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("", 416, 0, 161, 81)
$LevelAmount = GUICtrlCreateLabel("Poziom: 0", 424, 16, 151, 17)
$GoldAmount = GUICtrlCreateLabel("Z³oto: 0", 424, 36, 151, 17)
$RubysAmount = GUICtrlCreateLabel("Rubiny: 0", 424, 56, 151, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group3 = GUICtrlCreateGroup("", 584, 0, 337, 81)
$Label6 = GUICtrlCreateLabel("Wyprawa: 00:00:00", 592, 16, 117, 17)
$Label7 = GUICtrlCreateLabel("Lochy: 00:00:00", 592, 54, 94, 17)
$Label8 = GUICtrlCreateLabel("Arena: 00:00:00", 736, 16, 82, 17)
$Group4 = GUICtrlCreateGroup("", 728, 0, 193, 81)
$Label9 = GUICtrlCreateLabel("Circus Turma: 00:00:00", 736, 54, 151, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$Tab1 = GUICtrlCreateTab(4, 88, 1274, 625)
GUICtrlCreateTabItem("WWW")
$IE = GUICtrlCreateObj($oIE, 6, 110, 1268, 700)
GUICtrlCreateTabItem("Wyprawa")
GUICtrlCreateTabItem("")

_IENavigate($oIE, "http://www.gladiatus.pl")

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$msg = GUIGetMsg()
	Select
		Case $msg = $GUI_EVENT_CLOSE
			Exit
		Case $msg = $Button_Start
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
			$Work = Not $Work
	EndSelect
	If $Work Then
		If _IEGetObjById($oIE, "sstat_gold_val").innertext <> $Gold Then
			$Gold = _IEGetObjById($oIE, "sstat_gold_val").innertext
			GUICtrlSetData($GoldAmount, "Z³oto: " & $Gold)
		EndIf
		If _IEGetObjById($oIE, "sstat_ruby_val").innertext <> $Rubys Then
			$Rubys = _IEGetObjById($oIE, "sstat_ruby_val").innertext
			GUICtrlSetData($RubysAmount, "Rubiny: " & $Rubys)
		EndIf
		If _IEGetObjById($oIE, "header_values_level").innertext <> $Level Then
			$Level = _IEGetObjById($oIE, "header_values_level").innertext
			GUICtrlSetData($LevelAmount, "Poziom: " & $Level)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext <> $Level Then
			$Level = _IEGetObjById($oIE, "header_values_level").innertext
			GUICtrlSetData($LevelAmount, "Poziom: " & $Level)
		EndIf
		If _IEGetObjById($oIE, "header_values_level").innertext <> $Level Then
			$Level = _IEGetObjById($oIE, "header_values_level").innertext
			GUICtrlSetData($LevelAmount, "Poziom: " & $Level)
		EndIf
		If _IEGetObjById($oIE, "header_values_level").innertext <> $Level Then
			$Level = _IEGetObjById($oIE, "header_values_level").innertext
			GUICtrlSetData($LevelAmount, "Poziom: " & $Level)
		EndIf
		If _IEGetObjById($oIE, "header_values_level").innertext <> $Level Then
			$Level = _IEGetObjById($oIE, "header_values_level").innertext
			GUICtrlSetData($LevelAmount, "Poziom: " & $Level)
		EndIf
	EndIf
WEnd