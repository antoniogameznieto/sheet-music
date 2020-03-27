\version "2.18.2"

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
	<c e a\4 c>8 c' c c4 a8 e <d g a\4>~ |     % Am
	<d g a> <d f a\4>4. f8 g a c |             % Dm
	<d, g g b> b' b b4 g8 d <c e g\4>~ |       % G
	<c e g\4>4. f8 e4 d4 |                     % C
	<c e a\4>8 e e e4 a8 c <d, fis a\4 b>~ |   % Am
	<d fis a\4 b> a'4. d8 d d <d, g\4 g c>~ |  % D
	<d g\4 g c> b'2 r8                         % G

	\bar "|." 
}

acordes = \chordmode {
	a1:m d:m g c a:m d g f c d:m bes
 }

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
	    \new ChordNames \acordes
		\new Staff \uno
		\new TabStaff \uno
	>>
}