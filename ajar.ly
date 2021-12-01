melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  r1*8 \break
  a4 b c d
}

text = \lyricmode {
  The wind blew down the lane.
}

upper = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  e4. 8( f4.) 8( | e1) |
  e4. 8( f4.) 8( | e1) |
  a4. 8( b4.) 8( | c4.) 8( a4.) 8 |
  a4. 8( b4.) 8( | c2)  a8( g d4 |
  e4.) e8( f4.) f8( | e1) |
  e4. e8( f4.) f8( | e1) |

}

lower = {
  \clef bass
  \key c \major
  \time 4/4

  <c, g,>4. 8 <c, a,>4. 8 |
 <c, g,>4. 8 2 |


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
[image of music]