\header {
  title = "Left the Door Ajar"
  subtitle = "from \italic {}"
  subtitle = \markup { "From " \italic "Orion Before Dawn" }
  composer = "Theodore Kloba/Diane Marie Kloba"
  poet  = "Diane Marie Kloba"
}
melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  r1*8 \break
  r1 |
  r8 g c c c
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
  a4. 8( c4.) 8( | d4.) 8( a2) |
  a4. 8( c4.) 8( | d2)  a8( g d4 |
  e4.) e8( f4.) f8( | e1) |
  e4. e8( f4.) f8( | e1) |

}

lower = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  <c g'>4. 8 <c a'>4. 8 |
  <c g'>4. 8 2 |
  <c g'>4. 8 <c a'>4. 8 |
  <c g'>4. 8 2 |
  <f c'>4. 8 <f d'>4. 8 |
  <f c'>4. 8 <f d'>2 |
  <f c'>4. 8 <f d'>4. 8 |
  <f c'>1 | \break

 <c g'>4. 8 <c a'>4. 8 |
  <c g'>4. 8 2 |
  <c g'>4. 8 <c a'>4. 8 |
  <c g'>1 |


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
  \midi { \tempo 4 = 80}
}
[image of music]