

<a id="orga2f2a90"></a>

# Sakura Emacs


# Table of Contents     :TOC_2_ORG:

-   [Sakura Emacs](#orga2f2a90)
-   [Introduction](#orgcff936b)
    -   [About Emacs](#orgea4268e)
    -   [About Doom Emacs](#orgbd9769a)
    -   [About Sakura Emacs](#orgc5a69a9)
-   [Init](#orgfdc360f)
    -   [Completion](#org7fca982)
    -   [UI](#org82e6ac2)
    -   [Editor](#org90e1af6)
    -   [Emacs](#org91305ca)
    -   [Tools](#org9eb8888)
    -   [Lang](#org736241d)
    -   [EMail](#orgb6b92fd)
    -   [App](#orge88835b)
-   [Config](#org00db02a)
    -   [Basic Information](#orgf87f3c1)
    -   [Path Constants](#orga42e0a5)
    -   [Load Private Modules](#orgadb4a11)
    -   [Hooks](#org5ca3f88)
-   [Packages](#orgae202a6)
    -   [Research Packages](#org7782211)
    -   [Programming Packages](#org97bf421)
-   [Private Modules](#org47bf9f1)
    -   [Theming](#org2cecbba)
    -   [Custom Functions](#org519ebd9)


<a id="orgcff936b"></a>

# Introduction


<a id="orgea4268e"></a>

## About Emacs

Emacs changes how you *think* about programming.

Emacs is **totally introspectable**. You can always find out &rsquo;what code runs when I press this button?&rsquo;.

Emacs is an **incremental programming environment**. There&rsquo;s no edit-compile-run cycle. There isn&rsquo;t even an edit-run cycle. You can execute snippets of code and gradually turn them into a finished project. There&rsquo;s no distinction between your editor and your interpreter.

Emacs is a **mutable environment**. You can set variables, tweak functions with advice, or redefine entire functions. Nothing is off-limits.

Emacs provides **functionality without applications**. Rather than separate applications, functionality is all integrated into your Emacs instance. Amazingly, this works. Ever wanted to use the same snippet tool for writing C++ classes as well as emails?

Emacs is full of **incredible software concepts that haven&rsquo;t hit the mainstream yet**. For example:

-   Many platforms have a single item clipboard. Emacs has an **infinite clipboard**.
-   If you undo a change, and then continue editing, you can&rsquo;t redo the original change. Emacs allows **undoing to any historical state**, even allowing tree-based exploration of history.
-   Emacs supports a **reverse variable search**: you can find variables with a given value.
-   You can perform **structural editing** of code, allowing you to make changes without breaking syntax. This works for lisps (paredit) and non-lisps (smartparens).
-   Many applications use a modal GUI: for example, you can&rsquo;t do other edits during a find-and-replace operation. Emacs provides **recursive editing** that allow you to suspend what you&rsquo;re currently doing, perform other edits, then continue the original task.

Emacs has a **documentation culture**. Emacs includes a usage manual, a lisp programming manual, pervasive docstrings and even an interactive tutorial.

Emacs has a **broad ecosystem**. If you want to edit code in a niche language, there&rsquo;s probably an Emacs package for it.

Emacs doesn&rsquo;t have a monopoly on good ideas, and there are other great tools out there. Nonetheless, we believe the [Emacs learning curve](https://i.stack.imgur.com/7Cu9Z.jpg) pays off.

*This beautifully written **About Emacs** section credits to [Remacs](https://github.com/remacs/remacs).*


<a id="orgbd9769a"></a>

## About Doom Emacs

Doom is a configuration framework for [GNU Emacs 26.3+](https://www.gnu.org/software/emacs/) tailored for Emacs
bankruptcy veterans who want less framework in their frameworks and the
performance of a hand rolled config (or better). It can be a foundation for your
own config or a resource for Emacs enthusiasts to learn more about our favorite
OS.

Doom is an opinionated collection of reasonable (and optional) defaults with a
focus on performance (both runtime and startup) and on abstraction-light,
readable code design, so that there is less between you and Emacs.

*This **About Doom-Emacs** section credits to [Doom-Emacs](https://github.com/hlissner/doom-emacs).*


<a id="orgc5a69a9"></a>

## About Sakura Emacs

**Sakura Emacs** is a custom Doom Emacs configuration that aims to enhance the default Doom experience with certain opinionated package selections. Sakura&rsquo;s theming and color selection is based on my personal color palette that I use for my i3-regolith desktop configuration. One of my goals with this setup was to provide centralized documentation which can be easily navigated and referenced. This file contains virtually all of the configuration code for Sakura.

As a neurodivergent grad student, I have gone through multiple productivity and notetaking suites, including many Emacs configurations, looking for the &ldquo;perfect&rdquo; setup for my research workflow. I have come to understand a few basic principles from this quest.

1.  There is no such thing as a single &ldquo;perfect&rdquo; suite or configuration.
2.  Cultivation and maintenance is more instrumental in promoting habit than trying to rely on a pre-configured framework.
3.  All best-laid plans for a system will inevitably go to shit - so learn to get ahead of that by being predictable and consistent.

These principles have crystallized into a sort of philosophy that I try (sometimes unsuccessfully, granted) to apply to any situation where I interact with the digital landscape. This can be subsumed under a broader rubric of practicing mindfulness.

This configuration is designed and tested for **GNU Emacs 28 and above only**.


### Screenshot


### About README

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. This file also generates the actual configuration by running `M-x org-babel-tangle`.


### Installation


### Modification


### Contribution

If you have spotted a bug or have a suggestion for this configuration, please file an issue. If you have something you&rsquo;d like to fix, feel free to create a pull request.


### Special Thanks

To continue the trend of learning from people learning from people learning from people who know what they&rsquo;re doing, I want to acknowledge the configurations I&rsquo;ve taken inspiration from:

1.  [Justine Kizhakkinedath](https://gitlab.com/justinekizhak/dotfiles/blob/master/emacs/doom.d/)
2.  [tecosaur](https://github.com/tecosaur/emacs-config/)
3.  [MatthewZMD](https://github.com/MatthewZMD/.emacs.d)
4.  [hlissner](https://github.com/hlissner/doom-emacs)


<a id="orgfdc360f"></a>

# Init


<a id="org7fca982"></a>

## Completion

    (doom! :completion
           company           ; the ultimate code completion backend
           helm              ; the *other* search engine for love and life
           )


<a id="org82e6ac2"></a>

## UI

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


<a id="org90e1af6"></a>

## Editor

    (doom! :editor
           (evil +everywhere); come to the dark side, we have cookies
           file-templates    ; auto-snippets for empty files
           fold              ; (nigh) universal code folding
           snippets          ; my elves. They type so I don't have to
           )


<a id="org91305ca"></a>

## Emacs

    (doom! :emacs
           dired             ; making dired pretty [functional]
           electric          ; smarter, keyword-based electric-indent
           undo              ; persistent, smarter undo for your inevitable mistakes
           vc                ; version-control and Emacs, sitting in a tree
           )


<a id="org9eb8888"></a>

## Tools

    (doom! :tools
           (eval +overlay)   ; run code, run (also, repls)
           ein               ; cruising the clouds of jupyter
           lookup            ; navigate your code and its documentation
           magit             ; a git porcelain for Emacs
           rgb               ; creating color strings
           )


<a id="org736241d"></a>

## Lang

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


<a id="orgb6b92fd"></a>

## EMail

    (doom! :email
           ;;(mu4e +gmail)
           ;;notmuch
           ;;(wanderlust +gmail)
           )


<a id="orge88835b"></a>

## App

    (doom! :app
           ;;calendar
           ;;irc               ; how neckbeards socialize
           ;;(rss +org)        ; emacs as an RSS reader
           ;;twitter           ; twitter client https://twitter.com/vnought
           )

    (doom! :config
           (default +bindings +smartparens)
    )


<a id="org00db02a"></a>

# Config


<a id="orgf87f3c1"></a>

## Basic Information

    (setq user-full-name "Jonathan Crum")
    (setq user-mail-address "crumja@uga.edu")


<a id="orga42e0a5"></a>

## Path Constants

    (setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
    (setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))


<a id="orgadb4a11"></a>

## Load Private Modules

    (load! "./elisp/init-sakura-theming.el")
    (load! "./elisp/custom-functions.el")
    
    (load! "./themes/doom-sakura-light-theme.el")
    (load! "./themes/doom-sakura-dark-theme.el")


<a id="org5ca3f88"></a>

## Hooks

    (add-hook! 'org-babel-post-tangle-hook 'add-tangle-headers)
    (add-hook! '(+doom-dashboard-mode-hook)
      (setq fancy-splash-image "~/.doom.d/images/sakura_emacs.png"))
    
    ;; Some hooks seem not to play so nice with the doom ! notation... something to do with using a lambda expression? Test this.
    (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
    
    (remove-hook! 'text-mode-hook #'auto-fill-mode)


<a id="orgae202a6"></a>

# Packages


<a id="org7782211"></a>

## Research Packages


### Org-Mode


### Org-Ref


### Org-Roam


<a id="org97bf421"></a>

## Programming Packages


### Clojure


### Dart


### TypeScript


### Python


<a id="org47bf9f1"></a>

# Private Modules


<a id="org2cecbba"></a>

## Theming


### Theme Configuration

    (setq doom-theme 'doom-sakura-light)
    (setq doom-font (font-spec :family "Fira Code" :size 14 :weight 'normal))
    (setq display-line-numbers-type nil)
    
    (setq org-superstar-headline-bullets-list '("☰" "☷" "☵" "☲" "☳" "☴" "☶" "☱" ))


### Sakura Theming

1.  Light Theme

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

2.  Dark Theme

        (require 'doom-themes)
        
        ;;
        (defgroup doom-sakura-dark-theme nil
          "Options for doom-themes"
          :group  'doom-themes)
        
        (defcustom doom-sakura-dark-brighter-modeline nil
          "If non-nil, more vivid colors will be used to style the mode-line."
          :group  'doom-sakura-dark-theme
          :type   'boolean)
        
        (defcustom doom-sakura-dark-brighter-comments nil
          "If non-nil, comments will be highlighted in more vivid colors."
          :group  'doom-sakura-dark-theme
          :type   'boolean)
        
        (defcustom doom-sakura-dark-comment-bg doom-sakura-dark-brighter-comments
          "If non-nil, comments will have a subtle, darker background, enchancing legibility."
          :group  'doom-sakura-dark-theme
          :type   'boolean)
        
        (defcustom doom-sakura-dark-padded-modeline doom-themes-padded-modeline
          "If non-nil, adds a 4px padding to the mode-line. Can beinteger to determine exact padding."
          :group  'doom-sakura-dark-theme
          :type   '(choice integer boolean))
        
        ;;
        (def-doom-theme doom-sakura-dark
          "A calming dark theme."
        
        
          ;; name           default     256   16
          (
            (bg           '("#2A2A2A"   nil   nil))
            (bg-alt       '("#2A2A2A"   nil   nil))
            (base0        '("#E2D8F5"   nil   nil))
            (base1        '("#E7CEEE"   nil   nil))
            (base2        '("#DDB3D8"   nil   nil))
            (base3        '("#383838"   nil   nil))
            (base4        '("#C9678D"   nil   nil))
            (base5        '("#B48EAD"   nil   nil))
            (base6        '("#4F4B4F"   nil   nil))
            (base7        '("#414141"   nil   nil))
            (base8        '("#363636"   nil   nil))
            (fg           '("#FBF7EF"   nil   nil))
            (fg-alt       '("#FBF7EF"   nil   nil))
        
            (grey base6)
            (red          '("#BE3445"   nil   nil))
            (orange       '("#D36745"   nil   nil))
            (green        '("#AAC275"   nil   nil))
            (yellow       '("#E1B967"   nil   nil))
            (magenta      '("#CE67CF"   nil   nil))
        
            (teal         '("#29838D"   nil   nil))
            (blue         '("#4295f2"   nil   nil))
            (dark-blue    '("#5272AF"   nil   nil))
            (violet       '("#842879"   nil   nil))
            (cyan         '("#398EAC"   nil   nil))
            (dark-cyan    '("#2C7088"   nil   nil))
        
            ;; face categories -- required for all themes
            ;; Wait... I can have it dynamically blend with the background color... rad
            (highlight (doom-blend blue bg 0.8))
            (vertical-bar (doom-darken bg 0.15))
            (selection (doom-blend blue bg 0.5))
            (builtin teal)
            ;;(comments base6)
            (comments (if doom-sakura-dark-brighter-comments dark-cyan (doom-darken base5 0.2)))
            (doc-comments (doom-darken (if doom-sakura-dark-brighter-comments dark-cyan base5) 0.25))
            (constants magenta)
            (functions teal)
            (keywords blue)
            (methods teal)
            (operators blue)
            (type yellow)
            (strings green)
            (variables magenta)
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
         ;   (org-block-begin-line
         ;    '((t (:foreground "#008ED1" :background '(bg)))))
            (+evil--default-cursor-color '("#000000"))
        
            (modeline-fg nil)
        ;    (modeline-fg-alt (doom-blend violet base4 (if -modeline-bright 0.5 0.2)))
        
        ;    (modeline-bg
        ;      (if -modeline-bright
        ;        (doom-darken bg 0.475)
        ;        `(,(doom-darken (car bg) 0.15) ,@(cdr base0))))
        ;    (modeline-bg-1
        ;      (if -modeline-bright
        ;        (doom-darken blue 0.45)
        ;        `(,(doom-darken (car bg-alt) 0.1) ,@(cdr base1))))
          ))


<a id="org519ebd9"></a>

## Custom Functions

This tangles to `./elisp/custom-functions.el`.


### Add Tangle Headers

Append a specific string or header to a file on executing `org-babel-tangle`. From [this stackexchange](https://emacs.stackexchange.com/questions/50488/adding-header-to-a-org-mode-tangled-file).

This function is especially useful when tangling a configuration, such as this one, and then exporting separately to markdown. This prevents the generated markdown file from being polluted with unnecessary lines like `lexical-binding` headers.

    (defun add-tangle-headers ()
      (message "running in %s" (buffer-file-name))
      (cond
       ((f-ext? (buffer-file-name) "py")
        (goto-char (point-min))
        (insert "# This is a generated file - do not edit.\n"))
       ((f-ext? (buffer-file-name) "el")
        (goto-char (point-min))
        (insert ";;; -*- lexical-binding: t -*-\n"))
       (t
        nil))
      (save-buffer))

