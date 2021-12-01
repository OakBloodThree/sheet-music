melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  r1 \break
  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  a4 b c d \break
  a b c d
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c \break
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
    \context { \Staff \RemoveAllEmptyStaves }
  }
  \midi { }
}
