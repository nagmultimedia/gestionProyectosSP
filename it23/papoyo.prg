set confirm on
set century on
set century to 10 rollover 95
set deleted on
set escape off
set exclusive off
set notify off
set resource off
set safety off
set optimize on
set scoreboard off
set reprocess to Automatic
set status off
set status bar off
set sysmenu off
set talk off
hide menu all
clear all
clear
clear events

_screen.windowstate=2
_screen.visible=.f.
_screen.lockscreen=.f.
Application.visible=.f.

Do form "F:\000-I+D\01-SP\SP\iniciooff.scx"

Application.visible=.t.
_screen.visible=.t.
_screen.lockscreen=.t.
read events
close all
release all
cancel
set sysmenu to default
return