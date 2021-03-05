\header {
  title = "Efrain Silva"
  subtitle = "Ejercicio Melodía 01"
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
\key d \major
\numericTimeSignature
\numericTimeSignature
\time 3/4
	r2 fis4 
	fis2 e4
	e2 d4
	d2 cis4
	cis2 b4\4
	b2 a4
	b2 g4

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
