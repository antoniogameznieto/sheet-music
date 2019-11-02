\version "2.18.2"
RH = #rightHandFinger

%--- Configuración ---%
\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g' c' e' a'>
	}
}

%--- Introducción de las notas ---%
notas = \relative c' {
	<c g' >8 g' c, g' <c, g' >8 g' c, g'|
	<e g> g e g <e g> g e g |
	\bar "|."
}


notasdos = \relative c' {
	<c g' >8 g' c, g' <c, g' >8 g' c, g'|
	<e g> g e g <e g> g e g |
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