;;; -*- lexical-binding: t -*-
(doom! :completion
       company           ; the ultimate code completion backend
       helm              ; the *other* search engine for love and life
       )

(doom! :ui
       deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for
       ;;doom-quit        ; DOOM quit-message prompts when you quit emacs
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       nav-flash
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       workspaces        ; tab emulation, persistence & separate workspaces
       zen               ; distraction-free coding or writing
       treemacs
       )

(doom! :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       snippets          ; my elves. They type so I don't have to
       )

(doom! :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree
       )

(doom! :tools
       (eval +overlay)   ; run code, run (also, repls)
       ein               ; cruising the clouds of jupyter
       lookup            ; navigate your code and its documentation
       magit             ; a git porcelain for Emacs
       rgb               ; creating color strings
       )

(doom! :lang
       clojure           ; java with a lisp
       emacs-lisp        ; drown in parentheses
       latex             ; writing papers in Emacs has never been so fun
       markdown          ; writing docs for people to ignore
       (org               ; organize your plain life in plain text
        +babel
        +brain
        +capture
        +export
        +journal
        +pandoc
        +roam
        )
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       (dart +flutter)   ; paint ui and not much else
       gdscript          ; the language you waited for
       json              ; At least it ain't XML
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       python            ; beautiful is better than ugly
       ;;rest              ; Emacs as a REST client
       rst               ; ReST in peace
       )

(doom! :email
       ;;(mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)
       )

(doom! :app
       ;;calendar
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought
       )

(doom! :config
       (default +bindings +smartparens)
)
