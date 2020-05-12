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
\key c \major
\numericTimeSignature
\time 4/4
	r4 r4 r8 cis d dis
  e4\3 <g e g b>8 fis g4 <g e g b>8 dis
  e\3 fis g
  % <g e' g b> fis' g
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