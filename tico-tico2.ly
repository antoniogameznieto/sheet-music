\header {
  title = "Tico Tico"
  subtitle = "Zequinha de Abreu "
  subsubtile = ""
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
\partial 4. e8\3 dis e\3 |
    f e4 a8 ~ a e dis e |
    f e4 gis8 ~ gis e dis e |
    f e d' b gis e d des |
    c2 r8 a' aes g f a4 d8 ~ d c a f |
    e a4 c8 ~ c c b ais |
    b cis, dis fis a c b a |
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

\layout {}
\midi {}