\header {
  title = "Tico Tico"
  composer = "Zequinha de Abreu "
  subsubtile = ""
  tagline = ##f 
}


%--- Introducción de las notas ---%
uno = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
\partial 8. e16\3 dis e\3 
f\3 e\3 r a\2 r  e\3 dis\3 e\3 f\3 e\3 r gis r e\3 dis\3 e\3
f\3 e\3 d' b gis e\3 d des\4 c\4 r4 a'16\2 gis g
f\3 a\2 r d r c a\2 f\3 e\3 a\2 r c\1 r c\1 b\1 ais\1
b b,\4 dis\3 fis\2 a c b ais b4 r16 e,\3 dis e\3 
f\3 e\3 r a\2 r  e\3 dis\3 e\3 f\3 e\3 r gis r e\3 dis\3 e\3
f\3 e\3 d' b gis e\3 d cis\4 c\4 r4 a'16\2 gis g
f\3 a\2 r d r c a\2 f\3 e\3 a\2 r c\1 r c\1 b\1 ais\1
b\1 e,\3 gis\2 b\1 e\1 d\1 c\1 b\1 a\1 r4 b16\1 a\1 gis\2
g c,\3 e\3 g\2 c,\3 e\3 g\2 gis\2 a\2 r f8\2 r16 b\1 a\1 gis\2
g b,\4 d f b,\4 d f g a\2 r e8 r16 c' c c
c b b b r a a a a r f f r b b b
b g g b a f f a g4 r16 b a gis
g c,\3 e\3 g c,\3 e\3 g gis a\2 r f8 r16 b a gis
g b,\4 d f b,\4 d f g a\2 r e8 r16 c'\2 b\2 ais\2
a\2 gis a\2 b\2 d c\2 b\2 c\2 e g,\3 c\2 e g r f e 
d c\2 b\2 a\2 g\3 f\3 e\3 d\4 c8\4 g\4 c4\4
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
  
\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}

\midi{}

}