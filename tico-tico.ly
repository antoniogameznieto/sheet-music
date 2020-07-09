\version "2.18.2"


%--- Introducción de las notas ---%

hi_g = \relative c'' {
	\key cis \minor
	\partial 4.

	cis8 \tuplet 3/2 { cis d dis } |
	\bar "||"
	\acciaccatura dis \glissando e4. e8 d4 \tuplet 3/2 { d8 cis b} |
	\acciaccatura cis \glissando d cis cis2 r4 |
	\bar "|."
}

low_g = \relative c' {
	\key cis \minor
	\partial 4.

	cis8 \tuplet 3/2 { cis d dis } |
	\bar "||"
	\acciaccatura dis \glissando e4.\3 e8\3 d4 \tuplet 3/2 { d8 cis b} |
	\acciaccatura cis \glissando d cis cis2 r4 |
	\bar "|."
}

%--- Partitura ---%

\score {
	\new StaffGroup
	<<
		\new Staff \hi_g
		\new TabStaff \with {
			stringTunings = #ukulele-tuning
		} \hi_g
	>>
}

\score {
	\new StaffGroup
	<<
		\new Staff \low_g
		\new TabStaff \with {
			stringTunings = #tenor-ukulele-tuning
		} \low_g
	>>
}