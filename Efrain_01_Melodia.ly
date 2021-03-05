\header {
  title = "Efrain Silva"
  subtitle = "Ejercicio Melodía 01"
  subsubtile = "a"
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
	r2 fis4 
	fis2 e4
	e2 d4
	d2 cis4
	cis2 b4
	b2 a4
	a2 g4
	g2.~ 
	g2 g'4
	g2 fis4
	fis2 e4
	e2 d4
	d2 cis4
	cis2.
	cis4 d4 e4
	fis2.~
	fis2 a4
	a2 g4
	g2 fis4
	fis2 e4
	dis2 e4 %--- Efrain dice que d2 tiene que ser 3, pero me sale dos en lilypond, asi que meto un sostenido ---%
	fis2 g4
	g2 fis4
	e2.~
	e2 e4
	e2 d4
	d2 e4
	e2 d4 
	d2 e4
	fis2.
	e2.
	dis2.~ %--- Efrain dice que d2 tiene que ser 3, pero me sale dos en lilypond, asi que meto un sostenido ---%
	dis2 fis4
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
