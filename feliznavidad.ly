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
	<g d' g b>4. b'8 d4 c8 a8
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
