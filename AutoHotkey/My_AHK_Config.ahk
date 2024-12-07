#Requires AutoHotkey >=2.0
#SingleInstance Force
#Warn

SetWorkingDir A_ScriptDir

if not (A_IsAdmin)
{
    try
    {
        if A_IsCompiled
            Run '*RunAs "' A_ScriptFullPath '" /restart'
        else
            Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
    }
    ExitApp
}

A_HotkeyInterval := 2000
A_MaxHotkeysPerInterval := 200

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
	r::"
	e::~
    t:::
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
    w::Run("E:/Programming/C/wrun/build/wrun.exe")
#HotIf

#HotIf WinActive("DRAGON BALL Sparking! ZERO")
	XButton1::f
	XButton2::e
#HotIf
