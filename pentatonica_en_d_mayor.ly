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

\numericTimeSignature 
\key g \major
\numericTimeSignature
\time 4/4
	d4 e\3 fis a\2 |
	b4 d2. |
	d4 b a\2 fis |
	e\3 d2. 
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		
		\new Staff \notas
		\new TabStaff \notas
	>>
}
