melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

upperIntro = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  a4 b c d
}
lowerIntro = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c
}
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  a4 b c d
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c
}

\score {
  <<
     \new PianoStaff <<
      \new Staff = "upper" \upperIntro
      \new Staff = "lower" \lowerIntro
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
