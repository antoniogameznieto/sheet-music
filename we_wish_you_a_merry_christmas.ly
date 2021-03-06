\header {
  title = "We wish you a Merry Christmas"
  subtitle = "Villancico Tradicional"
  tagline = ""  % removed
}

\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}

%--- Introducción de las notas ---%
uno = \relative c' {
\key d \major
\numericTimeSignature
\numericTimeSignature
\time 3/4
	r2 a'4\2 
	<d, fis a d> d'8 e d cis
	<d, g b>
	
}

%--- Partitura ---%
\score {
 \header {
      piece = ""
    }
	\new StaffGroup	
	<<
		\new Staff \uno
		\new TabStaff \uno
	>>
}
