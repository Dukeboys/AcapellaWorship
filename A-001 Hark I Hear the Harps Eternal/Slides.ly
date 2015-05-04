\version "2.18.2"
\include "english.ly"

\include "Words-and-music.ly"

#(set-global-staff-size 42)
% Standard full page format.
\book {
  \paper {
    #(set-paper-size "letter" 'landscape )
    indent = 0
    left-margin = 0.25\in
    right-margin = 0.25\in
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    print-page-number = ##f
    ragged-bottom = ##t
    oddFooterMarkup = \markup {
      \on-the-fly #first-page \column {
        \fontsize #-2
        \fill-line {
          \column {
            \fromproperty #'header:meter
            \fromproperty #'header:poet
          }
          \fromproperty #'header:copyright
          \column {
            \fromproperty #'header:tune
            \fromproperty #'header:composer
            \concat { "arr. " \fromproperty #'header:arranger }
          }
        }
        {
          \vspace #0.5
          \fontsize #-2
          \fromproperty #'header:license
        }
        {
          \fontsize #-2
          "Engraved using Lilypond (www.lilypond.org) for www.acapellaworship.org"
        }
      }
    }
    bookTitleMarkup = \markup {
      \column {
        \fill-line {
          \null
          {
            \abs-fontsize #44
            \bold
            \fromproperty #'header:songNumber
          }
        }
        \vspace #3
        \fill-line {
          \abs-fontsize #48
          \bold
          \override #'(line-width . 60) {
            \wordwrap-string \songTitle
          }
        }
        \vspace #1
        \fill-line {
          \abs-fontsize #20
          \italic
          \override #'(line-width . 50) {
            \wordwrap-string \scripture
          }
        }
      }
    }
    scoreTitleMarkup = \markup {
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
          \null
          {
            \abs-fontsize #32
            \fromproperty #'header:title
          }
          {
            \abs-fontsize #32
            \fromproperty #'header:songNumber
          }
        }
      }
    }
  }
  \pageBreak

  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseOne }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseTwo }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseThree }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseFour }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseFive }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseSix }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoVerse
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoVerse
          }
        }
        \context Lyrics { \huge \verseSeven }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorVerse
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassVerse
          }
        }
      >>
    >>
    \layout {}
  }
  \pageBreak
  \score {
    \context ChoirStaff <<
      \context Staff = upper <<
        \context Voice = sopranos {
          \voiceOne {
            \global
            \partial 4
            \sopranoChorus
          }
        }
        \context Voice = altos {
          \voiceTwo {
            \global
            \partial 4
            \altoChorus
          }
        }
        \context Lyrics { \huge \chorus }
      >>
      \context Staff = lower <<
        \clef bass
        \context Voice = tenors {
          \voiceOne {
            \global
            \partial 4
            \tenorChorus
          }
        }
        \context Voice = basses {
          \voiceTwo {
            \global
            \partial 4
            \bassChorus
          }
        }
      >>
    >>
    \layout {}
    \header {
      title = \markup \bold { \fill-line { "Chorus:" "" } }
    }
  }
}
