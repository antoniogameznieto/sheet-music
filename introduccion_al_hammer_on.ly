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
\key f \major
\time 4/4
	c8 d e g a c c c |
	\bar "|."
}

acordes = \chordmode {
     
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new ChordNames \acordes
		\new Staff \notas
		\new TabStaff \notas
	>>
}
