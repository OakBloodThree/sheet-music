\header {
  title = "Untitled"
  composer = "Composer"
}



\score {
  \relative c' { \clef bass
    <<
    \new Voice = "first" { \voiceOne c4 d e f}
    \new Voice = "second" { \voiceTwo c,2 e}
    >>
  }

  \layout {}
  \midi {}
}