\version "2.18.2"

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
	g8\4 g\4 g' g f f \tuplet 3/2 { d c d}
	
	\bar ":|." 
}

dos = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	c8 c c' c ais ais \tuplet 3/2 { g f g}
  \bar ":..:" 
	g,8\4 g\4 g' g f f \tuplet 3/2 { d c d}
	\bar ":|." 
}


tres = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	d d d' d c c \tuplet 3/2 { a\2 g a\2} |
	c,8 c c' c ais ais \tuplet 3/2 { g f g} | 
	\bar ":|." 
}

cuatro = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	g8\4 g\4 ais ais c c cis cis |
	d d cis cis c c ais ais
	\bar ":|." 
}


cinco = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	g8\4 g\4 ais ais c c cis cis |
	d d cis cis c c ais ais
	\bar ":|." 
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new Staff \uno
		\new TabStaff \uno
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \dos
		\new TabStaff \dos
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \tres
		\new TabStaff \tres
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \cuatro
		\new TabStaff \cuatro
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \cinco
		\new TabStaff \cinco
	>>
}