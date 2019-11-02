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
	%---c8_\RH #1 e_\RH #2 g,_\RH #1 c'_\RH #3 c, e g, c' |---%
	c8_\RH #1 e_\RH #2 g\4_\RH #1 c_\RH #3 c, e g\4 c|
	c, e gis\4 c c, e gis\4 c |
	c, e a\4 c c, e a\4 c |
	c, e bes'\4 c c, e bes'\4 c |
	\bar "|."
}



%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
			\chords {
			c1| c1:aug | c1:6 | c1:7 |
		}
		\new Staff \notas
		\new TabStaff \notas
	>>
}