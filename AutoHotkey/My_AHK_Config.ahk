#Requires AutoHotkey >=2.0
#SingleInstance Force
#Warn

SetWorkingDir A_ScriptDir

AppsKey::CapsLock
*CapsLock::return
*RAlt::return

#HotIf GetKeyState("CapsLock", "P")
    ,::[
	.::]
	j::Send("{Blind}{{}")
	k::Send("{Blind}{}}")
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
	'::Send("{Blind}{%}")
	[::Send("😂")
#HotIf

#HotIf GetKeyState("RAlt", "P")
	i::Up
	k::Down
	j::Left
	l::Right
	v::Backspace
	f::F11
#HotIf

#HotIf WinActive("DRAGON BALL Sparking! ZERO")
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
#HotIf
