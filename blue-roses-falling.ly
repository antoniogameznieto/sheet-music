\header {
  title = "Blue Roses Falling"
  subtitle = "Jake Shimabukuro"
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
g' d'8 g,\4 g4 d'8 g,\4 
fis4 \tuplet 3/2 {g8\4 fis d'} g,4\4 fis8 g\4

e d'8 g,\4 e4 d'8 g,\4 
fis4 \tuplet 3/2 {g8\4 fis d'} g,4\4 fis8 g4\4 

<g d> d'8 g,\4 <g d>4 d'8 g,\4 
fis4 \tuplet 3/2 {g8\4 fis d'} g,4\4 fis8 g\4

<e c> d'8 g,\4 <e c>4 d'8 g,\4 
fis4 \tuplet 3/2 {g8\4 fis d'} g,4\4 fis8 g4\4 
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
