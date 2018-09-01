#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
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

DirCreate("C:\GB")
DirCreate("C:\GB\Rome")
DirCreate("C:\GB\Africa")
DirCreate("C:\GB\Germania")
DirCreate("C:\GB\Utilities")

FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_1.jpg", "C:\GB\Rome\1_1_1.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_2.jpg", "C:\GB\Rome\1_1_2.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_3.jpg", "C:\GB\Rome\1_1_3.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\1_1_4.jpg", "C:\GB\Rome\1_1_4.jpg", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Level.bmp", "C:\GB\Utilities\Level.bmp", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Gold.bmp", "C:\GB\Utilities\Gold.bmp", $FC_NOOVERWRITE)
FileInstall("C:\Users\Mateusz\Desktop\Skrypty\AutoIT3 skrypty\Gladiatus Bot\bin\Ruby.bmp", "C:\GB\Utilities\Ruby.bmp", $FC_NOOVERWRITE)

BasicVariables()
Func BasicVariables()
	Global $Work = False
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
$HpBar = GUICtrlCreateProgress(192, 28, 198, 9)
$XpAmountShow = GUICtrlCreateLabel("XP: 0 / 0 (0%)", 192, 44, 198, 17)
$XpBar = GUICtrlCreateProgress(192, 60, 198, 9)
GUICtrlCreateGroup("", 184, 0, 225, 80)
GUICtrlCreateGroup("", 416, 0, 161, 81)
$GoldImg = GUICtrlCreatePic("c:\GB\Utilities\Level.bmp", 427, 15, 16, 16)
$GoldImg = GUICtrlCreatePic("c:\GB\Utilities\Gold.bmp", 428, 37, 13, 13)
$GoldImg = GUICtrlCreatePic("c:\GB\Utilities\Ruby.bmp", 428, 57, 12, 12)
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
GUICtrlCreateTabItem("WWW")
$IE = GUICtrlCreateObj($oIE, 6, 110, 1268, 607)
GUICtrlCreateTabItem("Wyprawa")
$Mob1 = GUICtrlCreatePic("c:\GB\Rome\1_1_1.jpg", 300, 300, 168, 194)
$Mob2 = GUICtrlCreatePic("c:\GB\Rome\1_1_2.jpg", 470, 300, 168, 194)
$Mob3 = GUICtrlCreatePic("c:\GB\Rome\1_1_3.jpg", 640, 300, 168, 194)
$Mob4 = GUICtrlCreatePic("c:\GB\Rome\1_1_4.jpg", 810, 300, 168, 194)
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
			If GUICtrlRead($AccountName) = "" Or GUICtrlRead($AccountPassword) = "" Or GUICtrlRead($Server) = "Wybierz Prowincjê" Then
				MsgBox(16, "B³¹d!", "Nie podano wszystkich danych,"&@CRLF&"uzupe³nij je!")
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
			MsgBox(0, Null, $Location)
			$Work = Not $Work
	EndSelect
	If $Work Then
		Local $HPA, $XPA, $URLref
		_IELoadWait($oIE)
		If _IEPropertyGet($oIE, 'locationurl') <> $URLref Then
			$URLref = _IEPropertyGet($oIE, 'locationurl')
			$HPA = StringRight(_IEBodyReadHTML($oIE), StringLen(_IEBodyReadHTML($oIE))-StringInStr(_IEBodyReadHTML($oIE), "Punkty ¿ycia:")-1)
			$HPA = StringLeft($HPA, StringInStr($HPA, "</td></tr>")-1)
			$HPA = StringRight($HPA, StringLen($HPA)-StringInStr($HPA, "nowrap>")-6)
			If $HPA <> $HP Then
				$HP = $HPA
				$HPcount = StringReplace($HP, " ", "")
				MsgBox(0, Null, $HPcount)
				$HPcount1 = StringSplit($HPcount, "/")
				$HPpercent = $HPcount1[1]/$HPcount1[2]*100
				$HPPercent = StringLeft($HPpercent, 5)
				GUICtrlSetData($HpAmountShow, "HP: "&$HP&" ("&$HPpercent&"%)")
			EndIf
			$XPA = StringRight(_IEBodyReadHTML($oIE), StringLen(_IEBodyReadHTML($oIE))-StringInStr(_IEBodyReadHTML($oIE), "Doœwiadczenie:")-1)
			$XPA = StringLeft($XPA, StringInStr($XPA, "</td></tr>")-1)
			$XPA = StringRight($XPA, StringLen($XPA)-StringInStr($XPA, "nowrap>")-6)
			If $XPA <> $XP Then
				$XP = $XPA
				MsgBox(0, Null, "."&$XP&".")
				$XPcount = StringReplace($XP, " ", "")
				MsgBox(0, Null, $XPcount)
				$XPcount1 = StringSplit($XPcount, "/")
				_ArrayDisplay($XPcount1)
				$XPpercent = $HPcount1[1]/$XPcount1[2]*100
				$XPPercent = StringLeft($XPpercent, 5)
				GUICtrlSetData($XpAmountShow, "XP: "&$XP&" ("&$XPpercent&"%)")
			EndIf
		EndIf
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
		If _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext <> $ExpeditionTime Then
			$ExpeditionTime = _IEGetObjById($oIE, "cooldown_bar_text_expedition").innertext
			GUICtrlSetData($ExpeditionTimeShow, "Wyprawa: " & $ExpeditionTime)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext <> $DungeonTime Then
			$DungeonTime = _IEGetObjById($oIE, "cooldown_bar_text_dungeon").innertext
			GUICtrlSetData($DungeonTimeShow, "Lochy: " & $DungeonTime)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_arena").innertext <> $ArenaTime Then
			$ArenaTime = _IEGetObjById($oIE, "cooldown_bar_text_arena").innertext
			GUICtrlSetData($ArenaTimeShow, "Arena: " & $ArenaTime)
		EndIf
		If _IEGetObjById($oIE, "cooldown_bar_text_ct").innertext <> $CtTime Then
			$CtTime = _IEGetObjById($oIE, "cooldown_bar_text_ct").innertext
			GUICtrlSetData($CtTimeShow, "Circus Turma: " & $CtTime)
		EndIf
	EndIf
WEnd
