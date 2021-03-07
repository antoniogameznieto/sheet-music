\header {
  title = "Blues en A"
  subtitle = ""
  subsubtile = "a"
  tagline = ""  % removed
}
%--- Introducción de las notas ---%
uno = \relative c' {
\key a \major
\numericTimeSignature
\time 4/4
<a' e c g>8~ <a e cis g> \tuplet 3/2 {e8\3 cis'\1 e,\3} \tuplet 3/2 {dis\3 c'\1 dis,\3} \tuplet 3/2 {d\3 b'\1 d,\3} 
\acciaccatura c cis a' \tuplet 3/2 { <b\1 e,\2 d\3 gis,\4> <b\1 e,\2 d\3 gis,\4> <b\1 e,\2 d\3 gis,\4>} \tuplet 3/2 { <b\1 e,\2 d\3 gis,\4> <b\1 e,\2 d\3 gis,\4> <b\1 e,\2 d\3 gis,\4>} \tuplet 3/2 { <b\1 e,\2 d\3 gis,\4> <b\1 e,\2 d\3 gis,\4> <b\1 e,\2 d\3 gis,\4>} \break
<a e c g>8~ <a e cis g> <a e cis g> <a\1 fis\2 cis\3 g\4> <a\1 fis\2 cis\3 g\4> <a\1 g\2 cis,\3 g\4> <a\1 g\2 cis,\3 g\4> <a\1 fis\2 cis\3 g\4> <a\1 fis\2 cis\3 g\4>
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
	\tempo 4 = 60
}
}
