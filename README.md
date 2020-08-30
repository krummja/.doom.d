<a id="org31a77e8"></a>

# Sakura-EMACS


# Table of Contents     :TOC_2_ORG:

-   [Sakura-EMACS](#org31a77e8)
-   [About Emacs](#org38ac41b)
-   [About Doom Emacs](#orgbb76833)
-   [About Sakura Emacs](#org1099f42)
    -   [Screenshot](#org90adcb1)
    -   [About README](#org0a633cb)
    -   [Installation](#org485117c)
    -   [Modification](#org703ec76)
    -   [Contribution](#org4470b81)
    -   [Special Thanks](#org70c6aaf)
-   [Startup](#org17bfa63)
-   [Global Configuration](#org5bc8739)
    -   [User Information](#org245e036)
    -   [Path Constants](#orgf69a280)
-   [Custom Functions](#org4591ce9)
-   [Keybindings](#org12384c5)
-   [Theming and UI](#orgcba2970)
    -   [Treemacs](#org6a08e11)
-   [Programming](#org9281196)
    -   [Clojure](#org0e2f2f7)
    -   [Dart](#org9207809)
    -   [Elisp](#org6421464)
    -   [Python](#orgc550081)
    -   [TypeScript](#orgedee693)
-   [Research](#org7d5f266)
    -   [Helm-Org-BibTeX](#orgc591959)
    -   [LaTeX](#org71665f2)
    -   [Org](#org659c591)
    -   [Org-Roam](#orgcf1b7b5)
    -   [Org-Ref](#orgc76e69a)
    -   [Zotxt](#org691adb7)
-   [Miscellaneous](#org0fee04f)


<a id="org38ac41b"></a>

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


<a id="orgbb76833"></a>

# About Doom Emacs

Doom is a configuration framework for [GNU Emacs 26.3+](https://www.gnu.org/software/emacs/) tailored for Emacs bankruptcy veterans who want less framework in their frameworks and the performance of a hand rolled config (or better). It can be a foundation for your own config or a resource for Emacs enthusiasts to learn more about our favorite OS.

Doom is an opinionated collection of reasonable (and optional) defaults with a focus on performance (both runtime and startup) and on abstraction-light, readable code design, so that there is less between you and Emacs.

*This **About Doom-Emacs** section credits to [Doom-Emacs](https://github.com/hlissner/doom-emacs).*


<a id="org1099f42"></a>

# About Sakura Emacs

**Sakura Emacs** is a custom Doom Emacs configuration that aims to enhance the default Doom experience with certain opinionated package selections. Sakura&rsquo;s theming and color selection is based on my personal color palette that I use for my i3-regolith desktop configuration. One of my goals with this setup was to provide centralized documentation which can be easily navigated and referenced. This file contains virtually all of the configuration code for Sakura.

As a neurodivergent grad student, I have gone through multiple productivity and notetaking suites, including many Emacs configurations, looking for the &ldquo;perfect&rdquo; setup for my research workflow. I have come to understand a few basic principles from this quest.

1.  There is no such thing as a single &ldquo;perfect&rdquo; suite or configuration.
2.  Cultivation and maintenance is more instrumental in promoting habit than trying to rely on a pre-configured framework.
3.  All best-laid plans for a system will inevitably go to shit - so learn to get ahead of that by being predictable and consistent.

These principles have crystallized into a sort of philosophy that I try (sometimes unsuccessfully, granted) to apply to any situation where I interact with the digital landscape. This can be subsumed under a broader rubric of practicing mindfulness.

This configuration is designed and tested for **GNU Emacs 28 and above only**.


<a id="org90adcb1"></a>

## TODO Screenshot


<a id="org0a633cb"></a>

## About README

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. This file also generates the actual configuration by running `M-x org-babel-tangle`.


<a id="org485117c"></a>

## TODO Installation


<a id="org703ec76"></a>

## TODO Modification


<a id="org4470b81"></a>

## Contribution

If you have spotted a bug or have a suggestion for this configuration, please file an issue. If you have something you&rsquo;d like to fix, feel free to create a pull request.


<a id="org70c6aaf"></a>

## Special Thanks

To continue the trend of learning from people learning from people learning from people who know what they&rsquo;re doing, I want to acknowledge the configurations I&rsquo;ve taken inspiration from:

1.  [Justine Kizhakkinedath](https://gitlab.com/justinekizhak/dotfiles/blob/master/emacs/doom.d/)
2.  [MatthewZMD](https://github.com/MatthewZMD/.emacs.d)
3.  [hlissner](https://github.com/hlissner/doom-emacs)


<a id="org17bfa63"></a>

# TODO Startup

```emacs-lisp
(load! "./elisp/init-user-information.el")
(load! "./elisp/init-path-constants.el")
```


<a id="org5bc8739"></a>

# TODO Global Configuration

The **Global Configuration** houses all settings that are not specific to a layer.


<a id="org245e036"></a>

## User Information

```emacs-lisp
;;; init-user-information.el --- -*- lexical-binding: t -*-

(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")
```


<a id="orgf69a280"></a>

## Path Constants

```emacs-lisp
;;; init-path-constants.el --- -*- lexical-binding: t -*-

(setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
(setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))
```


<a id="org4591ce9"></a>

# TODO Custom Functions


<a id="org12384c5"></a>

# TODO Keybindings


<a id="orgcba2970"></a>

# TODO Theming and UI


<a id="org6a08e11"></a>

## Treemacs


<a id="org9281196"></a>

# TODO Programming


<a id="org0e2f2f7"></a>

## Clojure


<a id="org9207809"></a>

## Dart


<a id="org6421464"></a>

## Elisp


<a id="orgc550081"></a>

## Python


### Jupyter


<a id="orgedee693"></a>

## TypeScript


<a id="org7d5f266"></a>

# TODO Research


<a id="orgc591959"></a>

## Helm-Org-BibTeX


<a id="org71665f2"></a>

## LaTeX


<a id="org659c591"></a>

## Org


<a id="orgcf1b7b5"></a>

## Org-Roam


<a id="orgc76e69a"></a>

## Org-Ref


<a id="org691adb7"></a>

## Zotxt


<a id="org0fee04f"></a>

# TODO Miscellaneous
