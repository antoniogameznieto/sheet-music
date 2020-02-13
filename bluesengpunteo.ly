\version "2.18.2"

\layout{
	\context {
		\TabStaff
		stringTunings = #ukulele-tuning
	}
}

%--- Introducción de las notas ---%


uno = \relative c' {

\key c \major

\numericTimeSignature
\time 4/4
	c8 (d) e4 g8 a r4 |
	<c, e g\4 c> r4 r2
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



