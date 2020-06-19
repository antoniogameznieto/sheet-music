\header {
  title = "Quizás, quizás, quizás"
  subtitle = "Osvaldo Farrés"
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
	r4. e8 f e dis e
	c'2 r8 a c a  
	b2 r8 gis b gis
	a4.\2 e8 e2
	\break
	r2 r8 gis b gis
	a4.\2 b8 c4. d8
	e4. d8 c4. b8
	a1
	\break
	r1 
	\tuplet 3/2 {e'4 e e} \tuplet 3/2 {e e c} 
	d4. c8 b4. gis8
	a4.\2 e2 r8 
	\break
	r2 r8 gis b gis
	a4.\2 b8 c4. d8
	e4. d8 c4. b8
	a1
	\bar "|" 
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
