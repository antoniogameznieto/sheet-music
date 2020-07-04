\header {
  title = "Pink Panther"
  subtitle = "Henry Mancini"
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
\key g \major
\numericTimeSignature
\time 4/4
	r4 r4 r8 cis d dis
  e4\3 <g e g b>8 fis g4 <g e g b>8 dis
  e\3 fis g c b e,\3 g b
  <c, e ais g\4>2 r8 a' \tuplet 3/2 { g e d }
  e\3 e\3 r4 r8 cis d dis
  e4 <g e g b>8 fis g4 <g e g b>8 dis
  e\3 fis g c b g b e
  <c\4 g\3 ais dis>1
  \bar ":|."
  e,8\3 e2\3 r8 r4
}

acordes = \chordmode {
	%-- a1:m d:m g c a:m d g f c d:m bes a -- %
 }


%--- Partitura ---%
\score {
 \header {
      piece = ""
    }
	\new StaffGroup	
	<<
	    \new ChordNames \acordes
		\new Staff \uno
		\new TabStaff \uno
	>>
}

melody = \relative {
	\key e \minor
	\time 4/4
	<b e g b>8-. e'4 d8 b\2 a\2 g e |
	bes'( a) bes( a) bes( a) bes( a) |
	\tuplet 3/2 {g e d} e\3 e\3 r4 <b e g b>-.
	\tuplet 3/2 {g'8 e d} e\3 e\3 r4 <g, c e bes'>-. |
	\tuplet 3/2 {g'8 e d} e\3 e\3 r4 <a, dis fis b>8-. <g e' g b>~ |
	<g e' g b>2 r |
	\bar "|."
}

\score {
	<<
	\new Staff \melody
	\new TabStaff \melody
	>>
	\layout {
		\context {
		  \TabStaff
		  stringTunings = #tenor-ukulele-tuning
		}
	}
	\midi {
		\tempo 4 = 120
	}
}
