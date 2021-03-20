\header {
  title = "Efrain Silva"
  subtitle = "Ejercicio Melodía 02"
  subsubtile = "a"
  tagline = ""  % removed
}
%--- Introducción de las notas ---%
uno = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	<c e g a>2
	<b ees ges a>
	<bes d f a>
	<a cis e a> \bar ":|.|:"
	<c e g a>4 <c e g a> <b ees ges a> <b ees ges a>
	<bes d f a> <bes d f a> <a cis e a> <a cis e a> \bar ":|." 
}

dos = \relative c' {
\key c \major
\numericTimeSignature
\time 12/4
	c4\4 <e g a>8
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
	\tempo 4 = 120
	}
}
%--- Partitura 2---%
\score {
 \header {
      piece = ""
    }
	\new StaffGroup	
	<<
		\new Staff \dos
		\new TabStaff \dos
	>>



\layout{
	\context {
		\TabStaff
		stringTunings = #tenor-ukulele-tuning
	}
}
\midi{
	\tempo 4 = 120
	}
}