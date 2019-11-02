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
	cis4 cis d dis |
	c4 c c c |
	c8_\RH #1 e_\RH #2 g,_\RH #1 c'_\RH #3 c, e g, c' |
	c, e gis, c' c, e gis, c' |
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