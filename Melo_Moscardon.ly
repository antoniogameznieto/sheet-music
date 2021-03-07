\header {
  title = "Ejercicio Sobre Melo Moscardón"
  subtitle = ""
  tagline = ""  % removed
}
%--- Introducción de las notas ---%
uno = \relative c' {
\key c \major
\numericTimeSignature
\time 2/4
	e16\3 dis d\4 cis\4 c\4 f\3 e\3 dis
	e16\3 dis d\4 cis\4 c\4 cis\4  d\4 dis 
	e16\3 dis d\4 cis\4 c\4 f\3 e\3 dis
	e16\3 dis d\4 cis\4 c\4 cis\4  d\4 dis \break
	a'\2 gis\2 g\3 fis\3 f\3 ais\2 a\2 gis\2
	a\2 gis\2 g\3 fis\3 f\3 fis\3 g\3 gis\2
	a\2 gis\2 g\3 fis\3 f\3 ais\2 a\2 gis\2
	a\2 gis\2 g\3 fis\3 f\3 fis\3 g\3 gis\2\break
	d'\1 cis\1 c\2 b\2 ais\2 dis\1 d\1 cis\1 
	d\1 cis\1 c\2 b\2 ais\2 b\2 c\2 cis\1
	d\1 cis\1 c\2 b\2 ais\2 dis\1 d\1 cis\1 
	d\1 cis\1 c\2 b\2 ais\2 b\2 c\2 cis\1
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
