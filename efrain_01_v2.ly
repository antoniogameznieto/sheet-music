\header {
  title = "Efrain Silva"
  subtitle = "Ejercicio Melodía 01"
  subsubtile = "a"
  tagline = ""  % removed
}
%--- Introducción de las notas ---%
uno = \relative c' {
\key d \major
\numericTimeSignature
\numericTimeSignature
\time 3/4
	\partial 4 fis4 \bar ".|:"
	\repeat volta 3 {
	fis2 e4
	e2 d4
	d2 cis4
	cis2 b4
	b2 a4
	a2 g4
	g2.~ 
	g2 g'4 \break
	g2 fis4
	fis2 e4
	e2 d4
	d2 cis4
	cis2.
	cis4 d4 e4
	fis2.~
	fis2 a4 \bar "||"
  	\mark \markup { \musicglyph #"scripts.segno" }
	a2 g4
	g2 fis4 \break
	fis2 e4
	d2 e4 
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
	}
	\alternative{
	{d2.~ d2 fis'4 \bar ":|."}
	{d,2.~ d2 e4 -"al signo."\bar ":|."}
	{d2. e2. fis2.\fermata \bar ":|."}
	}
	
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
\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}
\midi{
	\tempo 4 = 120
}
}
