\version "2.18.2"
RH = #rightHandFinger

%--- Configuración ---%
\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g c' e' a'>
	}
}

%--- Introducción de las notas ---%
notas = \relative c' {

\numericTimeSignature

\time 4/4
	r4. g'8 c4 b8 c8 |
	<a, c f a>4. a'8 a8 a4 <g, d' g b>8~ |
	<g d' g b>4. b'8 d4 c8 a8 |
	<g, c g' c>4. g'8 g8 g4 <a, c e a>8~ |
	<a c e a>4. g'8 c4 b8 c8 |
	<a, c f a>4. f'8 a8 a4 <g, d' g b>8~ |
	<g d' g b>8 g'4 g8 f4 f8 <g, c e c'>~ |
	<g c e c'>1
	\bar ":|."
	r8 e'' e e e4 d8 c8 |
	<a, c f c'>4 a'8 a4 c4. |
	<g, d' g b>8 d''8 d8 d8 d4 c8 a8 |
	<g, c g' c>4 g'8 g4 c4. |
	<a, c e a>8 e''8 e8 e8 e4 d8 c8 |
	<a, c f c'>4 a'8 a4 a8 c8 a8 |
	<g, d' g b> b'4. c8 d4. |
	<g,, c e c'>1
	\bar "|."	
}

% acordes = \chordmode {
%    f2 d:m | bes c4 c:7 | f1 
% }

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		% \new ChordNames \acordes
		\new Staff \notas
		\new TabStaff \notas
	>>
}
