<a id="org70e8df6"></a>

# Sakura-EMACS


# Table of Contents     :TOC_2_ORG:

-   [Sakura-EMACS](#org70e8df6)
-   [About Emacs](#org58d6132)
-   [About Doom Emacs](#org6d99a81)
-   [About Sakura Emacs](#org55588d6)
    -   [Screenshot](#org1a9203e)
    -   [About README](#org030998b)
    -   [Installation](#orgde13a0a)
    -   [Modification](#orgcdb67b8)
    -   [Contribution](#org5cd393c)
    -   [Special Thanks](#orgaf43988)
-   [Startup](#org0b86c91)
-   [Package Management](#orgb20ecbf)
-   [Global Configuration](#orgd7d3bcb)
    -   [User Information](#org9ac12a2)
-   [Theming and UI](#orga40ec0d)
    -   [Treemacs](#org1cfc1c4)
-   [Programming](#org60304e5)
    -   [Clojure](#org50de1de)
    -   [Dart](#orgee57a70)
    -   [Elisp](#org6ee52d9)
    -   [Python](#orgc6c7ce8)
    -   [TypeScript](#orgab87c36)
-   [Research](#orgda4708e)
    -   [Helm-Org-BibTeX](#orgad50bbf)
    -   [LaTeX](#org73aa378)
    -   [Org](#orgce1ceb6)
    -   [Org-Roam](#org50bd4c0)
    -   [Org-Ref](#org1743118)
    -   [Zotxt](#org925b03a)
-   [Miscellaneous](#org22aad18)


<a id="org58d6132"></a>

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


<a id="org6d99a81"></a>

# About Doom Emacs

Doom is a configuration framework for [GNU Emacs 26.3+](https://www.gnu.org/software/emacs/) tailored for Emacs bankruptcy veterans who want less framework in their frameworks and the performance of a hand rolled config (or better). It can be a foundation for your own config or a resource for Emacs enthusiasts to learn more about our favorite OS.

Doom is an opinionated collection of reasonable (and optional) defaults with a focus on performance (both runtime and startup) and on abstraction-light, readable code design, so that there is less between you and Emacs.

*This **About Doom-Emacs** section credits to [Doom-Emacs](https://github.com/hlissner/doom-emacs).*


<a id="org55588d6"></a>

# About Sakura Emacs

**Sakura Emacs** is a custom Doom Emacs configuration that aims to enhance the default Doom experience with certain opinionated package selections. Sakura&rsquo;s theming and color selection is based on my personal color palette that I use for my i3-regolith desktop configuration. One of my goals with this setup was to provide centralized documentation which can be easily navigated and referenced. This file contains virtually all of the configuration code for Sakura.

As a neurodivergent grad student, I have gone through multiple productivity and notetaking suites, including many Emacs configurations, looking for the &ldquo;perfect&rdquo; setup for my research workflow. I have come to understand a few basic principles from this quest.

1.  There is no such thing as a single &ldquo;perfect&rdquo; suite or configuration.
2.  Cultivation and maintenance is more instrumental in promoting habit than trying to rely on a pre-configured framework.
3.  All best-laid plans for a system will inevitably go to shit - so learn to get ahead of that by being predictable and consistent.

These principles have crystallized into a sort of philosophy that I try (sometimes unsuccessfully, granted) to apply to any situation where I interact with the digital landscape. This can be subsumed under a broader rubric of practicing mindfulness.

This configuration is designed and tested for **GNU Emacs 28 and above only**.


<a id="org1a9203e"></a>

## TODO Screenshot


<a id="org030998b"></a>

## About README

This README is generated from `sakura.org` using `M-x org-gfm-export-to-markdown`. The code blocks found in this file are pulled in from the individual elisp files, which are themselves produced by running `M-x org-babel-tangle` on `index.org`. This provides me the benefit of having a clean documentation file for the entire configuration that is entirely decoupled from the back-end literate configuration - whatever its state of disarray.


<a id="orgde13a0a"></a>

## TODO Installation


<a id="orgcdb67b8"></a>

## TODO Modification

As mentioned in the **About README** section above, this file and the `README.md` generated from it are not the main literate configuration files! This file merely pulls the content of the config files in the `elisp/` directory and organizes them for documentation. The `index.org` file is the root of the actual literate configuration.

You must manually update this README with new changes by doing the following steps:


<a id="org5cd393c"></a>

## Contribution

If you have spotted a bug or have a suggestion for this configuration, please file an issue. If you have something you&rsquo;d like to fix, feel free to create a pull request.


<a id="orgaf43988"></a>

## Special Thanks

To continue the trend of learning from people learning from people learning from people who know what they&rsquo;re doing, I want to acknowledge the configurations I&rsquo;ve taken inspiration from:

1.  [Justine Kizhakkinedath](https://gitlab.com/justinekizhak/dotfiles/blob/master/emacs/doom.d/)
2.  [MatthewZMD](https://github.com/MatthewZMD/.emacs.d)
3.  [hlissner](https://github.com/hlissner/doom-emacs)


<a id="org0b86c91"></a>

# TODO Startup


<a id="orgb20ecbf"></a>

# TODO Package Management


<a id="orgd7d3bcb"></a>

# TODO Global Configuration


<a id="org9ac12a2"></a>

## User Information

```emacs-lisp
(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")
```


<a id="orga40ec0d"></a>

# TODO Theming and UI


<a id="org1cfc1c4"></a>

## Treemacs


<a id="org60304e5"></a>

# TODO Programming


<a id="org50de1de"></a>

## Clojure


<a id="orgee57a70"></a>

## Dart


<a id="org6ee52d9"></a>

## Elisp


<a id="orgc6c7ce8"></a>

## Python


### Jupyter


<a id="orgab87c36"></a>

## TypeScript


<a id="orgda4708e"></a>

# TODO Research


<a id="orgad50bbf"></a>

## Helm-Org-BibTeX


<a id="org73aa378"></a>

## LaTeX


<a id="orgce1ceb6"></a>

## Org


<a id="org50bd4c0"></a>

## Org-Roam


<a id="org1743118"></a>

## Org-Ref


<a id="org925b03a"></a>

## Zotxt


<a id="org22aad18"></a>

# TODO Miscellaneous
