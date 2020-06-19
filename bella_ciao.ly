\header {
  title = "Bella Ciao"
  subtitle = "Canción Popular Italiana"
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
\key c \major
\numericTimeSignature
\time 4/4
	r4 r r8 e a b
	c a r4 r8 e a b
	c a r4 r8 e a b
	c4 b8 a c4 b8 a
	\break
	e'4 e e8 e d e
	f f r4 r8 f e d
	f e r4 r8 e d c
	b4 e b c
	a2 r
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
