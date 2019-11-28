\version "2.18.2"

%--- Aliases ---%

% Alias para digitación de mano derecha
RH = #rightHandFinger	


%--- Configuración ---%

\paper {
	top-margin = 12
	bottom-margin = 15
}

\header{
	title = "Ejercicios Ukelele"
	subtitle = "Clase 17 oct 2019"
	tagline = ##f
}

\layout{
	\context {
		\TabStaff
		stringTunings = \stringTuning <g c' e' a'>
	}
}


%--- Introducción de las notas ---%

one = \relative c' {
	c8 d e f g a b c |
	c b a g f e d c |
	\bar ":|." 
}

two = \relative c' {
	\tuplet 3/2 { c e c' }
	\tuplet 3/2 { c, e c' }
	\tuplet 3/2 { c, f a }
	\tuplet 3/2 { c, f a } |

	\tuplet 3/2 { d, f b }
	\tuplet 3/2 { d, f b }
	\tuplet 3/2 { c, e c' }
	c,4 |
	\bar ":|." 
}

three = \relative c' {
	c8_\RH #1 
	e_\RH #2
	c'_\RH #3 
	e,_\RH #2
	c e c' e, |
	c8 f a f c f a f |
	\bar "|."
}


%--- Partitura ---%

\markup "Escala de C Mayor"
\score {
	\new StaffGroup	
	<<
		\new Staff \one
		\new TabStaff \one
	>>
}

\markup "FingerStyle (tresillo)"
\score {
	\new StaffGroup	
	<<
		\chords {
			c2 f | g:7 c |
		}
		\new Staff \two
		\new TabStaff \two
	>>
}

\markup "FingerStyle Ej:1"
\score {
	\new StaffGroup	
	<<
		\chords {
			c1 | f |
		}
		\new Staff \three
		\new TabStaff \three
	>>
}