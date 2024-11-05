#SingleInstance Force
#NoEnv
#Warn
#MaxHotkeysPerInterval 200

SetWorkingDir %A_ScriptDir%

if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%"
return

AppsKey::CapsLock

*CapsLock::return

#If GetKeyState("CapsLock", "P")        
    ,::[
	.::]
	j::{
	k::}
	l::-
	o::\
	u::(
	i::)
	y::&
	h::*
	/::!
	n::$
	m::#
	p::=
	v::+
	f::^
	d::@
	g::|
	r::~
	e::"
	`;::_
	Space::Esc
	'::Send `%
	[::Send 😂
#If

#If GetKeyState("RAlt", "P") 
	i::Up
	k::Down
	j::Left
	l::Right
	v::Backspace
	f::F11
	LAlt & a::1
	LAlt & s::2
	LAlt & d::3
	LAlt & f::4
	LAlt & g::5
	LAlt & h::6
	LAlt & j::7
	LAlt & k::8
	LAlt & l::9
	LAlt & `;::0
#If

#If GetKeyState("LAlt", "P") 
	RAlt & a::1
	RAlt & s::2
	RAlt & d::3
	RAlt & f::4
	RAlt & g::5
	RAlt & h::6
	RAlt & j::7
	RAlt & k::8
	RAlt & l::9
	RAlt & `;::0
#If

#IfWinActive, DRAGON BALL Sparking! ZERO
	XButton1::f
	XButton2::e
	;e::
	;{
	;	Send, {w down}
	;	Sleep, 15
	;	Click, down
	;	Sleep, 75
	;	Send, {w up}
	;	Click, up
	;}
#IF
