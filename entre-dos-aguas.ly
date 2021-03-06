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
\bar ".|:"
g8 (fis) fis (e) e d4 d8~ 
d c4 c8 d e fis g
a g g (fis) fis4 fis8 fis~ 
fis e d4 r8 d e fis
g fis fis e e4 e8 \acciaccatura fis e~
e d c2.
\acciaccatura g'8 fis4 e8 dis~ dis2
%Final 1
\acciaccatura g8 fis2. r8 g
\bar ":|."
%Final 2
\acciaccatura g8 fis2. r4


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