;;; -*- lexical-binding: t -*-
(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")

(setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
(setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))

(use-package! helm-bibtex
  :defer t
  :config
  (setq bibtex-completion-bibliography '(BIBLIOGRAPHY))
  (setq bibtex-completion-library-path (concat (getenv "HOME") "Dropbox/Library"))
  (setq bibtex-completion-pdf-field "File")
  (setq bibtex-completion-notes-path NOTEBOOK)
  )

(use-package! helm-org-rifle)

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

(use-package! org-ref)

(use-package! org-roam)

(use-package! pdfgrep)

(use-package! pdf-tools)

(use-package! rainbow-mode)

(use-package! zotxt)

(load! "./elisp/init-sakura-theming.el")
(load! "./elisp/custom-functions.el")

(load! "./themes/doom-sakura-light-theme.el")
(load! "./themes/doom-sakura-dark-theme.el")

(add-hook! 'org-babel-post-tangle-hook 'add-tangle-headers)
(add-hook! '(+doom-dashboard-mode-hook)
  (setq fancy-splash-image "~/.doom.d/images/sakura_emacs.png"))

;; Some hooks seem not to play so nice with the doom ! notation... something to do with using a lambda expression? Test this.
; (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(remove-hook! 'text-mode-hook #'auto-fill-mode)
