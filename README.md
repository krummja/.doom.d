<a id="org8bb70cb"></a>

# Sakura-EMACS


# Table of Contents     :TOC_2_ORG:

-   [Sakura-EMACS](#org8bb70cb)
-   [About Emacs](#org388dee8)
-   [About Doom Emacs](#orgca4a473)
-   [About Sakura Emacs](#orgcaf271d)
    -   [Screenshot](#org6971418)
    -   [About README](#orgd970cbb)
    -   [Installation](#orgf513430)
    -   [Modification](#org8494620)
    -   [Contribution](#org9381abb)
    -   [Special Thanks](#orgbc011ad)
-   [Startup](#orgb76f7cb)
-   [Package Management](#orgd97b497)
-   [Global Configuration](#org5878a9a)
    -   [User Information](#org41d62db)
-   [Theming and UI](#org0a9bb86)
    -   [Treemacs](#orgca765ab)
-   [Programming](#orgda854ef)
    -   [Clojure](#orgec54534)
    -   [Dart](#orgf04a6d5)
    -   [Elisp](#orga814180)
    -   [Python](#org4f1a43a)
    -   [TypeScript](#orgfdb1499)
-   [Research](#orgaf5c319)
    -   [Helm-Org-BibTeX](#orgd5368b3)
    -   [LaTeX](#org515400a)
    -   [Org](#org7ee623e)
    -   [Org-Roam](#org81b7d42)
    -   [Org-Ref](#org5871515)
    -   [Zotxt](#org1594f8a)
-   [Miscellaneous](#org8d464d2)


<a id="org388dee8"></a>

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


<a id="orgca4a473"></a>

# About Doom Emacs

Doom is a configuration framework for [GNU Emacs 26.3+](https://www.gnu.org/software/emacs/) tailored for Emacs bankruptcy veterans who want less framework in their frameworks and the performance of a hand rolled config (or better). It can be a foundation for your own config or a resource for Emacs enthusiasts to learn more about our favorite OS.

Doom is an opinionated collection of reasonable (and optional) defaults with a focus on performance (both runtime and startup) and on abstraction-light, readable code design, so that there is less between you and Emacs.

*This **About Doom-Emacs** section credits to [Doom-Emacs](https://github.com/hlissner/doom-emacs).*


<a id="orgcaf271d"></a>

# About Sakura Emacs

**Sakura Emacs** is a custom Doom Emacs configuration that aims to enhance the default Doom experience with certain opinionated package selections. Sakura&rsquo;s theming and color selection is based on my personal color palette that I use for my i3-regolith desktop configuration. One of my goals with this setup was to provide centralized documentation which can be easily navigated and referenced. This file contains virtually all of the configuration code for Sakura.

As a neurodivergent grad student, I have gone through multiple productivity and notetaking suites, including many Emacs configurations, looking for the &ldquo;perfect&rdquo; setup for my research workflow. I have come to understand a few basic principles from this quest.

1.  There is no such thing as a single &ldquo;perfect&rdquo; suite or configuration.
2.  Cultivation and maintenance is more instrumental in promoting habit than trying to rely on a pre-configured framework.
3.  All best-laid plans for a system will inevitably go to shit - so learn to get ahead of that by being predictable and consistent.

These principles have crystallized into a sort of philosophy that I try (sometimes unsuccessfully, granted) to apply to any situation where I interact with the digital landscape. This can be subsumed under a broader rubric of practicing mindfulness.

This configuration is designed and tested for **GNU Emacs 28 and above only**.


<a id="org6971418"></a>

## TODO Screenshot


<a id="orgd970cbb"></a>

## About README

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. The code blocks found in this file are pulled in from the individual elisp files, which are themselves produced by running `M-x org-babel-tangle` on `index.org`. This provides me the benefit of having a clean documentation file for the entire configuration that is entirely decoupled from the back-end literate configuration - whatever its state of disarray.


<a id="orgf513430"></a>

## TODO Installation


<a id="org8494620"></a>

## TODO Modification

As mentioned in the **About README** section above, this file and the `README.md` generated from it are not the main literate configuration files! This file merely pulls the content of the config files in the `elisp/` directory and organizes them for documentation. The `index.org` file is the root of the actual literate configuration.

You must manually update this README with new changes by doing the following steps:


<a id="org9381abb"></a>

## Contribution

If you have spotted a bug or have a suggestion for this configuration, please file an issue. If you have something you&rsquo;d like to fix, feel free to create a pull request.


<a id="orgbc011ad"></a>

## Special Thanks

To continue the trend of learning from people learning from people learning from people who know what they&rsquo;re doing, I want to acknowledge the configurations I&rsquo;ve taken inspiration from:

1.  [Justine Kizhakkinedath](https://gitlab.com/justinekizhak/dotfiles/blob/master/emacs/doom.d/)
2.  [MatthewZMD](https://github.com/MatthewZMD/.emacs.d)
3.  [hlissner](https://github.com/hlissner/doom-emacs)


<a id="orgb76f7cb"></a>

# TODO Startup


<a id="orgd97b497"></a>

# TODO Package Management


<a id="org5878a9a"></a>

# TODO Global Configuration


<a id="org41d62db"></a>

## User Information

```emacs-lisp
(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")
```


<a id="org0a9bb86"></a>

# TODO Theming and UI


<a id="orgca765ab"></a>

## Treemacs


<a id="orgda854ef"></a>

# TODO Programming


<a id="orgec54534"></a>

## Clojure


<a id="orgf04a6d5"></a>

## Dart


<a id="orga814180"></a>

## Elisp


<a id="org4f1a43a"></a>

## Python


### Jupyter


<a id="orgfdb1499"></a>

## TypeScript


<a id="orgaf5c319"></a>

# TODO Research


<a id="orgd5368b3"></a>

## Helm-Org-BibTeX


<a id="org515400a"></a>

## LaTeX


<a id="org7ee623e"></a>

## Org


<a id="org81b7d42"></a>

## Org-Roam


<a id="org5871515"></a>

## Org-Ref


<a id="org1594f8a"></a>

## Zotxt


<a id="org8d464d2"></a>

# TODO Miscellaneous
