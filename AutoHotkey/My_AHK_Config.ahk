#SingleInstance Force
#NoEnv
#Warn
#MaxHotkeysPerInterval 200

SetWorkingDir %A_ScriptDir%

if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%"
return

AppsKey::CapsLock

*RAlt::return

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
	r::0
	q::1
	w::2
	e::3
	a::4
	s::5
	d::6
	z::7
	x::8
	c::9
	m::Run "E:\Programming\C\WRun\build\wrun.exe"
#If

#If GetKeyState("LCtrl", "P")
	LAlt & q::Run "E:\Programs\Scoop\apps\wezterm\20240203-110809-5046fc22\wezterm-gui.exe" 
#If

#IfWinActive, DRAGON BALL Sparking! ZERO
	XButton1::f
	XButton2::e
#IF