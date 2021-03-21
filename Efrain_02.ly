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
	<c  \rightHandFinger #1 e  \rightHandFinger #2 g  \rightHandFinger #3 a  \rightHandFinger #4 >2 
	<b ees ges a>
	<bes d f a>
	<a cis e a> \bar ":|.|:"
	<c e g a>4^"Staccato" <c e g a> <b ees ges a> <b ees ges a>
	<bes d f a> <bes d f a> <a cis e a> <a cis e a> \bar ":|." 
}

dos = \relative c' {
\key c \major
\numericTimeSignature
\time 6/4
	c4\4 <e g a>8 c4\4 <e g a>8 b4 <ees ges a>8 b4 <ees ges a>8
	bes4 <d f a>8 bes4 <d f a>8 a4 <cis e a>8 a4 <cis e a>8 \bar ":|." 
}

tres = \relative c' {
\key c \major
\numericTimeSignature
\time 6/4
	c16\4 \rightHandFinger #1
	e\3 \rightHandFinger #2
	g  \rightHandFinger #3
	a  \rightHandFinger #4
	g  \rightHandFinger #3
	e\3  \rightHandFinger #2
	  c\4 e\3 g a g e\3
	b ees ges a ges ees
	b ees ges a ges ees
	bes d f a f d 
	bes d f a f d 
	a cis e a e cis a cis e
	a,( ais b)\bar ":|." 

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

%--- Partitura 3---%
\score {
 \header {
      piece = ""
    }
	\new StaffGroup	
	<<
		\new Staff \tres
		\new TabStaff \tres
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