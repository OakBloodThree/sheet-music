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
      \new PianoStaff <<
      \new Staff = "piaonintroR" \pianointroR
      \new Staff = "pianointroL" \pianointroL
      >>
<<
    \new Voice = "Vocal" { \autoBeamOff \vox }
    \new Lyrics \lyricsto Vocal \text
    \new PianoStaff <<
      \new Staff = "pianoR" \pianoR
      \new Staff = "pianoL" \pianoL
  >>
>>

  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}