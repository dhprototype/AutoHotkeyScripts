
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Handle left clicks on Windows 7 Taskbar by sending ctrl left click 
;so that when multiple instances of a program exist, the last used 
;window is restored instead of seeing the thumbnail previews
;*****************************************************************

  ~LButton::
    MouseGetPos, , , , control, 1
    if(control=="MSTaskListWClass1")
    {
      KeyWait, LButton, T0.5
      if !ErrorLevel
        Send ^{Click}
    }
  return
