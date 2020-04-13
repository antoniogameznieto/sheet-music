\header {
  title = "Killing me Softly"
  subtitle = "Charles Fox y Norman Gimbel"
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
\key c \major
\numericTimeSignature
\time 4/4
	<c e a\4 c>8 c' c c4 a8 e <d g a\4>~ |         % Am
	<d g a> <d f a\4>4. f8 g a c |                 % Dm
	<d, g g b> b' b b4 g8 d <c e g\4>~ |           % G
	<c e g\4>4. f8 e4 d4 |                         % C
	\break
  	<c e a\4>8 e e e4 a8 c <d, fis a\4 b>~ |       % Am
	<d fis a\4 b> a'4. d8 d d <c g d g\4>~ |      % D
	<c g d g\4> b2 r8 g <c, f a\4 b>~ |           % G
	<c f a\4 b> a'4. a8 a c <c, e g\4 a>~ |        % F
	\break
  	<c e g\4 a> g'2 r8 e8 <d g a\4>~ |             % C
	<d g a\4> <d f a\4>4. f8 f e8 <d e\2 ais\4>~ | % Dm
  	<d e\2 ais\4> d4. d8 d4 <cis e a\4>8~ |        % Bb
	<cis e a>1 |                                   % A
	\bar "|." 
}

acordes = \chordmode {
	a1:m d:m g c a:m d g f c d:m bes a
 }


% Estrofa
dos = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	r4 r8 e8 f g4\appoggiatura g4\glissando a8\2~ 
	a4 g8 d4 g4. % La apogiatura esta mete un glissando y no deberia
	\break
	r4 r8 a8 g f4 e8~ 
	e4 f8 c2~ c8~ 
	\break 
	c4. e8 f g4\appoggiatura g4\glissando a8\2~
	a4 g8 a4\2 b g8
	\break
	ais4\glissando c4. b a8 g a

	\bar "|." 
}

acordesdos = \chordmode {
	% a1:m d:m g c a:m d g f c d:m bes a
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

\score {
	\new StaffGroup	
	<<
	    \new ChordNames \acordesdos
		\new Staff \dos
		\new TabStaff \dos
	>>
}