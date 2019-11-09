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
\time 6/8
	<c g>4 g8 c8 g4 |
	<d' g,>4 g,8 d'8 g,4 |
	<e'\3 g,>4 g,8 e'\3 g,4 |
	<d' g,>4 g,8 d'8 g,4 |
	\bar "|."
}


%--- Introducción de las notas ---%
notasdos = \relative c' {

\numericTimeSignature
\time 6/8
	<e g,>4 g,8 e'8 g,4 |
	<f' g,>4 g,8 f'8 g,4 |
	<g' g,>4 g,8 g'8 g,4 |
	<f' g,>4 g,8 f'8 g,4 |
	\bar "|."
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new Staff \notas
		\new TabStaff \notas
	>>
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new Staff \notasdos
		\new TabStaff \notasdos
	>>
}