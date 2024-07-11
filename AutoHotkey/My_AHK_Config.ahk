SetCapsLockState "AlwaysOff"

CapsLock & ,::[
CapsLock & .::]
CapsLock & j::Send "{{}"
CapsLock & k::Send "{}}"
CapsLock & l::-
CapsLock & o::\
CapsLock & u::(
CapsLock & i::)
CapsLock & y::&
CapsLock & h::*
CapsLock & /::!
CapsLock & n::$
CapsLock & m::#
CapsLock & p::=
CapsLock & v::+
CapsLock & f::^
CapsLock & d::@
CapsLock & g::|
CapsLock & `;::_
CapsLock & Space::Esc
CapsLock & '::Send "%"
CapsLock & [::Send "😂"

RAlt::F14
#HotIf GetKeyState("RAlt", "P")
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

#HotIf GetKeyState("LCtrl", "P")
LAlt & w::Run "E:\Programs\Scoop\apps\wezterm\20240203-110809-5046fc22\wezterm-gui.exe"