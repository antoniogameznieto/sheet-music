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
	\bar "|" 
}

acordes = \chordmode {
	a1:m d:m g c a:m d g f c d:m bes a
 }


% Estrofa
dos = \relative c' {
\key c \major
\numericTimeSignature
\time 4/4
	r4 r8 e8 f g4\grace g16\glissando a8\2~ 
	a4 g8 d4 g4. 
	r4 r8 a8 g f4 e8~ 
	e4 f8 c2~ c8~ 
	\break 
	c4. e8 f g4\grace g16\glissando a8\2~
	a4 g8 a4\2 b g8
	\grace bes16 \glissando c4. b4 a8 g \grace g16 \glissando a8\2~
	a1\2
    \break
	r4 r8 c8 a f4 e8~ 
	e4 d8 e4 f4.
	r4 r8 g8 g8 g4 \grace g16 \glissando gis8~
	gis4\2 gis8 a4 b4.
	\bar "|" 
}

acordesdos = \chordmode {
	d1:m g c f d:m g a:m a:m d:m g:7 c e:7
	% a1:m d:m g c a:m d g f c d:m bes a
 }

%--- Partitura ---%
\score {
 \header {
      piece = "Melodía"
    }
	\new StaffGroup	
	<<
	    \new ChordNames \acordes
		\new Staff \uno
		\new TabStaff \uno
	>>
}

\score {
	    \header {
      piece = "Estrofa"
    }
	\new StaffGroup	
	<<
 
	    \new ChordNames \acordesdos
		\new Staff \dos
		\new TabStaff \dos
	>>
}