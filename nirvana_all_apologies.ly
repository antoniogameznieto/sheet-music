\version "2.18.2"

\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}

%--- Introducción de las notas ---%
uno = \relative c' {
\key d \major
\numericTimeSignature
\time 4/4
	r8 fis g fis a a g fis~ | 
	fis fis g fis d' d c b |
	r fis g fis a a g fis~ |
	fis fis g f fis' fis e d
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