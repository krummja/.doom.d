;;; -*- lexical-binding: t -*-
(require 'doom-themes)

;;
(defgroup doom-sakura-light-theme nil
  "Options for doom-themes"
  :group  'doom-themes)

(defcustom doom-sakura-light-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group  'doom-sakura-light-theme
  :type   'boolean)

(defcustom doom-sakura-light-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group  'doom-sakura-light-theme
  :type   'boolean)

(defcustom doom-sakura-light-comment-bg doom-sakura-light-brighter-comments
  "If non-nil, comments will have a subtle, darker background, enchancing legibility."
  :group  'doom-sakura-light-theme
  :type   'boolean)

(defcustom doom-sakura-light-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can beinteger to determine exact padding."
  :group  'doom-sakura-light-theme
  :type   '(choice integer boolean))

;;
(def-doom-theme doom-sakura-light
  "A pleasant light theme."

  ;; name           default     256         16
  ( (bg           '("#FBF7EF"   "#FBF7EF"   "white"))
    (bg-alt       '("#FBF7EF"   "#FBF7EF"   "white"))
    (base0        '("#363636"   "#363636"   "black"))
    (base1        '("#414141"   "#414141"   nil))
    (base2        '("#BF9B9F"   "#BF9B9F"   nil))
    (base3        '("#ebe6ea"   "#EBE6EA"   nil)) ;; block highlights
    (base4        '("#C9678D"   "#C9678D"   nil))
    (base5        '("#ECA7D5"   "#ECA7D5"   nil))
    (base6        '("#C9678D"   "#C9678D"   nil))
    (base7        '("#E7CEEE"   "#E7CEEE"   nil))
    (base8        '("#E2D8F5"   "#E2D8F5"   nil))
    (fg           '("#2A2A2A"   "#2A2A2A"   nil))
    (fg-alt       '("#2A2A2A"   "#2A2A2A"   nil))

    (grey base6)
    (red          '("#BE3445"   "#BE3445"   nil))
    (orange       '("#D36745"   "#D36745"   nil))
    (green        '("#AAC275"   "#BE3445"   nil))
    (yellow       '("#E1B967"   "#E1B967"   nil))
    (magenta      '("#CE67CF"   "#CE67CF"   nil))

    (teal         '("#29838D"   "#29838D"   nil))
    (blue         '("#3B6EA8"   "#3B6EA8"   nil))
    (dark-blue    '("#5272AF"   "#5272AF"   nil))
    (violet       '("#842879"   "#842879"   nil))
    (cyan         '("#398EAC"   "#398EAC"   nil))
    (dark-cyan    '("#2C7088"   "#2C7088"   nil))

    ;; face categories -- required for all themes
    (highlight          (doom-blend blue bg 0.8))
    (vertical-bar       (doom-darken bg 0.15))
    (selection          (doom-blend blue bg 0.5))
    (builtin            teal)
    (comments           (if doom-sakura-light-brighter-comments dark-cyan (doom-darken base5 0.2)))
    (doc-comments       (doom-darken (if doom-sakura-light-brighter-comments dark-cyan base5) 0.25))
    (constants          magenta)
    (functions          teal)
    (keywords           blue)
    (methods            teal)
    (operators          blue)
    (type               yellow)
    (strings            green)
    (variables          violet)
    (numbers            magenta)
    (region             base4)
    (error              red)
    (warning            yellow)
    (success            green)
    (vc-modified        orange)
    (vc-added           green)
    (vc-deleted         red)
    (cursor-color       '("#000000"))
    (hl-line            base6)
    (+evil--default-cursor-color '("#000000"))
    (modeline-fg        nil)))

(setq org-src-block-faces nil)
(custom-theme-set-faces
  'user
  `(org-document-info-keyword ((t :foreground "#9F9F9F")))

  `(org-level-1 ((t :foreground "#BE3445" :weight bold)))
  `(org-level-2 ((t :foreground "#BE3445" :weight bold)))
  `(org-level-3 ((t :foreground "#BE3445" :weight normal)))
  `(org-level-4 ((t :foreground "#BE3445" :weight normal)))
  `(org-level-5 ((t :foreground "#BE3445" :weight normal)))
  `(org-level-6 ((t :foreground "#BE3445" :weight normal)))
  `(org-level-7 ((t :foreground "#BE3445" :weight normal)))
  `(org-level-8 ((t :foreground "#BE3445" :weight normal)))
  `(org-level-9 ((t :foreground "#BE3445" :weight normal)))

  `(org-block            ((t :background "#ebe6ea")))
  `(org-block-begin-line ((t :foreground "#BF9B9F" :background nil :underline "#2A2A2A")))
  `(org-block-end-line   ((t :foreground "#BF9B9F" :background nil :underline nil :overline "#2A2A2A")))
  `(org-verbatim         ((t :foreground "#BE3445" :background nil :weight normal)))

  `(org-table   ((t :background "#ebe6ea")))
  `(org-formula ((t :background "#ebe6ea")))
  `(org-ref-cite-face ((t :foreground "#BE3445")))
  `(org-drawer ((t :foreground "#9F9F9F")))
  )
