\header {
  title = "Tico Tico"
  subtitle = "Zequinha de Abreu "
  subsubtile = ""
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
\key c \major
\numericTimeSignature
\time 4/4
\partial 4. e8\3 dis e\3 |
    f\3 e4\3 a8\2 ~ a e\3 dis\3 e\3 |
    f\3 e4\3 gis8 ~ gis e\3 dis\3 e\3 |
    f\3 e\3 d' b gis e\3 d des\4 | % aqui la ultima nota deberia ser un 6 en la cuerda cuatro pero no tira
    c2\4 r8 a'\2 aes g f\3 a4\2 d8 ~ d c\1 a\2 f\3 | % la primera debería ser un 5 en la cuerda cuatro pero no
    e\3 a4\2 c8 ~ c c b ais |
    b b,\4 dis fis\2 a c b a | % aqui me faltan tambien el cis
    b2 r |
    \bar "|."
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