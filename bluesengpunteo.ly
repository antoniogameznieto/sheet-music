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
	g8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
  g,8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
  g,8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
  g,8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
	\bar ":|." 
  c8 c c' c ais ais \tuplet 3/2 { g f g}
  \bar ":..:" 
	g,8\4 g\4 g' g f f \tuplet 3/2 { d c d}
	\bar ":|."
  	d d d' d c c \tuplet 3/2 { a\2 g a\2} |
	c,8 c c' c ais ais \tuplet 3/2 { g f g} | 
	\bar ":|." 
  	g8\4 g\4 ais ais c c cis cis |
	d d cis cis c c ais ais
	\bar ":|." 
   <g, d' f b>1\fermata |
  <g c' dis a'>4 <g cis' e ais> <g d'' f b>2
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
