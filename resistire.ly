\header {
  title = "Resistiré"
  subtitle = "Dúo Dinámico"
  subsubtile = "a"
  tagline = ""  % removed
}
\layout{
	\context {
		\TabStaff
		stringTunings = #ukulele-tuning
	}
}

%--- Introducción de las notas ---%
uno = \relative c' {
\key a \minor
\numericTimeSignature
\time 4/4

	b'1
	b8 c b c b c b16 c8.
	a1
	a8 b a b a b a16 b8.
	

	\bar ":|." 
}

acordesdos = \chordmode {
	%d1 d:maj7 d:7 g g:m d a2 a:7 d1 
 }
%--- Partitura ---%
\score {
 \header {
      piece = "Intro"
    }
	\new StaffGroup	
	
	<<
		\new ChordNames \acordesdos
		\new Staff \uno
		\new TabStaff \uno
	>>
}