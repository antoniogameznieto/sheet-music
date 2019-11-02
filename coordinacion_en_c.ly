\version "2.18.2"
RH = #rightHandFinger

%--- Configuración ---%
\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g' c' e' a'>
	}
}

%--- Introducción de las notas ---%
notas = \relative c' {
	<c g'\4 >8 g'\4 c, g'\4 <d g\4> g\4 d g\4 |
	<g\4 e\3> g\4 e\3 g\4 <g\4 d> g\4 d g\4 |
	\bar "|."
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new Staff \notas
		\new TabStaff \notas
	>>
}
