#SingleInstance Force

RAlt::F14
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
	`;::_
	Space::Esc
	'::Send `%
	[::Send 😂
#If

#If GetKeyState("F14") 
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
#If

#If GetKeyState("LCtrl")
	LAlt & w::Run "E:\Programs\Scoop\apps\wezterm\20240203-110809-5046fc22\wezterm-gui.exe" 
#If
