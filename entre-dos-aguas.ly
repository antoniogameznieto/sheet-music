\header {
  title = "Entre dos aguas"
  composer = "Paco de Lucía"
  subsubtile = ""
  tagline = ##f 
}


%--- Introducción de las notas ---%
uno = \relative c' {
\key g \major
\numericTimeSignature
\time 4/4
r2. r8 g'
g8 (fis) fis (e) e d4 d8~ 
d c4 c8 d e fis g
a g g (fis) fis4 fis8 fis

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