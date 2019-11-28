\version "2.18.2"

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

uno = \relative c' {
	\tuplet 3/2 { c' e, c }
	\tuplet 3/2 { c' e, c }
	\tuplet 3/2 { a' e c }
	\tuplet 3/2 { a' e c } |
	\tuplet 3/2 { a' f c }
	\tuplet 3/2 { a' f c }
	\tuplet 3/2 { b' f d }
	\tuplet 3/2 { b' f d } |
	\bar ":|." 
}
dos = \relative c' {
	\tuplet 3/2 { e' e, c }
	\tuplet 3/2 { e' e, c }
	\tuplet 3/2 { d' e, c }
	\tuplet 3/2 { d' e, c } |
	\tuplet 3/2 { c' e, c }
	\tuplet 3/2 { c' e, c }
	\tuplet 3/2 { b' e, c }
	\tuplet 3/2 { b' e, c } |
	\tuplet 3/2 { a' f c }
	\tuplet 3/2 { a' f c }
	\tuplet 3/2 { b' f d }
	\tuplet 3/2 { b' f d } |
	\bar ":|." 
}

%--- Partitura ---%
\score {
	\new StaffGroup	
	<<
		\new Staff \uno
		\new TabStaff \uno
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \dos
		\new TabStaff \dos
	>>
}

\score {
	\new StaffGroup	
	<<
		\new Staff \uno
		\new TabStaff \uno
	>>
}