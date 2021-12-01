\version "2.22.1"
vox = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

text = \lyricmode {
  Woo Woo Woo Woo 
}

pianointroR  = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  <c e>4 <d f> <e g> <f a> |
  <c e> <d f> <e g> <f a>
  
}

pianointroL = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a4 g c d |
  a4 g c d
}

pianoR  = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  <<
  <a c>4 <b d> <c e> <b d> |
  <a c>4 <b d> <c e> <b d>
  >>

}

pianoL = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c a c a c a c
}

\score {
  <<
      \new PianoStaff <<
      \new Staff = "piaonintroR"
      \new Staff = "pianointroL"
      >>
  >>

  <<
    \new Voice = "Vocal" { \autoBeamOff \melody }
    \new Lyrics \lyricsto Vocal \text
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
  >>
  \layout {
    \context { \Staff \RemoveAllEmptyStaves }
  }
  \midi { }
}