;;; -*- lexical-binding: t -*-
(setq user-full-name "Jonathan Crum")
(setq user-mail-address "crumja@uga.edu")

(setq NOTEBOOK (concat (getenv "HOME") "/Notebook"))
(setq BIBLIOGRAPHY (concat (getenv "HOME") "/texmf/bibtex/bib/master.bib"))
(setq LIBRARY (concat (getenv "HOME") "/Dropbox/Library"))
(setq WORKSPACE (concat (getenv "HOME") "/Workspace"))

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

(use-package! helm-org-rifle)

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

(use-package! org-roam
  :config
  (setq org-roam-directory NOTEBOOK))

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

(use-package! org-noter
  :after (:any org pdf-view)
  :config
  (setq org-noter-notes-window-location 'other-frame)
  (setq org-noter-always-create-frame nil)
  (setq org-noter-hide-other nil)
  (setq org-noter-notes-search-path '("~/Notebook")))

(use-package! zotxt)

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



(use-package! pdfgrep)

(use-package! pdf-tools
  :if (display-graphic-p)
  :mode ("\\.pdf$" . pdf-view-mode)
  :init (load "pdf-tools-autoloads" nil t)
  :config
  (pdf-tools-install)
  (setq-default pdf-view-display-size 'fit-width)
  (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
)

(use-package! plantuml-mode
  :defer t)

(use-package! powerthesaurus
  :defer t)

(use-package! rainbow-mode)

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

(load! "./elisp/init-sakura-theming.el")
(load! "./elisp/custom-functions.el")

(load! "./themes/doom-sakura-light-theme.el")
(load! "./themes/doom-sakura-dark-theme.el")

(load! "./keybindings.el")

(add-hook! 'org-babel-post-tangle-hook 'add-tangle-headers)
;; (add-hook! 'org-babel-post-tangle-hook 'add-latex-framework)
(add-hook! '(+doom-dashboard-mode-hook)
  (setq fancy-splash-image "~/.doom.d/images/sakura_emacs.png"))

;; Some hooks seem not to play so nice with the doom ! notation... something to do with using a lambda expression? Test this.
; (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(remove-hook! 'text-mode-hook #'auto-fill-mode)
