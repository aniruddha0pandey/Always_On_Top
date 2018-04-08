#include <MsgBoxConstants.au3>
#include <WinAPISysWin.au3>

SetWindowOnTop()

Func SetWindowOnTop()
   ; Assign a Local variable the handle of the cmd window (here cmd).
   Local $hWnd = WinGetHandle("C:\Windows\system32\cmd.exe", "")

   ; If the window does not exists, create one.
   If $hWnd Then
	  ; Apply the style
	  _WinAPI_SetWindowPos($hWnd, $HWND_TOP+$HWND_TOPMOST, 0, 0, 0, 0, BitOr($SWP_NOMOVE, $SWP_NOSIZE))
   Else
	  ; Run cmd
	  Run("cmd.exe")

	  ; Wait 2 seconds for the cmd window to appear.
	  WinWait("", "", 2)

	  $hWnd = WinGetHandle("C:\Windows\SYSTEM32\cmd.exe", "")

	  ; Apply the style
	  _WinAPI_SetWindowPos($hWnd, $HWND_TOP+$HWND_TOPMOST, 0, 0, 0, 0, BitOr($SWP_NOMOVE, $SWP_NOSIZE))
   EndIf
EndFunc
