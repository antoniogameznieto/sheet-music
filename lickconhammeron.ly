\version "2.18.2"

\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g' c' e' a'>
	}
}

%--- Introducción de las notas ---%


uno = \relative c' {

\key c \major

\numericTimeSignature
\time 4/4
	c8 d8 e4 g8 a r4 |

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



