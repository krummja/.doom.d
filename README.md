

# Table of Contents     :TOC_2_ORG:

-   [Introduction](#org242bfcb)
    -   [About Emacs](#org97c58f6)
    -   [About Doom Emacs](#orgbe77384)
    -   [About Sakura Emacs](#org1c66707)
-   [Global Configuration](#org3947f70)
    -   [Basic Information](#org70adfba)
    -   [Path Constants](#org966d6d8)
-   [Package Configuration](#org90f2000)
    -   [About This Section](#org1fed80a)
    -   [Research Packages](#orgc259d79)
    -   [External Packages](#org58fce2d)
    -   [Testing Area](#orgd9f4e9e)
    -   [Load Private Modules](#org171a282)
    -   [Hooks](#orgb79dc1d)
-   [Private Modules](#orge0435d3)
    -   [Theming](#org62bf852)
    -   [Custom Functions](#orgc9b27d1)


<a id="org242bfcb"></a>

# Introduction


<a id="org97c58f6"></a>

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


<a id="orgbe77384"></a>

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


<a id="org1c66707"></a>

## About Sakura Emacs

**Sakura Emacs** is a custom Doom Emacs configuration that aims to enhance the default Doom experience with certain opinionated package selections. Sakura&rsquo;s theming and color selection is based on my personal color palette that I use for my i3-regolith desktop configuration. One of my goals with this setup was to provide centralized documentation which can be easily navigated and referenced. This file contains virtually all of the configuration code for Sakura.

As a neurodivergent grad student, I have gone through multiple productivity and notetaking suites, including many Emacs configurations, looking for the &ldquo;perfect&rdquo; setup for my research workflow. I have come to understand a few basic principles from this quest.

1.  There is no such thing as a single &ldquo;perfect&rdquo; suite or configuration.
2.  Cultivation and maintenance is more instrumental in promoting habit than trying to rely on a pre-configured framework.
3.  All best-laid plans for a system will inevitably go to shit - so learn to get ahead of that by being predictable and consistent.

These principles have crystallized into a sort of philosophy that I try (sometimes unsuccessfully, granted) to apply to any situation where I interact with the digital landscape. This can be subsumed under a broader rubric of practicing mindfulness.

This configuration is designed and tested for **GNU Emacs 28 and above only**.


### TODO Screenshot


### About README

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. This file is also used to generate the actual configuration files by running `M-x org-babel-tangle`.


### TODO Installation


### TODO Modification


### Contribution

If you have spotted a bug or have a suggestion for this configuration, please file an issue. If you have something you&rsquo;d like to fix, feel free to create a pull request.


### Special Thanks

To continue the trend of learning from people learning from people learning from people who know what they&rsquo;re doing, I want to acknowledge the configurations I&rsquo;ve taken inspiration from:

1.  [Justine Kizhakkinedath](https://gitlab.com/justinekizhak/dotfiles/blob/master/emacs/doom.d/)
2.  [tecosaur](https://github.com/tecosaur/emacs-config/)
3.  [MatthewZMD](https://github.com/MatthewZMD/.emacs.d)
4.  [hlissner](https://github.com/hlissner/doom-emacs)


<a id="org3947f70"></a>

# Global Configuration


<a id="org70adfba"></a>

## Basic Information

    (setq user-full-name "Jonathan Crum")
    (setq user-mail-address "crumja@uga.edu")


<a id="org966d6d8"></a>

## Path Constants

    (setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
    (setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))
    (setq LIBRARY (concat (getenv "HOME") "/Dropbox/Library"))
    (setq WORKSPACE (concat (getenv "HOME") "/Workspace"))


<a id="org90f2000"></a>

# Package Configuration


<a id="org1fed80a"></a>

## About This Section

This section of the configuration handles the declaration and setup of specific packages loaded from external libraries. Each package is split into minimally two parts, with one part tangling to `./packages.el` and the other tangling to `./config.el`. The former is part of Doom Emacs&rsquo; package management system (built on top of `straight`), while the latter is where the bulk of the actual private config happens. Below are some notes and useful macros for each.

Some of the packages sections will also have a third section for custom keybindings.


### Declaration (Packages)

Package management happens here. Declare packages to install and where they should be installed from.

Note that Doom Emacs does not utilize `package.el`. Instead, it uses its own package manager which relies on `packages.el`, which becomes a repository of resources for your own configuration in `config.el`.

Useful macros: `package!`, `disable-packages!`, `featurep!`


### Configuration (Config)

This is where the majority of your private configuration should go. Anything in this file is evaluated after all Doom modules have been loaded.

Useful macros: `after!`, `use-package!`, `add-hook!`


### Keybindings (Keybindings)

Useful macros: `define-key`, `global-set-key`, `map!`, `undefine-key!`, `define-key!`


<a id="orgc259d79"></a>

## Research Packages


### Notes

[RGoswami Config Notes](https://rgoswami.me/posts/org-note-workflow/)

This selection of packages all work together to form a suite of research-related tools and functions. This is by far the piece of this configuration that will require the most fine-tuning and labor to get working the way I want, so I wanted to separate it out to discuss it independently.

The overall workflow is something like this.

1.  Add a reference to the master bibliography file.
2.  Using Helm-Bibtex, access that bibliography item and insert a `cite:` link.
3.  Alternatively, use Org-Ref to insert a `cite:` link.
4.  On evaluating a `cite:` link, Org-Roam-Bibtex will open or create a relevant note file for that citation.

1.  Some questions to consider:

    1.  When do I want to put citations into Org documents?
        Ideally I want to be able to have notes open when working with/processing a document.
        I should be able to insert citations at any point. When I add a citation, I want it to in a references section, perhaps both in that document and in a separate index file. If I use an index file, I also want to show backlinks to the note files that cite that item.
    
    2.  How do I want to interface with the bibliography?
        Helm-Bibtex gives me the power to do this already. I want to be able to open the bibliography file and manually add entries.
        If Helm-Bibtex has a minibuffer for bib item entry, all the better. I should look into this.
    
    3.  How do I want to access PDFs?
        I would like to access PDFs from Helm-Bibtex, and by evaluating citation links.
    
    4.  How do I want to associate PDFs to entries, and notes entries?
        PDFs should be added to entries by default if the PDF is available. If not, I would like some way of having the list of PDF-less items put in my face to deal with.
        I would also like some way of keeping accountability for the completeness of my bib entries, on that note; it&rsquo;s better if there are no incomplete or broken bib items.
    
    5.  How do I want to manage notes and interconnect them?
        This is the perennial question&#x2026; I have Helm-Org-Rifle as a search engine, so that should work well enough. I can also use Org-Roam for backlinking.
        I am not sure to what extent it is a good idea to have index files for things. Projects will automatically serve as central points where clusters of backlinks should accumulate.
    
    6.  When I open a PDF, what do I want to see/what should happen?
        Ideally opening a PDF will also open its associated notes, if any exist.

2.  Notes on workflow

    The easiest way to get started on a project involving bibliography entries is to head over to a project heading in the notebook index and use `C-c b b` to open Helm-Bibtex.
    From there, select a bibliography entry to add. It will insert a citation.
    Select the citation, select add notes.
    
    One issue - how do I format the inserted citations?


### BibTeX

1.  Keybindings

    I need to set up some general keybindings for manipulating bibtex entries&#x2026;
    
        (map! :map bibtex-mode-map
              :prefix ("C-c b" . "bibtex"))


### STRT Helm-Bibtex

[Helm-Bibtex Repository](https://github.com/tmalsburg/helm-bibtex)

The **Helm-Bibtex** package is a powerful bibliography management system that run on the Helm completion framework. Some key features of Helm-Bibtex:

1.  Quickly bibliography access from within Emacs.
2.  Powerful search with instant results as you type.
3.  Tightly integrated with LaTeX authoring and Org-Mode.
4.  Insert LaTeX cite commands, BibTeX entries, or plain text references at point.
5.  Support for note-taking.
6.  Quick access to online databases like Google Scholar.
7.  Import BibTeX from CrossRef and other sources.

1.  Declaration

        (package! helm-bibtex)

2.  Configuration

        (use-package! helm-bibtex
          :defer t
          :config
          (setq bibtex-completion-bibliography BIBLIOGRAPHY)
          (setq bibtex-completion-library-path LIBRARY)
          (setq bibtex-completion-pdf-field "File")
          (setq bibtex-completion-notes-path NOTEBOOK)
          (setq bibtex-completion-notes-template-multiple-files
                (concat
                 "#+TITLE: ${title}\n"
                 "#+ROAM_KEY: cite:${=key=}\n"
                 "* TODO Notes\n"
                 ":PROPERTIES:\n"
                 ":Custom_ID: ${=key=}\n"
                 ":NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n"
                 ":AUTHOR: ${author-abbrev}\n"
                 ":JOURNAL: ${journaltitle}\n"
                 ":DATE: ${date}\n"
                 ":YEAR: ${year}\n"
                 ":DOI: ${doi}\n"
                 ":URL: ${url}\n"
                 ":END:")))

3.  Keybindings

        (map! :map org-mode-map
              :prefix ("C-c b" . "bibtex")
              "b" #'helm-bibtex
              "n b" #'helm-bibtex-with-notes)

4.  Notes

    1.  Basic Configuration
    
        Helm-Bibtex configuration involves, at minimum, specifying a bibliography file and a pdf library path to feed to the completion engine. A `listp` can be used to specify multiple bibliography files.
        
        BibTeX entries are able to keep a reference to a local pdf file (or note files, etc.) using a `File` field. Helm-Bibtex can be configured to use this field for attachment completion.
    
    2.  Notes Configuration
    
        Bibtex-completion support two methods for note storage, either all notes in a single large file, or across multiple per-publication files. The variable `bibtex-completion-notes-path` should point to an `.org` file or file directory, respectively.
    
    3.  Advanced Configuration
    
        1.  Additional fields
        
            By default, the package searches the `author`, `title`, `year`, `BibTeX key`, and `entry type` fields. Additional fields can be specified with the variable `bibtex-completion-additional-search-fields`.
            
                (setq bibtex-completion-additional-search-fields '(keywords))
        
        2.  Symbols for indicating notes
        
                (setq bibtex-completion-pdf-symbol "#")
                (setq bibtex-completion-notes-symbol "!")
        
        3.  PDF application
        
            By default, Emacs is used to open PDF files. This means that either DocView is used, or if it is installed, the much more feature-rich **pdf-tools** package. Other PDF viewers can be configured as well.


### STRT Helm-Org-Rifle

[Org-Rifle Repository](https://github.com/alphapapa/org-rifle)

The **Helm-Org-Rifle** package is a search engine for your `.org` files. Other similar engines exist, but **Helm-Org-Rifle** has the benefit of providing the heading context for the file the query result is found in. Entries are presented in a way that mimics an org-mode document, providing a nice unifying touch to the experience.

Not much in the way of configuration is needed to set this utter madlad off searching. I might want to set up keybindings to make my life easier, however!

1.  Declaration

        (package! helm-org-rifle)

2.  Configuration

        (use-package! helm-org-rifle)

3.  Keybindings

        (map! :map org-mode-map
              :prefix ("C-c s" . "search")
              "r" #'helm-org-rifle
              "o" #'helm-org-rifle-occur
              "f" #'helm-org-rifle-files)


### STRT Org-Ref

[Org-Ref Documentation](https://github.com/jkitchin/org-ref/blob/master/org-ref.org)

The variable `org-ref-bibtex-journal-abbreviations` contains a mapping of a short string to full journal title, and an abbreviated journal title. We can use these to create new versions of a bibtex file with full or abbreviated journal titles. You can add new strings like:

    (add-to-list 'org-ref-bibtex-journal-abbreviations
                 '("JIR" "Journal of Irreproducible Research" "J. Irrep. Res."))

1.  Declaration

        (package! org-ref)

2.  Configuration

        (use-package! org-ref
          :after (:any org org-noter org-roam)
          :config
          (setq reftex-default-bibliography BIBLIOGRAPHY)
        
          (setq org-ref-bibliography-notes "~/Notebook/index.org")
          (setq org-ref-default-bibliography '("~/texmf/bibtex/bib/master.bib"))
          (setq org-ref-pdf-directory "~/Dropbox/Library")
          (setq org-ref-completion-library 'helm-bibtex)
          (setq org-ref-get-pdf-filename-function 'org-ref-get-pdf-filename-helm-bibtex)
          (setq org-ref-note-title-format "* TODO %y - %t\n :PROPERTIES:\n  :Custom_ID: %k\n  :NOTER_DOCUMENT: %F\n :ROAM_KEY: cite:%k\n  :AUTHOR: %9a\n  :JOURNAL: %j\n  :YEAR: %y\n  :VOLUME: %v\n  :PAGES: %p\n  :DOI: %D\n  :URL: %U\n :END:\n\n")
          (setq org-ref-notes-directory "~/Notebook")
          (setq org-ref-notes-function 'orb-edit-notes))
        
          (setq bibtex-completion-bibliography BIBLIOGRAPHY)
          (setq bibtex-completion-library-path LIBRARY)
          (setq bibtex-completion-notes-path NOTEBOOK)

3.  Keybindings

    I need to make a binding for `org-ref-index`.


### TODO Org-Roam

Org-Roam is a notetaking package inspired by the Zettelkasten method; it is a loose implementation of the online application Roam.

Notable features include:

1.  Declaration

        (package! org-roam)

2.  Configuration

        (use-package! org-roam
          :config
          (setq org-roam-directory NOTEBOOK))

3.  Keybindings

        (map! :map org-roam-mode-map
              :prefix ("C-c r" . "Org-Roam")
              "r" #'org-roam
              "f" #'org-roam-find-file
              "g" #'org-roam-graph-show )
        
        (map! :map org-mode-map
              :prefix ("C-c r" . "Org-Roam")
              "i" #'org-roam-insert
              "I" #'org-roam-insert-immediate )


### TODO Org-Roam-Bibtex

Org-Roam-Bibtex is a library that tightens up the integration between Org-Roam, Helm-Bibtex, and Org-Ref.

It allows the user to access their bibliographical notes as assigned to the variable `org-roam-directory` via Helm-Bibtex, Ivy-Bibtex, or by opening Org-Ref&rsquo;s `cite:` links and running `3. Add notes`. If the note does not already exist, it will be created.

1.  Declaration

        (package! org-roam-bibtex)

2.  Configuration

        (use-package! org-roam-bibtex
          :after (org-roam)
          :hook (org-roam-mode . org-roam-bibtex-mode)
          :config
          (setq org-roam-bibtex-preformat-keywords
                '("=key=" "title" "url" "file" "author-or-editor" "keywords"))
          (setq orb-templates
                '(("r" "ref" plain (function org-roam-capture--get-point)
                   ""
                   :file-name "${slug}"
                   :head "#+TITLE: ${=key=}: ${title}\n#+ROAM_KEY: ${ref}
        
        - tags ::
        - keywords :: ${keywords}
        
        \n* ${title}\n  :PROPERTIES:\n  :Custom_ID: ${=key=}\n  :URL: ${url}\n  :AUTHOR: ${author-or-editor}\n  :NOTER_DOCUMENT: %(orb-process-file-field \"${=key=}\")\n  :NOTER_PAGE: \n  :END:\n\n"
        
                   :unnarrowed t))))

3.  Keybindings

        (map! :map org-mode-map
              :prefix ("C-c b" . "bibtex")
              "n a" #'orb-note-actions)


### TODO Org-Noter

1.  Declaration

        (package! org-noter)

2.  Configuration

        (use-package! org-noter
          :after (:any org pdf-view)
          :config
          (setq org-noter-notes-window-location 'other-frame)
          (setq org-noter-always-create-frame nil)
          (setq org-noter-hide-other nil)
          (setq org-noter-notes-search-path '("~/Notebook")))

3.  Keybindings

        (map! :map (org-mode-map pdf-view-mode-map)
              :prefix ("C-c n" . "Org-Noter")
              "n" #'org-noter
              "i" #'org-noter-insert-note
              "I" #'org-noter-insert-precise-note
              "SPC" #'org-noter-sync-current-note)


### HOLD Zotxt

1.  Declaration

        (package! zotxt)

2.  Configuration

        (use-package! zotxt)


<a id="org58fce2d"></a>

## External Packages


### TODO Org-Mode

1.  Declaration

        (package! org)

2.  Configuration

        (use-package! org
          :defer t
          :config
          (setq org-startup-with-inline-images nil)
          (setq org-startup-shrink-all-tables t)
          (setq org-startup-folded t)
          (setq org-use-property-inheritance t)
          (setq org-hide-emphasis-markers t)
          (setq org-capture-templates
                '(("p" "Add Package" entry (file+headline "~/.doom.d/sakura.org" "External Packages")
                   "\n*** TODO Package Name")))
          ;(add-to-list 'org-file-apps '("\\.pdf\\'" . (lambda (file link)
          ;                                              (org-pdfview-open link))))
          )
        
        (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

3.  Keybindings


### TODO Org-Babel

1.  Declaration

2.  Configuration

3.  [?] Keybindings

    Note that this ended up coming out as `SPC C-c C-v C-c` lol&#x2026;
    
        (map! :map org-mode-map
              :desc "Execute target src block" "\C-v\C-c" #'org-babel-execute-src-block)


### DONE Org-Superstar-Mode

1.  Declaration

        (package! org-superstar)


### TODO Pdfgrep

1.  Declaration

        (package! pdfgrep)

2.  Configuration

        (use-package! pdfgrep)


### STRT Pdf-Tools

1.  Declaration

        (package! pdf-tools)

2.  Configuration

        (use-package! pdf-tools
          :if (display-graphic-p)
          :mode ("\\.pdf$" . pdf-view-mode)
          :init (load "pdf-tools-autoloads" nil t)
          :config
          (pdf-tools-install)
          (setq-default pdf-view-display-size 'fit-width)
          (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
        )


### HOLD PlantUML

1.  Declaration

        (package! plantuml-mode)

2.  Configuration

        (use-package! plantuml-mode
          :defer t)


### TODO Powerthesaurus

1.  Declaration

        (package! powerthesaurus)

2.  Configuration

        (use-package! powerthesaurus
          :defer t)

3.  Keybindings

        (map! :map org-mode-map
              :prefix ("C-c w" . "writing")
              "t" #'powerthesuarus-lookup-word-dwim)


### DONE Rainbow-Mode

1.  Declaration

        (package! rainbow-mode)

2.  Configuration

        (use-package! rainbow-mode)


### TODO Treemacs

1.  Keybindings

        (map! :leader
              :nv "o n" nil
              :desc "Open treemacs pane"
              :n "o n" #'+treemacs/toggle)
        (map! :leader
              :nv "o N" nil
              :desc "Treemacs find file"
              :n "o N" #'treemacs-find-file)


<a id="orgd9f4e9e"></a>

## Testing Area

This is just a space for folding in some configuration stuff that I&rsquo;m still getting dialed in. It could include custom functions, package configuration, hooks, or other random elisp that I want to partially compartmentalize from the rest of the setup.

In the future, I might separate this out into its own file and just do a selective inclusion of it into the `./config.el` file.

    (defalias 'doc-view-mode #'pdf-view-mode)
    
    (add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))
    
    (defun sakura-find-file (orig-fun &rest args)
      (let* ((filename (car args)))
        (if (cl-find-if
             (lambda (regexp) (string-match regexp filename))
             '("\\.pdf\\'"))
            (xdg-open filename)
          (if (not (file-directory-p directory))
              (make-directory directory t))
          (apply org-fun args))))
    
    ;;(advice-add 'find-file :around 'sakura-find-file)


### Keybindings Tests

I don&rsquo;t know enough about how Doom keybinding macros work.

    (map! :leader
          (:prefix "a"
           :desc "Kill line" "d" (cmd! (previous-line)
                                       (kill-line)
                                       (forward-line))))


<a id="org171a282"></a>

## Load Private Modules

This just loads in files from the `elisp/` and `themes/` directories, consisting of my own private packages or modules. Sakura&rsquo;s theming is the critical piece that gets loaded here, but custom functions and helper functions are also called in this section.

    (load! "./elisp/init-sakura-theming.el")
    (load! "./elisp/custom-functions.el")
    
    (load! "./themes/doom-sakura-light-theme.el")
    (load! "./themes/doom-sakura-dark-theme.el")
    
    (load! "./keybindings.el")


<a id="orgb79dc1d"></a>

## Hooks

    (add-hook! 'org-babel-post-tangle-hook 'add-tangle-headers)
    ;; (add-hook! 'org-babel-post-tangle-hook 'add-latex-framework)
    (add-hook! '(+doom-dashboard-mode-hook)
      (setq fancy-splash-image "~/.doom.d/images/sakura_emacs.png"))
    
    ;; Some hooks seem not to play so nice with the doom ! notation... something to do with using a lambda expression? Test this.
    ; (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
    
    (remove-hook! 'text-mode-hook #'auto-fill-mode)


<a id="orge0435d3"></a>

# Private Modules


<a id="org62bf852"></a>

## Theming


### Theme Configuration

    (setq doom-theme 'doom-sakura-light)
    (setq doom-font (font-spec :family "Fira Code" :size 14 :weight 'normal))
    (setq display-line-numbers-type nil)
    
    (setq org-superstar-headline-bullets-list '("☰" "☷" "☵" "☲" "☳" "☴" "☶" "☱" ))


### Sakura Theming

1.  Light Theme

    1.  Dependencies
    
            (require 'doom-themes)
    
    2.  Group Definitions
    
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
    
    3.  Color Palette
    
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
    
    4.  Tweaks
    
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


<a id="orgc9b27d1"></a>

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


### Tangle LaTeX

    (defun add-latex-framework ()
      (message "running in %s" (buffer-file-name))
      (cond
       ((f-ext? (buffer-file-name) "tex")
        (goto-char (point-min))
        (insert "\documentclass[12pt]{article}\n")
        (forward-line 1)
        (insert "\insert{preamble.tex}\n")
        (forward-line 1)
        (insert "\title{<Autogenerated LaTeX Title>}\n")
        (forward-line 1)
        (insert "\begin{document}")
        (goto-char (point-max))
        (forward-line 1)
        (insert "\end{document}"))
       (t
        nil))
      (save-buffer))

