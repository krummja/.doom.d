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


  ;; name           default     256   16
  ( (bg           '("#FBF7EF"   nil   nil))
    (bg-alt       '("#FBF7EF"   nil   nil))
    (base0        '("#363636"   nil   nil))
    (base1        '("#414141"   nil   nil))
    (base2        '("#BF9B9F"   nil   nil))
    (base3        '("#ebe6ea"   nil   nil)) ;; CONTROLS THE BLOCK HIGHLIGHT FFS
    (base4        '("#C9678D"   nil   nil))
    (base5        '("#ECA7D5"   nil   nil))
    (base6        '("#C9678D"   nil   nil))
    (base7        '("#E7CEEE"   nil   nil))
    (base8        '("#E2D8F5"   nil   nil))
    (fg           '("#2A2A2A"   nil   nil))
    (fg-alt       '("#2A2A2A"   nil   nil))

    (grey base6)
    (red          '("#BE3445"   nil   nil))
    (orange       '("#D36745"   nil   nil))
    (green        '("#AAC275"   nil   nil))
    (yellow       '("#E1B967"   nil   nil))
    (magenta      '("#CE67CF"   nil   nil))

    (teal         '("#29838D"   nil   nil))
    (blue         '("#3B6EA8"   nil   nil))
    (dark-blue    '("#5272AF"   nil   nil))
    (violet       '("#842879"   nil   nil))
    (cyan         '("#398EAC"   nil   nil))
    (dark-cyan    '("#2C7088"   nil   nil))

    ;; face categories -- required for all themes
    (highlight (doom-blend blue bg 0.8))
    (vertical-bar (doom-darken bg 0.15))
    (selection (doom-blend blue bg 0.5))
    (builtin teal)
    (comments (if doom-sakura-light-brighter-comments dark-cyan (doom-darken base5 0.2)))
    (doc-comments (doom-darken (if doom-sakura-light-brighter-comments dark-cyan base5) 0.25))
    (constants magenta)
    (functions teal)
    (keywords blue)
    (methods teal)
    (operators blue)
    (type yellow)
    (strings green)
    (variables violet)
    (numbers magenta)
    (region base4)
    (error red)
    (warning yellow)
    (success green)
    (vc-modified orange)
    (vc-added green)
    (vc-deleted red)
    (cursor-color '("#000000"))
    (hl-line base6)
    (+evil--default-cursor-color '("#000000"))
    (modeline-fg nil)
  ))

(setq org-src-block-faces nil)
(custom-theme-set-faces
  'user
  `(org-document-info-keyword ((t :foreground "#9F9F9F")))
  `(org-level-1 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-2 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-3 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-4 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-5 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-6 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-7 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-8 ((t :foreground "#000000"
                    :weight bold)))
  `(org-level-9 ((t :foreground "#000000"
                    :weight bold)))
  )
