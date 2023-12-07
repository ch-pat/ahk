#SingleInstance, Force
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Launch when playing arknights, use `MsgBox %pause_x%, %pause_y%` to capture mouseposition to set variables
; Controls:
; X to pause
; Q to retreat selected operator
; Z to toggle game speed

pause_x := 1800
pause_y := 80


retreat_x := 890
retreat_y := 320


speed_x := 1644
speed_y := 80

x::
 {
   mousegetpos, start_x, start_y
   mouseclick, left, %pause_x%, %pause_y%, 1, 0
   mousemove, %start_x%, %start_y%, 0
 }
return


q::
 {
   mousegetpos, start_x, start_y
   mouseclick, left, %retreat_x%, %retreat_y%, 1, 0
   mousemove, %start_x%, %start_y%, 0
 }
return


z::
 {
   mousegetpos, start_x, start_y
   mouseclick, left, %speed_x%, %speed_y%, 1, 0
   mousemove, %start_x%, %start_y%, 0
 }
return