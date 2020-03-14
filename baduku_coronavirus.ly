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
	r4 r4 r8 g a b |
	c2.\4 e4\3 |
	c2 g'8. f8. e8 |
	\slashedGrace e8\3\glissando f1\3 |
	r2 a4\2 b\2 |
	\slashedGrace bes8\glissando c4. a \slashedGrace c8\glissando d4
	b2\2 e4 d |
	c1
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