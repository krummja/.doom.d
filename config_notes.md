

# Table of Contents     :TOC_3_ORG:

-   [Configuration](#orgbb55458)
    -   [Init](#org0859657)
        -   [DOs and DONTs](#orgf133025)
    -   [Config](#orge298f8f)
        -   [DOs and DONTs](#orgf133025)
        -   [Basic Macros](#org868b082)
        -   [Keybinding](#orgad9abce)
    -   [Packages](#orge896e29)
        -   [DOs and DONTs:](#orge8338b6)
        -   [Installing packages](#orgb29a5e7)
    -   [Additional Files](#org2ea6fb2)
    -   [Writing Modules](#org7d36436)
        -   [Module Structure](#org3fc2d4f)


<a id="orgbb55458"></a>

# Configuration

Doom Emacs can be configured by modifying the files found in your local `$DOOMDIR`. Doom expects this to be either `$HOME/.config/doom/` or `$HOME/.doom.d/`. When Doom is first set up, this directory contains three files:


<a id="org0859657"></a>

## Init

This is where the `doom!` block is found. This controls which Doom modules are enabled and their load order. This file is evaluated early during Emacs startup, before any other modules get loaded. This file should generally not be modified apart from (un)commenting specific lines to enable or disable modules.

Note that a Doom &ldquo;module&rdquo; is actually just the Doom-specific term for a layer. It is a bundle of packages, configurations, and commands that can be collectively toggled on or off.


<a id="orgf133025"></a>

### DOs and DONTs

1.  DO:

    -   Configure Emacs to perform setup/teardown operations that must happen early, before other modules (or the module in question) are loaded.
    -   Reconfigure packages defined in Doom modules with `use-package-hook!`.
    -   Configure behavior of `bin/doom` in a way that must also apply in interactive sessions.

2.  DONT:

    -   Configure packages with `use-package!` or `after!`.
    -   Perform expensive or error-prone operations.
    -   Define new `bin/doom` commands; use `cli.el` instead.


<a id="orge298f8f"></a>

## Config

This is where the majority of your private configuration should go. Anything in this file is evaluated after all Doom modules have been loaded.


### DOs and DONTs

1.  DO:

    -   Use `after!` and `use-package!` to configure packages.
    -   Lazy load packages with `use-package`&rsquo;s `:defer` property.
    -   Use the `featurep!` macro to make some configuration conditional based on the state of another module or the presence of a flag.

2.  DONT:

    -   Use `package!`.
    -   Install packages with `package.el` or `use-package`&rsquo;s `:ensure` property. That is what `packages.el` is for.


<a id="org868b082"></a>

### Basic Macros

1.  Set Variables

        (setq doom-font (font-spec :family "Fira Code"
                                   :size 12))

2.  Defer

        (after! evil
          (setq evil-magic nil))

3.  Hook

        (add-hook! python-mode
                   (setq python-shell-interpreter "bpython"))

4.  Use Package

        (use-package! hl-todo
          :hook (prog-mode . hl-todo-mode)
          :init
          ;; Code here will run immediately
          :config
          ;; Code here will run after the package is loaded
          (setq hl-todo-highlight-punctuation ":"))


<a id="orgad9abce"></a>

### Keybinding


<a id="orge896e29"></a>

## Packages

Package management happens here. Declare packages to install and where they should be installed from.

Note that Doom Emacs does not utilize `package.el`. Instead, it uses its own package manager which relies on `packages.el`, which becomes a repository of resources for your own configuration in `config.el`.


<a id="orge8338b6"></a>

### DOs and DONTs:

1.  DO:

    -   Declare packages with the `package!` macro.
    -   Disable single packages with `package!`&rsquo;s `:disable` property, or multiple with the macro `disable-packages!`.
    -   Use the `featurep!` macro to make the packages conditional based on the state of another module or the presence of a flag.

2.  DONT:

    -   Configure packages here (absolutely no `use-package!` or `after!` in this file!). This file is read in an **isolated environment** and will have no lasting effect.
    -   Perform expensive calculations. These files are read often and sometimes multiple times.
    -   Produce any side-effects, for the same reason.


<a id="orgb29a5e7"></a>

### Installing packages

1.  Basic Installation

    To install a package, add a `package!` declaration to `$DOOMDIR/packages.el`.
    
        ;; Install a package named "example" from ELPA, MELPA, or Emacsmirror
        (package! example)

2.  Dependency Chaining

    The `package!` macro will return non-nil if the package is cleared for install and has not otherwise been disabled elsewhere in the configuration. You can leverage this to chain package dependencies together.
    
        (when (package! example)
          (package! plugin-that-example-depends-on))

3.  Installing from External Sources

    To install a package straight from its source, like from github, you can specify a MELPA-style straight recipe.
    
        (package! example
          :recipe (:host github :repo "username/my-example-fork"))

4.  Disabling Packages

    A package can be disabled by using the `:disable` property of the `package!` macro.
    
        (package! example :disable t)
    
    Alternatively, multiple packages can be disabled with the macro `disable-packages!`.
    
        (disable-packages! example some_other_package)

5.  Prefer Built-ins

    You might want to install a package only if Doom does not have it built-in.
    
        (package! example :built-in 'prefer)


<a id="org2ea6fb2"></a>

## Additional Files

Any files beyond the three that come stock in Doom emacs are not given any particular treatment. These files must be manually loaded, and can be organized however you wish. One convention that has emerged in the Doom community applies to such files in the root of the module: append a `+` to the file name, e.g. `+extra.el`.

These additional files can be loaded using the `load!` macro.

    ;; Omitting the .el extension allows Emacs to load the byte-compiled version, if available.
    (load! "+git")


<a id="org7d36436"></a>

## Writing Modules

To create a module for Doom, you can simply make a directory for it in `$DOOMDIR/modules/`. If you have a module `$DOOMDIR/modules/abc/xyz` then you can add `:abc xyz` to your `doom!` block in `$DOOMDIR/init.el`.

If a private module possesses the same name as a built-in Doom module (e.g. `:lang org`), it will replace the built-in module. You can exploit this to rewrite modules.


<a id="org3fc2d4f"></a>

### Module Structure

A module can minimally have **nothing** inside of it. But a minimal functional module will have at least a `packages.el` file to declare all packages it will install and a `config.el` file to configure and load those packages. Occasionally an `autoload.el` can be included to store a module&rsquo;s functions, to be loaded when used.

