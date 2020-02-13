\version "2.18.2"

\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}

%--- Introducción de las notas ---%


uno = \relative c' {

\key c \major

\numericTimeSignature
\time 4/4
	g8\4 g\4 g' g f f \tuplet 3/2 { d c d}
	\bar ":|." 
}



dos = \relative c' {

\key c \major

\numericTimeSignature
\time 4/4
	c8 c c' c ais ais \tuplet 3/2 { g f g} | 
	\bar ":|." 
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new Staff \uno
		\new TabStaff \uno
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \dos
		\new TabStaff \dos
	>>
}

