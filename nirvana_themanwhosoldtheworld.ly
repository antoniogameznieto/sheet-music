\version "2.18.2"

\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}

%--- Introducción de las notas ---%
uno = \relative c' {
\key f \major
\numericTimeSignature
\time 4/4
	a'8\2 a\2 a\2 g~ g\2 a16\2 bes\2 a8\2 g\2 |
	a8\2 a\2 a\2 g~ g\2 a16\2 bes\2 a8\2 g\2 |
	a8\2 a\2 a\2 g~ g\2 a16\2 bes\2 a8\2 g\2 |
	a8\2 a\2 a\2 g~ g\2 a16\2 bes\2 a8\2 g\2 |
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