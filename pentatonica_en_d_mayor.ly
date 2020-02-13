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
	<f a>8 c <f a> c 
	<f a> d <f a> d |
	<f bes> d <f bes> d 
	<e c'> c <e bes'> c |
	\bar ":|."
	<c f a>1
	\bar "|."
}

acordes = \chordmode {
    f2 d:m | bes c4 c:7 | f1 
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
