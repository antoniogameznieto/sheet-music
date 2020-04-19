
\layout{
	\context {
		\TabStaff
		stringTunings = #ukulele-tuning
	}
}

%--- Introducción de las notas ---%
uno = \relative c' {
\key b \minor
\numericTimeSignature
\time 4/4

	\tuplet 4/4 {d'8 fis, d a'\4} \tuplet 4/4 {d8 fis, d a'\4}
	\tuplet 4/4 {cis8 fis, d a'\4} \tuplet 4/4 {cis8 fis, d a'\4}
	\tuplet 4/4 {c8 fis, d a'\4} \tuplet 4/4 {c8 fis, d a'\4}
	\tuplet 4/4 {b g d g\4} \tuplet 4/4 {b g d g\4} 
	\tuplet 4/4 {ais g d g\4} \tuplet 4/4 {ais g d g\4} 
	\tuplet 4/4 {a fis d a'\4} \tuplet 4/4 {a fis d a'\4}
	\tuplet 4/4 {a e cis a'\4} \tuplet 4/4 {cis g e\3 a\4}
	\tuplet 4/4 {d fis, d a'\4} d2
	% g8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
	% g,8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
	% g,8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
	% g,8\4 g\4 g' g f f \tuplet 3/2 { d c d} |
	% \bar ":|." 
	% c8 c c' c ais ais \tuplet 3/2 { g f g}
  	% \bar ":..:" 
	% g,8\4 g\4 g' g f f \tuplet 3/2 { d c d}
	% \bar ":|."
  	% d d d' d c c \tuplet 3/2 { a\2 g a\2} |
	% c,8 c c' c ais ais \tuplet 3/2 { g f g} | 
	% \bar ":|." 
  	% g,8\4 g\4 ais ais c c cis cis |
	% d d cis cis c c ais ais
	% \bar ":|." 
   	% <g d' f b>1\fermata |
  	% <g c' dis a'>4 <g cis' e ais> <g d'' f b>2
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