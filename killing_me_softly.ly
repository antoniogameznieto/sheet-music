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
	<c e a c>8 c' c c4 a8 e <d g a> |
	<d g a> <d f a>4. f8 g a c |
	

	\bar ":|." 
}


acordes = \chordmode {
	\powerChords
	a:m d:m g c a:m d g f c d:m b
 }

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
	    \new ChordNames \acordes
		\new Staff \uno
		\new TabStaff \uno
	>>
}