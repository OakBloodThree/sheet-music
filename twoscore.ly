melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  a b c d
  a b c d
  a b c d
  a b c d
   \bar "|."
}

text = \lyricmode {
  Aaa Bee Cee Dee
  Aaa Bee Cee Dee
  Aaa Bee Cee Dee
  Aaa Bee Cee Dee
}

upperi = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  b4 c d a e f d c
  b4 c d a e f d c
}

loweri = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  c2 e e f
  c2 e e f
}


upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
  e c a f
  a b c d
  e c a f

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c f d
  c b c d
  a c f d
  c b c d
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upperi
      \new Staff = "lower" \loweri
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}

\score {
  <<
    \new Voice = "mel" { \autoBeamOff \melody }
    \new Lyrics \lyricsto mel \text
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}