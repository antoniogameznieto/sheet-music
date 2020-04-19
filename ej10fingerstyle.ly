\header {
  title = "Ejercicio 10"
  subtitle = "Fingerstyle / Arpegio"
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