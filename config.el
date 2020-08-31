;;; -*- lexical-binding: t -*-
(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")

(setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
(setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))

(load! "./elisp/init-sakura-theming.el")
(load! "./elisp/custom-functions.el")

(load! "./themes/doom-sakura-light-theme.el")
(load! "./themes/doom-sakura-dark-theme.el")

(add-hook! 'org-babel-post-tangle-hook 'add-tangle-headers)
(add-hook! '(+doom-dashboard-mode-hook)
  (setq fancy-splash-image "~/.doom.d/images/sakura_emacs.png"))

;; Some hooks seem not to play so nice with the doom ! notation... something to do with using a lambda expression? Test this.
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(remove-hook! 'text-mode-hook #'auto-fill-mode)
