\version "2.18.2"
\include "english.ly"

\include "Words-and-music.ly"

includeExtraVerses = ##f

bullet = \markup { \char ##x2022 }

extraVerses = \markup {
  \vspace #2
  \larger {
    \fill-line {
      ""
      \column {
        \verseFourText
        \vspace #1
        \verseFiveText
      }
      ""
      \column {
        \verseSixText
        \vspace #1
        \verseSevenText
      }
      ""
    }
  }
}

#(set-global-staff-size 16)
% Standard full page format.
\book {
  \paper {
    #(set-paper-size "statement")
    ragged-bottom = ##t
    system-system-spacing =
    #'((basic-distance . 8)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
    score-markup-spacing =
    #'((basic-distance . 8)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 12))
    indent = 0
    left-margin = 0.25\in
    right-margin = 0.25\in
    top-margin = 0.1\in
    bottom-margin = 0.1\in
    print-page-number = ##f
    oddFooterMarkup = ##f
    bookTitleMarkup = ##f
  }

  \markup {
    \column {
      \abs-fontsize #14
      \bold
      \fill-line {
        ""
        \title
        \songNumber
      }
      \fill-line {
        \smaller \italic
        \override #'(line-width . 80) {
          \wordwrap-string \scripture
        }
      }
    }
  }
  \score {
    \context ChoirStaff \with {
      \override StaffSymbol.thickness = #0.5
    }
    <<
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
        \context Lyrics = one \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
        } \verseOne
        \context Lyrics = two \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
        } \verseTwo
        \context Lyrics = three \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
        } \verseThree
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
  \markup {
    \huge \bold "Chorus:"
  }
  \score {
    \context ChoirStaff \with { \override StaffSymbol.thickness = #0.5 }
    <<
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
        \context Lyrics = chorus \with {
          \override VerticalAxisGroup.staff-affinity = #CENTER
        } \chorus
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
  }

  $(if includeExtraVerses extraVerses)

  \markup {
    \fontsize #-2
    \column {
      \line {
        "Hymn:"
        \meter
        \char ##x2022
        \poet
      }
      \line {
        "Tune:"
        \tune
        $(if composer bullet)
        $(if composer composer)
        \char ##x2022 "arr. "
        \arranger
      }
      \line {
        $(if copyright copyright)
      }
      \line {
        $(if license license)
      }
      \vspace #0.25
      \line {
        "Engraved using Lilypond (www.lilypond.org) for www.acapellaworship.org."
      }
      \line {
        "This hymn may be freely copied and we encourage its use in congregational acapella singing in worship everywhere."
      }
    }
  }
}