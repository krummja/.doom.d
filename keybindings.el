;;; -*- lexical-binding: t -*-
(map! :map bibtex-mode-map
      :prefix ("C-c b" . "bibtex"))

(map! :map org-mode-map
      :prefix ("C-c b" . "bibtex")
      "b" #'helm-bibtex
      "n b" #'helm-bibtex-with-notes)

(map! :map org-mode-map
      :prefix ("C-c s" . "search")
      "r" #'helm-org-rifle
      "o" #'helm-org-rifle-occur
      "f" #'helm-org-rifle-files)

(map! :map org-roam-mode-map
      :prefix ("C-c r" . "Org-Roam")
      "r" #'org-roam
      "f" #'org-roam-find-file
      "g" #'org-roam-graph-show )

(map! :map org-mode-map
      :prefix ("C-c r" . "Org-Roam")
      "i" #'org-roam-insert
      "I" #'org-roam-insert-immediate )

(map! :map org-mode-map
      :prefix ("C-c b" . "bibtex")
      "n a" #'orb-note-actions)

(map! :map (org-mode-map pdf-view-mode-map)
      :prefix ("C-c n" . "Org-Noter")
      "n" #'org-noter
      "i" #'org-noter-insert-note
      "I" #'org-noter-insert-precise-note
      "SPC" #'org-noter-sync-current-note)



(map! :map org-mode-map
      :desc "Execute target src block" "\C-v\C-c" #'org-babel-execute-src-block)

(map! :map org-mode-map
      :prefix ("C-c w" . "writing")
      "t" #'powerthesuarus-lookup-word-dwim)

(map! :leader
      :nv "o n" nil
      :desc "Open treemacs pane"
      :n "o n" #'+treemacs/toggle)
(map! :leader
      :nv "o N" nil
      :desc "Treemacs find file"
      :n "o N" #'treemacs-find-file)

(map! :leader
      (:prefix "a"
       :desc "Kill line" "d" (cmd! (previous-line)
                                   (kill-line)
                                   (forward-line))))
