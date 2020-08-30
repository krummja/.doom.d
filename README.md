<a id="org90c96b9"></a>

# Sakura-EMACS


# Table of Contents     :TOC_2_ORG:

-   [Sakura-EMACS](#org90c96b9)
-   [About Emacs](#org7fdb6b8)
-   [About Doom Emacs](#orgd984ea7)
-   [About Sakura Emacs](#org969529a)
    -   [Screenshot](#org219595a)
    -   [About README](#org5d713c2)
    -   [Installation](#orgbeee84b)
    -   [Modification](#org876092c)
    -   [Contribution](#orge668938)
    -   [Special Thanks](#orgcbe2171)
-   [Startup](#orge506c24)
    -   [Load Configurations](#org12dcc89)
    -   [Hooks](#orgea8c74c)
-   [Global Configuration](#org56fea4c)
    -   [User Information](#org969021e)
    -   [Path Constants](#org098f5b4)
-   [Custom Functions](#org7365939)
    -   [Add Tangle Headers](#org5f96559)
-   [Keybindings](#orgd02e80e)
-   [Theming and UI](#orgfb2f160)
    -   [Treemacs](#org9eff4d8)
-   [Programming](#org80cf393)
    -   [Clojure](#org5314b6f)
    -   [Dart](#orgad33b6a)
    -   [Elisp](#orgbb23678)
    -   [Python](#org42c8069)
    -   [TypeScript](#orgf03b102)
-   [Research](#org5dde795)
    -   [Helm-Org-BibTeX](#org7593bff)
    -   [LaTeX](#org9e7f580)
    -   [Org](#orgdb6a037)
    -   [Org-Roam](#orgc12a97b)
    -   [Org-Ref](#orgf9e55a0)
    -   [Zotxt](#org9da3c02)
-   [Miscellaneous](#org5aa10de)


<a id="org7fdb6b8"></a>

# About Emacs

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


<a id="orgd984ea7"></a>

# About Doom Emacs

Doom is a configuration framework for [GNU Emacs 26.3+](https://www.gnu.org/software/emacs/) tailored for Emacs bankruptcy veterans who want less framework in their frameworks and the performance of a hand rolled config (or better). It can be a foundation for your own config or a resource for Emacs enthusiasts to learn more about our favorite OS.

Doom is an opinionated collection of reasonable (and optional) defaults with a focus on performance (both runtime and startup) and on abstraction-light, readable code design, so that there is less between you and Emacs.

*This **About Doom-Emacs** section credits to [Doom-Emacs](https://github.com/hlissner/doom-emacs).*


<a id="org969529a"></a>

# About Sakura Emacs

**Sakura Emacs** is a custom Doom Emacs configuration that aims to enhance the default Doom experience with certain opinionated package selections. Sakura&rsquo;s theming and color selection is based on my personal color palette that I use for my i3-regolith desktop configuration. One of my goals with this setup was to provide centralized documentation which can be easily navigated and referenced. This file contains virtually all of the configuration code for Sakura.

As a neurodivergent grad student, I have gone through multiple productivity and notetaking suites, including many Emacs configurations, looking for the &ldquo;perfect&rdquo; setup for my research workflow. I have come to understand a few basic principles from this quest.

1.  There is no such thing as a single &ldquo;perfect&rdquo; suite or configuration.
2.  Cultivation and maintenance is more instrumental in promoting habit than trying to rely on a pre-configured framework.
3.  All best-laid plans for a system will inevitably go to shit - so learn to get ahead of that by being predictable and consistent.

These principles have crystallized into a sort of philosophy that I try (sometimes unsuccessfully, granted) to apply to any situation where I interact with the digital landscape. This can be subsumed under a broader rubric of practicing mindfulness.

This configuration is designed and tested for **GNU Emacs 28 and above only**.


<a id="org219595a"></a>

## TODO Screenshot


<a id="org5d713c2"></a>

## About README

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. This file also generates the actual configuration by running `M-x org-babel-tangle`.


<a id="orgbeee84b"></a>

## TODO Installation


<a id="org876092c"></a>

## TODO Modification


<a id="orge668938"></a>

## Contribution

If you have spotted a bug or have a suggestion for this configuration, please file an issue. If you have something you&rsquo;d like to fix, feel free to create a pull request.


<a id="orgcbe2171"></a>

## Special Thanks

To continue the trend of learning from people learning from people learning from people who know what they&rsquo;re doing, I want to acknowledge the configurations I&rsquo;ve taken inspiration from:

1.  [Justine Kizhakkinedath](https://gitlab.com/justinekizhak/dotfiles/blob/master/emacs/doom.d/)
2.  [MatthewZMD](https://github.com/MatthewZMD/.emacs.d)
3.  [hlissner](https://github.com/hlissner/doom-emacs)


<a id="orge506c24"></a>

# TODO Startup


<a id="org12dcc89"></a>

## Load Configurations

```emacs-lisp
(load! "./elisp/init-user-information.el")
(load! "./elisp/init-path-constants.el")
(load! "./elisp/custom-functions.el")
```


<a id="orgea8c74c"></a>

## Hooks

```emacs-lisp
(add-hook 'org-babel-post-tangle-hook 'add-tangle-headers)
```


<a id="org56fea4c"></a>

# TODO Global Configuration

The **Global Configuration** houses all settings that are not specific to a layer.


<a id="org969021e"></a>

## User Information

```emacs-lisp
(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")
```


<a id="org098f5b4"></a>

## Path Constants

```emacs-lisp
(setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
(setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))
```


<a id="org7365939"></a>

# TODO Custom Functions


<a id="org5f96559"></a>

## Add Tangle Headers

Append a specific string or header to a file on executing `org-babel-tangle`. From [this stackexchange](https://emacs.stackexchange.com/questions/50488/adding-header-to-a-org-mode-tangled-file).

This function is especially useful when tangling a configuration, such as this one, and then exporting separately to markdown. This prevents the generated markdown file from being polluted with unnecessary lines like `lexical-binding` headers.

```emacs-lisp
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
```


<a id="orgd02e80e"></a>

# TODO Keybindings


<a id="orgfb2f160"></a>

# TODO Theming and UI


<a id="org9eff4d8"></a>

## Treemacs


<a id="org80cf393"></a>

# TODO Programming


<a id="org5314b6f"></a>

## Clojure


<a id="orgad33b6a"></a>

## Dart


<a id="orgbb23678"></a>

## Elisp


<a id="org42c8069"></a>

## Python


### Jupyter


<a id="orgf03b102"></a>

## TypeScript


<a id="org5dde795"></a>

# TODO Research


<a id="org7593bff"></a>

## Helm-Org-BibTeX


<a id="org9e7f580"></a>

## LaTeX


<a id="orgdb6a037"></a>

## Org


<a id="orgc12a97b"></a>

## Org-Roam


<a id="orgf9e55a0"></a>

## Org-Ref


<a id="org9da3c02"></a>

## Zotxt


<a id="org5aa10de"></a>

# TODO Miscellaneous
