\header{
        title = "Quizás, quizás, quizás"
        subtitle = "(Perhaps, Perhaps, Perhaps)"
        composer = "Osvaldo Farres / Joe Davis (1947)"
        tagline = ##f
}


melody = \relative {
    \clef treble
    \key e \minor
    \time 4/4

    \repeat volta 2 {
        r4 r8 b cis dis e fis |
        g4. e8~e4 e |
        a2 \tuplet 3/2 {fis4 a fis} |
        g4. e8~e4 e |
        a2 \tuplet 3/2 {fis4 a fis} |
        b4. g8~g4 b, |
        g' r8 e fis4 r8 dis |
        e4 r4 r2 |
    }

    r4 r8 b' e e e e |
    \bar "||"
    dis4. a8~a4 e' |
    dis4. a8~a4 dis |
    cis4. gis8~gis2~ |
    gis4 r8 b e e e e |
    dis4. a8~a e'4 e8 |
    dis?4. a8~a8 dis4 dis8 |
    cis4. gis8~gis2~ |
    gis4 r8 b, cis dis e fis |
    \bar "||"
    g4. e8~e4 e |
    a2 \tuplet 3/2 {fis4 a fis} |
    g4. e8~e4 e |
    a2 \tuplet 3/2 {fis4 a fis} |
    b4. g8~g4 b, |
    g' r8 e fis4 r8 dis |
    e2 r2 |
    \bar "|."
}


harmony = \chordmode {
    r1 | e:m | a2:m b:7 | e1:m | \break
    a2:m b:7 | e1:m | c2:7.9 b:7.9+ | e:m a:m | \break
    e1:m | b:7 | b:7 | e:6 | \break
    e:6 | b:7 | b:7 | e:6 | \break
    e:6 | e:m | a2:m b:7 | e1:m | \break
    a2:m b:7 | e1:m | c2:7.9 b:7.9+ | e:m a:m |
}


\score {
    \transpose e c'
    <<
        \new ChordNames {
            \set chordChanges=##t
            \harmony
        }
        \new Staff="melody" {
            \melody
        }
        \addlyrics {
            Siem -- pre que te pre -- gun -- to __
            que cuán -- do cómo y dón -- de __
            tu siem -- pre me res -- pon -- des __
            qui -- zás qui -- zás qui -- zás
            Es -- tás per -- dien -- do_el tiem -- po __
            pen -- san -- do __ pen -- san -- do __
            por lo que más tú quie -- ras __
            has -- ta cuán -- do has -- ta cuán -- do __
            Y así pa -- san los dí -- as __
            y yo yo des -- pe -- ra -- do __
            y tú tú con -- tes -- tan -- do __
            qui -- zás qui -- zás qui -- zás
        }
        \addlyrics {
            Y así pa -- san los dí -- as __
            y yo de -- ses -- pe -- ra -- do __
            y tú tú con -- tes -- tan -- do __
            qui -- zás qui -- zás qui -- zás
        }
    >>
    \layout { }
    \midi {
        \tempo 4 = 120
    }
}
