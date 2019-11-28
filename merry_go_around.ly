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



%--- Partitura ---%


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
