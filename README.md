

<a id="orge12e814"></a>

# Sakura Emacs


# Table of Contents     :TOC_2_ORG:

-   [Sakura Emacs](#orge12e814)
-   [Introduction](#org792dbb6)
    -   [About Emacs](#org77b1c1e)
    -   [About Doom Emacs](#orge1a58b3)
    -   [About Sakura Emacs](#orgf58edae)
-   [Config](#org1e601d8)
    -   [Basic Information](#org8ff43de)
    -   [Path Constants](#org036c48a)
    -   [Configure Packages](#org3f57d72)
    -   [Load Private Modules](#org562a8b5)
    -   [Hooks](#orgd154445)
-   [Packages](#org5788820)
    -   [Research Packages](#orgbbe218b)
    -   [Programming Packages](#orga3134b4)
    -   [Other Packages](#org56596d4)
-   [Keybindings](#org8d760e4)
    -   [Doom Bindings](#org50b42d0)
-   [Private Modules](#org9a6a3ee)
    -   [Theming](#org6fbe52e)
    -   [Custom Functions](#org4c22f21)


<a id="org792dbb6"></a>

# Introduction


<a id="org77b1c1e"></a>

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


<a id="orge1a58b3"></a>

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


<a id="orgf58edae"></a>

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

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. This file is also used to generate the actual configuration files by running `M-x org-babel-tangle`.


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


<a id="org1e601d8"></a>

# Config

This is where the majority of your private configuration should go. Anything in this file is evaluated after all Doom modules have been loaded.

Useful macros: `after!`, `use-package!`, `add-hook!`


<a id="org8ff43de"></a>

## Basic Information

    (setq user-full-name "Jonathan Crum")
    (setq user-mail-address "crumja@uga.edu")


<a id="org036c48a"></a>

## Path Constants

    (setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
    (setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))


<a id="org3f57d72"></a>

## Configure Packages


### Helm-Bibtex

[Helm-Bibtex Repository](https://github.com/tmalsburg/helm-bibtex)

The **Helm-Bibtex** package is a powerful bibliography management system that run on the Helm completion framework. Some key features of Helm-Bibtex:

1.  Quickly bibliography access from within Emacs.
2.  Powerful search with instant results as you type.
3.  Tightly integrated with LaTeX authoring and Org-Mode.
4.  Insert LaTeX cite commands, BibTeX entries, or plain text references at point.
5.  Support for note-taking.
6.  Quick access to online databases like Google Scholar.
7.  Import BibTeX from CrossRef and other sources.

    (use-package! helm-bibtex
      :defer t
      :config
      (setq bibtex-completion-bibliography '(BIBLIOGRAPHY))
      (setq bibtex-completion-library-path (concat (getenv "HOME") "Dropbox/Library"))
      (setq bibtex-completion-pdf-field "File")
      (setq bibtex-completion-notes-path NOTEBOOK)
      )

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


### Helm-Org-Rifle

[Org-Rifle Repository](https://github.com/alphapapa/org-rifle)

The **Helm-Org-Rifle** package is a search engine for your `.org` files. Other similar engines exist, but **Helm-Org-Rifle** has the benefit of providing the heading context for the file the query result is found in. Entries are presented in a way that mimics an org-mode document, providing a nice unifying touch to the experience.

Not much in the way of configuration is needed to set this utter madlad off searching. I might want to set up keybindings to make my life easier, however!

    (use-package! helm-org-rifle)


### Org-Mode

    (use-package! org
      :defer t
      :config
      (setq org-startup-with-inline-images nil)
      (setq org-startup-shrink-all-tables t)
      (setq org-use-property-inheritance t)
      (setq org-hide-emphasis-markers t))
    
    (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
    
    ;(after! org
    ;  (setq org-superstar-mode 1))


### Org-Ref

    (use-package! org-ref)


### Org-Roam

    (use-package! org-roam)


### Pdfgrep

    (use-package! pdfgrep)


### Pdf-Tools

    (use-package! pdf-tools)


### Rainbow-Mode

    (use-package! rainbow-mode)


### Zotxt

    (use-package! zotxt)


<a id="org562a8b5"></a>

## Load Private Modules

    (load! "./elisp/init-sakura-theming.el")
    (load! "./elisp/custom-functions.el")
    
    (load! "./themes/doom-sakura-light-theme.el")
    (load! "./themes/doom-sakura-dark-theme.el")


<a id="orgd154445"></a>

## Hooks

    (add-hook! 'org-babel-post-tangle-hook 'add-tangle-headers)
    (add-hook! '(+doom-dashboard-mode-hook)
      (setq fancy-splash-image "~/.doom.d/images/sakura_emacs.png"))
    
    ;; Some hooks seem not to play so nice with the doom ! notation... something to do with using a lambda expression? Test this.
    ; (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
    
    (remove-hook! 'text-mode-hook #'auto-fill-mode)


<a id="org5788820"></a>

# Packages

Package management happens here. Declare packages to install and where they should be installed from.

Note that Doom Emacs does not utilize `package.el`. Instead, it uses its own package manager which relies on `packages.el`, which becomes a repository of resources for your own configuration in `config.el`.

Useful macros: `package!`, `disable-packages!`, `featurep!`


<a id="orgbbe218b"></a>

## Research Packages


### Helm-Bibtex

    (package! helm-bibtex)


### Helm-Org-Rifle

    (package! helm-org-rifle)


### Org-Mode

    (package! org)


### Org-Superstar-Mode

    (package! org-superstar)


### Org-Ref

    (package! org-ref)


### Org-Roam

    (package! org-roam)


### Pdfgrep

    (package! pdfgrep)


### Pdf-Tools

    (package! pdf-tools)


### Rainbow-Mode

    (package! rainbow-mode)


### Zotxt

    (package! zotxt)


<a id="orga3134b4"></a>

## Programming Packages


### Clojure


### Dart


### TypeScript


### Python


<a id="org56596d4"></a>

## Other Packages


<a id="org8d760e4"></a>

# Keybindings


<a id="org50b42d0"></a>

## Doom Bindings

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Leader</th>
<th scope="col" class="org-left">Binding</th>
<th scope="col" class="org-left">Function</th>
<th scope="col" class="org-left">Used</th>
<th scope="col" class="org-left">Replace?</th>
<th scope="col" class="org-left">Notes</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left"><code>SPC-</code></td>
<td class="org-left"><code>RET</code></td>
<td class="org-left">Jump to bookmark</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>SPC</code></td>
<td class="org-left">Find file in project</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>'</code></td>
<td class="org-left">Resume last search</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>*</code></td>
<td class="org-left">Search for symbol in project</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>,</code></td>
<td class="org-left">Switch workspace buffer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>.</code></td>
<td class="org-left">Find file</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>:</code></td>
<td class="org-left"><code>M-x</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>;</code></td>
<td class="org-left">Eval expression</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>&lt;</code></td>
<td class="org-left">Switch buffer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>`</code></td>
<td class="org-left">Switch to last buffer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>u</code></td>
<td class="org-left">Universal argument</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>x</code></td>
<td class="org-left">Pop up scratch buffer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>~</code></td>
<td class="org-left">Toggle last popup</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>X</code></td>
<td class="org-left">Org capture</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>TAB</code></td>
<td class="org-left">+workspace</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>b</code></td>
<td class="org-left">+buffer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>c</code></td>
<td class="org-left"><a href="#orgc32c481">+code</a></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>f</code></td>
<td class="org-left">+file</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>g</code></td>
<td class="org-left">+git</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>h</code></td>
<td class="org-left">+help</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>i</code></td>
<td class="org-left">+insert</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>m</code></td>
<td class="org-left">+&lt;localleader&gt;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>n</code></td>
<td class="org-left">+notes</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>o</code></td>
<td class="org-left">+open</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>p</code></td>
<td class="org-left">+project</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>q</code></td>
<td class="org-left">+quit/session</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>s</code></td>
<td class="org-left">+search</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>t</code></td>
<td class="org-left">+toggle</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>w</code></td>
<td class="org-left">+window</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left"><code>C-</code></td>
<td class="org-left"><code>c</code></td>
<td class="org-left">+org</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


### SPC-

1.  +code


### C-

1.  +org

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">Binding</th>
    <th scope="col" class="org-left">Function</th>
    </tr>
    </thead>
    
    <tbody>
    <tr>
    <td class="org-left"><code>C-c C-v</code></td>
    <td class="org-left"><a href="#org5fb11cc">Babel</a></td>
    </tr>
    
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    </table>
    
    1.  Babel
    
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">Binding</th>
        <th scope="col" class="org-left">Function</th>
        </tr>
        </thead>
        
        <tbody>
        <tr>
        <td class="org-left"><code>C-c C-v C-t</code></td>
        <td class="org-left">Tangle</td>
        </tr>
        
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        </table>


<a id="org9a6a3ee"></a>

# Private Modules


<a id="org6fbe52e"></a>

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
            ;;(base3        '("#FBF7EF"   nil   nil))
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


<a id="org4c22f21"></a>

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

