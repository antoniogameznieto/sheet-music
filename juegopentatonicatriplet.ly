\version "2.18.2"

\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g' c' e' a'>
	}
}

%--- Introducción de las notas ---%


uno = \relative c' {

\key g \major

\numericTimeSignature
\time 4/4
	\tuplet 3/2 { d8 e\3 fis\2 }
	\tuplet 3/2 { e\3 fis\2 a\2 }
	\tuplet 3/2 { fis\2 a\2 b\1 }
	\tuplet 3/2 { a\2 b\1 d\1 } |
	\tuplet 3/2 { d\1 b\1 a\2 }
	\tuplet 3/2 { b\1 a\2 fis\2 }
	\tuplet 3/2 { a\2 fis\2 e\3 }
	\tuplet 3/2 { fis\2 e\3 d } |	
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



