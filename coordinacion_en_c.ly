\version "2.18.2"
RH = #rightHandFinger

%--- Configuración ---%
\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g c' e' a'>
	}
}

%--- Introducción de las notas ---%
notas = \relative c' {
	<g_\RH #1 c_\RH #2 >8
	g_\RH #1
	c_\RH #2
	g_\RH #1
	<g d'> g d' g, |
	<g e'\3>8 g e'\3 g, <g d'> g d' g, |
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